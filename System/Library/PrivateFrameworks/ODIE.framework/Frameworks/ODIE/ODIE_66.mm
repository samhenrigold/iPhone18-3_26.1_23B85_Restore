void mlir::LLVM::InvokeOp::getSuccessorOperands(mlir::LLVM::InvokeOp *this, uint64_t a2, int a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a3)
  {
    v7 = *(v5 + 64);
    v8 = *(v5 + 68);
    v6 = v5 + 64;
    v9 = *(v6 + 8);
    v10 = v8 + v7;
    v11 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6, 4);
    __src = 2;
    v17 = v11;
    v18 = v12;
    *&v19 = a2;
    *(&v19 + 1) = __PAIR64__(v9, v10);
  }

  else
  {
    v13 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v14 = *(v5 + 64);
    v15 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 4);
    __src = 1;
    v17 = v13;
    v18 = v15;
    *&v19 = a2;
    *(&v19 + 1) = v14;
  }

  v20 = v22;
  v21 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v20, &__src, &v19);
  *this = 0;
  *(this + 8) = v19;
  *(this + 3) = this + 40;
  *(this + 4) = 0x100000000;
  if (v21)
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v20);
  }

  if (v20 != v22)
  {
    free(v20);
  }
}

uint64_t mlir::LLVM::InvokeOp::parse(uint64_t a1, uint64_t a2)
{
  v50[32] = *MEMORY[0x277D85DE8];
  v48 = v50;
  v49 = 0x800000000;
  v25 = 0;
  v26 = 0;
  v45 = &v47;
  v46 = 0x100000000;
  v42 = &v44;
  v43 = 0x100000000;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v39 = v41;
  v40 = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v4 = (*(*a1 + 32))(a1);
  v5 = **(*(a2 + 8) + 96);
  v6 = *(*(*a1 + 32))(a1);
  v7 = parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(a1);
  v8 = mlir::LLVM::CConvAttr::get(v6, v7);
  mlir::NamedAttrList::push_back(a2 + 112, v5, v8);
  if ((parseOptionalCallFuncPtr(a1, &v48) & 1) == 0)
  {
    goto LABEL_25;
  }

  v9 = v49;
  if (!v49 && !mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v26, a2 + 112))
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 720))(a1, &v48, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_25;
  }

  v35 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v32) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 816))(a1, &v23, &v39) & 1) == 0)
  {
    goto LABEL_25;
  }

  v35 = 257;
  if (((*(*a1 + 400))(a1, "unwind", 6, &v32) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 816))(a1, &v22, &v36) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((*(*a1 + 408))(a1, "vararg", 6))
  {
    v10 = *(*(*(a2 + 8) + 96) + 56);
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v25, *(v10 + 16), *(v10 + 24), a2 + 112) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v11 = (*(*a1 + 40))(a1);
  v12 = parseOpBundles(a1, &v45, &v42, &v24);
  if (v12 >= 0x100u && (v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v24 && *(v24 + 16))
  {
    v13 = *(*(*(a2 + 8) + 96) + 40);
    mlir::OperationState::addAttribute(a2, *(v13 + 16), *(v13 + 24), v24);
  }

  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v32 = v34;
    v33 = 0x600000000;
    v29 = v31;
    v30 = 0x600000000;
    if ((parseCallTypeAndResolveOperands(a1, a2, v9 == 0, v48, v49, &v32, &v29) & 1) != 0 && (v14 = (*(*a1 + 32))(a1), mlir::call_interface_impl::addArgAndResultAttrs(v14, a2, v32, v33, v29, v30, *(*(*(a2 + 8) + 96) + 8), *(*(*(a2 + 8) + 96) + 48)), resolveOpBundleOperands(a1, v11, a2, v45, v46, v42, v43, *(*(*(a2 + 8) + 96) + 32))))
    {
      v27 = v23;
      v28 = v22;
      llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, &v27 + 4, 0, &v27 + 4, 2);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v39 & 0xFFFFFFFFFFFFFFF9, 0, v39 & 0xFFFFFFFFFFFFFFF9, v40);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v36 & 0xFFFFFFFFFFFFFFF9, 0, v36 & 0xFFFFFFFFFFFFFFF9, v37);
      if (v46)
      {
        v15 = 0;
        v16 = 48 * v46;
        v17 = v45 + 1;
        do
        {
          v18 = *v17;
          v17 += 6;
          v15 += v18;
          v16 -= 48;
        }

        while (v16);
      }

      else
      {
        v15 = 0;
      }

      v27 = __PAIR64__(v40, v49);
      v28 = __PAIR64__(v15, v37);
      v21 = mlir::detail::DenseArrayAttrImpl<int>::get(*v4, &v27, 4);
      mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v21);
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    if (v29 != v31)
    {
      free(v29);
    }

    if (v32 != v34)
    {
      free(v32);
    }
  }

  else
  {
LABEL_25:
    v19 = 0;
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v42);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v45);
  if (v48 != v50)
  {
    free(v48);
  }

  return v19;
}

uint64_t mlir::Diagnostic::operator<<<79ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::LLVM::LandingpadOp::parse(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 408))(a1, "cleanup", 7))
  {
    v4 = (*(*a1 + 32))(a1);
    mlir::OperationState::addAttribute(a2, "cleanup", 7, *(**v4 + 608));
  }

  if ((*(*a1 + 288))(a1))
  {
    while (((*(*a1 + 408))(a1, "filter", 6) & 1) != 0 || ((*(*a1 + 408))(a1, "catch", 5) & 1) != 0)
    {
      __src = 0;
      v8[0] = 0;
      v8[1] = 0;
      v6 = 0;
      if (((*(*a1 + 704))(a1, &__src, 1) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v6) & 1) == 0 || ((*(*a1 + 728))(a1, &__src, v6, a2 + 16) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        return 0;
      }

      if (((*(*a1 + 288))(a1) & 1) == 0)
      {
        break;
      }
    }
  }

  __src = 0;
  if (((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return 1;
}

uint64_t getInsertExtractValueElementType(void (*a1)(void *__return_ptr, uint64_t, const char *, uint64_t), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v28 = *MEMORY[0x277D85DE8];
  if ((mlir::LLVM::LLVMDialect::isCompatibleType(a3, a2, a3, a4) & 1) == 0)
  {
    v15 = "expected LLVM IR Dialect type, got ";
    v16 = a2;
    v17 = 35;
    goto LABEL_19;
  }

  if (a5)
  {
    for (i = 8 * a5; i; i -= 8)
    {
      v11 = *v6;
      v22 = *v6;
      v12 = *(*v7 + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
      {
        if (v11 < 0 || *(v7 + 16) <= v11)
        {
LABEL_21:
          a1(v25, a2, "position out of bounds: ", 24);
          mlir::InFlightDiagnostic::operator<<<long long &>(v25, &v22);
          goto LABEL_22;
        }

        v7 = *(v7 + 8);
      }

      else
      {
        if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
        {
          v15 = "expected LLVM IR structure/array type, got: ";
          v16 = a2;
          v17 = 44;
LABEL_19:
          a1(v25, v16, v15, v17);
          if (v25[0])
          {
            v23 = 4;
            v24 = v7;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v23, 1);
            v19 = v26 + 24 * v27;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v27;
          }

LABEL_22:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
          return 0;
        }

        if (v11 < 0)
        {
          goto LABEL_21;
        }

        v13 = *(v7 + 24);
        if (v13)
        {
          if (v11 >= *(v7 + 28) >> 3)
          {
            goto LABEL_21;
          }

          v14 = 16;
        }

        else
        {
          if (v11 >= v13 >> 2)
          {
            goto LABEL_21;
          }

          v14 = 8;
        }

        v7 = *(*(v7 + v14) + 8 * v11);
      }

      ++v6;
    }
  }

  return v7;
}

uint64_t mlir::LLVM::GlobalOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 32))(a1);
  v5 = *(*(*(a2 + 1) + 96) + 64);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(a1);
  v7 = mlir::LLVM::LinkageAttr::get(v4, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v5, v7);
  v8 = *(*(*(a2 + 1) + 96) + 112);
  v9 = (*(*a1 + 32))(a1);
  v10 = parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v8, I64IntegerAttr);
  v12 = *(*(*(a2 + 1) + 96) + 96);
  v13 = (*(*a1 + 32))(a1);
  v14 = parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(a1);
  v15 = mlir::Builder::getI64IntegerAttr(v13, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v15);
  if ((*(*a1 + 408))(a1, "thread_local", 12))
  {
    v16 = *(*(*(a2 + 1) + 96) + 88);
    v17 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(**v17 + 608));
  }

  if ((*(*a1 + 408))(a1, "constant", 8))
  {
    v18 = *(*(*(a2 + 1) + 96) + 24);
    v19 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v18, *(**v19 + 608));
  }

  v29 = 0;
  v20 = *(*(*(a2 + 1) + 96) + 80);
  if ((mlir::AsmParser::parseSymbolName(a1, &v29, *(v20 + 16), *(v20 + 24), a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  v28 = 0;
  if (((*(*a1 + 304))(a1) & 1) == 0)
  {
    v22 = *(*(*(a2 + 1) + 96) + 104);
    if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a1, &v28, 0, *(v22 + 16), *(v22 + 24), a2 + 112) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 408))(a1, "comdat", 6))
  {
    v30[0] = 0;
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, v30, 0) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 1) + 96) + 16), v30[0]);
  }

  v32 = v34;
  v33 = 0x100000000;
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 592))(a1, &v32))
  {
    if (v33 < 2)
    {
      mlir::OperationState::addRegion(a2);
    }

    v21 = (*(*a1 + 16))(a1);
    v26 = "expected zero or one type";
    v27 = 259;
    (*(*a1 + 24))(v30, a1, v21, &v26);
    v25 = v31 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
  }

  else
  {
    v25 = 0;
  }

  v23 = v25 & 1;
  if (v32 != v34)
  {
    free(v32);
  }

  return v23;
}

uint64_t mlir::LLVM::satisfiesLLVMModule(mlir::LLVM *this, mlir::Operation *a2)
{
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(this + 6) + 32))(*(this + 6), v3);
  if (result)
  {
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
    v5 = *(**(this + 6) + 32);

    return v5();
  }

  return result;
}

uint64_t isZeroAttribute(_DWORD *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v41) = a1[6];
    if (v41 > 0x40)
    {
      operator new[]();
    }

    return *(a1 + 2) == 0;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v40, (a1 + 4));
    if (v40 == &llvm::semPPCDoubleDouble)
    {
      v8 = v41;
    }

    else
    {
      v8 = &v40;
    }

    v5 = (*(v8 + 20) & 7) == 3;
    llvm::APFloat::Storage::~Storage(&v40);
  }

  else
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v3 && *(a1 + 24) == 1)
    {
      (*(*(a1 + 2) + 24))();
      v40 = a1;
      v41 = 0;
      v4 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v40);
      return isZeroAttribute(v4);
    }

    else
    {
      v6 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
      v25[0] = v6;
      v25[1] = v7;
      if (v6)
      {
        mlir::ElementsAttr::getValues<mlir::Attribute>(v25, &v40);
        v30 = v40;
        if (v40 == 1)
        {
          v31 = v41;
        }

        else
        {
          (*(*v41 + 16))(&v31);
        }

        v32 = v42;
        v26 = v43;
        v27 = v44;
        if (v43 == 1)
        {
          v28 = v45;
        }

        else
        {
          (*(*v45 + 16))(&v28);
        }

        v29 = v46;
        v37 = v30;
        if (v30 == 1)
        {
          v38 = v31;
        }

        else
        {
          (*(*v31 + 16))(&v38);
        }

        v15 = v32;
        v39 = v32;
        v33 = v26;
        v34 = v27;
        if (v26 == 1)
        {
          v35 = v28;
        }

        else
        {
          (*(*v28 + 16))(&v35);
          v15 = v39;
        }

        v36 = v29;
        if (v15 == v29)
        {
          v5 = 1;
        }

        else
        {
          do
          {
            if (HIBYTE(v37))
            {
              v16 = 0;
            }

            else
            {
              v16 = v15;
            }

            if (v37 == 1)
            {
              v17 = v38[v16];
            }

            else
            {
              v17 = (*(*v38 + 24))(v38, v16);
            }

            v5 = isZeroAttribute(v17);
            if (!v5)
            {
              break;
            }

            v15 = v39 + 1;
            v39 = v15;
          }

          while (v15 != v36);
        }

        if ((v33 & 1) == 0)
        {
          v18 = v35;
          v35 = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        if ((v37 & 1) == 0)
        {
          v19 = v38;
          v38 = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }
        }

        if ((v26 & 1) == 0)
        {
          v20 = v28;
          v28 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

        if ((v30 & 1) == 0)
        {
          v21 = v31;
          v31 = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }
        }

        if ((v43 & 1) == 0)
        {
          v22 = v45;
          v45 = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }
        }

        if ((v40 & 1) == 0)
        {
          v23 = v41;
          v41 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }
        }
      }

      else
      {
        v9 = *(*a1 + 136);
        if (v9 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = *(a1 + 2);
          if (v10)
          {
            v11 = *(a1 + 1);
            v12 = 8 * v10 - 8;
            do
            {
              v13 = *v11++;
              LODWORD(v6) = isZeroAttribute(v13);
              if (v6)
              {
                v14 = v12 == 0;
              }

              else
              {
                v14 = 1;
              }

              v12 -= 8;
            }

            while (!v14);
          }

          else
          {
            LOBYTE(v6) = 1;
          }
        }

        return (v9 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id) & v6;
      }
    }
  }

  return v5;
}

BOOL verifyComdat(mlir::SymbolTable *a1, mlir::Operation *a2, char a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (NearestSymbolTable)
  {
    v6 = mlir::SymbolTable::lookupSymbolIn(NearestSymbolTable, a2);
    if (v6)
    {
      if (*(*(v6 + 48) + 16) == &unk_27FC1FED0)
      {
        return 1;
      }
    }
  }

  v9[16] = 257;
  mlir::Operation::emitError(&v10, a1, v9);
  if (v10)
  {
    mlir::Diagnostic::operator<<<23ul>(v11, "expected comdat symbol");
  }

  v7 = (v11[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  return v7;
}

uint64_t mlir::LLVM::GlobalOp::getAlignment(mlir::LLVM::GlobalOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v1)
  {
    if (*(v1 + 24) > 0x40u)
    {
      operator new[]();
    }

    return *(v1 + 16);
  }

  return v1;
}

uint64_t verifySymbolAttrUse(uint64_t a1, mlir::SymbolTable *this, mlir::SymbolTableCollection *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(this, this);
  if (NearestSymbolTable && (v9 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v5)) != 0 && *(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id)
  {
    v12 = (((v9 + 16 * ((*(v9 + 44) >> 23) & 1) + ((*(v9 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40));
    if (*v12 != v12)
    {
      v10 = 1;
      return v10 & 1;
    }

    v13[0] = "'";
    v14 = 259;
    mlir::Operation::emitOpError(&v18, this, v13);
    if (v18)
    {
      v17 = 261;
      v15 = v7;
      v16 = v6;
      mlir::Diagnostic::operator<<(v19, &v15);
      if (v18)
      {
        mlir::Diagnostic::operator<<<29ul>(v19, "' does not have a definition");
      }
    }
  }

  else
  {
    v13[0] = "'";
    v14 = 259;
    mlir::Operation::emitOpError(&v18, this, v13);
    if (v18)
    {
      v17 = 261;
      v15 = v7;
      v16 = v6;
      mlir::Diagnostic::operator<<(v19, &v15);
      if (v18)
      {
        mlir::Diagnostic::operator<<<43ul>(v19, "' does not reference a valid LLVM function");
      }
    }
  }

  v10 = v19[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v10 & 1;
}

BOOL mlir::LLVM::AliasOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 32))(a1);
  v5 = *(*(*(a2 + 1) + 96) + 16);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(a1);
  v7 = mlir::LLVM::LinkageAttr::get(v4, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v5, v7);
  v8 = *(*(*(a2 + 1) + 96) + 48);
  v9 = (*(*a1 + 32))(a1);
  v10 = parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v8, I64IntegerAttr);
  v12 = *(*(*(a2 + 1) + 96) + 40);
  v13 = (*(*a1 + 32))(a1);
  v14 = parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(a1);
  v15 = mlir::Builder::getI64IntegerAttr(v13, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v15);
  if ((*(*a1 + 408))(a1, "thread_local", 12))
  {
    v16 = *(*(*(a2 + 1) + 96) + 32);
    v17 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(**v17 + 608));
  }

  v24 = 0;
  v18 = *(*(*(a2 + 1) + 96) + 24);
  if ((mlir::AsmParser::parseSymbolName(a1, &v24, *(v18 + 16), *(v18 + 24), a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v27 = v29;
  v28 = 0x100000000;
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 592))(a1, &v27))
  {
    if (v28 < 2)
    {
      mlir::OperationState::addRegion(a2);
    }

    v19 = (*(*a1 + 16))(a1);
    v22 = "expected zero or one type";
    v23 = 259;
    (*(*a1 + 24))(v25, a1, v19, &v22);
    v20 = (v26 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
  }

  else
  {
    v20 = 0;
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v20;
}

uint64_t mlir::LLVM::LLVMFuncOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v80[26] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a2 + 1) + 96) + 192);
  v5 = *(*(*a1 + 32))(a1);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(a1);
  v7 = mlir::LLVM::LinkageAttr::get(v5, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v4, v7);
  v8 = *(*(*(a2 + 1) + 96) + 360);
  v9 = (*(*a1 + 32))(a1);
  v10 = parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v8, I64IntegerAttr);
  v12 = *(*(*(a2 + 1) + 96) + 336);
  v13 = (*(*a1 + 32))(a1);
  v14 = parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(a1);
  v15 = mlir::Builder::getI64IntegerAttr(v13, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v15);
  v16 = **(*(a2 + 1) + 96);
  v17 = *(*(*a1 + 32))(a1);
  v18 = parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(a1);
  v19 = mlir::LLVM::CConvAttr::get(v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v19);
  v56 = 0;
  v70 = v72;
  v71 = 0x100000000;
  v67 = v69;
  v68 = 0x600000000;
  v64 = v66;
  v65 = 0x600000000;
  v55 = 0;
  v20 = (*(*a1 + 40))(a1);
  if ((mlir::AsmParser::parseSymbolName(a1, &v56, "sym_name", 8, a2 + 112) & 1) == 0 || (mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, 1, &v70, &v55, &v64, &v67) & 1) == 0)
  {
    goto LABEL_7;
  }

  v21 = v63;
  v61 = v63;
  v62 = 0x600000000;
  if (v71)
  {
    v22 = v71 << 6;
    v23 = v70 + 4;
    do
    {
      v24 = *v23;
      v23 += 8;
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v61, v24);
      v22 -= 64;
    }

    while (v22);
    v21 = v61;
    v25 = v62;
  }

  else
  {
    v25 = 0;
  }

  v53 = v64;
  v27 = v65;
  v52 = v55;
  v28 = (*(*a1 + 32))(a1);
  if (v27 >= 2)
  {
    v73[0] = "failed to construct function type: expected zero or one function result";
    LOWORD(v75) = 259;
    (*(*a1 + 24))(v80, a1, v20, v73);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v80);
    goto LABEL_47;
  }

  v51 = v28;
  v77 = v79;
  v78 = 0x400000000;
  if (v25)
  {
    v32 = 8 * v25;
    while (1)
    {
      v33 = *v21;
      if (!mlir::LLVM::LLVMDialect::isCompatibleType(*v21, v29, v30, v31))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v77, v33);
      ++v21;
      v32 -= 8;
      if (!v32)
      {
        goto LABEL_21;
      }
    }

    v73[0] = "failed to construct function type: expected LLVM type for function arguments";
    LOWORD(v75) = 259;
    (*(*a1 + 24))(v76, a1, v20, v73);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v76);
    v35 = 0;
  }

  else
  {
LABEL_21:
    if (v27)
    {
      v34 = *v53;
    }

    else
    {
      v36 = *v51;
      v37 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID();
      v38 = *(*v36 + 384);
      v73[0] = v37;
      v34 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v38 + 232), v73);
    }

    if (mlir::LLVM::LLVMDialect::isCompatibleType(v34, v29, v30, v31))
    {
      v57[0] = v34;
      v73[0] = v77;
      v73[1] = v78;
      LOBYTE(v59) = v52;
      v35 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFunctionType,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(*(**v34 + 32), v57, v73, &v59);
    }

    else
    {
      v57[0] = "failed to construct function type: expected LLVM type for function results";
      v58 = 259;
      (*(*a1 + 24))(v73, a1, v20, v57);
      if (v73[0])
      {
        v59 = 4;
        v60 = v34;
        v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v74, &v59, 1);
        v40 = v74 + 24 * v75;
        v41 = *v39;
        *(v40 + 16) = *(v39 + 16);
        *v40 = v41;
        ++v75;
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(v73);
      v35 = 0;
    }
  }

  if (v77 != v79)
  {
    free(v77);
  }

  if (!v35)
  {
    goto LABEL_47;
  }

  v42 = *(*(*(a2 + 1) + 96) + 168);
  v43 = mlir::TypeAttr::get(v35);
  mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
  if ((*(*a1 + 408))(a1, "vscale_range", 12))
  {
    v80[0] = 0;
    v76[0] = 0;
    if (((*(*a1 + 280))(a1) & 1) == 0 || (mlir::AsmParser::parseInteger<long long>(a1, v80) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || (mlir::AsmParser::parseInteger<long long>(a1, v76) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_47;
    }

    v44 = (*(*a1 + 32))(a1);
    v45 = mlir::IntegerType::get(*v44, 32, 0);
    v54 = *(*(*(a2 + 1) + 96) + 368);
    v46 = *(*(*a1 + 32))(a1);
    v47 = mlir::IntegerAttr::get(v45, v80[0]);
    v48 = mlir::IntegerAttr::get(v45, v76[0]);
    v49 = mlir::LLVM::VScaleRangeAttr::get(v46, v47, v48);
    mlir::NamedAttrList::push_back(a2 + 112, v54, v49);
  }

  if (((*(*a1 + 408))(a1, "comdat", 6) & 1) == 0)
  {
    goto LABEL_45;
  }

  v80[0] = 0;
  if ((*(*a1 + 280))(a1) & 1) != 0 && mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, v80, 0) && ((*(*a1 + 296))(a1))
  {
    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 1) + 96) + 104), v80[0]);
LABEL_45:
    if ((*(*a1 + 496))(a1, a2 + 112))
    {
      v50 = (*(*a1 + 32))(a1);
      mlir::call_interface_impl::addArgAndResultAttrs(v50, a2, v70, v71, v67, v68, *(*(*(a2 + 1) + 96) + 32), *(*(*(a2 + 1) + 96) + 280));
      mlir::OperationState::addRegion(a2);
    }
  }

LABEL_47:
  if (v61 != v63)
  {
    free(v61);
  }

LABEL_7:
  if (v64 != v66)
  {
    free(v64);
  }

  if (v67 != v69)
  {
    free(v67);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  return 0;
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(uint64_t a1)
{
  v2 = 0;
  v10[20] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = 0xA00000000;
  do
  {
    v3 = mlir::LLVM::linkage::stringifyLinkage(v2);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v8, v3, v4);
    ++v2;
  }

  while (v2 != 11);
  v5 = parseOptionalKeywordAlternative(a1, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(uint64_t a1)
{
  v2 = 0;
  v12[20] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0xA00000000;
  do
  {
    if (v2 == 1)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }

    if (v2 == 1)
    {
      v4 = "hidden";
    }

    else
    {
      v4 = &str_2_25;
    }

    if (v2 == 2)
    {
      v5 = 9;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = "protected";
    }

    else
    {
      v6 = v4;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v10, v6, v5);
    ++v2;
  }

  while (v2 != 3);
  v7 = parseOptionalKeywordAlternative(a1, v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }

  if (v7 == -1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(uint64_t a1)
{
  v2 = 0;
  v12[20] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0xA00000000;
  do
  {
    if (v2 == 1)
    {
      v3 = 18;
    }

    else
    {
      v3 = 0;
    }

    if (v2 == 1)
    {
      v4 = "local_unnamed_addr";
    }

    else
    {
      v4 = &str_2_25;
    }

    if (v2 == 2)
    {
      v5 = 12;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = "unnamed_addr";
    }

    else
    {
      v6 = v4;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v10, v6, v5);
    ++v2;
  }

  while (v2 != 3);
  v7 = parseOptionalKeywordAlternative(a1, v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }

  if (v7 == -1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t getNumElements(void *a1)
{
  for (i = 1; ; i *= v9[1] * v3)
  {
    v2 = *(*a1 + 136);
    v3 = 1;
    while (v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = a1[1];
        v6 = 8 * v4;
        v7 = 1;
        do
        {
          v8 = *v5++;
          v7 *= v8;
          v6 -= 8;
        }

        while (v6);
      }

      else
      {
        v7 = 1;
      }

      a1 = a1[3];
      v3 *= v7;
      v2 = *(*a1 + 136);
    }

    if (v2 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
    {
      break;
    }

    v9 = a1 + 1;
    a1 = a1[1];
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    v10 = *(a1 + 4);
    v3 *= v10 * getNumElements(a1[1]);
  }

  return v3 * i;
}

BOOL isTypeCompatibleWithAtomicOp(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  v5 = v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
  if (v5 || (result = mlir::LLVM::isCompatibleFloatingPointType(a1)))
  {
    TypeSizeInBits = mlir::DataLayout::getTypeSizeInBits(a2, a1);
    v9 = (TypeSizeInBits & (TypeSizeInBits - 1)) == 0;
    if (TypeSizeInBits < 8)
    {
      v9 = 0;
    }

    return (v8 & 1) == 0 && v9;
  }

  return result;
}

uint64_t getValAndBoolStructType(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = mlir::IntegerType::get(*(**a1 + 32), 1, 0);
  v3 = *(**a1 + 32);
  v7[0] = a1;
  v7[1] = v2;
  *&v6 = v7;
  *(&v6 + 1) = 2;
  v5 = 0;
  return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::ArrayRef<mlir::Type> &,BOOL &>(v3, &v6, &v5);
}

unint64_t mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::operator[](void *a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(*a1 + 24);
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = a2 + 1;
    v7 = *(*a1 + 24);
    do
    {
      v8 = *v7++;
      if (v8 == 0x80000000)
      {
        v4 = ++v5;
      }

      --v6;
    }

    while (v6 > 1);
    v3 += 4 * a2;
  }

  v10[0] = a1;
  v10[1] = v3;
  v10[2] = v2;
  v10[3] = v4;
  return mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::iterator::operator*(v10);
}

void llvm::SmallVectorImpl<mlir::LLVM::GEPArg>::emplace_back<long long>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::LLVM::GEPArg,true>::push_back(result, (a2 << 35) | 4);
  }

  else
  {
    *(*result + 8 * v2) = (a2 << 35) | 4;
    ++*(result + 8);
  }
}

BOOL mlir::LLVM::AShrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isExact", 7, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<47ul>(v12, "' failed to satisfy constraint: unit attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AShrOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AShrOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(mlir::Operation *a1, _DWORD *a2, const char *a3, const char *a4, unsigned int a5)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v22 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
  {
    return 1;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_12;
  }

  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 6;
  if (v10)
  {
    v11 = 2;
  }

  v12 = *&a2[v11];
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v12[2] >> 30))
  {
    return 1;
  }

LABEL_12:
  v21 = 261;
  v20[0] = a3;
  v20[1] = a4;
  mlir::Operation::emitOpError(&v25, a1, v20);
  if (v25)
  {
    mlir::Diagnostic::operator<<<3ul>(v26, " #");
  }

  v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v25, &v22);
  v15 = v14;
  if (*v14)
  {
    mlir::Diagnostic::operator<<<90ul>((v14 + 1), " must be signless integer or LLVM dialect-compatible vector of signless integer, but got ");
    if (*v15)
    {
      v23 = 4;
      v24 = a2;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v23, 1);
      v17 = v15[3] + 24 * *(v15 + 8);
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++*(v15 + 8);
    }
  }

  v13 = (v15[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  return v13;
}

uint64_t mlir::LLVM::AShrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AShrOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::LLVM::AShrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AShrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7)) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AddOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::AddOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parseOverflowFlags(mlir::AsmParser *a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if ((*(*a1 + 152))(a1))
    {
      while (1)
      {
        v10 = 0;
        v11 = 0;
        v4 = (*(*a1 + 40))(a1);
        if (!mlir::AsmParser::parseKeyword(a1, &v10))
        {
          break;
        }

        v5 = mlir::LLVM::symbolizeIntegerOverflowFlags(v10, v11);
        if ((v5 & 0x100000000) == 0)
        {
          v8 = "invalid overflow flag: expected nsw, nuw, or none";
          v9 = 259;
          (*(*a1 + 24))(v12, a1, v4, &v8);
          v6 = (v13 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
          return v6;
        }

        *a2 |= v5;
        if (((*(*a1 + 128))(a1) & 1) == 0)
        {
          return (*(*a1 + 168))(a1);
        }
      }
    }

    return 0;
  }

  else
  {
    *a2 = 0;
    return 1;
  }
}

void printOverflowFlags(uint64_t a1, int a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a2;
    v4 = (*(*a1 + 16))(a1);
    v5 = *(v4 + 4);
    if ((*(v4 + 3) - v5) > 9)
    {
      *(v5 + 8) = 15479;
      *v5 = *" overflow<";
      *(v4 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v4, " overflow<", 0xAuLL);
    }

    v18 = v20;
    v19 = 0x200000000;
    if (v2)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "nsw", 3);
    }

    if ((v2 & 2) != 0)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "nuw", 3);
    }

    v6 = v19;
    if (v19)
    {
      v7 = v18;
      v8 = (*(*a1 + 16))(a1);
      llvm::raw_ostream::operator<<(v8, *v7, *(v7 + 1));
      if (v6 != 1)
      {
        v9 = &v7[16 * v6];
        v10 = v7 + 16;
        do
        {
          v11 = (*(*a1 + 16))(a1);
          v12 = *(v11 + 4);
          if (*(v11 + 3) - v12 > 1uLL)
          {
            *v12 = 8236;
            *(v11 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v11, ", ", 2uLL);
          }

          v13 = (*(*a1 + 16))(a1);
          v14 = *v10;
          v15 = *(v10 + 1);
          v10 += 16;
          llvm::raw_ostream::operator<<(v13, v14, v15);
        }

        while (v10 != v9);
      }
    }

    v16 = (*(*a1 + 16))(a1);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ">", 1uLL);
    }

    else
    {
      *v17 = 62;
      ++*(v16 + 4);
    }

    if (v18 != v20)
    {
      free(v18);
    }
  }
}

void mlir::LLVM::AddrSpaceCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(mlir::Operation *a1, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v21 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_9;
  }

  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 3;
  if (v10)
  {
    v11 = 1;
  }

  if (*(*a2[v11] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

LABEL_9:
  v20 = 261;
  v19[0] = a3;
  v19[1] = a4;
  mlir::Operation::emitOpError(&v24, a1, v19);
  if (v24)
  {
    mlir::Diagnostic::operator<<<3ul>(v25, " #");
  }

  v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v21);
  v13 = v12;
  if (*v12)
  {
    mlir::Diagnostic::operator<<<92ul>((v12 + 1), " must be LLVM pointer type or LLVM dialect-compatible vector of LLVM pointer type, but got ");
    if (*v13)
    {
      v22 = 4;
      v23 = a2;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v22, 1);
      v15 = v13[3] + 24 * *(v13 + 8);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++*(v13 + 8);
    }
  }

  v17 = (v13[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  return v17;
}

BOOL mlir::LLVM::AddrSpaceCastOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::AddressOfOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v8, "global_name", 0xB, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !a1[3])
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<64ul>(v12, "' failed to satisfy constraint: flat symbol reference attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddressOfOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<37ul>((v6 + 1), " must be LLVM pointer type, but got ");
    if (*v7)
    {
      v16 = 4;
      v17 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11;
}

uint64_t mlir::LLVM::AddressOfOp::parse(uint64_t a1, uint64_t a2)
{
  __src = 0;
  v13 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v13, v5))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddressOfOpGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a2;
  if (!mlir::LLVM::AddressOfOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AddressOfOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v13);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<51ul>(v12, "' failed to satisfy constraint: any type attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "linkage";
      v5[1] = 7;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<59ul>(v8, "' failed to satisfy constraint: LLVM Linkage specification");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<49ul>(v12, "' failed to satisfy constraint: string attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::LLVM::UnnamedAddrAttr::classof(a1) & 1) != 0)
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "unnamed_addr";
      v7[1] = 12;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<61ul>(v10, "' failed to satisfy constraint: LLVM GlobalValue UnnamedAddr");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::LLVM::VisibilityAttr::classof(a1) & 1) != 0)
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "visibility_";
      v7[1] = 11;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<60ul>(v10, "' failed to satisfy constraint: LLVM GlobalValue Visibility");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::LinkageAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20B88))
  {
    qword_27FC20B78 = llvm::detail::getTypeNameImpl<mlir::LLVM::LinkageAttr>();
    unk_27FC20B80 = v11;
    __cxa_guard_release(&qword_27FC20B88);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20B78;
    v15 = unk_27FC20B80;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::UnnamedAddrAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (((*(*a1 + 56))(a1, &v14) & 1) == 0)
  {
    return 0;
  }

  v4 = v14;
  if (!v14)
  {
    return 1;
  }

  v5 = mlir::LLVM::UnnamedAddrAttr::classof(v14);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v13[16] = 257;
  (*(*a1 + 16))(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20BA0))
  {
    qword_27FC20B90 = llvm::detail::getTypeNameImpl<mlir::LLVM::UnnamedAddrAttr>();
    *algn_27FC20B98 = v12;
    __cxa_guard_release(&qword_27FC20BA0);
  }

  if (v18)
  {
    v17 = 261;
    v15 = qword_27FC20B90;
    v16 = *algn_27FC20B98;
    mlir::Diagnostic::operator<<(v19, &v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
      if (v18)
      {
        LODWORD(v15) = 0;
        v16 = v14;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
        v9 = v20 + 24 * v21;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v21;
      }
    }
  }

  v7 = (v22 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v7;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VisibilityAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (((*(*a1 + 56))(a1, &v14) & 1) == 0)
  {
    return 0;
  }

  v4 = v14;
  if (!v14)
  {
    return 1;
  }

  v5 = mlir::LLVM::VisibilityAttr::classof(v14);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v13[16] = 257;
  (*(*a1 + 16))(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20BB8))
  {
    qword_27FC20BA8 = llvm::detail::getTypeNameImpl<mlir::LLVM::VisibilityAttr>();
    unk_27FC20BB0 = v12;
    __cxa_guard_release(&qword_27FC20BB8);
  }

  if (v18)
  {
    v17 = 261;
    v15 = qword_27FC20BA8;
    v16 = unk_27FC20BB0;
    mlir::Diagnostic::operator<<(v19, &v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
      if (v18)
      {
        LODWORD(v15) = 0;
        v16 = v14;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
        v9 = v20 + 24 * v21;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v21;
      }
    }
  }

  v7 = (v22 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v7;
}

uint64_t mlir::LLVM::AliasOp::populateDefaultProperties(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 48))
  {
    v3 = mlir::IntegerType::get(*(***(result + 8) + 32), 64, 0);
    result = mlir::IntegerAttr::get(v3, 0);
    *(a2 + 48) = result;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_region_constraint_LLVMOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[26] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22[0] = *(a2 + 8);
  v19[0] = a2;
  v16[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__3;
  v7 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v22, v19, 1, v16) & 1) == 0)
  {
    v19[0] = "region #";
    v20 = 259;
    mlir::Operation::emitOpError(v22, a1, v19);
    v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v22, &v21);
    v9 = v8;
    if (a4)
    {
      v15 = 1283;
      v14[0] = " ('";
      v14[2] = a3;
      v14[3] = a4;
      v10 = v14;
      v16[2] = "') ";
      v11 = 2;
      v12 = 3;
    }

    else
    {
      v11 = 3;
      v10 = " ";
      v12 = 1;
    }

    v18 = v12;
    v16[0] = v10;
    v17 = v11;
    if (*v8)
    {
      mlir::Diagnostic::operator<<((v8 + 1), v16);
      if (*v9)
      {
        mlir::Diagnostic::operator<<<50ul>((v9 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v7 = (v9[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 64)
    {
      return 1;
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<66ul>(v13, "' failed to satisfy constraint: 64-bit signless integer attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AllocaOp::setAlignment(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = *(*a1 + 44);
  if (a3)
  {
    v6 = mlir::IntegerType::get(*(***(v3 + 24) + 32), 64, 0);
    result = mlir::Builder::getIntegerAttr(v8, v6, a2);
  }

  else
  {
    result = 0;
  }

  *(v3 + 16 * ((v4 >> 23) & 1) + 64) = result;
  return result;
}

void mlir::LLVM::AllocaOp::build(mlir::Builder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6)
  {
    I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1, a6);
  }

  else
  {
    I64IntegerAttr = 0;
  }

  mlir::LLVM::AllocaOp::build(a1, a2, a3, a5, I64IntegerAttr, a4, 0);
}

void mlir::LLVM::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  v12 = mlir::TypeAttr::get(a6);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(a2) + 8) = v12;
  if (a7)
  {
    v13 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(a2) + 16) = v13;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v16);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps4(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
  {
    return 1;
  }

  v12 = 261;
  v11[0] = "operand";
  v11[1] = 7;
  mlir::Operation::emitOpError(&v16, a1, v11);
  if (v16)
  {
    mlir::Diagnostic::operator<<<3ul>(v17, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<36ul>((v5 + 1), " must be signless integer, but got ");
    if (*v6)
    {
      v14 = 4;
      v15 = a2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v14, 1);
      v8 = v6[3] + 24 * *(v6 + 8);
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++*(v6 + 8);
    }
  }

  v4 = (v6[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v4;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::AutomaticAllocationScopeResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::AutomaticAllocationScopeResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t *mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get()
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID();
    mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance = &unk_286E982F0;
    unk_27FC1AFE0 = v1;
    __cxa_atexit(mlir::SideEffects::AutomaticAllocationScopeResource::~AutomaticAllocationScopeResource, &mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance, &dword_25C85D000);
  }

  return &mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
}

void mlir::LLVM::AndOp::build(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  __src = v20;
  v19 = 0x200000000;
  v5 = *(a2 + 2);
  v6 = a2[6];
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  if (!mlir::LLVM::AndOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::LLVM::AndOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::AndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::AtomicCmpXchgOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v13, "alias_scopes", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v16, "alignment", 9, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v19, "failure_ordering", 0x10, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v22, "noalias_scopes", 0xE, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v25, "success_ordering", 0x10, a3, a4))
            {
              v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
              if ((v27 & 1) == 0 || (v28 = v26[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v28, "syncscope", 9, a3, a4))
              {
                v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
                if ((v30 & 1) == 0 || (v31 = v29[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v31, a3, a4))
                {
                  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
                  if ((v33 & 1) == 0 || (v34 = v32[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v34, "volatile_", 9, a3, a4))
                  {
                    v35 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 72));
                    if ((v36 & 1) == 0)
                    {
                      return 1;
                    }

                    v37 = v35[1];
                    if (!v37 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v37, "weak", 4, a3, a4))
                    {
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = a1[2];
    if (v4)
    {
      v5 = a1[1];
      v6 = 8 * v4;
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
      {
        v5 += 8;
        v6 -= 8;
        if (!v6)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a2(&v10, a3);
  if (v10)
  {
    mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
    if (v10)
    {
      v9 = 261;
      v8[0] = "access_groups";
      v8[1] = 13;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<73ul>(v11, "' failed to satisfy constraint: LLVM dialect access group metadata array");
      }
    }
  }

  v3 = (v11[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v14, a5);
  if (v14)
  {
    mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
    if (v14)
    {
      v13 = 261;
      v12[0] = a2;
      v12[1] = a3;
      mlir::Diagnostic::operator<<(v15, v12);
      if (v14)
      {
        mlir::Diagnostic::operator<<<63ul>(v15, "' failed to satisfy constraint: LLVM dialect alias scope array");
      }
    }
  }

  v7 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::LLVM::AtomicOrderingAttr::classof(a1) & 1) != 0)
  {
    return 1;
  }

  a4(&v13, a5);
  if (v13)
  {
    mlir::Diagnostic::operator<<<12ul>(v14, "attribute '");
    if (v13)
    {
      v12 = 261;
      v11[0] = a2;
      v11[1] = a3;
      mlir::Diagnostic::operator<<(v14, v11);
      if (v13)
      {
        mlir::Diagnostic::operator<<<72ul>(v14, "' failed to satisfy constraint: Atomic ordering for LLVM's memory model");
      }
    }
  }

  v9 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v9;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = a1[2];
    if (v4)
    {
      v5 = a1[1];
      v6 = 8 * v4;
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id)
      {
        v5 += 8;
        v6 -= 8;
        if (!v6)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a2(&v10, a3);
  if (v10)
  {
    mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
    if (v10)
    {
      v9 = 261;
      v8[0] = "tbaa";
      v8[1] = 4;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<69ul>(v11, "' failed to satisfy constraint: LLVM dialect TBAA tag metadata array");
      }
    }
  }

  v3 = (v11[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::AtomicOrderingAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (mlir::LLVM::AtomicOrderingAttr::classof(v13))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20C20))
  {
    qword_27FC20C10 = llvm::detail::getTypeNameImpl<mlir::LLVM::AtomicOrderingAttr>();
    *algn_27FC20C18 = v11;
    __cxa_guard_release(&qword_27FC20C20);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20C10;
    v15 = *algn_27FC20C18;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v8 = v19 + 24 * v20;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v20;
      }
    }
  }

  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v6;
}

uint64_t mlir::LLVM::AtomicCmpXchgOp::inferReturnTypes(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 < 3)
  {
    return 0;
  }

  v6 = mlir::ValueRange::dereference_iterator(v7, 2);
  **a3 = getValAndBoolStructType(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps5(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (a2[2] >> 30)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

LABEL_3:
  v13 = 261;
  v12[0] = "operand";
  v12[1] = 7;
  mlir::Operation::emitOpError(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<3ul>(v18, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<57ul>((v5 + 1), " must be signless integer or LLVM pointer type, but got ");
    if (*v6)
    {
      v15 = 4;
      v16 = a2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v15, 1);
      v8 = v6[3] + 24 * *(v6 + 8);
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++*(v6 + 8);
    }
  }

  v10 = (v6[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v10;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps6(mlir::Operation *a1, uint64_t a2)
{
  v16[25] = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    return 1;
  }

  v11 = 261;
  v10[0] = "result";
  v10[1] = 6;
  mlir::Operation::emitOpError(&v15, a1, v10);
  if (v15)
  {
    mlir::Diagnostic::operator<<<3ul>(v16, " #");
  }

  v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v15, &v12);
  v4 = v3;
  if (*v3)
  {
    mlir::Diagnostic::operator<<<39ul>((v3 + 1), " must be LLVM structure type, but got ");
    if (*v4)
    {
      v13 = 4;
      v14 = a2;
      v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v13, 1);
      v6 = v4[3] + 24 * *(v4 + 8);
      v7 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *v6 = v7;
      ++*(v4 + 8);
    }
  }

  v8 = (v4[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v8;
}

BOOL mlir::LLVM::AtomicCmpXchgOp::parse(uint64_t a1, unsigned int *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  v52[0] = v53;
  v52[1] = 1;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v47[0] = v48;
  v47[1] = 1;
  v45 = 0;
  v46 = 0;
  v44[0] = &v45;
  v44[1] = 1;
  v42[1] = 1;
  v43 = 0;
  v42[0] = &v43;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 72) = v4;
  }

  if ((*(*a1 + 408))(a1, "volatile", 8))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 64) = v5;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v53, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v50, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v48, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      return 0;
    }

    v8 = (*(*a1 + 32))(a1);
    v10 = mlir::NoneType::get(*v8, v9);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v46, v10))
    {
      return 0;
    }

    if (v46)
    {
      v11 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2);
      *(v11 + 48) = v46;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v40 = 0;
  v41 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v68 = 4;
  v12 = (*(*a1 + 40))(a1);
  v61 = xmmword_2799BEB20;
  v62 = *&off_2799BEB30;
  v63 = xmmword_2799BEB40;
  __src = xmmword_2799BEAE0;
  v58 = *&off_2799BEAF0;
  v59 = xmmword_2799BEB00;
  v60 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v40, &__src, 7))
  {
    v13 = v41;
    if (v41)
    {
LABEL_18:
      v14 = mlir::LLVM::symbolizeAtomicOrdering(v40, v13);
      if ((v15 & 1) == 0)
      {
        v38[0] = "invalid ";
        v39 = 259;
        (*(*a1 + 24))(&__src, a1, v12, v38);
        if (__src)
        {
          v36 = "success_ordering attribute specification: ";
LABEL_59:
          mlir::Diagnostic::operator<<<44ul>(&__src + 8, v36);
          if (__src)
          {
            v56 = 261;
            v55[0] = v40;
            v55[1] = v41;
            mlir::Diagnostic::operator<<(&__src + 8, v55);
            if (__src)
            {
              v56 = 264;
              LOBYTE(v55[0]) = 34;
              mlir::Diagnostic::operator<<(&__src + 8, v55);
            }
          }
        }

LABEL_48:
        v28 = (v64 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        goto LABEL_55;
      }

      v16 = v14;
      v17 = (*(*a1 + 32))(a1);
      v18 = mlir::LLVM::AtomicOrderingAttr::get(*v17, v16);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 40) = v18;
    }

LABEL_20:
    if (v65 != v67)
    {
      free(v65);
    }

    v40 = 0;
    v41 = 0;
    v65 = v67;
    v66 = 0x400000000;
    v68 = 4;
    v12 = (*(*a1 + 40))(a1);
    v61 = xmmword_2799BEB20;
    v62 = *&off_2799BEB30;
    v63 = xmmword_2799BEB40;
    __src = xmmword_2799BEAE0;
    v58 = *&off_2799BEAF0;
    v59 = xmmword_2799BEB00;
    v60 = *&off_2799BEB10;
    if ((*(*a1 + 424))(a1, &v40, &__src, 7))
    {
      v19 = v41;
      if (!v41)
      {
        goto LABEL_26;
      }

LABEL_24:
      v20 = mlir::LLVM::symbolizeAtomicOrdering(v40, v19);
      if (v21)
      {
        v22 = v20;
        v23 = (*(*a1 + 32))(a1);
        v24 = mlir::LLVM::AtomicOrderingAttr::get(*v23, v22);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 24) = v24;
        goto LABEL_26;
      }

      v38[0] = "invalid ";
      v39 = 259;
      (*(*a1 + 24))(&__src, a1, v12, v38);
      if (!__src)
      {
        goto LABEL_48;
      }

      v36 = "failure_ordering attribute specification: ";
      goto LABEL_59;
    }

    v38[0] = 0;
    v33 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v33);
    v35 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v38, NoneType, "failure_ordering", 0x10, &v65);
    if ((v35 & 0x100) == 0)
    {
      v32 = "expected string or keyword containing one of the following enum values for attribute 'failure_ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
      goto LABEL_47;
    }

    if (v35)
    {
      v19 = *(v38[0] + 24);
      v40 = *(v38[0] + 16);
      v41 = v19;
      if (!v19)
      {
LABEL_26:
        if (v65 != v67)
        {
          free(v65);
        }

        v65 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v25 = *(a2 + 1);
          *&__src = a1;
          *(&__src + 1) = &v65;
          *&v58 = a2;
          if (mlir::LLVM::AtomicCmpXchgOp::verifyInherentAttrs(v25, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AtomicCmpXchgOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v45) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0)
          {
            *&__src = 0;
            if ((*(*a1 + 536))(a1, &__src))
            {
              v43 = __src;
              v55[0] = __src;
              v26 = *(*__src + 136);
              if (v26 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
              {
                if (*(__src + 8) >> 30)
                {
LABEL_36:
                  v27 = (*(*a1 + 16))(a1);
                  v67[8] = 257;
                  (*(*a1 + 24))(&__src, a1, v27, &v65);
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<<62ul>(&__src + 8, "'val' must be signless integer or LLVM pointer type, but got ");
                    if (__src)
                    {
                      mlir::Diagnostic::operator<<<mlir::Type &>(&__src + 8, v55);
                    }
                  }

                  v28 = (v64 & 1) == 0;
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
                  return v28;
                }
              }

              else if (v26 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
              {
                goto LABEL_36;
              }

              *&__src = getValAndBoolStructType(__src);
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, &__src, &__src + 8);
              if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v52, v44, v6, (a2 + 4)) && ((*(*a1 + 728))(a1, v50, v43, a2 + 2) & 1) != 0)
              {
                return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v47, v42, v7, (a2 + 4));
              }
            }
          }
        }

        return 0;
      }

      goto LABEL_24;
    }

    goto LABEL_54;
  }

  v38[0] = 0;
  v29 = (*(*a1 + 32))(a1);
  v30 = mlir::Builder::getNoneType(v29);
  v31 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v38, v30, "success_ordering", 0x10, &v65);
  if ((v31 & 0x100) == 0)
  {
    v32 = "expected string or keyword containing one of the following enum values for attribute 'success_ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
LABEL_47:
    v55[0] = v32;
    v56 = 259;
    (*(*a1 + 24))(&__src, a1, v12, v55);
    goto LABEL_48;
  }

  if (v31)
  {
    v13 = *(v38[0] + 24);
    v40 = *(v38[0] + 16);
    v41 = v13;
    if (v13)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_54:
  v28 = 0;
LABEL_55:
  if (v65 != v67)
  {
    free(v65);
  }

  return v28;
}

BOOL mlir::LLVM::AtomicRMWOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v13, "alias_scopes", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v16, "alignment", 9, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(v19, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v22, "noalias_scopes", 0xE, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v25, "ordering", 8, a3, a4))
            {
              v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
              if ((v27 & 1) == 0 || (v28 = v26[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v28, "syncscope", 9, a3, a4))
              {
                v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
                if ((v30 & 1) == 0 || (v31 = v29[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v31, a3, a4))
                {
                  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
                  if ((v33 & 1) == 0)
                  {
                    return 1;
                  }

                  v34 = v32[1];
                  if (!v34 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v34, "volatile_", 9, a3, a4))
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::AtomicBinOpAttr::classof(a1))
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "bin_op";
      v7[1] = 6;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<65ul>(v10, "' failed to satisfy constraint: llvm.atomicrmw binary operations");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AtomicRMWOp::inferReturnTypes(uint64_t a1, unint64_t a2, unint64_t **a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 < 2)
  {
    return 0;
  }

  v5 = 1;
  **a3 = *(mlir::ValueRange::dereference_iterator(v7, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps7(mlir::Operation *a1, const char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v27[25] = *MEMORY[0x277D85DE8];
  v22 = a5;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
  {
    return 1;
  }

  v9 = *(*a2 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(a2 + 2) >> 30))
  {
    return 1;
  }

  if (!mlir::LLVM::isScalableVectorType(a2))
  {
    return 1;
  }

  v21 = 261;
  v20[0] = a3;
  v20[1] = a4;
  mlir::Operation::emitOpError(&v26, a1, v20);
  if (v26)
  {
    mlir::Diagnostic::operator<<<3ul>(v27, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v26, &v22);
  v11 = v10;
  if (*v10)
  {
    v23 = 3;
    v24 = " must be floating point LLVM type or LLVM pointer type or signless integer or LLVM dialect-compatible fixed-length vector type, but got ";
    v25 = 136;
    v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v23, 1);
    v13 = v11[3] + 24 * *(v11 + 8);
    v14 = *v12;
    *(v13 + 16) = *(v12 + 16);
    *v13 = v14;
    ++*(v11 + 8);
    if (*v11)
    {
      v23 = 4;
      v24 = a2;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v23, 1);
      v16 = v11[3] + 24 * *(v11 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v11 + 8);
    }
  }

  v18 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  return v18;
}

BOOL mlir::LLVM::AtomicRMWOp::parse(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  v51[0] = v52;
  v51[1] = 1;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v48[0] = v49;
  v48[1] = 1;
  v46 = 0;
  v47 = 0;
  v45[0] = &v46;
  v45[1] = 1;
  v43[1] = 1;
  __src = 0;
  v43[0] = &__src;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2) + 64) = v4;
  }

  v41 = 0;
  v42 = 0;
  v58 = v60;
  v59 = 0x400000000;
  v61 = 4;
  v5 = (*(*a1 + 40))(a1);
  memcpy(__dst, &off_2799BE940, sizeof(__dst));
  if ((*(*a1 + 424))(a1, &v41, __dst, 19))
  {
    v6 = v42;
    if (!v42)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v39[0] = 0;
  v31 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v31);
  v33 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v39, NoneType, "bin_op", 6, &v58);
  if ((v33 & 0x100) == 0)
  {
    v54 = "expected string or keyword containing one of the following enum values for attribute 'bin_op' [xchg, add, sub, _and, nand, _or, _xor, max, min, umax, umin, fadd, fsub, fmax, fmin, uinc_wrap, udec_wrap, usub_cond, usub_sat]";
    v56 = 259;
    (*(*a1 + 24))(__dst, a1, v5, &v54);
LABEL_48:
    v30 = (BYTE8(__dst[12]) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
    goto LABEL_50;
  }

  if ((v33 & 1) == 0)
  {
    v30 = 0;
LABEL_50:
    v34 = v58;
    if (v58 == v60)
    {
      return v30;
    }

LABEL_51:
    free(v34);
    return v30;
  }

  v6 = *(v39[0] + 24);
  v41 = *(v39[0] + 16);
  v42 = v6;
  if (v6)
  {
LABEL_5:
    v7 = mlir::LLVM::symbolizeAtomicBinOp(v41, v6);
    if (v8)
    {
      v9 = v7;
      v10 = (*(*a1 + 32))(a1);
      v11 = mlir::IntegerType::get(*v10, 64, 0);
      v12 = mlir::IntegerAttr::get(v11, v9);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2) + 24) = v12;
      goto LABEL_7;
    }

    v39[0] = "invalid ";
    v40 = 259;
    (*(*a1 + 24))(__dst, a1, v5, v39);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<34ul>(__dst + 8, "bin_op attribute specification: ");
      if (*&__dst[0])
      {
        v56 = 261;
        v54 = v41;
        v55 = v42;
        mlir::Diagnostic::operator<<(__dst + 8, &v54);
        if (*&__dst[0])
        {
          v56 = 264;
          LOBYTE(v54) = 34;
          mlir::Diagnostic::operator<<(__dst + 8, &v54);
        }
      }
    }

    goto LABEL_48;
  }

LABEL_7:
  if (v58 != v60)
  {
    free(v58);
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v52, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v49, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      return 0;
    }

    v15 = (*(*a1 + 32))(a1);
    v17 = mlir::NoneType::get(*v15, v16);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v47, v17))
    {
      return 0;
    }

    if (v47)
    {
      v18 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2);
      *(v18 + 48) = v47;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v41 = 0;
  v42 = 0;
  v58 = v60;
  v59 = 0x400000000;
  v61 = 4;
  v19 = (*(*a1 + 40))(a1);
  __dst[4] = xmmword_2799BEB20;
  __dst[5] = *&off_2799BEB30;
  __dst[6] = xmmword_2799BEB40;
  __dst[0] = xmmword_2799BEAE0;
  __dst[1] = *&off_2799BEAF0;
  __dst[2] = xmmword_2799BEB00;
  __dst[3] = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v41, __dst, 7))
  {
    v20 = v42;
    if (!v42)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v39[0] = 0;
  v35 = (*(*a1 + 32))(a1);
  v36 = mlir::Builder::getNoneType(v35);
  v37 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v39, v36, "ordering", 8, &v58);
  if ((v37 & 0x100) == 0)
  {
    v54 = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v56 = 259;
    (*(*a1 + 24))(__dst, a1, v19, &v54);
LABEL_61:
    v30 = (BYTE8(__dst[12]) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
    goto LABEL_63;
  }

  if ((v37 & 1) == 0)
  {
    v30 = 0;
LABEL_63:
    v34 = v58;
    if (v58 == v60)
    {
      return v30;
    }

    goto LABEL_51;
  }

  v20 = *(v39[0] + 24);
  v41 = *(v39[0] + 16);
  v42 = v20;
  if (v20)
  {
LABEL_20:
    v21 = mlir::LLVM::symbolizeAtomicOrdering(v41, v20);
    if (v22)
    {
      v23 = v21;
      v24 = (*(*a1 + 32))(a1);
      v25 = mlir::LLVM::AtomicOrderingAttr::get(*v24, v23);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2) + 40) = v25;
      goto LABEL_22;
    }

    v39[0] = "invalid ";
    v40 = 259;
    (*(*a1 + 24))(__dst, a1, v19, v39);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<36ul>(__dst + 8, "ordering attribute specification: ");
      if (*&__dst[0])
      {
        v56 = 261;
        v54 = v41;
        v55 = v42;
        mlir::Diagnostic::operator<<(__dst + 8, &v54);
        if (*&__dst[0])
        {
          v56 = 264;
          LOBYTE(v54) = 34;
          mlir::Diagnostic::operator<<(__dst + 8, &v54);
        }
      }
    }

    goto LABEL_61;
  }

LABEL_22:
  if (v58 != v60)
  {
    free(v58);
  }

  v58 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v26 = *(a2 + 8);
  *&__dst[0] = a1;
  *(&__dst[0] + 1) = &v58;
  *&__dst[1] = a2;
  if (!mlir::LLVM::AtomicRMWOp::verifyInherentAttrs(v26, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AtomicRMWOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, __dst))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 536))(a1, &v46) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  *&__dst[0] = 0;
  if (((*(*a1 + 536))(a1, __dst) & 1) == 0)
  {
    return 0;
  }

  v27 = *&__dst[0];
  __src = *&__dst[0];
  v54 = *&__dst[0];
  if (mlir::LLVM::isCompatibleFloatingPointType(*&__dst[0]) || (v28 = *(*v27 + 136), v28 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id) || v28 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v27[2] >> 30) || !mlir::LLVM::isScalableVectorType(v27))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v45);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v51, v45, v13, a2 + 16))
    {
      return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v48, v43, v14, a2 + 16);
    }

    return 0;
  }

  v29 = (*(*a1 + 16))(a1);
  v60[8] = 257;
  (*(*a1 + 24))(__dst, a1, v29, &v58);
  if (*&__dst[0])
  {
    mlir::Diagnostic::operator<<<142ul>(__dst + 8);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(__dst + 8, &v54);
    }
  }

  v30 = (BYTE8(__dst[12]) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  return v30;
}

void mlir::LLVM::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps8(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = 0;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    v8 = *(*a2 + 136);
    if (v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
    {
      return 1;
    }
  }

  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  mlir::Operation::emitOpError(&v22, a1, v17);
  if (v22)
  {
    mlir::Diagnostic::operator<<<3ul>(v23, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<54ul>((v10 + 1), " must be LLVM-compatible non-aggregate type, but got ");
    if (*v11)
    {
      v20 = 4;
      v21 = a2;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v20, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
    }
  }

  v15 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  return v15;
}

BOOL mlir::LLVM::BitcastOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::BrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "loop_annotation";
      v5[1] = 15;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<33ul>(v8, "' failed to satisfy constraint: ");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::BrOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::LoopAnnotationAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20CA0))
  {
    qword_27FC20C90 = llvm::detail::getTypeNameImpl<mlir::LLVM::LoopAnnotationAttr>();
    *algn_27FC20C98 = v11;
    __cxa_guard_release(&qword_27FC20CA0);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20C90;
    v15 = *algn_27FC20C98;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(mlir::Operation *a1, uint64_t a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    return 1;
  }

  v13 = 261;
  v12[0] = "operand";
  v12[1] = 7;
  mlir::Operation::emitOpError(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<3ul>(v18, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<60ul>((v6 + 1), " must be variadic of LLVM dialect-compatible type, but got ");
    if (*v7)
    {
      v15 = 4;
      v16 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v15, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v5 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v5;
}

BOOL mlir::LLVM::BrOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v13[0] = v14;
  v13[1] = 0x400000000;
  v10 = 0;
  v11[0] = &v12;
  v11[1] = 0x100000000;
  if (((*(*a1 + 800))() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v11) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::LLVM::BrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::BrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8))
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v10);
      v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v13, v11, v4, a2 + 16);
      goto LABEL_13;
    }
  }

LABEL_12:
  v6 = 0;
LABEL_13:
  if (v11[0] != &v12)
  {
    free(v11[0]);
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v6;
}

BOOL mlir::LLVM::CallIntrinsicOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "intrin", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v16, "op_bundle_sizes", 0xF, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v19, "op_bundle_tags", 0xE, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "fastmathFlags";
      v5[1] = 13;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<52ul>(v8, "' failed to satisfy constraint: LLVM fastmath flags");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 32)
    {
      return 1;
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<58ul>(v13, "' failed to satisfy constraint: i32 dense array attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<48ul>(v12, "' failed to satisfy constraint: array attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FastmathFlagsAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20CE0))
  {
    qword_27FC20CD0 = llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsAttr>();
    *algn_27FC20CD8 = v11;
    __cxa_guard_release(&qword_27FC20CE0);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20CD0;
    v15 = *algn_27FC20CD8;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a5;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    return 1;
  }

  v17 = 261;
  v16[0] = a3;
  v16[1] = a4;
  mlir::Operation::emitOpError(&v21, a1, v16);
  if (v21)
  {
    mlir::Diagnostic::operator<<<3ul>(v22, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<48ul>((v10 + 1), " must be LLVM dialect-compatible type, but got ");
    if (*v11)
    {
      v19 = 4;
      v20 = a2;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v19, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
    }
  }

  v9 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  return v9;
}

BOOL mlir::LLVM::CallIntrinsicOp::parse(char **a1, uint64_t a2)
{
  v48[6] = *MEMORY[0x277D85DE8];
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0xC00000000;
  v31 = 0;
  v32[0] = &v33;
  v32[1] = 0x100000000;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v5 = **(*(*a1 + 4))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v43 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &v43);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v31, v6))
  {
    goto LABEL_30;
  }

  if (v31)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2);
    *(v8 + 8) = v31;
  }

  if (((*(*a1 + 35))(a1) & 1) == 0)
  {
    goto LABEL_30;
  }

  v9 = (*(*a1 + 5))(a1);
  if (((*(*a1 + 90))(a1, &v40, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 37))(a1) & 1) == 0)
  {
    goto LABEL_30;
  }

  v10 = (*(*a1 + 5))(a1);
  v46 = v48;
  v47 = 0x100000000;
  v43 = &v45;
  v44 = 0x100000000;
  v11 = parseOpBundles(a1, &v46, &v43, &v30);
  if (v11 >= 0x100u)
  {
    if (v11)
    {
      if (v47)
      {
        v13 = v46;
        v2 = &v46[6 * v47];
        do
        {
          llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(&v37, *v13, &(*v13)[32 * *(v13 + 2)]);
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v34, *(v13 + 2));
          v13 += 6;
        }

        while (v13 != v2);
      }

      if (v44)
      {
        v14 = v43;
        v2 = &v43[8 * v44];
        do
        {
          llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v32, *v14, &(*v14)[8 * *(v14 + 2)]);
          v14 += 8;
        }

        while (v14 != v2);
      }

      v15 = v30;
      if (v30)
      {
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2) + 24) = v15;
      }

      v12 = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v2) = 1;
  }

  if ((llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v43), llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v46), (v2) || v12) && ((*(*a1 + 13))(a1) & 1) != 0 && (v46 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v46)) && (v16 = v46[2], v17 = *(v46 + 2), v28 = v16, v29 = v17, v26 = *(v46 + 3), v27 = (*(*a1 + 5))(a1), ((*(*a1 + 61))(a1, a2 + 112)) && (v18 = *(a2 + 8), v43 = a1, v44 = &v27, v45 = a2, mlir::LLVM::CallIntrinsicOp::verifyInherentAttrs(v18, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CallIntrinsicOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1>, &v43)) && (v25 = &v16[8 * v17], v19 = v41, v20 = v38, *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2) + 32) = v19 | (v20 << 32), v21 = (*(*a1 + 4))(a1), v22 = mlir::detail::DenseArrayAttrImpl<int>::get(*v21, v34, v35), *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2) + 16) = v22, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v25, &v25[8 * v26]), mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, &v40, &v28, v9, a2 + 16)))
  {
    v23 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v37, v32, v10, a2 + 16);
  }

  else
  {
LABEL_30:
    v23 = 0;
  }

  if (v32[0] != &v33)
  {
    free(v32[0]);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  return v23;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "CConv";
      v5[1] = 5;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<70ul>(v8, "' failed to satisfy constraint: LLVM Calling Convention specification");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "TailCallKind";
      v5[1] = 12;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<70ul>(v8, "' failed to satisfy constraint: LLVM Calling Convention specification");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v14, a5);
  if (v14)
  {
    mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
    if (v14)
    {
      v13 = 261;
      v12[0] = a2;
      v12[1] = a3;
      mlir::Diagnostic::operator<<(v15, v12);
      if (v14)
      {
        mlir::Diagnostic::operator<<<63ul>(v15, "' failed to satisfy constraint: Array of dictionary attributes");
      }
    }
  }

  v7 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "memory_effects";
      v5[1] = 14;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<33ul>(v8, "' failed to satisfy constraint: ");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(void **a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<69ul>(v12, "' failed to satisfy constraint: type attribute of LLVM function type");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20D20))
  {
    qword_27FC20D10 = llvm::detail::getTypeNameImpl<mlir::LLVM::CConvAttr>();
    *algn_27FC20D18 = v11;
    __cxa_guard_release(&qword_27FC20D20);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20D10;
    v15 = *algn_27FC20D18;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (((*(*a1 + 56))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  if (!v12)
  {
    return 1;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v4 = v12[1];
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v4[2] == 32)
    {
      *a2 = v12;
      return 1;
    }
  }

  *a2 = 0;
  v11[16] = 257;
  (*(*a1 + 16))(&v16, a1, v11);
  if (v16)
  {
    mlir::Diagnostic::operator<<<10ul>(v17, "expected ");
  }

  {
    llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<int>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<int>>();
    *algn_27FC18C88 = v10;
  }

  if (v16)
  {
    v15 = 261;
    v13 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<int>>(void)::Name;
    v14 = *algn_27FC18C88;
    mlir::Diagnostic::operator<<(v17, &v13);
    if (v16)
    {
      mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
      if (v16)
      {
        LODWORD(v13) = 0;
        v14 = v12;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
        v7 = v18 + 24 * v19;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v19;
      }
    }
  }

  v5 = (v20 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v5;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (((*(*a1 + 56))(a1, &v11) & 1) == 0)
  {
    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !v11[3])
  {
    *a2 = v11;
    return 1;
  }

  *a2 = 0;
  v10[16] = 257;
  (*(*a1 + 16))(&v15, a1, v10);
  if (v15)
  {
    mlir::Diagnostic::operator<<<10ul>(v16, "expected ");
  }

  {
    llvm::getTypeName<mlir::FlatSymbolRefAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::FlatSymbolRefAttr>();
    *algn_27FC17BC8 = v9;
  }

  if (v15)
  {
    v14 = 261;
    v12 = llvm::getTypeName<mlir::FlatSymbolRefAttr>(void)::Name;
    v13 = *algn_27FC17BC8;
    mlir::Diagnostic::operator<<(v16, &v12);
    if (v15)
    {
      mlir::Diagnostic::operator<<<12ul>(v16, ", but got: ");
      if (v15)
      {
        LODWORD(v12) = 0;
        v13 = v11;
        v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v17, &v12, 1);
        v5 = v17 + 24 * v18;
        v6 = *v4;
        *(v5 + 16) = *(v4 + 16);
        *v5 = v6;
        ++v18;
      }
    }
  }

  v7 = (v19 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v7;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::MemoryEffectsAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20D50))
  {
    qword_27FC20D40 = llvm::detail::getTypeNameImpl<mlir::LLVM::MemoryEffectsAttr>();
    *algn_27FC20D48 = v11;
    __cxa_guard_release(&qword_27FC20D50);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20D40;
    v15 = *algn_27FC20D48;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

uint64_t mlir::LLVM::CallOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 2uLL);
}

uint64_t mlir::LLVM::CallOp::populateDefaultProperties(uint64_t result, uint64_t *a2)
{
  v3 = *(***(result + 8) + 32);
  if (!a2[8])
  {
    result = mlir::LLVM::FastmathFlagsAttr::get(*(***(result + 8) + 32), 0);
    a2[8] = result;
  }

  if (!*a2)
  {
    result = mlir::LLVM::CConvAttr::get(v3, 0);
    *a2 = result;
  }

  if (!a2[1])
  {
    result = mlir::LLVM::TailCallKindAttr::get(v3, 0);
    a2[1] = result;
  }

  return result;
}

BOOL mlir::LLVM::ComdatOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v8, "sym_name", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ComdatSelectorOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::comdat::ComdatAttr::classof(a1))
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "comdat";
      v7[1] = 6;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<50ul>(v10, "' failed to satisfy constraint: LLVM Comdat Types");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ComdatSelectorOp::parse(mlir::AsmParser *a1, void *a2)
{
  v33[9] = *MEMORY[0x277D85DE8];
  v23 = 0;
  if ((mlir::AsmParser::parseSymbolName(a1, &v23) & 1) == 0)
  {
    return 0;
  }

  if (v23)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(a2);
    *(v4 + 8) = v23;
  }

  v21 = 0;
  v22 = 0;
  v32[0] = v33;
  v32[1] = 0x400000000;
  v33[8] = 4;
  v5 = (*(*a1 + 40))(a1);
  v28 = xmmword_2799BEA90;
  v29 = *&off_2799BEAA0;
  v30 = xmmword_2799BEAB0;
  v26 = xmmword_2799BEA70;
  v27 = *&off_2799BEA80;
  if ((*(*a1 + 424))(a1, &v21, &v26, 5))
  {
    v6 = v22;
    if (!v22)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = mlir::LLVM::comdat::symbolizeComdat(v21, v6);
    if (v8)
    {
      v9 = v7;
      v10 = (*(*a1 + 32))(a1);
      v11 = mlir::IntegerType::get(*v10, 64, 0);
      v12 = mlir::IntegerAttr::get(v11, v9);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(a2) = v12;
      goto LABEL_8;
    }

    v19[0] = "invalid ";
    v20 = 259;
    (*(*a1 + 24))(&v26, a1, v5, v19);
    if (v26)
    {
      mlir::Diagnostic::operator<<<34ul>(&v26 + 8, "comdat attribute specification: ");
      if (v26)
      {
        v25 = 261;
        v24[0] = v21;
        v24[1] = v22;
        mlir::Diagnostic::operator<<(&v26 + 8, v24);
        if (v26)
        {
          v25 = 264;
          LOBYTE(v24[0]) = 34;
          mlir::Diagnostic::operator<<(&v26 + 8, v24);
        }
      }
    }

    goto LABEL_23;
  }

  v19[0] = 0;
  v15 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v15);
  v17 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v19, NoneType, "comdat", 6, v32);
  if ((v17 & 0x100) == 0)
  {
    v24[0] = "expected string or keyword containing one of the following enum values for attribute 'comdat' [any, exactmatch, largest, nodeduplicate, samesize]";
    v25 = 259;
    (*(*a1 + 24))(&v26, a1, v5, v24);
LABEL_23:
    v14 = (v31 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
    goto LABEL_25;
  }

  if (v17)
  {
    v6 = *(v19[0] + 24);
    v21 = *(v19[0] + 16);
    v22 = v6;
    if (!v6)
    {
LABEL_8:
      if (v32[0] != v33)
      {
        free(v32[0]);
      }

      v32[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        v13 = a2[1];
        *&v26 = a1;
        *(&v26 + 1) = v32;
        *&v27 = a2;
        if (mlir::LLVM::ComdatSelectorOp::verifyInherentAttrs(v13, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ComdatSelectorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v26))
        {
          return 1;
        }
      }

      return 0;
    }

    goto LABEL_6;
  }

  v14 = 0;
LABEL_25:
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v14;
}

BOOL mlir::LLVM::CondBrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v10, "branch_weights", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::CondBrOp::parse(uint64_t a1, void *a2)
{
  v31[16] = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v29 = v31;
  v30 = 0x400000000;
  v27[0] = &v28;
  v27[1] = 0x100000000;
  v17 = 0;
  v24 = v26;
  v25 = 0x400000000;
  v22[0] = &v23;
  v22[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 408))(a1, "weights", 7))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      goto LABEL_31;
    }

    v4 = v19;
    if (v19)
    {
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(a2) = v4;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v18) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 288))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v29, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v27) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v17))
  {
    if ((*(*a1 + 288))(a1))
    {
      v6 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v22) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = 0;
    }

    v16 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 14))
    {
      v7 = a2[1];
      v15[0] = a1;
      v15[1] = &v16;
      v15[2] = a2;
      if (mlir::LLVM::CondBrOp::verifyInherentAttrs(v7, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CondBrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v18);
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v17);
        v8 = v30;
        v9 = v25;
        v10 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(a2);
        v10[4] = 1;
        v10[5] = v8;
        v10[6] = v9;
        v11 = (*(*a1 + 32))(a1);
        v12 = mlir::IntegerType::get(*v11, 1, 0);
        if (((*(*a1 + 728))(a1, v20, v12, a2 + 2) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v29, v27, v5, (a2 + 2)))
        {
          v13 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v24, v22, v6, (a2 + 2));
          goto LABEL_32;
        }
      }
    }
  }

LABEL_31:
  v13 = 0;
LABEL_32:
  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (v27[0] != &v28)
  {
    free(v27[0]);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  return v13;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if (((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIiEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_, v11) & 1) == 0)
  {
    return 0;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v5 = v10[1], *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v5[2] == 32)
  {
    *a2 = v10;
    return 1;
  }

  else
  {
    *a2 = 0;
    v8 = "invalid kind of attribute specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<int>,(void *)0>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    v6 = (*(*a1 + 16))(a1);
    mlir::detail::DenseArrayAttrImpl<int>::print(&v7, v6);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v7);
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::LLVM::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, a3, a4);
  __src = a3;
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v8);
}

uint64_t mlir::LLVM::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v8, 0) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
    *v4 = v8;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2 + 112, **(*(a2 + 8) + 96));
  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v8);
  return 1;
}

uint64_t mlir::LLVM::ExtractElementOp::inferReturnTypes(uint64_t a1, uint64_t a2, void **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2 && v6)
    {
      v6 = v6[3];
    }
  }

  else
  {
    v6 = *v6;
  }

  v8 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*v8 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 24;
  if (v10)
  {
    v11 = 8;
  }

  **a3 = *(v8 + v11);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(mlir::Operation *a1, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a5;
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    return 1;
  }

  v17 = 261;
  v16[0] = a3;
  v16[1] = a4;
  mlir::Operation::emitOpError(&v21, a1, v16);
  if (v21)
  {
    mlir::Diagnostic::operator<<<3ul>(v22, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<55ul>((v10 + 1), " must be LLVM dialect-compatible vector type, but got ");
    if (*v11)
    {
      v19 = 4;
      v20 = a2;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v19, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
    }
  }

  v9 = (v11[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  return v9;
}

BOOL mlir::LLVM::ExtractElementOp::parse(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v16 = 0;
  v17[0] = &v18;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &__src))
  {
    return 0;
  }

  v18 = __src;
  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v16 = __src;
  v14 = __src;
  if (mlir::LLVM::isCompatibleVectorType(__src))
  {
    v6 = *(*v16 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v8 = 3;
    if (v7)
    {
      v8 = 1;
    }

    __src = v16[v8];
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v26);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v15, v4, a2 + 16))
    {
      return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v17, v5, a2 + 16);
    }

    return 0;
  }

  v11 = (*(*a1 + 16))(a1);
  v13 = 257;
  (*(*a1 + 24))(&__src, a1, v11, v12);
  if (__src)
  {
    mlir::Diagnostic::operator<<<63ul>(v26, "'vector' must be LLVM dialect-compatible vector type, but got ");
    if (__src)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v26, &v14);
    }
  }

  v9 = (v26[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  return v9;
}

BOOL mlir::LLVM::ExtractValueOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v3 = a1[1];
      if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 64)
      {
        return 1;
      }
    }
  }

  a2(&v8, a3);
  if (v8)
  {
    mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
    if (v8)
    {
      v7 = 261;
      v6[0] = "position";
      v6[1] = 8;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<58ul>(v9, "' failed to satisfy constraint: i64 dense array attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExtractValueOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (((*(*a1 + 48))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = v12[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 64)
  {
    *a2 = v12;
    return 1;
  }

  else
  {
    *a2 = 0;
    v11[16] = 257;
    (*(*a1 + 16))(&v16, a1, v11);
    if (v16)
    {
      mlir::Diagnostic::operator<<<10ul>(v17, "expected ");
    }

    {
      llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<long long>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<long long>>();
      unk_27FC1B020 = v10;
    }

    if (v16)
    {
      v15 = 261;
      v13 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<long long>>(void)::Name;
      v14 = unk_27FC1B020;
      mlir::Diagnostic::operator<<(v17, &v13);
      if (v16)
      {
        mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
        if (v16)
        {
          LODWORD(v13) = 0;
          v14 = v12;
          v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
          v7 = v18 + 24 * v19;
          v8 = *v6;
          *(v7 + 16) = *(v6 + 16);
          *v7 = v8;
          ++v19;
        }
      }
    }

    v5 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
  {
    return 1;
  }

  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  mlir::Operation::emitOpError(&v19, a1, v14);
  if (v19)
  {
    mlir::Diagnostic::operator<<<3ul>(v20, " #");
  }

  v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
  v9 = v8;
  if (*v8)
  {
    mlir::Diagnostic::operator<<<39ul>((v8 + 1), " must be LLVM aggregate type, but got ");
    if (*v9)
    {
      v17 = 4;
      v18 = a2;
      v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v9 + 3), &v17, 1);
      v11 = v9[3] + 24 * *(v9 + 8);
      v12 = *v10;
      *(v11 + 16) = *(v10 + 16);
      *v11 = v12;
      ++*(v9 + 8);
    }
  }

  v6 = (v9[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  return v6;
}

BOOL mlir::LLVM::ExtractValueOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12 = 0;
  v13 = 0;
  v11[0] = &v12;
  v11[1] = 1;
  __src = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExtractValueOpGenericAdaptorBase::Properties>(a2);
    *v5 = v13;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a2;
  if (!mlir::LLVM::ExtractValueOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExtractValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v8[0] = 0;
  if (((*(*a1 + 536))(a1, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v8[0];
  if (!parseInsertExtractValueElementType(a1, &__src, v8[0], v13))
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v11);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v11, v4, a2 + 16);
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v12 = 0;
  v13[0] = a1;
  if (((*(*a1 + 448))(a1, &v12, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIxEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_, v13) & 1) == 0)
  {
    return 0;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = v12[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
  {
    *a2 = v12;
    return 1;
  }

  else
  {
    *a2 = 0;
    v10 = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v6, &v10);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v8;
}

BOOL parseInsertExtractValueElementType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  ValueElementType = getInsertExtractValueElementType(llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<parseInsertExtractValueElementType(mlir::AsmParser &,mlir::Type &,mlir::Type,mlir::detail::DenseArrayAttrImpl<long long>)::$_0>, &v7, a3, *(a4 + 24), *(a4 + 32) >> 3);
  *a2 = ValueElementType;
  return ValueElementType != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    v6 = (*(*a1 + 16))(a1);
    mlir::detail::DenseArrayAttrImpl<long long>::print(&v7, v6);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v7);
    }
  }

  return result;
}

BOOL mlir::LLVM::FAddOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FAddOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps14(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v24 = a5;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
  {
    return 1;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v12 = 24;
  if (v11)
  {
    v12 = 8;
  }

  if (mlir::LLVM::isCompatibleFloatingPointType(*&a2[v12]))
  {
    return 1;
  }

LABEL_10:
  v23 = 261;
  v22[0] = a3;
  v22[1] = a4;
  mlir::Operation::emitOpError(&v28, a1, v22);
  if (v28)
  {
    mlir::Diagnostic::operator<<<3ul>(v29, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v24);
  v14 = v13;
  if (*v13)
  {
    v25 = 3;
    v26 = " must be floating point LLVM type or LLVM dialect-compatible vector of floating point LLVM type, but got ";
    v27 = 105;
    v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v25, 1);
    v16 = v14[3] + 24 * *(v14 + 8);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 16);
    *v16 = v17;
    ++*(v14 + 8);
    if (*v14)
    {
      v25 = 4;
      v26 = a2;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v25, 1);
      v19 = v14[3] + 24 * *(v14 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v14 + 8);
    }
  }

  v9 = (v14[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  return v9;
}

uint64_t mlir::LLVM::FAddOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(a2 + 8), v6 = a1, v7[0] = &v8, v7[1] = a2, mlir::LLVM::FAddOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FAddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps26(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::FCmpPredicateAttr::classof(a1))
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "predicate";
      v7[1] = 9;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<63ul>(v10, "' failed to satisfy constraint: llvm.fcmp comparison predicate");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::LLVM::FCmpOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = getI1SameShape((v6[1] & 0xFFFFFFFFFFFFFFF8));
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps15(mlir::Operation *a1, _DWORD *a2, const char *a3, const char *a4)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    return 1;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_12;
  }

  v8 = *(*a2 + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v10 = 6;
  if (v9)
  {
    v10 = 2;
  }

  v11 = *&a2[v10];
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11[2] == 1)
  {
    return 1;
  }

LABEL_12:
  v20 = 261;
  v19[0] = a3;
  v19[1] = a4;
  mlir::Operation::emitOpError(&v24, a1, v19);
  if (v24)
  {
    mlir::Diagnostic::operator<<<3ul>(v25, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v21);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<102ul>((v13 + 1), " must be 1-bit signless integer or LLVM dialect-compatible vector of 1-bit signless integer, but got ");
    if (*v14)
    {
      v22 = 4;
      v23 = a2;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v22, 1);
      v16 = v14[3] + 24 * *(v14 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v14 + 8);
    }
  }

  v12 = (v14[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  return v12;
}

uint64_t *getI1SameShape(void *a1)
{
  v2 = mlir::IntegerType::get(*(**a1 + 32), 1, 0);
  if (!mlir::LLVM::isCompatibleVectorType(a1))
  {
    return v2;
  }

  VectorNumElements = mlir::LLVM::getVectorNumElements(a1);

  return mlir::LLVM::getVectorType(v2, VectorNumElements, BYTE4(VectorNumElements) & 1);
}

BOOL mlir::LLVM::FDivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FDivOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::FDivOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(a2 + 8), v6 = a1, v7[0] = &v8, v7[1] = a2, mlir::LLVM::FDivOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FMulOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FMulOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::FMulOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(a2 + 8), v6 = a1, v7[0] = &v8, v7[1] = a2, mlir::LLVM::FMulOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMulOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FNegOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FNegOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::FNegOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (!mlir::LLVM::FNegOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FNegOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  if (((*(*a1 + 536))(a1, &v8) & 1) == 0)
  {
    return 0;
  }

  v6 = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7);
  return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
}

BOOL mlir::LLVM::FPExtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FPToSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FPToUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FPTruncOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FRemOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FRemOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::FRemOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(a2 + 8), v6 = a1, v7[0] = &v8, v7[1] = a2, mlir::LLVM::FRemOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FRemOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FSubOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FSubOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::FSubOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(a2 + 8), v6 = a1, v7[0] = &v8, v7[1] = a2, mlir::LLVM::FSubOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FSubOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FenceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v10, "ordering", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "syncscope", 9, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FenceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::FenceOp::parse(uint64_t a1, void *a2)
{
  v38[9] = *MEMORY[0x277D85DE8];
  v26 = 0;
  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      return 0;
    }

    v4 = **(*(*a1 + 32))(a1);
    v5 = *(v4 + 528);
    if (!v5)
    {
      v6 = *(v4 + 384);
      *&v29 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v29);
    }

    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v26, v5))
    {
      return 0;
    }

    if (v26)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FenceOpGenericAdaptorBase::Properties>(a2);
      *(v7 + 8) = v26;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v24 = 0;
  v25 = 0;
  v37[0] = v38;
  v37[1] = 0x400000000;
  v38[8] = 4;
  v8 = (*(*a1 + 40))(a1);
  v33 = xmmword_2799BEB20;
  v34 = *&off_2799BEB30;
  v35 = xmmword_2799BEB40;
  v29 = xmmword_2799BEAE0;
  v30 = *&off_2799BEAF0;
  v31 = xmmword_2799BEB00;
  v32 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v24, &v29, 7))
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_13;
    }

LABEL_11:
    v10 = mlir::LLVM::symbolizeAtomicOrdering(v24, v9);
    if (v11)
    {
      v12 = v10;
      v13 = (*(*a1 + 32))(a1);
      v14 = mlir::IntegerType::get(*v13, 64, 0);
      v15 = mlir::IntegerAttr::get(v14, v12);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FenceOpGenericAdaptorBase::Properties>(a2) = v15;
      goto LABEL_13;
    }

    v22[0] = "invalid ";
    v23 = 259;
    (*(*a1 + 24))(&v29, a1, v8, v22);
    if (v29)
    {
      mlir::Diagnostic::operator<<<36ul>(&v29 + 8, "ordering attribute specification: ");
      if (v29)
      {
        v28 = 261;
        v27[0] = v24;
        v27[1] = v25;
        mlir::Diagnostic::operator<<(&v29 + 8, v27);
        if (v29)
        {
          v28 = 264;
          LOBYTE(v27[0]) = 34;
          mlir::Diagnostic::operator<<(&v29 + 8, v27);
        }
      }
    }

    goto LABEL_28;
  }

  v22[0] = 0;
  v18 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v18);
  v20 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v22, NoneType, "ordering", 8, v37);
  if ((v20 & 0x100) == 0)
  {
    v27[0] = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v28 = 259;
    (*(*a1 + 24))(&v29, a1, v8, v27);
LABEL_28:
    v17 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    goto LABEL_30;
  }

  if (v20)
  {
    v9 = *(v22[0] + 24);
    v24 = *(v22[0] + 16);
    v25 = v9;
    if (!v9)
    {
LABEL_13:
      if (v37[0] != v38)
      {
        free(v37[0]);
      }

      v37[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        v16 = a2[1];
        *&v29 = a1;
        *(&v29 + 1) = v37;
        *&v30 = a2;
        if (mlir::LLVM::FenceOp::verifyInherentAttrs(v16, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FenceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v29))
        {
          return 1;
        }
      }

      return 0;
    }

    goto LABEL_11;
  }

  v17 = 0;
LABEL_30:
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return v17;
}

uint64_t mlir::LLVM::FreezeOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FreezeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  __src = 0;
  v7[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

unint64_t mlir::LLVM::GEPOp::getODSOperandIndexAndLength(mlir::LLVM::GEPOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir4LLVM5GEPOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir4LLVM5GEPOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

BOOL mlir::LLVM::GEPOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v10, "elem_type", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v13, "inbounds", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v16, "rawConstantIndices", 0x12, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::GEPOp::getODSOperands(mlir::LLVM::GEPOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::LLVM::GEPOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::LLVM::GEPOp::parse(uint64_t *a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23[0] = v24;
  v23[1] = 1;
  v27[0] = v28;
  v27[1] = 0x400000000;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v24, 1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  v29 = v31;
  v30 = 0xC00000000;
  v26[0] = a1;
  v26[1] = &v29;
  v26[2] = v27;
  v5 = (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseGEPIndices(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<int> &)::$_0>, v26, 0, 0);
  v6 = 0;
  if (v5)
  {
    v7 = (*(*a1 + 32))(a1);
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*v7, v29, v30);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v5 & 1) != 0 && (*(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(a2) + 16) = v6, ((*(*a1 + 328))(a1)) && (v26[0] = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v29 = a1, v30 = v26, v31[0] = a2, mlir::LLVM::GEPOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GEPOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v29)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v26[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v26)) && (v9 = *(v26[0] + 16), v11 = *(v26[0] + 8), v10 = *(v26[0] + 12), v21 = v9, v22 = v11, ((*(*a1 + 120))(a1)) && (v12 = (*(*a1 + 32))(a1), v14 = mlir::NoneType::get(*v12, v13), mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v20, v14)))
  {
    v15 = (v9 + 8 * v11);
    if (v20)
    {
      v16 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(a2);
      *v16 = v20;
    }

    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v15, &v15[8 * v10]);
    v29 = v23;
    v30 = v27;
    v17 = (*(*a1 + 16))(a1);
    v18 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v29, &v21, v17, a2 + 16);
  }

  else
  {
LABEL_20:
    v18 = 0;
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v18;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v53 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v10 = **a2;
  v11 = *v9;
  v12 = v10 + 32 * (*a2)[1];
  v13 = *v9 + 32 * *(v9 + 2);
  v48 = v10;
  v49 = v11;
  v50 = v12;
  v51 = v13;
  while (v10 != v12 || v11 != v13 || v50 != v12 || v51 != v13)
  {
    v15 = &unk_286E98310;
    v16 = 16;
    do
    {
      v17 = v16;
      v18 = *(v15 - 1);
      v19 = (&v48 + (*v15 >> 1));
      if (*v15)
      {
        v18 = *(*v19 + v18);
      }

      if (v18(v19))
      {
        break;
      }

      v15 += 2;
      v16 = v17 - 16;
    }

    while (v17);
    ++v8;
    v10 = v48;
    v11 = v49;
  }

  v46 = a3[1];
  v47 = v8;
  if (v8 == v46)
  {
    v20 = a2[1];
    v21 = *v20;
    v22 = **a2;
    v23 = v22 + 32 * (*a2)[1];
    v24 = *v20 + 32 * *(v20 + 2);
    v25 = *a3;
    v48 = v22;
    v49 = v21;
    v50 = v23;
    v51 = v24;
    v52 = v25;
    while (v22 != v23 || v21 != v24 || v50 != v23 || v51 != v24)
    {
      v27 = &unk_286E98330;
      do
      {
        v28 = *(v27 - 1);
        v29 = (&v48 + (*v27 >> 1));
        if (*v27)
        {
          v28 = *(*v29 + v28);
        }

        v27 += 2;
        v30 = v28(v29);
      }

      while (!v30);
      if (((*(*a1 + 728))(a1, v30, *v52, a5) & 1) == 0)
      {
        return 0;
      }

      v31 = &unk_286E98310;
      v32 = 16;
      do
      {
        v33 = v32;
        v34 = *(v31 - 1);
        v35 = (&v48 + (*v31 >> 1));
        if (*v31)
        {
          v34 = *(*v35 + v34);
        }

        if (v34(v35))
        {
          break;
        }

        v31 += 2;
        v32 = v33 - 16;
      }

      while (v33);
      ++v52;
      v22 = v48;
      v21 = v49;
    }

    return 1;
  }

  else
  {
    v45 = 257;
    (*(*a1 + 24))(&v48, a1, a4, v44);
    if (v48)
    {
      mlir::Diagnostic::operator<<<48ul>(&v49, "number of operands and types do not match: got ");
    }

    v36 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v48, &v47);
    v37 = v36;
    if (*v36)
    {
      mlir::Diagnostic::operator<<<15ul>((v36 + 1), " operands and ");
    }

    v38 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v46);
    v39 = v38;
    if (*v38)
    {
      mlir::Diagnostic::operator<<<7ul>((v38 + 1), " types");
    }

    v40 = (v39[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
  }

  return v40;
}

BOOL mlir::LLVM::GlobalCtorsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(v10, "ctors", 5, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v9 = a1[2];
    if (!v9)
    {
      return 1;
    }

    v10 = a1[1];
    v11 = 8 * v9;
    while (1)
    {
      v12 = *v10;
      if (!*v10 || *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v12[3])
      {
        break;
      }

      ++v10;
      v11 -= 8;
      if (!v11)
      {
        return 1;
      }
    }
  }

  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<64ul>(v16, "' failed to satisfy constraint: flat symbol ref array attribute");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v5 = a1[2];
    if (!v5)
    {
      return 1;
    }

    v6 = a1[1];
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if (!*v6)
      {
        break;
      }

      if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        break;
      }

      v9 = v8[1];
      if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v9[2] != 32)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return 1;
      }
    }
  }

  a2(&v12, a3);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = "priorities";
      v10[1] = 10;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<63ul>(v13, "' failed to satisfy constraint: 32-bit integer array attribute");
      }
    }
  }

  v3 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v3;
}

BOOL mlir::LLVM::GlobalCtorsOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a1 + 40))(a1);
  result = 0;
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v4 = *(a2 + 8);
    v6[0] = a1;
    v6[1] = &v7;
    v6[2] = a2;
    if (mlir::LLVM::GlobalCtorsOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GlobalCtorsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v6))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::GlobalDtorsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(v10, "dtors", 5, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::GlobalDtorsOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a1 + 40))(a1);
  result = 0;
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v4 = *(a2 + 8);
    v6[0] = a1;
    v6[1] = &v7;
    v6[2] = a2;
    if (mlir::LLVM::GlobalDtorsOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GlobalDtorsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v6))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_9;
  }

  v3 = *(a1 + 8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 32)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 24);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  if (((*(a1 + 16) >> (v4 - 1)) & 1) == 0)
  {
    return 1;
  }

LABEL_9:
  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "addr_space";
      v7[1] = 10;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<94ul>(v10, "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "comdat";
      v5[1] = 6;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<59ul>(v8, "' failed to satisfy constraint: symbol reference attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = a1[2];
    if (v4)
    {
      v5 = a1[1];
      v6 = 8 * v4;
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id)
      {
        v5 += 8;
        v6 -= 8;
        if (!v6)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a2(&v10, a3);
  if (v10)
  {
    mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
    if (v10)
    {
      v9 = 261;
      v8[0] = "dbg_exprs";
      v8[1] = 9;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<65ul>(v11, "' failed to satisfy constraint: an array of variable expressions");
      }
    }
  }

  v3 = (v11[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  return v3;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolRefAttr>();
    unk_27FC18830 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name;
    v15 = unk_27FC18830;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

uint64_t mlir::LLVM::GlobalOp::populateDefaultProperties(uint64_t result, uint64_t *a2)
{
  v3 = *(***(result + 8) + 32);
  if (!*a2)
  {
    v4 = mlir::IntegerType::get(*(***(result + 8) + 32), 32, 0);
    result = mlir::Builder::getIntegerAttr(v6, v4, 0);
    *a2 = result;
  }

  if (!a2[14])
  {
    v5 = mlir::IntegerType::get(v3, 64, 0);
    result = mlir::IntegerAttr::get(v5, 0);
    a2[14] = result;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::ICmpPredicateAttr::classof(a1))
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "predicate";
      v7[1] = 9;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<62ul>(v10, "' failed to satisfy constraint: lvm.icmp comparison predicate");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::LLVM::ICmpOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = getI1SameShape((v6[1] & 0xFFFFFFFFFFFFFFF8));
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps17(mlir::Operation *a1, char *a2, unsigned int a3)
{
  v31[25] = *MEMORY[0x277D85DE8];
  v26 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(a2 + 2) >> 30))
  {
    return 1;
  }

  isCompatibleVectorType = mlir::LLVM::isCompatibleVectorType(a2);
  v6 = *(*a2 + 136);
  if (isCompatibleVectorType)
  {
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v8 = 24;
    if (v7)
    {
      v8 = 8;
    }

    v9 = *&a2[v8];
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v9[2] >> 30)
      {
        v22 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        goto LABEL_11;
      }

      return 1;
    }
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

LABEL_11:
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    v10 = *(*a2 + 136);
    v11 = v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v12 = 24;
    if (v11)
    {
      v12 = 8;
    }

    if (*(**&a2[v12] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
      return 1;
    }
  }

  v25 = 261;
  v24[0] = "operand";
  v24[1] = 7;
  mlir::Operation::emitOpError(&v30, a1, v24);
  if (v30)
  {
    mlir::Diagnostic::operator<<<3ul>(v31, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v26);
  v14 = v13;
  if (*v13)
  {
    v27 = 3;
    v28 = " must be signless integer or LLVM dialect-compatible vector of signless integer or LLVM pointer type or LLVM dialect-compatible vector of LLVM pointer type, but got ";
    v29 = 165;
    v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v27, 1);
    v16 = v14[3] + 24 * *(v14 + 8);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 16);
    *v16 = v17;
    ++*(v14 + 8);
    if (*v14)
    {
      v27 = 4;
      v28 = a2;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v27, 1);
      v19 = v14[3] + 24 * *(v14 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v14 + 8);
    }
  }

  v21 = (v14[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  return v21;
}

BOOL mlir::LLVM::InlineAsmOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "asm_string", 0xA, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v16, "constraints", 0xB, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v19, "has_side_effects", 0x10, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v22, "is_align_stack", 0xE, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0)
            {
              return 1;
            }

            v25 = v23[1];
            if (!v25 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v25, "operand_attrs", 0xD, a3, a4))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || mlir::LLVM::AsmDialectAttr::classof(a1))
  {
    return 1;
  }

  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "asm_dialect";
      v7[1] = 11;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<65ul>(v10, "' failed to satisfy constraint: ATT (0) or Intel (1) asm dialect");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::InlineAsmOp::parse(uint64_t a1, uint64_t a2)
{
  v51[16] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v50[0] = v51;
  v50[1] = 0x400000000;
  v38 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2) + 24) = v4;
  }

  if ((*(*a1 + 408))(a1, "is_align_stack", 14))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2) + 32) = v5;
  }

  if (((*(*a1 + 408))(a1, "asm_dialect", 11) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_37;
  }

  v36 = 0;
  v37 = 0;
  v48[0] = v49;
  v48[1] = 0x400000000;
  v49[8] = 4;
  v6 = (*(*a1 + 40))(a1);
  v45 = xmmword_2799BEAC0;
  v46 = *&off_2799BEAD0;
  if ((*(*a1 + 424))(a1, &v36, &v45, 2))
  {
    v7 = v37;
    if (!v37)
    {
      goto LABEL_11;
    }

LABEL_9:
    v8 = mlir::LLVM::symbolizeAsmDialect(v36, v7);
    if (v9)
    {
      v10 = v8;
      v11 = (*(*a1 + 32))(a1);
      v12 = mlir::IntegerType::get(*v11, 64, 0);
      v13 = mlir::IntegerAttr::get(v12, v10);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2) = v13;
      goto LABEL_11;
    }

    v34[0] = "invalid ";
    v35 = 259;
    (*(*a1 + 24))(&v45, a1, v6, v34);
    if (v45)
    {
      mlir::Diagnostic::operator<<<39ul>(&v45 + 8, "asm_dialect attribute specification: ");
      if (v45)
      {
        v44 = 261;
        v43[0] = v36;
        v43[1] = v37;
        mlir::Diagnostic::operator<<(&v45 + 8, v43);
        if (v45)
        {
          v44 = 264;
          LOBYTE(v43[0]) = 34;
          mlir::Diagnostic::operator<<(&v45 + 8, v43);
        }
      }
    }

    goto LABEL_50;
  }

  v34[0] = 0;
  v31 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v31);
  v33 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v34, NoneType, "asm_dialect", 0xB, v48);
  if ((v33 & 0x100) == 0)
  {
    v43[0] = "expected string or keyword containing one of the following enum values for attribute 'asm_dialect' [att, intel]";
    v44 = 259;
    (*(*a1 + 24))(&v45, a1, v6, v43);
LABEL_50:
    v29 = (v47 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    goto LABEL_52;
  }

  if (v33)
  {
    v7 = *(v34[0] + 24);
    v36 = *(v34[0] + 16);
    v37 = v7;
    if (!v7)
    {
LABEL_11:
      if (v48[0] != v49)
      {
        free(v48[0]);
      }

LABEL_13:
      if (((*(*a1 + 408))(a1, "operand_attrs", 13) & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((*(*a1 + 136))(a1))
      {
        v14 = **(*(*a1 + 32))(a1);
        v15 = *(v14 + 528);
        if (!v15)
        {
          v16 = *(v14 + 384);
          *&v45 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
          v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v16 + 232), &v45);
        }

        if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v42, v15))
        {
          if (v42)
          {
            v17 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
            *(v17 + 40) = v42;
          }

LABEL_20:
          v48[0] = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v18 = *(a2 + 8);
            *&v45 = a1;
            *(&v45 + 1) = v48;
            *&v46 = a2;
            if (mlir::LLVM::InlineAsmOp::verifyInherentAttrs(v18, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InlineAsmOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v45))
            {
              v19 = **(*(*a1 + 32))(a1);
              v20 = *(v19 + 528);
              if (!v20)
              {
                v21 = *(v19 + 384);
                *&v45 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
                v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v21 + 232), &v45);
              }

              if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v41, v20))
              {
                if (v41)
                {
                  v22 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
                  *(v22 + 8) = v41;
                }

                if ((*(*a1 + 120))(a1))
                {
                  v23 = **(*(*a1 + 32))(a1);
                  v24 = *(v23 + 528);
                  if (!v24)
                  {
                    v25 = *(v23 + 384);
                    *&v45 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
                    v24 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v25 + 232), &v45);
                  }

                  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v40, v24))
                  {
                    if (v40)
                    {
                      v26 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
                      *(v26 + 16) = v40;
                    }

                    v27 = (*(*a1 + 40))(a1);
                    if ((*(*a1 + 720))(a1, v50, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 104))(a1))
                    {
                      *&v45 = 0;
                      if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v45))
                      {
                        v28 = *(v45 + 8);
                        v38 = *(v45 + 16);
                        v39 = v28;
                        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v38 + 8 * v28), (v38 + 8 * v28 + 8 * *(v45 + 12)));
                        v29 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v50, &v38, v27, a2 + 16);
                        goto LABEL_38;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_37:
      v29 = 0;
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  v29 = 0;
LABEL_52:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

LABEL_38:
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  return v29;
}

uint64_t mlir::LLVM::InsertElementOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps18(mlir::Operation *a1, uint64_t a2)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 1;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    v4 = *(*a2 + 136);
    if (v4 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID() && *(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
    {
      return 1;
    }
  }

  v13 = 261;
  v12[0] = "operand";
  v12[1] = 7;
  mlir::Operation::emitOpError(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<3ul>(v18, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<39ul>((v6 + 1), " must be primitive LLVM type, but got ");
    if (*v7)
    {
      v15 = 4;
      v16 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v15, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v5 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v5;
}

BOOL mlir::LLVM::InsertElementOp::parse(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  __src = 0;
  v17[0] = &v18;
  v15[0] = &__src;
  v15[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v27 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v27))
  {
    return 0;
  }

  v18 = v27;
  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v27 = 0;
  if (((*(*a1 + 536))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  __src = v27;
  v14 = v27;
  if (mlir::LLVM::isCompatibleVectorType(v27))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v17);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v15, v4, a2 + 16))
    {
      v6 = *(**v15[0] + 136);
      v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
      v8 = 24;
      if (v7)
      {
        v8 = 8;
      }

      if ((*(*a1 + 728))(a1, v25, *(*v15[0] + v8), a2 + 16))
      {
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v17, v5, a2 + 16);
      }
    }

    return 0;
  }

  v11 = (*(*a1 + 16))(a1);
  v13 = 257;
  (*(*a1 + 24))(&v27, a1, v11, v12);
  if (v27)
  {
    mlir::Diagnostic::operator<<<63ul>(v28, "'vector' must be LLVM dialect-compatible vector type, but got ");
    if (v27)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v28, &v14);
    }
  }

  v9 = (v28[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  return v9;
}

BOOL mlir::LLVM::InsertValueOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InsertValueOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::InsertValueOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::InsertValueOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  __src = 0;
  v15 = 0;
  v13[0] = &__src;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v15, 0))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InsertValueOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v7 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::InsertValueOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InsertValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, ((*(*a1 + 536))(a1, v9)) && (__src = v9[0], parseInsertExtractValueElementType(a1, &v12, v9[0], v15)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v15), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v13, v5, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v11, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::LLVM::IntToPtrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::LLVM::IntToPtrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

uint64_t mlir::LLVM::InvokeOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 4uLL);
}

uint64_t mlir::LLVM::InvokeOp::getODSOperands(mlir::LLVM::InvokeOp *this, unsigned int a2)
{
  LODWORD(v2) = 0;
  v3 = *(this + 11);
  v4 = (this + 16 * ((v3 >> 23) & 1) + 128);
  v5 = a2;
  do
  {
    v6 = *v4++;
    v2 = (v6 + v2);
    --v5;
  }

  while (v5);
  if ((v3 & 0x800000) != 0)
  {
    v7 = *(this + 9);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v2;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 1)
    {
      return 1;
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<47ul>(v13, "' failed to satisfy constraint: BOOL attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "frame_pointer";
      v5[1] = 13;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<33ul>(v8, "' failed to satisfy constraint: ");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = a1[1];
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 32)
    {
      return 1;
    }
  }

  a2(&v8, a3);
  if (v8)
  {
    mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
    if (v8)
    {
      v7 = 261;
      v6[0] = "intel_reqd_sub_group_size";
      v6[1] = 25;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<66ul>(v9, "' failed to satisfy constraint: 32-bit signless integer attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "target_features";
      v5[1] = 15;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<63ul>(v8, "' failed to satisfy constraint: LLVM target features attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "vec_type_hint";
      v5[1] = 13;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<69ul>(v8, "' failed to satisfy constraint: Explicit vectorization compiler hint");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "vscale_range";
      v5[1] = 12;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<33ul>(v8, "' failed to satisfy constraint: ");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FramePointerKindAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC21138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21138))
  {
    qword_27FC21128 = llvm::detail::getTypeNameImpl<mlir::LLVM::FramePointerKindAttr>();
    unk_27FC21130 = v11;
    __cxa_guard_release(&qword_27FC21138);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC21128;
    v15 = unk_27FC21130;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::LinkageAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20B88))
  {
    qword_27FC20B78 = llvm::detail::getTypeNameImpl<mlir::LLVM::LinkageAttr>();
    unk_27FC20B80 = v11;
    __cxa_guard_release(&qword_27FC20B88);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC20B78;
    v15 = unk_27FC20B80;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::TargetFeaturesAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC21150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21150))
  {
    qword_27FC21140 = llvm::detail::getTypeNameImpl<mlir::LLVM::TargetFeaturesAttr>();
    *algn_27FC21148 = v11;
    __cxa_guard_release(&qword_27FC21150);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC21140;
    v15 = *algn_27FC21148;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VecTypeHintAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC21168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21168))
  {
    qword_27FC21158 = llvm::detail::getTypeNameImpl<mlir::LLVM::VecTypeHintAttr>();
    unk_27FC21160 = v11;
    __cxa_guard_release(&qword_27FC21168);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC21158;
    v15 = unk_27FC21160;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VScaleRangeAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC21180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21180))
  {
    qword_27FC21170 = llvm::detail::getTypeNameImpl<mlir::LLVM::VScaleRangeAttr>();
    *algn_27FC21178 = v11;
    __cxa_guard_release(&qword_27FC21180);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC21170;
    v15 = *algn_27FC21178;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

uint64_t mlir::LLVM::LLVMFuncOp::populateDefaultProperties(uint64_t result, uint64_t *a2)
{
  v3 = *(***(result + 8) + 32);
  if (!a2[24])
  {
    result = mlir::LLVM::LinkageAttr::get(*(***(result + 8) + 32), 0);
    a2[24] = result;
  }

  if (!*a2)
  {
    result = mlir::LLVM::CConvAttr::get(v3, 0);
    *a2 = result;
  }

  if (!a2[45])
  {
    v4 = mlir::IntegerType::get(v3, 64, 0);
    result = mlir::IntegerAttr::get(v4, 0);
    a2[45] = result;
  }

  return result;
}

BOOL mlir::LLVM::LShrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isExact", 7, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LShrOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::LShrOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

void mlir::LLVM::LShrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v20 = a4;
  v21 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v21, 0, &v21, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v20, 0, &v20, 1);
  if (a5)
  {
    v8 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LShrOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  __src = v24;
  v23 = 0x200000000;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::LShrOp::inferReturnTypes(Dictionary, v12, v13, v9 & 0xFFFFFFFFFFFFFFF9, v10, v14, v15, v16, v18, v19, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v17);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v23);
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::LLVM::LShrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LShrOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::LLVM::LShrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LShrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7)) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LinkerOptionsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = a1[2];
    if (!v4)
    {
      return 1;
    }

    v5 = a1[1];
    v6 = 8 * v4;
    while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 += 8;
      v6 -= 8;
      if (!v6)
      {
        return 1;
      }
    }
  }

  a2(&v10, a3);
  if (v10)
  {
    mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
    if (v10)
    {
      v9 = 261;
      v8[0] = "options";
      v8[1] = 7;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<55ul>(v11, "' failed to satisfy constraint: string array attribute");
      }
    }
  }

  v3 = (v11[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LinkerOptionsOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::LinkerOptionsOp::parse(uint64_t a1, void *a2)
{
  v12 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v12, v5))
  {
    return 0;
  }

  if (v12)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LinkerOptionsOpGenericAdaptorBase::Properties>(a2);
    *v7 = v12;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) != 0 && (v8 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LinkerOptionsOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LinkerOptionsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LoadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v13, "alias_scopes", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v16, "alignment", 9, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v19, "invariant", 9, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v22, "invariantGroup", 0xE, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v25, "noalias_scopes", 0xE, a3, a4))
            {
              v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
              if ((v27 & 1) == 0 || (v28 = v26[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v28, "nontemporal", 0xB, a3, a4))
              {
                v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
                if ((v30 & 1) == 0 || (v31 = v29[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v31, "ordering", 8, a3, a4))
                {
                  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
                  if ((v33 & 1) == 0 || (v34 = v32[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v34, "syncscope", 9, a3, a4))
                  {
                    v35 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 72));
                    if ((v36 & 1) == 0 || (v37 = v35[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v37, a3, a4))
                    {
                      v38 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 80));
                      if ((v39 & 1) == 0)
                      {
                        return 1;
                      }

                      v40 = v38[1];
                      if (!v40 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v40, "volatile_", 9, a3, a4))
                      {
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}