uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
    llvm::getTypeName<mlir::ArrayAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ArrayAttr>();
    *algn_27FC187E8 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::ArrayAttr>(void)::Name;
    v15 = *algn_27FC187E8;
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

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::FFIImportOp::verifyInvariantsImpl(unsigned int **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  if (!v6)
  {
    v10 = "requires attribute 'path'";
LABEL_11:
    v12 = v10;
    v13 = 259;
    mlir::Operation::emitOpError(v14, v2, &v12);
    v9 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    return v9;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v10 = "requires attribute 'sym_name'";
    goto LABEL_11;
  }

  v8 = *(v4 + 2);
  if (!v8)
  {
    v10 = "requires attribute 'symbolsToImport'";
    goto LABEL_11;
  }

  v14[0] = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    return 0;
  }

  v14[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(v8, "symbolsToImport", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    return 0;
  }

  v14[0] = *this;
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v5, "path", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::parse(mlir::AsmParser *a1, void *a2)
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if ((mlir::AsmParser::parseSymbolName(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  if (v18)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(a2);
    *(v4 + 8) = v18;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v19);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v17, v6))
  {
    return 0;
  }

  if (v17)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(a2);
    *(v8 + 16) = v17;
  }

  v20 = 257;
  if (((*(*a1 + 400))(a1, "from", 4, v19) & 1) == 0)
  {
    return 0;
  }

  v9 = **(*(*a1 + 32))(a1);
  v10 = *(v9 + 528);
  if (!v10)
  {
    v11 = *(v9 + 384);
    v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v16, v10))
  {
    return 0;
  }

  if (v16)
  {
    v12 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(a2);
    *v12 = v16;
  }

  v15 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) != 0 && (v13 = a2[1], v19[0] = a1, v19[1] = &v15, v19[2] = a2, mlir::ODIE::Compiler::CoreML::FFIImportOp::verifyInherentAttrs(v13, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::FFIImportOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::FFIImportOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10));
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 3uLL)
  {
    *v12 = 1836020326;
    *(v11 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v11, "from", 4uLL);
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v16 = v18;
  v17 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v16, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v16, "symbolsToImport", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v16, "path", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, v17);
  if (v16 != v18)
  {
    free(v16);
  }
}

void mlir::ODIE::Compiler::CoreML::FillOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

BOOL mlir::ODIE::Compiler::CoreML::FillOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v49 = 1;
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
    if ((*(v6 + 16))(v6, v3))
    {
      v7 = *v3;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
      (*(v9 + 24))(v9, v3);
      if (!v10)
      {
        v33 = *v3;
        v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
        v36 = (*(v35 + 8))(v35, v3);
        v37 = *(*v36 + 136);
        if (v37 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_11;
        }

        if (v37 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v43 = v36[2];
          if ((v43 + 2147483644) <= 0x3C && ((1 << (v43 - 4)) & 0x1000000010001011) != 0)
          {
            goto LABEL_11;
          }

          v45 = (v43 - 1073741828) > 0x3C || ((1 << (v43 - 4)) & 0x1000000010001011) == 0;
          if (!v45 || v43 == 1)
          {
            goto LABEL_11;
          }
        }

        else if (v37 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v41 = *(**(v36 + 1) + 136);
          if (v41 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v41 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  v48 = 261;
  v47[0] = "operand";
  v47[1] = 7;
  mlir::Operation::emitOpError(&v53, v2, v47);
  if (v53)
  {
    mlir::Diagnostic::operator<<<3ul>(v54, " #");
  }

  v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v53, &v49);
  v12 = v11;
  if (*v11)
  {
    v50 = 3;
    v51 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v52 = 274;
    v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v50, 1);
    v14 = v12[3] + 24 * *(v12 + 8);
    v15 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v15;
    ++*(v12 + 8);
    if (*v12)
    {
      v50 = 4;
      v51 = v3;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v12 + 3), &v50, 1);
      v17 = v12[3] + 24 * *(v12 + 8);
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++*(v12 + 8);
    }
  }

  v19 = *(v12 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
  if (v19)
  {
    return 0;
  }

LABEL_11:
  if (*(*this + 9))
  {
    v20 = *this - 16;
  }

  else
  {
    v20 = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v20 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v21 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
  v24 = v22;
  if (v22)
  {
    v22 = (*(v23 + 8))(v23, v22);
  }

  if (v24)
  {
    v27 = v22;
  }

  else
  {
    v27 = v21;
  }

  v28 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28);
  v31 = v29;
  if (v29)
  {
    v29 = (*(v30 + 8))(v30, v29);
  }

  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v28;
  }

  v25 = 1;
  if (v27 != v32)
  {
    v47[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v48 = 259;
    mlir::Operation::emitOpError(&v53, *this, v47);
    v25 = (v54[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::FillOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::FillOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 == v14)
    {
      v16 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v16);
      v19 = v17;
      if (v17)
      {
        v17 = (*(v18 + 8))(v18, v17);
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
      v24 = v22;
      if (v22)
      {
        v22 = (*(v23 + 8))(v23, v22);
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v20 == v25)
      {
        v7 = 1;
        return v7 & 1;
      }

      v15 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v26 = v15;
    v27 = 259;
    mlir::Operation::emitOpError(v28, *this, &v26);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::FloorDivideOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::FloorDivideOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *(result + 72) = v2[3];
  *(result + 56) = v5;
  *(result + 40) = v4;
  *(result + 24) = v3;
  v6 = *(a2 + 44);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v8 = ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(result + 88) = v8;
  *(result + 96) = v7;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v35, a4);
    if (v35)
    {
      mlir::Diagnostic::operator<<<42ul>(v36, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v35, a4);
        if (v35)
        {
LABEL_29:
          mlir::Diagnostic::operator<<<55ul>(v36, v12);
LABEL_30:
          if (v35)
          {
            LODWORD(v34[0]) = 0;
            v34[1] = v11;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, v34, 1);
            v20 = v37 + 24 * v38;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v38;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "externAttr", 0xAuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
      {
        a3(&v35, a4);
        if (v35)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a1[1] = v11;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "function_type", 0xDuLL);
  if (v16)
  {
    v11 = *(v15 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(&v35, a4);
        if (v35)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a1[2] = v11;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "no_inline", 9uLL);
  if ((v18 & 1) == 0 || (v11 = *(v17 + 8)) == 0)
  {
LABEL_33:
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "param_decls", 0xBuLL);
    if (v23)
    {
      v24 = *(v22 + 8);
      v34[0] = v24;
      if (v24)
      {
        if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

LABEL_56:
          if (v35)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v36, v34);
          }

          goto LABEL_4;
        }

        a1[4] = v24;
      }
    }

    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
    if (v26)
    {
      v27 = *(v25 + 8);
      v34[0] = v27;
      if (v27)
      {
        if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[5] = v27;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "safeTransforms", 0xEuLL);
    if (v29)
    {
      v30 = *(v28 + 8);
      v34[0] = v30;
      if (v30)
      {
        if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[6] = v30;
      }
    }

    v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v32)
    {
      v33 = *(v31 + 8);
      v34[0] = v33;
      if (v33)
      {
        if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[7] = v33;
      }
    }

    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v11;
    goto LABEL_33;
  }

  a3(&v35, a4);
  if (v35)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v35 = v37;
  v36 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v34 = 261;
    v32 = "arg_attrs";
    v33 = 9;
    v7 = mlir::StringAttr::get(v6, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v34 = 261;
    v32 = "externAttr";
    v33 = 10;
    v10 = mlir::StringAttr::get(v9, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v34 = 261;
    v32 = "function_type";
    v33 = 13;
    v13 = mlir::StringAttr::get(v12, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v34 = 261;
    v32 = "no_inline";
    v33 = 9;
    v16 = mlir::StringAttr::get(v15, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v16, v14);
  }

  v17 = a2[4];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v34 = 261;
    v32 = "param_decls";
    v33 = 11;
    v19 = mlir::StringAttr::get(v18, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v19, v17);
  }

  v20 = a2[5];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v34 = 261;
    v32 = "res_attrs";
    v33 = 9;
    v22 = mlir::StringAttr::get(v21, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v22, v20);
  }

  v23 = a2[6];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v34 = 261;
    v32 = "safeTransforms";
    v33 = 14;
    v25 = mlir::StringAttr::get(v24, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v25, v23);
  }

  v26 = a2[7];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v34 = 261;
    v32 = "sym_name";
    v33 = 8;
    v28 = mlir::StringAttr::get(v27, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v28, v26);
  }

  v29 = v35;
  if (v36)
  {
    v30 = mlir::DictionaryAttr::get(a1, v35, v36);
    v29 = v35;
  }

  else
  {
    v30 = 0;
  }

  if (v29 != v37)
  {
    free(v29);
  }

  return v30;
}

unint64_t mlir::ODIE::Compiler::CoreML::FuncOp::computePropertiesHash(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v30 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v28 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = a1[4];
  v13 = a1[5];
  v14 = (8 * v12 - 0xAE502812AA7333) ^ HIDWORD(v12);
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ ((0x9DDFEA08EB382D69 * v14) >> 47) ^ (0x9DDFEA08EB382D69 * v14));
  v26 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = 8 * a1[6] - 0xAE502812AA7333;
  v20 = 0x9DDFEA08EB382D69 * (HIDWORD(a1[6]) ^ ((0x9DDFEA08EB382D69 * (v19 ^ HIDWORD(a1[6]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v19 ^ HIDWORD(a1[6]))));
  v24 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v18) ^ ((0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18))));
  v23 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  v33 = 0;
  v34 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v31, 0, v31, v32, &v30, &v29, &v28, &v27, &v26, &v25, &v24, &v23);
}

unint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 10)
  {
    if (a4 == 11)
    {
      if (*a3 != 0x65645F6D61726170 || *(a3 + 3) != 0x736C6365645F6D61)
      {
        goto LABEL_46;
      }

      v4 = a2[4];
      goto LABEL_50;
    }

    if (a4 == 13)
    {
      if (*a3 != 0x6E6F6974636E7566 || *(a3 + 5) != 0x657079745F6E6F69)
      {
        goto LABEL_46;
      }

      v4 = a2[2];
      goto LABEL_50;
    }

    v5 = 0;
    if (a4 == 14)
    {
      if (*a3 != 0x6E61725465666173 || *(a3 + 6) != 0x736D726F66736E61)
      {
        goto LABEL_46;
      }

      v4 = a2[6];
      goto LABEL_50;
    }
  }

  else
  {
    if (a4 == 8)
    {
      if (*a3 != 0x656D616E5F6D7973)
      {
LABEL_46:
        LOBYTE(v4) = 0;
        v5 = 0;
        return v5 | v4;
      }

      v4 = a2[7];
LABEL_50:
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    if (a4 == 9)
    {
      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v4 = *a2;
      }

      else if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
      {
        v4 = a2[3];
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_46;
        }

        v4 = a2[5];
      }

      goto LABEL_50;
    }

    v5 = 0;
    if (a4 == 10)
    {
      if (*a3 != 0x74416E7265747865 || *(a3 + 8) != 29300)
      {
        goto LABEL_46;
      }

      v4 = a2[1];
      goto LABEL_50;
    }
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::FuncOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        result[4] = v9;
      }
    }

    else if (a3 == 13)
    {
      if (*a2 == 0x6E6F6974636E7566 && *(a2 + 5) == 0x657079745F6E6F69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        result[2] = v15;
      }
    }

    else if (a3 == 14 && *a2 == 0x6E61725465666173 && *(a2 + 6) == 0x736D726F66736E61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = a4;
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

      result[6] = v6;
    }
  }

  else if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[7] = v7;
    }
  }

  else if (a3 == 9)
  {
    if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      *result = v17;
    }

    else if (*a2 == 0x6E696C6E695F6F6ELL && *(a2 + 8) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      result[3] = v18;
    }

    else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      result[5] = v13;
    }
  }

  else if (a3 == 10 && *a2 == 0x74416E7265747865 && *(a2 + 8) == 29300)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    result[1] = v16;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v31 = 261;
    v29 = "arg_attrs";
    v30 = 9;
    v7 = mlir::StringAttr::get(v6, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v31 = 261;
    v29 = "externAttr";
    v30 = 10;
    v10 = mlir::StringAttr::get(v9, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v31 = 261;
    v29 = "function_type";
    v30 = 13;
    v13 = mlir::StringAttr::get(v12, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v31 = 261;
    v29 = "no_inline";
    v30 = 9;
    v16 = mlir::StringAttr::get(v15, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = a2[4];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v31 = 261;
    v29 = "param_decls";
    v30 = 11;
    v19 = mlir::StringAttr::get(v18, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = a2[5];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v31 = 261;
    v29 = "res_attrs";
    v30 = 9;
    v22 = mlir::StringAttr::get(v21, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = a2[6];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v31 = 261;
    v29 = "safeTransforms";
    v30 = 14;
    v25 = mlir::StringAttr::get(v24, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = a2[7];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v31 = 261;
    v29 = "sym_name";
    v30 = 8;
    v28 = mlir::StringAttr::get(v27, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(v13, "externAttr", 0xA, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v16, "function_type", 0xD, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v19, "no_inline", 9, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v22, "param_decls", 0xB, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v25, "res_attrs", 9, a3, a4))
            {
              v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
              if ((v27 & 1) == 0 || (v28 = v26[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(v28, "safeTransforms", 0xE, a3, a4))
              {
                v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
                if ((v30 & 1) == 0)
                {
                  return 1;
                }

                v31 = v29[1];
                if (!v31 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v31, "sym_name", 8, a3, a4))
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

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
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
        mlir::Diagnostic::operator<<<33ul>(v12, "' failed to satisfy constraint: ");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(void **a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
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
        mlir::Diagnostic::operator<<<64ul>(v12, "' failed to satisfy constraint: type attribute of function type");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
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
        mlir::Diagnostic::operator<<<69ul>(v12, "' failed to satisfy constraint: dictionary of named attribute values");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ExternAttr>(uint64_t a1, void *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E538))
  {
    qword_27FC1E528 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ExternAttr>();
    unk_27FC1E530 = v11;
    __cxa_guard_release(&qword_27FC1E538);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E528;
    v15 = unk_27FC1E530;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DictionaryAttr>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v16, a1, v12);
  if (v16)
  {
    mlir::Diagnostic::operator<<<10ul>(v17, "expected ");
  }

  {
    *&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DictionaryAttr>();
    *(&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name + 1) = v11;
  }

  if (v16)
  {
    v15 = 261;
    v14[0] = llvm::getTypeName<mlir::DictionaryAttr>(void)::Name;
    mlir::Diagnostic::operator<<(v17, v14);
    if (v16)
    {
      mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
      if (v16)
      {
        LODWORD(v14[0]) = 0;
        *(&v14[0] + 1) = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, v14, 1);
        v7 = v18 + 24 * v19;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v19;
      }
    }
  }

  v9 = (v20 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInvariantsImpl(unsigned int **this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  v7 = v4[2];
  if (!v7)
  {
    v15 = "requires attribute 'function_type'";
LABEL_16:
    v17 = v15;
    v18 = 259;
    mlir::Operation::emitOpError(v19, v2, &v17);
    v14 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v14;
  }

  v8 = v4[4];
  if (!v8)
  {
    v15 = "requires attribute 'param_decls'";
    goto LABEL_16;
  }

  v9 = v4[7];
  if (!v9)
  {
    v15 = "requires attribute 'sym_name'";
    goto LABEL_16;
  }

  v10 = v4[1];
  v11 = v4[3];
  v12 = v4[5];
  v13 = v4[6];
  v19[0] = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v9, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v7, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v8, "param_decls", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v11, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(v10, "externAttr", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(v13, "safeTransforms", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v5, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19))
  {
    return 0;
  }

  v19[0] = *this;
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19);
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "approximate", 0xBuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "approximate";
  v10[1] = 11;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6D69786F72707061 ? (v4 = *(a3 + 3) == 0x6574616D69786F72) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t *mlir::ODIE::Compiler::CoreML::GELUOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6D69786F72707061 && *(a2 + 3) == 0x6574616D69786F72)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GELUOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "approximate";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v8, "approximate", 0xB, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
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
        mlir::Diagnostic::operator<<<101ul>(v12, "' failed to satisfy constraint: The gelu approximation algorithm to use: 'none' | 'tanh' | 'sigmoid'");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(uint64_t a1, void *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E578))
  {
    qword_27FC1E568 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ApproximateAttr>();
    unk_27FC1E570 = v11;
    __cxa_guard_release(&qword_27FC1E578);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E568;
    v15 = unk_27FC1E570;
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

void mlir::ODIE::Compiler::CoreML::GELUOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v20[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v3, "approximate", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) && (*(*this + 9) ? (v4 = *this - 16) : (v4 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6)))
  {
    v5 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v5);
    v8 = v6;
    if (v6)
    {
      v6 = (*(v7 + 8))(v7, v6);
    }

    if (v8)
    {
      v11 = v6;
    }

    else
    {
      v11 = v5;
    }

    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v12);
    v15 = v13;
    if (v13)
    {
      v13 = (*(v14 + 8))(v14, v13);
    }

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    if (v11 != v16)
    {
      v17 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_24:
      v18 = v17;
      v19 = 259;
      mlir::Operation::emitOpError(v20, *this, &v18);
      v9 = v21 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
      return v9 & 1;
    }

    if ((mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 0) & 1) == 0)
    {
      v17 = "failed to verify that Result 0 and operand 0 must have the same shape.";
      goto LABEL_24;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::parse(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "approximate", 11))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    v5 = (*(*a1 + 40))(a1);
    v18 = 0;
    v19[0] = a1;
    if (((*(*a1 + 448))(a1, &v18, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML15ApproximateAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v19) & 1) == 0)
    {
      return 0;
    }

    v6 = v18;
    if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
    {
      *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(a2) = v6;
    }

    else
    {
      __src = "invalid kind of attribute specified";
      v17 = 259;
      (*(*a1 + 24))(v19, a1, v5, &__src);
      v7 = v20;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
      if (v7)
      {
        return 0;
      }
    }
  }

  if ((*(*a1 + 104))(a1))
  {
    v19[0] = 0;
    if (mlir::AsmParser::parseType<mlir::TensorType>(a1, v19))
    {
      v11 = v19[0];
      if ((*(*a1 + 56))(a1))
      {
        v19[0] = 0;
        if (mlir::AsmParser::parseType<mlir::TensorType>(a1, v19))
        {
          __src = v19[0];
          v18 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v8 = *(a2 + 8);
            v19[0] = a1;
            v19[1] = &v18;
            v19[2] = a2;
            if (mlir::ODIE::Compiler::CoreML::GELUOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::GELUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19))
            {
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v16);
              return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v4, a2 + 16);
            }
          }
        }
      }
    }
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreML::GELUOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v6 != mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*(***(*this + 3) + 32), 0))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 0xA)
    {
      *(v10 + 7) = 1702125933;
      *v10 = *"approximate";
      *(v9 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v9, "approximate", 0xBuLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) == v14)
    {
      llvm::raw_ostream::write(v13, "=", 1uLL);
    }

    else
    {
      *v14 = 61;
      ++*(v13 + 4);
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 32);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 32;
    }

    v34 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v17 = (*(*a2 + 16))(a2);
      v18 = (*(*v17 + 80))(v17) + v17[4] - v17[2];
      mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(&v34, a2);
      if (v18 == (*(*v17 + 80))(v17) + v17[4] - v17[2])
      {
        (*(*a2 + 40))(a2, v34);
      }
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ":", 1uLL);
  }

  else
  {
    *v22 = 58;
    ++*(v21 + 4);
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 1uLL)
  {
    *v28 = 15917;
    *(v27 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v27, "->", 2uLL);
  }

  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = *this - 16;
  if (!*(*this + 9))
  {
    v31 = 0;
  }

  (*(*a2 + 32))(a2, *(v31 + 1) & 0xFFFFFFFFFFFFFFF8);
  v34 = v36;
  v35 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "approximate", 11);
  v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v32 && v32 == mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "approximate", 11);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, v35);
  if (v34 != v36)
  {
    free(v34);
  }
}

void mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

void mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a6;
  v12 = a5;
  v10 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML **this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    if (mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 1u))
    {
      v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
      v6 = v4;
      if (v4)
      {
        v4 = (*(v5 + 8))(v5, v4);
      }

      if (v6)
      {
        v10 = v4;
      }

      else
      {
        v10 = v3;
      }

      v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
      v14 = v12;
      if (v12)
      {
        v12 = (*(v13 + 8))(v13, v12);
      }

      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      if (v10 == v15)
      {
        v7 = 1;
        return v7 & 1;
      }

      v9 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    else
    {
      v9 = "failed to verify that Result 0 and operand 1 must have the same shape.";
    }

    v16 = v9;
    v17 = 259;
    mlir::Operation::emitOpError(v18, *this, &v16);
    v7 = v19 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v22, 1) & 1) != 0 && (v26 = 257, ((*(*a1 + 400))(a1, "at", 2, &__src)) && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v19, 1)) && (v26 = 257, ((*(*a1 + 400))(a1, "along", 5, &__src)) && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v16, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && (v26 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src)) && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v25), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v21, v13, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v11, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v9, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 29793;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "at", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 4)
  {
    *(v15 + 4) = 103;
    *v15 = 1852796001;
    *(v14 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v14, "along", 5uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++*(v24 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ")", 1uLL);
  }

  else
  {
    *v35 = 41;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 1uLL)
  {
    *v39 = 28532;
    *(v38 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, "to", 2uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = *this - 16;
  if (!*(*this + 9))
  {
    v42 = 0;
  }

  (*(*a2 + 32))(a2, *(v42 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, 0);
}

void mlir::ODIE::Compiler::CoreML::GatherNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v16, 1) & 1) != 0 && (v20 = 257, ((*(*a1 + 400))(a1, "at", 2, &__src)) && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v13, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v9 = __src, ((*(*a1 + 296))(a1)) && (v20 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src)) && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v19), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GatherNdOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 29793;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "at", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++*(v18 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ")", 1uLL);
  }

  else
  {
    *v25 = 41;
    ++*(v24 + 4);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) - v29 > 1uLL)
  {
    *v29 = 28532;
    *(v28 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "to", 2uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = *this - 16;
  if (!*(*this + 9))
  {
    v32 = 0;
  }

  (*(*a2 + 32))(a2, *(v32 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::setPropertiesFromAttr(uint64_t **a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v18, a4);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "member", 6uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v8 + 8));
      if (!v11)
      {
        a3(&v18, a4);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v10;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a1 = v11;
      a1[1] = v12;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "member";
  v10[1] = 6;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1651336557 ? (v4 = *(a3 + 4) == 29285) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t *mlir::ODIE::Compiler::CoreML::GetMemberOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == 6 && *a2 == 1651336557 && *(a2 + 4) == 29285)
  {
    v5 = result;
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
    }

    else
    {
      result = 0;
      v6 = 0;
    }

    *v5 = result;
    v5[1] = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GetMemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "member";
    v7[1] = 6;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GetMemberOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v8, "member", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GetMemberOp::verifyInvariantsImpl(unsigned int **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v3, "member", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  else
  {
    v6 = "requires attribute 'member'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(mlir::Operation *a1, void *a2)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  v3 = *(*a2 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
  {
    return 1;
  }

  if (v3 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id)
  {
    goto LABEL_8;
  }

  v4 = a2[1];
  v5 = *(*v4 + 136);
  if (v4 && v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v4 = v4[1];
    v5 = *(*v4 + 136);
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v12 = v4[1];
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
      {
        return 1;
      }
    }
  }

LABEL_8:
  v15 = 261;
  v14[0] = "operand";
  v14[1] = 7;
  mlir::Operation::emitOpError(&v19, a1, v14);
  if (v19)
  {
    mlir::Diagnostic::operator<<<3ul>(v20, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<62ul>((v6 + 1), " must be symbol ref or singly-nested pointer to one, but got ");
    if (*v7)
    {
      v17 = 4;
      v18 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  return v11;
}

void mlir::ODIE::Compiler::CoreML::GetShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

void mlir::ODIE::Compiler::CoreML::GetShapeOp::build(void **a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  __src = v16;
  v15 = 0x200000000;
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(v5, v6, 1, v7 & 0xFFFFFFFFFFFFFFF9, v8, Dictionary, v10, v11, *(a2 + 224) & 0xFFFFFFFFFFFFFFF9 | 2, *(a2 + 232), &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v12);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v15);
  if (__src != v16)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GetShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GetShapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::GetShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *(result + 72) = v2[3];
  *(result + 56) = v5;
  *(result + 40) = v4;
  *(result + 24) = v3;
  v6 = *(a2 + 44);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v8 = ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(result + 88) = v8;
  *(result + 96) = v7;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPropertiesFromAttr(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v35, a4);
    if (v35)
    {
      mlir::Diagnostic::operator<<<42ul>(v36, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v35, a4);
        if (v35)
        {
LABEL_29:
          mlir::Diagnostic::operator<<<55ul>(v36, v12);
LABEL_30:
          if (v35)
          {
            LODWORD(v34[0]) = 0;
            v34[1] = v11;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, v34, 1);
            v20 = v37 + 24 * v38;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v38;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "externalize", 0xBuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v35, a4);
        if (v35)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a1[1] = v11;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "function_type", 0xDuLL);
  if (v16)
  {
    v11 = *(v15 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(&v35, a4);
        if (v35)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a1[2] = v11;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "no_inline", 9uLL);
  if ((v18 & 1) == 0 || (v11 = *(v17 + 8)) == 0)
  {
LABEL_33:
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "param_decls", 0xBuLL);
    if (v23)
    {
      v24 = *(v22 + 8);
      v34[0] = v24;
      if (v24)
      {
        if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

LABEL_56:
          if (v35)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v36, v34);
          }

          goto LABEL_4;
        }

        a1[4] = v24;
      }
    }

    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "priv", 4uLL);
    if (v26)
    {
      v27 = *(v25 + 8);
      v34[0] = v27;
      if (v27)
      {
        if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[5] = v27;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
    if (v29)
    {
      v30 = *(v28 + 8);
      v34[0] = v30;
      if (v30)
      {
        if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[6] = v30;
      }
    }

    v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v32)
    {
      v33 = *(v31 + 8);
      v34[0] = v33;
      if (v33)
      {
        if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v35, a4);
          if (!v35)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[7] = v33;
      }
    }

    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v11;
    goto LABEL_33;
  }

  a3(&v35, a4);
  if (v35)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v35 = v37;
  v36 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v34 = 261;
    v32 = "arg_attrs";
    v33 = 9;
    v7 = mlir::StringAttr::get(v6, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v34 = 261;
    v32 = "externalize";
    v33 = 11;
    v10 = mlir::StringAttr::get(v9, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v34 = 261;
    v32 = "function_type";
    v33 = 13;
    v13 = mlir::StringAttr::get(v12, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v34 = 261;
    v32 = "no_inline";
    v33 = 9;
    v16 = mlir::StringAttr::get(v15, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v16, v14);
  }

  v17 = a2[4];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v34 = 261;
    v32 = "param_decls";
    v33 = 11;
    v19 = mlir::StringAttr::get(v18, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v19, v17);
  }

  v20 = a2[5];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v34 = 261;
    v32 = "priv";
    v33 = 4;
    v22 = mlir::StringAttr::get(v21, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v22, v20);
  }

  v23 = a2[6];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v34 = 261;
    v32 = "res_attrs";
    v33 = 9;
    v25 = mlir::StringAttr::get(v24, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v25, v23);
  }

  v26 = a2[7];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v34 = 261;
    v32 = "sym_name";
    v33 = 8;
    v28 = mlir::StringAttr::get(v27, &v32, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v35, v28, v26);
  }

  v29 = v35;
  if (v36)
  {
    v30 = mlir::DictionaryAttr::get(a1, v35, v36);
    v29 = v35;
  }

  else
  {
    v30 = 0;
  }

  if (v29 != v37)
  {
    free(v29);
  }

  return v30;
}

unint64_t mlir::ODIE::Compiler::CoreML::GraphOp::computePropertiesHash(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v30 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v28 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = a1[4];
  v13 = a1[5];
  v14 = (8 * v12 - 0xAE502812AA7333) ^ HIDWORD(v12);
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ ((0x9DDFEA08EB382D69 * v14) >> 47) ^ (0x9DDFEA08EB382D69 * v14));
  v26 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = 8 * a1[6] - 0xAE502812AA7333;
  v20 = 0x9DDFEA08EB382D69 * (HIDWORD(a1[6]) ^ ((0x9DDFEA08EB382D69 * (v19 ^ HIDWORD(a1[6]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v19 ^ HIDWORD(a1[6]))));
  v24 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v18) ^ ((0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18))));
  v23 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  v33 = 0;
  v34 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v31, 0, v31, v32, &v30, &v29, &v28, &v27, &v26, &v25, &v24, &v23);
}

unint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 8)
  {
    if (a4 == 4)
    {
      if (*a3 == 1986622064)
      {
        v4 = a2[5];
        goto LABEL_45;
      }
    }

    else
    {
      v5 = 0;
      if (a4 != 8)
      {
        return v5 | v4;
      }

      if (*a3 == 0x656D616E5F6D7973)
      {
        v4 = a2[7];
        goto LABEL_45;
      }
    }

LABEL_40:
    LOBYTE(v4) = 0;
    v5 = 0;
    return v5 | v4;
  }

  if (a4 == 13)
  {
    if (*a3 != 0x6E6F6974636E7566 || *(a3 + 5) != 0x657079745F6E6F69)
    {
      goto LABEL_40;
    }

    v4 = a2[2];
    goto LABEL_45;
  }

  if (a4 == 11)
  {
    if (*a3 == 0x6C616E7265747865 && *(a3 + 3) == 0x657A696C616E7265)
    {
      v4 = a2[1];
    }

    else
    {
      if (*a3 != 0x65645F6D61726170 || *(a3 + 3) != 0x736C6365645F6D61)
      {
        goto LABEL_40;
      }

      v4 = a2[4];
    }

    goto LABEL_45;
  }

  v5 = 0;
  if (a4 == 9)
  {
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v4 = *a2;
    }

    else if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
    {
      v4 = a2[3];
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_40;
      }

      v4 = a2[6];
    }

LABEL_45:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::GraphOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      if (*a2 == 1986622064)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        result[5] = v13;
      }
    }

    else if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      result[7] = v16;
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        if (*a2 == 0x6E6F6974636E7566 && *(a2 + 5) == 0x657079745F6E6F69)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }

          result[2] = v9;
        }

        break;
      case 11:
        if (*a2 == 0x6C616E7265747865 && *(a2 + 3) == 0x657A696C616E7265)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          result[1] = v14;
        }

        else if (*a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          result[4] = v12;
        }

        break;
      case 9:
        if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          *result = v15;
        }

        else if (*a2 == 0x6E696C6E695F6F6ELL && *(a2 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v17 = a4;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          result[3] = v17;
        }

        else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
          }

          result[6] = v7;
        }

        break;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v31 = 261;
    v29 = "arg_attrs";
    v30 = 9;
    v7 = mlir::StringAttr::get(v6, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v31 = 261;
    v29 = "externalize";
    v30 = 11;
    v10 = mlir::StringAttr::get(v9, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v31 = 261;
    v29 = "function_type";
    v30 = 13;
    v13 = mlir::StringAttr::get(v12, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v31 = 261;
    v29 = "no_inline";
    v30 = 9;
    v16 = mlir::StringAttr::get(v15, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = a2[4];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v31 = 261;
    v29 = "param_decls";
    v30 = 11;
    v19 = mlir::StringAttr::get(v18, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = a2[5];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v31 = 261;
    v29 = "priv";
    v30 = 4;
    v22 = mlir::StringAttr::get(v21, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = a2[6];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v31 = 261;
    v29 = "res_attrs";
    v30 = 9;
    v25 = mlir::StringAttr::get(v24, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = a2[7];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v31 = 261;
    v29 = "sym_name";
    v30 = 8;
    v28 = mlir::StringAttr::get(v27, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v13, "externalize", 0xB, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v16, "function_type", 0xD, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v19, "no_inline", 9, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v22, "param_decls", 0xB, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v25, "priv", 4, a3, a4))
            {
              v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
              if ((v27 & 1) == 0 || (v28 = v26[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v28, "res_attrs", 9, a3, a4))
              {
                v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
                if ((v30 & 1) == 0)
                {
                  return 1;
                }

                v31 = v29[1];
                if (!v31 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v31, "sym_name", 8, a3, a4))
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

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInvariantsImpl(unsigned int **this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  v7 = v4[2];
  if (!v7)
  {
    v15 = "requires attribute 'function_type'";
LABEL_17:
    v17 = v15;
    v18 = 259;
    mlir::Operation::emitOpError(v19, v2, &v17);
    v14 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v14;
  }

  v8 = v4[4];
  if (!v8)
  {
    v15 = "requires attribute 'param_decls'";
    goto LABEL_17;
  }

  v9 = v4[7];
  if (!v9)
  {
    v15 = "requires attribute 'sym_name'";
    goto LABEL_17;
  }

  v10 = v4[1];
  v11 = v4[3];
  v13 = v4[5];
  v12 = v4[6];
  v19[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v9, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v7, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v8, "param_decls", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v13, "priv", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v10, "externalize", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v11, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v5, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)) && (v19[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v19)))
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps3(*this, ((&(*this)[4 * (((*this)[11] >> 23) & 1) + 17] + (((*this)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*this)[10], "bodyRegion", 10, 0);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps3(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v5 = *(a2 + 8);
  if (v5 == a2 || *(v5 + 8) == a2)
  {
    return 1;
  }

  v20 = "region #";
  v21 = 259;
  mlir::Operation::emitOpError(v23, a1, &v20);
  v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v23, &v22);
  v9 = v8;
  if (a4)
  {
    v16 = 1283;
    v15[0] = " ('";
    v15[2] = a3;
    v15[3] = a4;
    v10 = v15;
    v17[2] = "') ";
    v11 = 2;
    v12 = 3;
  }

  else
  {
    v11 = 3;
    v10 = " ";
    v12 = 1;
  }

  v19 = v12;
  v17[0] = v10;
  v18 = v11;
  if (*v8)
  {
    mlir::Diagnostic::operator<<((v8 + 1), v17);
    if (*v9)
    {
      mlir::Diagnostic::operator<<<58ul>((v9 + 1), "failed to verify constraint: region with at most 1 blocks");
    }
  }

  v13 = (v9[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  return v13;
}

void mlir::ODIE::Compiler::CoreML::GreaterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::GreaterOp::build(void **a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  __src = v20;
  v19 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = a2[6];
  mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GreaterOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v6, 0, &v6, 1);
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::IfOp::parse(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v2 = v4;
  v3 = 1;
  operator new();
}

void mlir::ODIE::Compiler::CoreML::IfOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v12 = *v8 == v8 || ((v9 = v8[1]) != 0 ? (v10 = v9 - 8) : (v10 = 0), (v11 = *(v10 + 32), *(mlir::Operation::getAttrDictionary(v11) + 16)) || (*(v11 + 46) & 0x80) != 0 && *(v11 + 68)) || *(v11 + 36) != 0;
  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, v12, 0);
  v13 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v13 + 24) != v13 + 24)
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 3uLL)
    {
      *v17 = 1702063205;
      *(v16 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v16, "else", 4uLL);
    }

    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (v19 >= *(v18 + 3))
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      *(v18 + 4) = v19 + 1;
      *v19 = 32;
    }

    v20 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    v24 = *(v20 + 24) == v20 + 24 || ((v21 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 32)) != 0 ? (v22 = v21 - 8) : (v22 = 0), (v23 = *(v22 + 32), *(mlir::Operation::getAttrDictionary(v23) + 16)) || (*(v23 + 46) & 0x80) != 0 && *(v23 + 68)) || *(v23 + 36) != 0;
    (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, 1, v24, 0);
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) == v28)
  {
    llvm::raw_ostream::write(v27, ":", 1uLL);
  }

  else
  {
    *v28 = 58;
    ++*(v27 + 4);
  }

  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (v32 >= *(v31 + 3))
  {
    llvm::raw_ostream::write(v31, 32);
  }

  else
  {
    *(v31 + 4) = v32 + 1;
    *v32 = 32;
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (*(v33 + 3) - v34 > 1uLL)
  {
    *v34 = 15917;
    *(v33 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v33, "->", 2uLL);
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (v36 >= *(v35 + 3))
  {
    llvm::raw_ostream::write(v35, 32);
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 32;
  }

  v37 = *this;
  v38 = *(*this + 9);
  if (v38)
  {
    v39 = *this - 16;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    (*(*a2 + 32))(a2, *(v37 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v38 != 1)
    {
      v40 = v39 - 16;
      v41 = 1;
      while (1)
      {
        v42 = (*(*a2 + 16))(a2);
        v43 = *(v42 + 4);
        if (*(v42 + 3) - v43 > 1uLL)
        {
          *v43 = 8236;
          *(v42 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v42, ", ", 2uLL);
        }

        v44 = *(v37 - 1) & 7;
        v45 = v39;
        v46 = v41;
        if (v44 == 6)
        {
          goto LABEL_64;
        }

        v47 = (5 - v44);
        v48 = v40;
        v46 = v41 - v47;
        if (v41 > v47)
        {
          break;
        }

LABEL_65:
        (*(*a2 + 32))(a2, *(v48 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v41;
        v40 -= 16;
        if (v38 == v41)
        {
          goto LABEL_66;
        }
      }

      v45 = &v39[-16 * v47];
LABEL_64:
      v48 = &v45[-24 * v46];
      goto LABEL_65;
    }
  }

LABEL_66:
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v50, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps23(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++*(v12 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 15917;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "->", 2uLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = *this - 16;
  if (!*(*this + 9))
  {
    v22 = 0;
  }

  (*(*a2 + 32))(a2, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v22, a4);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "path", 4uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v13)
    {
      v11 = *(v12 + 8);
      if (v11)
      {
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v22, a4);
          if (!v22)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        a1[1] = v11;
      }
    }

    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "toImport", 8uLL);
    if (v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          a3(&v22, a4);
          if (!v22)
          {
            goto LABEL_4;
          }

          if (!v22)
          {
            goto LABEL_4;
          }

          v20 = 0;
          v21 = v16;
          goto LABEL_26;
        }

        a1[2] = v16;
      }
    }

    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v22, a4);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_17:
  if (v22)
  {
    v20 = 0;
    v21 = v11;
LABEL_26:
    v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
    v18 = v24 + 24 * v25;
    v19 = *v17;
    *(v18 + 16) = *(v17 + 16);
    *v18 = v19;
    ++v25;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "path";
    v18 = 4;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "sym_name";
    v18 = 8;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "toImport";
    v18 = 8;
    v13 = mlir::StringAttr::get(v12, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v13, v11);
  }

  v14 = v20;
  if (v21)
  {
    v15 = mlir::DictionaryAttr::get(a1, v20, v21);
    v14 = v20;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v22)
  {
    free(v14);
  }

  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[2]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v5);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v11, 0, sizeof(v11));
  v12 = 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v10, 0, v11, &v11[3] + 8, &v9, &v8);
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 == 8)
  {
    if (*a3 == 0x656D616E5F6D7973)
    {
      v4 = a2[1];
      goto LABEL_10;
    }

    if (*a3 == 0x74726F706D496F74)
    {
      v4 = a2[2];
      goto LABEL_10;
    }
  }

  else if (a4 == 4 && *a3 == 1752457584)
  {
    v4 = *a2;
LABEL_10:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  LOBYTE(v4) = 0;
  v5 = 0;
  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::ImportOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v6 = a4;
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

      result[1] = v6;
    }

    else if (*a2 == 0x74726F706D496F74)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v4 = a4;
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

      result[2] = v4;
    }
  }

  else if (a3 == 4 && *a2 == 1752457584)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ImportOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "path";
    v15 = 4;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "sym_name";
    v15 = 8;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "toImport";
    v15 = 8;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v10, "path", 4, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "sym_name", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(v16, "toImport", 8, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
        mlir::Diagnostic::operator<<<59ul>(v12, "' failed to satisfy constraint: symbol reference attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::build(mlir::StringAttr **a1, void *a2, const llvm::Twine *a3, const char *a4)
{
  v17 = 261;
  v16[0] = a3;
  v16[1] = a4;
  v8 = mlir::StringAttr::get(*a1, v16, a3);
  v10 = mlir::SymbolRefAttr::get(v8, 0, 0, v9);
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  v12 = mlir::StringAttr::get(*a1, v14, v11);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(a2) + 16) = v10;
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(a2);
  *(result + 8) = v12;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInvariantsImpl(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v5 = *(v3 + 8);
  v6 = *(v3 + 9);
  v4 = v3 + 16;
  if (!v6)
  {
    v9 = "requires attribute 'sym_name'";
LABEL_9:
    v11 = v9;
    v12 = 259;
    mlir::Operation::emitOpError(v13, v2, &v11);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    return v8;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v9 = "requires attribute 'toImport'";
    goto LABEL_9;
  }

  v13[0] = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(v7, "toImport", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v13[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v6, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v13[0] = *this;
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v5, "path", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  *(result + 40) = v2[1];
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 56) = v6;
  *(result + 64) = v5;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v24, a4);
    if (v24)
    {
      mlir::Diagnostic::operator<<<42ul>(v25, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v24, a4);
        if (!v24)
        {
          goto LABEL_4;
        }

LABEL_23:
        if (v24)
        {
          v22 = 0;
          v23 = v11;
LABEL_25:
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
          v20 = v26 + 24 * v27;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v27;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
        return 0;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "callee", 6uLL);
  if (v13)
  {
    v11 = *(v12 + 8);
    if (v11)
    {
      v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v12 + 8));
      if (!v14)
      {
        a3(&v24, a4);
        if (!v24)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      a1[1] = v14;
      a1[2] = v15;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
  if (v17)
  {
    v18 = *(v16 + 8);
    if (v18)
    {
      if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v24, a4);
        if (!v24)
        {
          goto LABEL_4;
        }

        if (!v24)
        {
          goto LABEL_4;
        }

        v22 = 0;
        v23 = v18;
        goto LABEL_25;
      }

      a1[3] = v18;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "arg_attrs";
    v18 = 9;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "callee";
    v18 = 6;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v10, v8);
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "res_attrs";
    v18 = 9;
    v13 = mlir::StringAttr::get(v12, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v13, v11);
  }

  v14 = v20;
  if (v21)
  {
    v15 = mlir::DictionaryAttr::get(a1, v20, v21);
    v14 = v20;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v22)
  {
    free(v14);
  }

  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[3]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v5);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v11, 0, sizeof(v11));
  v12 = 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v10, 0, v11, &v11[3] + 8, &v9, &v8);
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1819042147 || *(a3 + 4) != 25957)
    {
      goto LABEL_17;
    }

    v6 = a2[1];
    goto LABEL_20;
  }

  if (a4 == 9)
  {
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v6 = *a2;
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_17;
      }

      v6 = a2[3];
    }

LABEL_20:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

LABEL_17:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3 == 6)
  {
    if (*a2 == 1819042147 && *(a2 + 4) == 25957)
    {
      if (a4)
      {
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
      }

      else
      {
        result = 0;
        v9 = 0;
      }

      v4[1] = result;
      v4[2] = v9;
    }
  }

  else if (a3 == 9)
  {
    if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[3] = v7;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "arg_attrs";
    v15 = 9;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "callee";
    v15 = 6;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "res_attrs";
    v15 = 9;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v13, "callee", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v16, "res_attrs", 9, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a6, 0, a6, a7);
  v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(a3);
  mlir::OperationState::addAttribute(a2, "callee", 6, v11);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a4, 0, a4, a5);
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a7, 0, a7, a8);
  mlir::OperationState::addAttribute(a2, "callee", 6, a3);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a5, 0, a5, a6);
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::verifyInvariantsImpl(unsigned int **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 16;
  if (v4)
  {
    v7 = *(v5 + 3);
    v12[0] = v2;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v4, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) && (v12[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12)))
    {
      v12[0] = *this;
      return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = "requires attribute 'callee'";
    v11 = 259;
    mlir::Operation::emitOpError(v12, v2, &v10);
    v8 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  *(result + 40) = *(v2 + 16);
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 48) = v6;
  *(result + 56) = v5;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v22, a4);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "delegate_id", 0xBuLL);
    if (v13)
    {
      v11 = *(v12 + 8);
      if (v11)
      {
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v22, a4);
          if (!v22)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        a1[1] = v11;
      }
    }

    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
    if (v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v22, a4);
          if (!v22)
          {
            goto LABEL_4;
          }

          if (!v22)
          {
            goto LABEL_4;
          }

          v20 = 0;
          v21 = v16;
          goto LABEL_26;
        }

        a1[2] = v16;
      }
    }

    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v22, a4);
  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_17:
  if (v22)
  {
    v20 = 0;
    v21 = v11;
LABEL_26:
    v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
    v18 = v24 + 24 * v25;
    v19 = *v17;
    *(v18 + 16) = *(v17 + 16);
    *v18 = v19;
    ++v25;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "arg_attrs";
    v18 = 9;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "delegate_id";
    v18 = 11;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "res_attrs";
    v18 = 9;
    v13 = mlir::StringAttr::get(v12, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v13, v11);
  }

  v14 = v20;
  if (v21)
  {
    v15 = mlir::DictionaryAttr::get(a1, v20, v21);
    v14 = v20;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v22)
  {
    free(v14);
  }

  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[2]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v5);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v11, 0, sizeof(v11));
  v12 = 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v10, 0, v11, &v11[3] + 8, &v9, &v8);
}

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 11)
  {
    if (*a3 != 0x65746167656C6564 || *(a3 + 3) != 0x64695F6574616765)
    {
      goto LABEL_17;
    }

    v6 = a2[1];
    goto LABEL_20;
  }

  if (a4 == 9)
  {
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v6 = *a2;
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_17;
      }

      v6 = a2[2];
    }

LABEL_20:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

LABEL_17:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

uint64_t *mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11)
  {
    if (*a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[1] = v7;
    }
  }

  else if (a3 == 9)
  {
    if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }

    else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      result[2] = v9;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "arg_attrs";
    v15 = 9;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "delegate_id";
    v15 = 11;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "res_attrs";
    v15 = 9;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "delegate_id", 0xB, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v16, "res_attrs", 9, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) + 8) = a7;
  if (a8)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) = a8;
  }

  if (a9)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) + 16) = a9;
  }

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 64;
  if (!v4)
  {
    v15[0] = "requires attribute 'delegate_id'";
    v16 = 259;
LABEL_12:
    mlir::Operation::emitOpError(v17, v2, v15);
    v12 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    return v12;
  }

  v7 = *(v5 + 2);
  v17[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v4, "delegate_id", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17))
  {
    v17[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17))
    {
      v17[0] = *this;
      if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17))
      {
        v8 = *this;
        v9 = *(*this + 9);
        if ((*(*this + 46) & 0x80) != 0 && (v10 = *(v8 + 17), v10))
        {
          if ((*(v8 + 9) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v11 = *(v8 + 9) & 0xFFFFFFFFFFFFFFF8 | 4;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        v14 = v8 - 16;
        if (!v9)
        {
          v14 = 0;
        }

        v17[0] = v14;
        v17[1] = 0;
        v17[2] = v14;
        v17[3] = v9;
        mlir::TypeRange::TypeRange<mlir::ResultRange>(v15, v17);
        if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(v11, v10, v15[0], v15[1]))
        {
          return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "group", 5, 0);
        }

        v15[0] = "failed to verify that number of handle inputs must match number of token outputs";
        v16 = 259;
        v2 = *this;
        goto LABEL_12;
      }
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::parse(mlir::Region *a1, uint64_t a2)
{
  v35[16] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v34[0] = v35;
  v34[1] = 0x400000000;
  v24 = 0;
  v31 = &v33;
  v32 = 0x200000000;
  if ((*(*a1 + 152))(a1))
  {
    v4 = **(*(*a1 + 32))(a1);
    v5 = *(v4 + 528);
    if (!v5)
    {
      v6 = *(v4 + 384);
      v27 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v27);
    }

    if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v26, v5))
    {
      if (v26)
      {
        v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2);
        *(v7 + 8) = v26;
      }

      if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1))
      {
        (*(*a1 + 40))(a1);
        if ((*(*a1 + 720))(a1, v34, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
        {
          v23 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v8 = *(a2 + 8);
            v27 = a1;
            v28 = &v23;
            v29 = a2;
            if (mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27) && ((*(*a1 + 104))(a1) & 1) != 0)
            {
              v23 = 0;
              if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v23))
              {
                v9 = *(v23 + 16);
                v10 = *(v23 + 8);
                v24 = v9;
                v25 = v10;
                v11 = *(v23 + 12);
                v27 = 0;
                v12 = (*(*a1 + 792))(a1, &v27, 0, 0, 0);
                if ((v12 & 0x100) == 0)
                {
LABEL_16:
                  v13 = (v9 + 8 * v10);
                  std::unique_ptr<mlir::Region>::reset[abi:nn200100](&v27, 0);
                  v14 = v31;
                  if (v32)
                  {
                    v15 = 8 * v32;
                    do
                    {
                      v16 = *v14++;
                      v17 = (*(*a1 + 32))(a1);
                      v18 = *a2;
                      v27 = *v17;
                      v29 = 0;
                      v30 = 0;
                      v28 = 0;
                      mlir::impl::ensureRegionTerminator(v16, &v27, v18, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::buildTerminator);
                      v15 -= 8;
                    }

                    while (v15);
                    v14 = v31;
                    v19 = v32;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  mlir::OperationState::addRegions(a2, v14, v19);
                  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v13, &v13[8 * v11]);
                  v22 = (*(*a1 + 16))(a1);
                  v20 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, &v24, v22, a2 + 16);
                  goto LABEL_25;
                }

                if (v12)
                {
                  llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v31, &v27);
                  if ((*(*a1 + 128))(a1))
                  {
                    operator new();
                  }

                  goto LABEL_16;
                }

                std::unique_ptr<mlir::Region>::reset[abi:nn200100](&v27, 0);
              }
            }
          }
        }
      }
    }
  }

  v20 = 0;
LABEL_25:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v31);
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  return v20;
}

void *llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(unsigned int *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (v2 >= a1[3])
  {
    return llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<std::unique_ptr<mlir::Region>>(a1, a2);
  }

  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  *(v3 + 8 * v2) = v4;
  v5 = v2 + 1;
  a1[2] = v5;
  return (v3 + 8 * v5 - 8);
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  v10 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v11 = *(v10 + 17);
    v12 = v10[9];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v48 = v12;
  v49 = v11;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v48);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v13 + 4);
  }

  v48 = v50;
  v49 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "delegate_id", 11);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::ArrayAttr::get(*(***(*this + 3) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "arg_attrs", 9);
  }

  v16 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  if (v16 && v16 == mlir::ArrayAttr::get(*(***(*this + 3) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "res_attrs", 9);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v48, v49);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v47[0] = v25;
  v47[1] = 0;
  v47[2] = v25;
  v47[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v46[0] = v28;
  v46[1] = 0;
  v46[2] = v28;
  v46[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v47, v46);
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = *(*this + 11);
  v32 = v31 & 0x7FFFFF;
  if ((v31 & 0x7FFFFF) != 0)
  {
    v33 = (((*this + 16 * ((v31 >> 23) & 1) + ((v31 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
    v37 = *v33 == v33 || ((v34 = v33[1]) != 0 ? (v35 = v34 - 8) : (v35 = 0), (v36 = *(v35 + 32), *(mlir::Operation::getAttrDictionary(v36) + 16)) || (*(v36 + 46) & 0x80) != 0 && *(v36 + 68)) || *(v36 + 36) != 0;
    (*(*a2 + 224))(a2, v33, 1, v37, 0);
    if (v32 != 1)
    {
      v38 = v33 + 3;
      v39 = 24 * v32 - 24;
      do
      {
        v40 = (*(*a2 + 16))(a2);
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

        v45 = v38 == *v38 || ((v42 = v38[1]) != 0 ? (v43 = v42 - 8) : (v43 = 0), (v44 = *(v43 + 32), *(mlir::Operation::getAttrDictionary(v44) + 16)) || (*(v44 + 46) & 0x80) != 0 && *(v44 + 68)) || *(v44 + 36) != 0;
        (*(*a2 + 224))(a2, v38, 1, v45, 0);
        v38 += 3;
        v39 -= 24;
      }

      while (v39);
    }
  }

  if (v48 != v50)
  {
    free(v48);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::JoinTokenOp **this)
{
  v28[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  ODSOperands = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0);
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = ODSOperands + 24;
    while (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
    {
      ++v6;
      v7 += 32;
      if (v5 == v6)
      {
        v2 = *this;
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v8 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(v2, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = v8 + 24;
    while (1)
    {
      v12 = *this;
      v13 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
      v24 = v5;
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v23 = 261;
        v22[0] = "operand";
        v22[1] = 7;
        mlir::Operation::emitOpError(&v27, v12, v22);
        if (v27)
        {
          mlir::Diagnostic::operator<<<3ul>(v28, " #");
        }

        v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v24);
        v15 = v14;
        if (*v14)
        {
          mlir::Diagnostic::operator<<<32ul>((v14 + 1), " must be variadic of , but got ");
          if (*v15)
          {
            v25 = 4;
            v26 = v13;
            v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v25, 1);
            v17 = v15[3] + 24 * *(v15 + 8);
            v18 = *v16;
            *(v17 + 16) = *(v16 + 16);
            *v17 = v18;
            ++*(v15 + 8);
          }
        }

        v19 = *(v15 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
        if (v19)
        {
          return 0;
        }
      }

      v11 += 32;
      LODWORD(v5) = v5 + 1;
      if (!--v10)
      {
        v2 = *this;
        break;
      }
    }
  }

  if (*(v2 + 9))
  {
    v20 = v2 - 16;
  }

  else
  {
    v20 = 0;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(v2, *(v20 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v15[0] = &v16;
  v15[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((*(*a1 + 128))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v17, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1))
  {
    __src = 0;
    if (mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &__src))
    {
      v11 = __src;
      if (((*(*a1 + 128))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v15)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v8 = 0;
        if (mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &v8))
        {
          __src = v8;
          (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10);
            if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v4, a2 + 16))
            {
              v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v17, v15, v5, a2 + 16);
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

LABEL_17:
  v6 = 0;
LABEL_18:
  if (v15[0] != &v16)
  {
    free(v15[0]);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::print(mlir::ODIE::Compiler::CoreML::JoinTokenOp **this, mlir::OpAsmPrinter *a2)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  ODSOperands = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
  if (v7)
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, ",", 1uLL);
    }

    else
    {
      *v9 = 44;
      ++*(v8 + 4);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (v11 >= *(v10 + 3))
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      *(v10 + 4) = v11 + 1;
      *v11 = 32;
    }

    v46 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
    v47 = v12;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v46);
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++*(v15 + 4);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, "(", 1uLL);
  }

  else
  {
    *v20 = 40;
    ++*(v19 + 4);
  }

  v21 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0);
  (*(*a2 + 32))(a2, *(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
  if (v22)
  {
    v23 = (*(*a2 + 16))(a2);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, ",", 1uLL);
    }

    else
    {
      *v24 = 44;
      ++*(v23 + 4);
    }

    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }

    v27 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      (*(*a2 + 32))(a2, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v31 = v30 - 1;
      if (v31)
      {
        v32 = (v29 + 56);
        do
        {
          v33 = (*(*a2 + 16))(a2);
          v34 = *(v33 + 4);
          if (*(v33 + 3) - v34 > 1uLL)
          {
            *v34 = 8236;
            *(v33 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v33, ", ", 2uLL);
          }

          v35 = *v32;
          v32 += 4;
          (*(*a2 + 32))(a2, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v31;
        }

        while (v31);
      }
    }
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    llvm::raw_ostream::write(v36, ")", 1uLL);
  }

  else
  {
    *v37 = 41;
    ++*(v36 + 4);
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (v39 >= *(v38 + 3))
  {
    llvm::raw_ostream::write(v38, 32);
  }

  else
  {
    *(v38 + 4) = v39 + 1;
    *v39 = 32;
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (*(v40 + 3) - v41 > 1uLL)
  {
    *v41 = 15917;
    *(v40 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v40, "->", 2uLL);
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = *this - 16;
  if (!*(*this + 9))
  {
    v44 = 0;
  }

  (*(*a2 + 32))(a2, *(v44 + 1) & 0xFFFFFFFFFFFFFFF8);
  v46 = v48;
  v47 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v46, v47);
  if (v46 != v48)
  {
    free(v46);
  }
}

void mlir::ODIE::Compiler::CoreML::LogOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::LogOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::MaxPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a4;
  __src = a3;
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  v10 = a9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v17);
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  v4 = 1;
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v6 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v7 = 259;
    mlir::Operation::emitOpError(v8, *this, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v21[0] = &v22;
  v21[1] = 1;
  v19[1] = 1;
  v20 = 0;
  v18 = 0;
  v19[0] = &v20;
  v17[0] = &v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v14 = 0;
  v15[0] = &v16;
  v13[0] = &v14;
  v13[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v41, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v38, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v35, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v32, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v29, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v26, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v24 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v22 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v20 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v18 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v16 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v11 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v11)) && (__src = v11, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v23, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v21, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v19, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v17, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v15, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v13, v9, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::MaxPool2dOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) == v29)
  {
    llvm::raw_ostream::write(v28, ":", 1uLL);
  }

  else
  {
    *v29 = 58;
    ++*(v28 + 4);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, "(", 1uLL);
  }

  else
  {
    *v33 = 40;
    ++*(v32 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++*(v42 + 4);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if (*(v50 + 3) == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++*(v50 + 4);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ")", 1uLL);
  }

  else
  {
    *v55 = 41;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) - v59 > 1uLL)
  {
    *v59 = 15917;
    *(v58 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "->", 2uLL);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  v62 = *this - 16;
  if (!*(*this + 9))
  {
    v62 = 0;
  }

  (*(*a2 + 32))(a2, *(v62 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v64, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  v4 = 1;
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v6 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v7 = 259;
    mlir::Operation::emitOpError(v8, *this, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool3dOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v21[0] = &v22;
  v21[1] = 1;
  v19[1] = 1;
  v20 = 0;
  v18 = 0;
  v19[0] = &v20;
  v17[0] = &v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v14 = 0;
  v15[0] = &v16;
  v13[0] = &v14;
  v13[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v41, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v38, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v35, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v32, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v29, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v26, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v24 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v22 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v20 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v18 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v16 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v11 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v11)) && (__src = v11, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v23, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v21, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v19, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v17, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v15, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v13, v9, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::MaxPool3dOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) == v29)
  {
    llvm::raw_ostream::write(v28, ":", 1uLL);
  }

  else
  {
    *v29 = 58;
    ++*(v28 + 4);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, "(", 1uLL);
  }

  else
  {
    *v33 = 40;
    ++*(v32 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++*(v42 + 4);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if (*(v50 + 3) == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++*(v50 + 4);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ")", 1uLL);
  }

  else
  {
    *v55 = 41;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) - v59 > 1uLL)
  {
    *v59 = 15917;
    *(v58 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "->", 2uLL);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  v62 = *this - 16;
  if (!*(*this + 9))
  {
    v62 = 0;
  }

  (*(*a2 + 32))(a2, *(v62 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v64, 0);
}

void mlir::ODIE::Compiler::CoreML::MaximumOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::MaximumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 == v14)
    {
      v16 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v16);
      v19 = v17;
      if (v17)
      {
        v17 = (*(v18 + 8))(v18, v17);
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
      v24 = v22;
      if (v22)
      {
        v22 = (*(v23 + 8))(v23, v22);
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v20 == v25)
      {
        v7 = 1;
        return v7 & 1;
      }

      v15 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v26 = v15;
    v27 = 259;
    mlir::Operation::emitOpError(v28, *this, &v26);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::MaximumOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::MaximumOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::setPropertiesFromAttr(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v25, a4);
    if (v25)
    {
      mlir::Diagnostic::operator<<<42ul>(v26, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "alignInBits", 0xBuLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v13)
    {
      v11 = *(v12 + 8);
      if (v11)
      {
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v25, a4);
          if (!v25)
          {
            goto LABEL_4;
          }

LABEL_23:
          if (v25)
          {
            LODWORD(v24[0]) = 0;
            v24[1] = v11;
            v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, v24, 1);
            v17 = v27 + 24 * v28;
            v18 = *v16;
            *(v17 + 16) = *(v16 + 16);
            *v17 = v18;
            ++v28;
          }

          goto LABEL_4;
        }

        a1[1] = v11;
      }
    }

    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "type", 4uLL);
    if (v15)
    {
      v11 = *(v14 + 8);
      if (v11)
      {
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          a3(&v25, a4);
          if (!v25)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        a1[2] = v11;
      }
    }

    v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "value", 5uLL);
    if (v20)
    {
      v21 = *(v19 + 8);
      v24[0] = v21;
      if (v21)
      {
        v22 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v21);
        if (!v22)
        {
          a3(&v25, a4);
          if (v25)
          {
            if (v25)
            {
              mlir::Diagnostic::operator<<<mlir::Attribute &>(v26, v24);
            }
          }

          goto LABEL_4;
        }

        a1[3] = v22;
        a1[4] = v23;
      }
    }

    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v25, a4);
  if (v25)
  {
    goto LABEL_23;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "alignInBits";
    v21 = 11;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "sym_name";
    v21 = 8;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "type";
    v21 = 4;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v22 = 261;
    v20 = "value";
    v21 = 5;
    v16 = mlir::StringAttr::get(v15, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v16, v14);
  }

  v17 = v23;
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
    v17 = v23;
  }

  else
  {
    v18 = 0;
  }

  if (v17 != v25)
  {
    free(v17);
  }

  return v18;
}

unint64_t mlir::ODIE::Compiler::CoreML::MemberOp::computePropertiesHash(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v15 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = 8 * a1[2] - 0xAE502812AA7333;
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1[2]) ^ ((0x9DDFEA08EB382D69 * (v7 ^ HIDWORD(a1[2]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ HIDWORD(a1[2]))));
  v13 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v16, 0, v16, v17, &v15, &v14, &v13, &v12);
}

unint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 7)
  {
    if (a4 != 4)
    {
      v5 = 0;
      if (a4 == 5)
      {
        if (*a3 != 1970037110 || *(a3 + 4) != 101)
        {
          goto LABEL_21;
        }

        v4 = a2[3];
LABEL_23:
        v5 = v4 & 0xFFFFFFFFFFFFFF00;
        return v5 | v4;
      }

      return v5 | v4;
    }

    if (*a3 == 1701869940)
    {
      v4 = a2[2];
      goto LABEL_23;
    }

LABEL_21:
    LOBYTE(v4) = 0;
    v5 = 0;
    return v5 | v4;
  }

  if (a4 == 8)
  {
    if (*a3 == 0x656D616E5F6D7973)
    {
      v4 = a2[1];
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v5 = 0;
  if (a4 == 11)
  {
    if (*a3 != 0x426E496E67696C61 || *(a3 + 3) != 0x737469426E496E67)
    {
      goto LABEL_21;
    }

    v4 = *a2;
    goto LABEL_23;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::MemberOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      if (*a2 == 0x656D616E5F6D7973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        result[1] = v10;
      }
    }

    else if (a3 == 11 && *a2 == 0x426E496E67696C61 && *(a2 + 3) == 0x737469426E496E67)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }
  }

  else if (a3 == 4)
  {
    if (*a2 == 1701869940)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      result[2] = v9;
    }
  }

  else if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
    }

    else
    {
      result = 0;
      v6 = 0;
    }

    v4[3] = result;
    v4[4] = v6;
  }

  return result;
}