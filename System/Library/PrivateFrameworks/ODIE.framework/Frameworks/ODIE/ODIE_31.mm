void mlir::ODIE::Compiler::CoreML::MemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "alignInBits";
    v18 = 11;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "sym_name";
    v18 = 8;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "type";
    v18 = 4;
    v13 = mlir::StringAttr::get(v12, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v19 = 261;
    v17 = "value";
    v18 = 5;
    v16 = mlir::StringAttr::get(v15, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(v10, "alignInBits", 0xB, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "sym_name", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(v16, "type", 4, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v19, "value", 5, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == -2147483584)
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
        mlir::Diagnostic::operator<<<66ul>(v13, "' failed to satisfy constraint: 64-bit unsigned integer attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(uint64_t a1, void *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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
    llvm::getTypeName<mlir::IntegerAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::IntegerAttr>();
    unk_27FC18860 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::IntegerAttr>(void)::Name;
    v15 = unk_27FC18860;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypedAttr>(uint64_t a1, uint64_t **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  if (!v13)
  {
    return 1;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
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
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypedAttr>();
    *algn_27FC173F8 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::TypedAttr>(void)::Name;
    v15 = *algn_27FC173F8;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v9 = v19 + 24 * v20;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v20;
      }
    }
  }

  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInvariantsImpl(unsigned int **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 16;
  if (!v4)
  {
    v10 = "requires attribute 'sym_name'";
LABEL_10:
    v12 = v10;
    v13 = 259;
    mlir::Operation::emitOpError(v14, v2, &v12);
    v9 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    return v9;
  }

  v7 = *(v5 + 2);
  if (!v7)
  {
    v10 = "requires attribute 'type'";
    goto LABEL_10;
  }

  v8 = *(v5 + 3);
  v14[0] = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    return 0;
  }

  v14[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(v7, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    return 0;
  }

  v14[0] = *this;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v8, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    return 0;
  }

  v14[0] = *this;
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(v6, "alignInBits", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14);
}

void mlir::ODIE::Compiler::CoreML::MinimumOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::MinimumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::MinimumOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::MinimumOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v20, a4);
    if (v20)
    {
      mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "param_decls", 0xBuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        a3(&v20, a4);
        if (!v20)
        {
          goto LABEL_4;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = v11;
        goto LABEL_18;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v20, a4);
        if (!v20)
        {
          goto LABEL_4;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = v14;
LABEL_18:
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
        v16 = v22 + 24 * v23;
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++v23;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
        return 0;
      }

      a1[1] = v14;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "param_decls";
    v15 = 11;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "sym_name";
    v15 = 8;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v10, v8);
  }

  v11 = v17;
  if (v18)
  {
    v12 = mlir::DictionaryAttr::get(a1, v17, v18);
    v11 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v19)
  {
    free(v11);
  }

  return v12;
}

unint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v9, 0, v9, v10, &v8, &v7);
}

unint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 != 11)
    {
      goto LABEL_10;
    }

    if (*a3 != 0x65645F6D61726170 || *(a3 + 3) != 0x736C6365645F6D61)
    {
      goto LABEL_10;
    }

    v5 = *a2;
LABEL_12:
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    return v6 | v5;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v5 = a2[1];
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v5) = 0;
  v6 = 0;
  return v6 | v5;
}

uint64_t *mlir::ODIE::Compiler::CoreML::ModuleOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
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

      result[1] = v5;
    }
  }

  else if (a3 == 11 && *a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
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

    *result = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "param_decls";
    v12 = 11;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "sym_name";
    v12 = 8;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v10, "param_decls", 0xB, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, const char *a4, unsigned int *a5, uint64_t a6)
{
  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  v10 = mlir::StringAttr::get(*a1, v13, a3);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(a2) + 8) = v10;
  v12 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a5, a6, v11);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(a2) = v12;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v9 = "requires attribute 'param_decls'";
LABEL_9:
    v11 = v9;
    v12 = 259;
    mlir::Operation::emitOpError(v13, v2, &v11);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    return v8;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v9 = "requires attribute 'sym_name'";
    goto LABEL_9;
  }

  v13[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13) && (v13[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v5, "param_decls", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13)))
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ModuloOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::ModuloOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::ModuloOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::MulOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::MulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::MulOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::MulOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::NonZeroOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::NonZeroOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::NotEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::NotEqualOp::build(void **a1, unsigned int *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::NotEqualOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::NotOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

uint64_t mlir::ODIE::Compiler::CoreML::NotOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::ODIE::Compiler::CoreML::NotOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::NotOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::NotOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::OrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::OrOp::build(void **a1, unsigned int *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::OrOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

BOOL mlir::ODIE::Compiler::CoreML::OrOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::OrOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::OutputOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::OutputOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 720))(a1, &v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (!v10 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  return v5;
}

void mlir::ODIE::Compiler::CoreML::OutputOp::print(mlir::ODIE::Compiler::CoreML::OutputOp *this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if ((*(v4 + 46) & 0x80) != 0 && *(v4 + 68))
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if (v6 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v6 + 1;
      *v6 = 32;
    }

    v7 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v8 = *(v7 + 68);
      v9 = *(v7 + 72);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v25 = v9;
    v26 = v8;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v25);
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

    v16 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v17 = *(v16 + 68);
      if (v17)
      {
        v18 = *(v16 + 72);
        (*(*a2 + 32))(a2, *(*(v18 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v17 != 1)
        {
          v19 = v17 - 1;
          v20 = (v18 + 56);
          do
          {
            v21 = (*(*a2 + 16))(a2);
            v22 = *(v21 + 4);
            if (*(v21 + 3) - v22 > 1uLL)
            {
              *v22 = 8236;
              *(v21 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v21, ", ", 2uLL);
            }

            v23 = *v20;
            v20 += 4;
            (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v19;
          }

          while (v19);
        }
      }
    }

    v4 = *this;
  }

  v25 = v27;
  v26 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "padding_mode", 0xCuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "padding_mode";
  v10[1] = 12;
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

unint64_t mlir::ODIE::Compiler::CoreML::PadOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::PadOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x5F676E6964646170 ? (v4 = *(a3 + 8) == 1701080941) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::CoreML::PadOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12 && *a2 == 0x5F676E6964646170 && *(a2 + 8) == 1701080941)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::PadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "padding_mode";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::PadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(v8, "padding_mode", 0xC, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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
        mlir::Diagnostic::operator<<<133ul>(v12, "' failed to satisfy constraint: CoreML Pad Op's padding mode to use: 'circular' | 'constant' | 'reflect' | 'replicate' | 'symmetric'");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E608))
  {
    qword_27FC1E5F8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>();
    unk_27FC1E600 = v11;
    __cxa_guard_release(&qword_27FC1E608);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E5F8;
    v15 = unk_27FC1E600;
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

void mlir::ODIE::Compiler::CoreML::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  __src = a3;
  v9 = a6;
  v10 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(a2) = a7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v13);
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v49[0] = "requires attribute 'padding_mode'";
    v50 = 259;
LABEL_24:
    mlir::Operation::emitOpError(&v55, v2, v49);
    v32 = v56[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
    return v32 & 1;
  }

  v55 = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(v3, "padding_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v55) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
LABEL_22:
    v32 = 0;
    return v32 & 1;
  }

  v4 = *this;
  v5 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  v51 = 2;
  v6 = *v5;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
    if ((*(v8 + 16))(v8, v5))
    {
      v9 = *v5;
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
      (*(v11 + 24))(v11, v5);
      if (!v12)
      {
        v35 = *v5;
        v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v37 = mlir::detail::InterfaceMap::lookup(v35 + 8, v36);
        v38 = (*(v37 + 8))(v37, v5);
        v39 = *(*v38 + 136);
        if (v39 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v39 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v39 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v39 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_14;
        }

        if (v39 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v45 = v38[2];
          if ((v45 + 2147483644) <= 0x3C && ((1 << (v45 - 4)) & 0x1000000010001011) != 0)
          {
            goto LABEL_14;
          }

          v47 = (v45 - 1073741828) > 0x3C || ((1 << (v45 - 4)) & 0x1000000010001011) == 0;
          if (!v47 || v45 == 1)
          {
            goto LABEL_14;
          }
        }

        else if (v39 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v43 = *(**(v38 + 1) + 136);
          if (v43 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v43 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  v50 = 261;
  v49[0] = "operand";
  v49[1] = 7;
  mlir::Operation::emitOpError(&v55, v4, v49);
  if (v55)
  {
    mlir::Diagnostic::operator<<<3ul>(v56, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v55, &v51);
  v14 = v13;
  if (*v13)
  {
    v52 = 3;
    v53 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v54 = 274;
    v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v52, 1);
    v16 = v14[3] + 24 * *(v14 + 8);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 16);
    *v16 = v17;
    ++*(v14 + 8);
    if (*v14)
    {
      v52 = 4;
      v53 = v5;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v52, 1);
      v19 = v14[3] + 24 * *(v14 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v14 + 8);
    }
  }

  v21 = *(v14 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v22 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    goto LABEL_22;
  }

  v23 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  (*(v24 + 24))(v24, v23);
  v26 = v25;
  v27 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
  (*(v28 + 24))(v28, v27);
  if (v26 != v29)
  {
    v34 = "failed to verify that Result 0 and operand 0 must have the same rank.";
LABEL_47:
    v49[0] = v34;
    v50 = 259;
    v2 = *this;
    goto LABEL_24;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v34 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_47;
  }

  v31 = mlir::getElementTypeOrSelf(*this - 16);
  if (v31 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)))
  {
    v34 = "failed to verify that Result 0 element type must match element type of operand 2.";
    goto LABEL_47;
  }

  v32 = 1;
  return v32 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::PadOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17 = 0;
  v18 = 0;
  v16[0] = &v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  v29 = 257;
  if (((*(*a1 + 400))(a1, "mode", 4, v28) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(a1, &v18))
  {
    return 0;
  }

  v7 = v18;
  if (v18)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(a2) = v7;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v28[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v28)) && (v17 = v28[0], ((*(*a1 + 120))(a1)) && (v28[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v28)) && (v15 = v28[0], ((*(*a1 + 120))(a1)) && (v28[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v28)) && (v13 = v28[0], ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v28[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v28)) && (__src = v28[0], v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v28[0] = a1, v28[1] = &v10, v28[2] = a2, mlir::ODIE::Compiler::CoreML::PadOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v28)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v12), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v16, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if (((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML15PaddingModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v11) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of attribute specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::PadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v54[4] = *MEMORY[0x277D85DE8];
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
    *v17 = 1701080941;
    *(v16 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v16, "mode", 4uLL);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "=", 1uLL);
  }

  else
  {
    *v21 = 61;
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

  v52 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = (*(*v24 + 80))(v24) + v24[4] - v24[2];
    mlir::ODIE::Compiler::CoreML::PaddingModeAttr::print(&v52, a2);
    if (v25 == (*(*v24 + 80))(v24) + v24[4] - v24[2])
    {
      (*(*a2 + 40))(a2, v52);
    }
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
    llvm::raw_ostream::write(v42, ")", 1uLL);
  }

  else
  {
    *v43 = 41;
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

  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) - v47 > 1uLL)
  {
    *v47 = 15917;
    *(v46 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v46, "->", 2uLL);
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

  v50 = *this - 16;
  if (!*(*this + 9))
  {
    v50 = 0;
  }

  (*(*a2 + 32))(a2, *(v50 + 1) & 0xFFFFFFFFFFFFFFF8);
  v52 = v54;
  v53 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v52, "padding_mode", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v52, v53);
  if (v52 != v54)
  {
    free(v52);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "opname", 6uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "opname";
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

unint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1634627695 ? (v4 = *(a3 + 4) == 25965) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::CoreML::PlaceholderOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6 && *a2 == 1634627695 && *(a2 + 4) == 25965)
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

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "opname";
    v7[1] = 6;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::PlaceholderOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v8, "opname", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::PlaceholderOp::verifyInvariantsImpl(unsigned int **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v7[0] = v1;
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v2, "opname", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v7);
  }

  else
  {
    v5 = "requires attribute 'opname'";
    v6 = 259;
    mlir::Operation::emitOpError(v7, v1, &v5);
    v3 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v3;
}

BOOL mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v15 = 0;
  v16 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v17, v5))
  {
    goto LABEL_14;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(a2);
    *v7 = v17;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v9 = *(a2 + 8), v13[0] = a1, v13[1] = &v14, v13[2] = a2, mlir::ODIE::Compiler::CoreML::PlaceholderOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v13[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v13)))
  {
    v10 = *(v13[0] + 8);
    v15 = *(v13[0] + 16);
    v16 = v10;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v15 + 8 * v10), (v15 + 8 * v10 + 8 * *(v13[0] + 12)));
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, &v15, v8, a2 + 16);
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v11;
}

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "(", 1uLL);
  }

  else
  {
    *v7 = 40;
    ++*(v6 + 4);
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 17);
    v10 = v8[9];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v27 = v10;
  v28 = v9;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v27);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ")", 1uLL);
  }

  else
  {
    *v12 = 41;
    ++*(v11 + 4);
  }

  v27 = v29;
  v28 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "opname", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, v28);
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v21 = *(v20 + 17);
    v22 = *(v20 + 9);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v26[0] = v22;
  v26[1] = 0;
  v26[2] = v22;
  v26[3] = v21;
  v23 = *(v20 + 9);
  v24 = v20 - 16;
  if (!v23)
  {
    v24 = 0;
  }

  v25[0] = v24;
  v25[1] = 0;
  v25[2] = v24;
  v25[3] = v23;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v26, v25);
  if (v27 != v29)
  {
    free(v27);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::PointerIndexOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v18[25] = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps29(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v14 = 1;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v13 = 261;
    v12[0] = "operand";
    v12[1] = 7;
    mlir::Operation::emitOpError(&v17, v2, v12);
    if (v17)
    {
      mlir::Diagnostic::operator<<<3ul>(v18, " #");
    }

    v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
    v5 = v4;
    if (*v4)
    {
      mlir::Diagnostic::operator<<<25ul>((v4 + 1), " must be index, but got ");
      if (*v5)
      {
        v15 = 4;
        v16 = v3;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v5 + 3), &v15, 1);
        v7 = v5[3] + 24 * *(v5 + 8);
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++*(v5 + 8);
      }
    }

    v9 = *(v5 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    if (v9)
    {
      return 0;
    }

    v2 = *this;
  }

  if (*(v2 + 9))
  {
    v11 = v2 - 16;
  }

  else
  {
    v11 = 0;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps29(v2, *(v11 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps29(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id)
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
    mlir::Diagnostic::operator<<<20ul>((v6 + 1), " must be , but got ");
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

uint64_t mlir::ODIE::Compiler::CoreML::PointerIndexOp::parse(uint64_t a1, uint64_t a2)
{
  v27[6] = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18[1] = 1;
  v19 = 0;
  v18[0] = &v19;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 536))(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(**(*(*a1 + 32))(a1) + 472);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v18, v4, a2 + 16) || ((*(*a1 + 728))(a1, v20, v5, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  __src = v27;
  v26 = 0x600000000;
  (*(*a1 + 32))(a1);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = (*(*a1 + 32))(a1);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *v9);
  if (mlir::ODIE::Compiler::CoreML::PointerIndexOp::inferReturnTypes(Dictionary, v6, 1, v7 & 0xFFFFFFFFFFFFFFF9, v8, v11, v12, v13, v16, v17, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v26);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (__src != v27)
  {
    free(__src);
  }

  return v14;
}

void mlir::ODIE::Compiler::CoreML::PointerIndexOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "]", 1uLL);
  }

  else
  {
    *v9 = 93;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::PointerLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v24[6] = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v17[0] = &v18;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v17, v4, a2 + 16))
  {
    return 0;
  }

  __src = v24;
  v23 = 0x600000000;
  (*(*a1 + 32))(a1);
  v5 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = (*(*a1 + 32))(a1);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *v8);
  if (mlir::ODIE::Compiler::CoreML::PointerLoadOp::inferReturnTypes(Dictionary, v5, 1, v6 & 0xFFFFFFFFFFFFFFF9, v7, v10, v11, v12, v15, v16, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v23);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v24)
  {
    free(__src);
  }

  return v13;
}

void mlir::ODIE::Compiler::CoreML::PointerLoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::PointerStoreOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (v17[0] = 0, ((*(*a1 + 536))(a1, v17)) && (v13 = v17[0], v18 = 257, ((*(*a1 + 400))(a1, "into", 4, v17)) && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v8) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::PointerStoreOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v14 + 3) - v15 > 3uLL)
  {
    *v15 = 1869901417;
    *(v14 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v14, "into", 4uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, 0);
}

void mlir::ODIE::Compiler::CoreML::PowOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::PowOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::PowOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::PowOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::RangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t mlir::ODIE::Compiler::CoreML::RangeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v66 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps31(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps31(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps31(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
LABEL_44:
    v34 = 0;
    return v34 & 1;
  }

  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 1) & 0xFFFFFFFFFFFFFFF8;
  v60 = 0;
  v5 = *v4;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    if ((*(v7 + 16))(v7, v4))
    {
      v8 = *v4;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
      (*(v10 + 24))(v10, v4);
      if (v11 == 1)
      {
        v12 = *v4;
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        v15 = (*(v14 + 8))(v14, v4);
        v16 = *(*v15 + 136);
        if (v16 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_46;
        }

        if (v16 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v22 = v15[2];
          if ((v22 + 2147483644) <= 0x3C && ((1 << (v22 - 4)) & 0x1000000010001011) != 0)
          {
            goto LABEL_46;
          }

          v24 = v22 - 1073741828;
          v25 = v24 > 0x3C;
          v26 = (1 << v24) & 0x1000000010001011;
          if (!v25 && v26 != 0)
          {
            goto LABEL_46;
          }
        }

        else if (v16 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v20 = *(**(v15 + 1) + 136);
          if (v20 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            goto LABEL_46;
          }
        }
      }
    }
  }

  v59 = 261;
  v58[0] = "result";
  v58[1] = 6;
  mlir::Operation::emitOpError(&v63, v2, v58);
  if (v63)
  {
    mlir::Diagnostic::operator<<<3ul>(v64, " #");
  }

  v28 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v63, &v60);
  v29 = v28;
  if (*v28)
  {
    mlir::Diagnostic::operator<<<258ul>((v28 + 1), " must be 1D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v29)
    {
      v61 = 4;
      v62 = v4;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v29 + 3), &v61, 1);
      v31 = v29[3] + 24 * *(v29 + 8);
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++*(v29 + 8);
    }
  }

  v33 = *(v29 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
  if (v33)
  {
    goto LABEL_44;
  }

LABEL_46:
  v36 = 0;
  v63 = 0x100000000;
  v64[0] = 2;
  do
  {
    v37 = (*(*(*(*this + 9) + 32 * v64[v36 - 1] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v37);
    v40 = v38;
    if (v38)
    {
      v38 = (*(v39 + 8))(v39, v38);
    }

    if (v40)
    {
      v41 = v38;
    }

    else
    {
      v41 = v37;
    }

    v42 = (*(*(*(*this + 9) + 32 * v64[v36 - 2] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v43 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v42);
    v45 = v43;
    if (v43)
    {
      v43 = (*(v44 + 8))(v44, v43);
    }

    if (v45)
    {
      v46 = v43;
    }

    else
    {
      v46 = v42;
    }

    if (v41 != v46)
    {
      v51 = "failed to verify that Operands should have same element type.";
LABEL_72:
      v58[0] = v51;
      v59 = 259;
      mlir::Operation::emitOpError(&v63, *this, v58);
      v34 = v65 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
      return v34 & 1;
    }

    ++v36;
  }

  while (v36 != 2);
  v47 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v48 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v47);
  v50 = v48;
  if (v48)
  {
    v48 = (*(v49 + 8))(v49, v48);
  }

  if (v50)
  {
    v52 = v48;
  }

  else
  {
    v52 = v47;
  }

  v53 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v53);
  v56 = v54;
  if (v54)
  {
    v54 = (*(v55 + 8))(v55, v54);
  }

  if (v56)
  {
    v57 = v54;
  }

  else
  {
    v57 = v53;
  }

  if (v52 != v57)
  {
    v51 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_72;
  }

  v34 = 1;
  return v34 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps31(mlir::Operation *a1, uint64_t *a2, unsigned int a3)
{
  v40[25] = *MEMORY[0x277D85DE8];
  v36 = a3;
  v5 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    if ((*(v7 + 16))(v7, a2))
    {
      v8 = *a2;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
      (*(v10 + 24))(v10, a2);
      if (!v11)
      {
        v19 = *a2;
        v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v21 = mlir::detail::InterfaceMap::lookup(v19 + 8, v20);
        v22 = (*(v21 + 8))(v21, a2);
        v23 = *(*v22 + 136);
        if (v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }

        if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          return 1;
        }

        if (v23 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v28 = v22[2];
          v17 = 1;
          if ((v28 + 2147483644) <= 0x3C && ((1 << (v28 - 4)) & 0x1000000010001011) != 0)
          {
            return v17;
          }

          v30 = v28 - 1073741828;
          v31 = v30 > 0x3C;
          v32 = (1 << v30) & 0x1000000010001011;
          if (!v31 && v32 != 0)
          {
            return v17;
          }

          goto LABEL_4;
        }

        if (v23 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v26 = *(**(v22 + 1) + 136);
          if (v26 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            return 1;
          }
        }
      }
    }
  }

LABEL_4:
  v35 = 261;
  v34[0] = "operand";
  v34[1] = 7;
  mlir::Operation::emitOpError(&v39, a1, v34);
  if (v39)
  {
    mlir::Diagnostic::operator<<<3ul>(v40, " #");
  }

  v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v39, &v36);
  v13 = v12;
  if (*v12)
  {
    mlir::Diagnostic::operator<<<258ul>((v12 + 1), " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v13)
    {
      v37 = 4;
      v38 = a2;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v37, 1);
      v15 = v13[3] + 24 * *(v13 + 8);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++*(v13 + 8);
    }
  }

  v17 = (v13[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreML::RangeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::RangeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
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

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ReLUOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::ReLUOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::ReLUOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::ReLUOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::ReadHandleOp::getAsmResultNames(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v16 = a2;
  a2(a3, v6, "output", 6);
  v7 = *a1;
  v8 = *(*a1 + 36);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 8) & 7;
  if (v9 || v11 == 6 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  return v16(a3, v7 + v14, "out_token", 9);
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a6;
  v10 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps33(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9);
  v3 = *this - 16;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(v3 + 1) & 7;
  v5 = !v2 || v4 == 6;
  v6 = v5 || v4 == 5;
  v7 = v6 ? -40 : -32;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, *(*this + v7 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u))
  {
    return 0;
  }

  v8 = *(*this + 9);
  v9 = *(v8 + 24);
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v8 + 56));
  v11 = 1;
  if (HandleForToken)
  {
    v12 = HandleForToken == v9;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v14 = "failed to verify that input token must come from an operation on the same handle";
    v15 = 259;
    mlir::Operation::emitOpError(v16, *this, &v14);
    v11 = (v17 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps33(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
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
    mlir::Diagnostic::operator<<<20ul>((v6 + 1), " must be , but got ");
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

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v11 = 0;
  v12[0] = &v13;
  v10[0] = &v11;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v18, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v15, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::HandleType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (__src = v8, ((*(*a1 + 120))(a1)) && (v7 = 0, mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &v7)) && (v8 = v7, ((*(*a1 + 296))(a1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v8, &__src), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v12, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v10, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::HandleType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if (((*(*a1 + 544))(a1, &v10, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML10HandleTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_, v11) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of Type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v43[4] = *MEMORY[0x277D85DE8];
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

  v18 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v18)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::HandleType,(void *)0>(a2, v18);
  }

  else
  {
    (*(*a2 + 32))(a2);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ",", 1uLL);
  }

  else
  {
    *v20 = 44;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) == v24)
  {
    llvm::raw_ostream::write(v23, ")", 1uLL);
  }

  else
  {
    *v24 = 41;
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

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (*(v31 + 3) == v32)
  {
    llvm::raw_ostream::write(v31, "(", 1uLL);
  }

  else
  {
    *v32 = 40;
    ++*(v31 + 4);
  }

  v33 = *this - 16;
  if (!*(*this + 9))
  {
    v33 = 0;
  }

  (*(*a2 + 32))(a2, *(v33 + 1) & 0xFFFFFFFFFFFFFFF8);
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

  if (!*(*this + 9) || (v38 = *(*this - 1) & 7, v38 == 6) || v38 == 5)
  {
    v39 = -40;
  }

  else
  {
    v39 = -32;
  }

  (*(*a2 + 32))(a2, *(*this + v39 + 8) & 0xFFFFFFFFFFFFFFF8);
  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (*(v40 + 3) == v41)
  {
    llvm::raw_ostream::write(v40, ")", 1uLL);
  }

  else
  {
    *v41 = 41;
    ++*(v40 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v43, 0);
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::HandleType,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v6 = a2;
  result = (*(*a1 + 64))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    mlir::ODIE::Compiler::CoreML::HandleType::print(&v6, a1);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 32))(a1, v6);
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::RealPartOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::RealPartOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::RealPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
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

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ReduceL2Norm::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(), void (*a8)(mlir::ODIE::Compiler::CoreML::ReduceL2Norm *this, mlir::OpBuilder *a2, mlir::Block *a3))
{
  v9[15] = *MEMORY[0x277D85DE8];
  v9[2] = a6;
  v9[3] = a3;
  v9[0] = a4;
  v9[1] = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, v9, 0, v9, 3);
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceL2Norm::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
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

  if (v9 == v14)
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0);
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::Operation::emitOpError(v17, *this, &v15);
  v7 = (v18 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  return v7;
}

void mlir::ODIE::Compiler::CoreML::ReduceL2Norm::parse(uint64_t a1, uint64_t a2)
{
  v4[16] = *MEMORY[0x277D85DE8];
  v2 = v4;
  v3 = 0x400000000;
  operator new();
}

void mlir::ODIE::Compiler::CoreML::ReduceL2Norm::print(mlir::ODIE::Compiler::CoreML::ReduceL2Norm *this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = *this;
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  if ((*(v3 + 46) & 0x80) != 0)
  {
    v6 = *(v3 + 72);
    v7 = *(v3 + 68);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v28 = v6;
  v29 = v7;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v28);
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ")", 1uLL);
  }

  else
  {
    *v9 = 41;
    ++*(v8 + 4);
  }

  v28 = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v28, v29);
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
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
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

  if ((*(v3 + 46) & 0x80) != 0)
  {
    v17 = *(v3 + 72);
    v18 = *(v3 + 68);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v27[0] = v17;
  v27[1] = 0;
  v27[2] = v17;
  v27[3] = v18;
  v19 = *(v3 + 36);
  v20 = v3 - 16;
  if (!v19)
  {
    v20 = 0;
  }

  v26[0] = v20;
  v26[1] = 0;
  v26[2] = v20;
  v26[3] = v19;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v27, v26);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *(v3 + 44);
  if ((v23 & 0x800000) != 0)
  {
    v24 = *(v3 + 68);
    v25 = *(v3 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v24 = 0;
    v25 = 2;
  }

  (*(*a2 + 232))(a2, ((v3 + 64 + 16 * ((v23 >> 23) & 1) + ((v23 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40), v25, v24);
  (*(*a2 + 224))(a2, ((v3 + 64 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40), 0, 1, 0);
  if (v28 != v30)
  {
    free(v28);
  }
}

void mlir::ODIE::Compiler::CoreML::ReduceMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMaxOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ReduceMaxOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
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

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMeanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMeanOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ReduceMeanOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
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

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ReduceMinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMinOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ReduceMinOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
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

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ReduceSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceSumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceSumOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ReduceSumOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
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

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReshapeOp::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ReshapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v20, a4);
    if (v20)
    {
      mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "interpolation_mode", 0x12uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
      {
        a3(&v20, a4);
        if (!v20)
        {
          goto LABEL_4;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = v11;
        goto LABEL_18;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sampling_mode", 0xDuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
      {
        a3(&v20, a4);
        if (!v20)
        {
          goto LABEL_4;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v18 = 0;
        v19 = v14;
LABEL_18:
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
        v16 = v22 + 24 * v23;
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++v23;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
        return 0;
      }

      a1[1] = v14;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "interpolation_mode";
    v15 = 18;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "sampling_mode";
    v15 = 13;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v10, v8);
  }

  v11 = v17;
  if (v18)
  {
    v12 = mlir::DictionaryAttr::get(a1, v17, v18);
    v11 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v19)
  {
    free(v11);
  }

  return v12;
}

unint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::computePropertiesHash(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v9, 0, v9, v10, &v8, &v7);
}

unint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 13)
  {
    if (*a3 != 0x676E696C706D6173 || *(a3 + 5) != 0x65646F6D5F676E69)
    {
      goto LABEL_16;
    }

    v6 = a2[1];
LABEL_18:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

  if (a4 == 18)
  {
    v4 = *a3 == 0x6C6F707265746E69 && *(a3 + 8) == 0x6F6D5F6E6F697461;
    if (v4 && *(a3 + 16) == 25956)
    {
      v6 = *a2;
      goto LABEL_18;
    }
  }

LABEL_16:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

uint64_t *mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13)
  {
    if (*a2 == 0x676E696C706D6173 && *(a2 + 5) == 0x65646F6D5F676E69)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
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

  else if (a3 == 18)
  {
    v4 = *a2 == 0x6C6F707265746E69 && *(a2 + 8) == 0x6F6D5F6E6F697461;
    if (v4 && *(a2 + 16) == 25956)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
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

  return result;
}

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "interpolation_mode";
    v12 = 18;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "sampling_mode";
    v12 = 13;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps17(v10, "interpolation_mode", 0x12, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps18(v13, "sampling_mode", 0xD, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps17(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
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
        mlir::Diagnostic::operator<<<115ul>(v12, "' failed to satisfy constraint: CoreML ResizeByScale Op's interpolation mode to use: 'linear' | 'nearest_neighbor'");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps18(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
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
        mlir::Diagnostic::operator<<<111ul>(v12, "' failed to satisfy constraint: CoreML ResizeByScale Op's sampling mode to use: 'half_pixel' | 'align_corners'");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E670))
  {
    qword_27FC1E660 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>();
    *algn_27FC1E668 = v11;
    __cxa_guard_release(&qword_27FC1E670);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E660;
    v15 = *algn_27FC1E668;
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

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E688))
  {
    qword_27FC1E678 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>();
    unk_27FC1E680 = v11;
    __cxa_guard_release(&qword_27FC1E688);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E678;
    v15 = unk_27FC1E680;
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

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  __src = a3;
  v12 = a6;
  v13 = a5;
  v11 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(a2) = a8;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(a2) + 8) = a9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v16);
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v23 = "requires attribute 'interpolation_mode'";
LABEL_18:
    v58 = v23;
    v60 = 259;
    goto LABEL_19;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v23 = "requires attribute 'sampling_mode'";
    goto LABEL_18;
  }

  v63 = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps17(v4, "interpolation_mode", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v63) || (v63 = *this, !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps18(v7, "sampling_mode", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v63)) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
LABEL_50:
    v24 = 0;
    return v24 & 1;
  }

  v8 = *this;
  v9 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v62 = v9;
  v61 = 1;
  v10 = *v9;
  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
    if ((*(v12 + 16))(v12, v9))
    {
      v13 = *v9;
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
      (*(v15 + 24))(v15, v9);
      if (v16 == 1)
      {
        v17 = *v9;
        v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
        v20 = (*(v19 + 8))(v19, v9);
        v21 = *(*v20 + 136);
        if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v25 = v20[2];
          if (v25 == 1073741840 || v25 == 1073741856)
          {
            goto LABEL_30;
          }
        }

        else if (v21 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v60 = 261;
  v58 = "operand";
  v59 = 7;
  mlir::Operation::emitOpError(&v63, v8, &v58);
  if (v63)
  {
    mlir::Diagnostic::operator<<<3ul>(v64, " #");
  }

  v27 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v63, &v61);
  v28 = v27;
  if (*v27)
  {
    mlir::Diagnostic::operator<<<83ul>((v27 + 1), " must be 1D tensor of Index type. or 16-bit float or 32-bit float values, but got ");
    if (*v28)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>((v28 + 1), &v62);
    }
  }

  v29 = *(v28 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
  if (v29)
  {
    goto LABEL_50;
  }

LABEL_30:
  v30 = *this;
  v31 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  v62 = v31;
  v61 = 2;
  v32 = *v31;
  if (*(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v34 = mlir::detail::InterfaceMap::lookup(v32 + 8, v33), !(*(v34 + 16))(v34, v31)) || (v35 = *v31, v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v37 = mlir::detail::InterfaceMap::lookup(v35 + 8, v36), (*(v37 + 24))(v37, v31), v38 != 1) || (v39 = *v31, v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40), v42 = (*(v41 + 8))(v41, v31), *(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v42[2] != 1)
  {
    v60 = 261;
    v58 = "operand";
    v59 = 7;
    mlir::Operation::emitOpError(&v63, v30, &v58);
    if (v63)
    {
      mlir::Diagnostic::operator<<<3ul>(v64, " #");
    }

    v43 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v63, &v61);
    v44 = v43;
    if (*v43)
    {
      mlir::Diagnostic::operator<<<53ul>((v43 + 1), " must be 1D tensor of Boolean type. values, but got ");
      if (*v44)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>((v44 + 1), &v62);
      }
    }

    v45 = *(v44 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
    if (v45)
    {
      goto LABEL_50;
    }
  }

  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    goto LABEL_50;
  }

  v46 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(v46 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    goto LABEL_50;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v48 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    (*(v49 + 24))(v49, v48);
    v51 = v50;
    v52 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
    (*(v53 + 24))(v53, v52);
    if (v51 == v54)
    {
      v55 = *this;
      v63 = 0x200000001;
      if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v55, &v63, 2))
      {
        v24 = 1;
        return v24 & 1;
      }

      v57 = "failed to verify that Operands should have same shape.";
    }

    else
    {
      v57 = "failed to verify that Result 0 and operand 0 must have the same rank.";
    }
  }

  else
  {
    v57 = "failed to verify that Result 0 element type must match element type of operand 0.";
  }

  v58 = v57;
  v60 = 259;
  v2 = *this;
LABEL_19:
  mlir::Operation::emitOpError(&v63, v2, &v58);
  v24 = v64[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
  return v24 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v30[0] = v31;
  v30[1] = 1;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v27[0] = v28;
  v27[1] = 1;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v22 = 0;
  v23 = 0;
  v20[1] = 1;
  v21 = 0;
  v19 = 0;
  v20[0] = &v21;
  v18[0] = &v19;
  v18[1] = 1;
  v16[1] = 1;
  v17 = 0;
  v15 = 0;
  v16[0] = &v17;
  v14[0] = &v15;
  v14[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v31, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v28, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    return 0;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "interpolation", 13, v36) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(a1, &v23))
  {
    return 0;
  }

  v8 = v23;
  if (v23)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "sampling", 8, v36) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(a1, &v22))
  {
    return 0;
  }

  v9 = v22;
  if (v22)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(a2) + 8) = v9;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v36[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v36)) && (v21 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36)) && (v19 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36)) && (v17 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36)) && (v15 = v36[0], ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v36[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v36)) && (__src = v36[0], v12 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v10 = *(a2 + 8), v36[0] = a1, v36[1] = &v12, v36[2] = a2, mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v36)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v20, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v30, v18, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v27, v16, v6, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v14, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if (((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML21InterpolationModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v11) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of attribute specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if (((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML16SamplingModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v11) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of attribute specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v74[4] = *MEMORY[0x277D85DE8];
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
  if (*(v20 + 3) - v21 > 0xCuLL)
  {
    qmemcpy(v21, "interpolation", 13);
    *(v20 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v20, "interpolation", 0xDuLL);
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
    llvm::raw_ostream::write(v24, "=", 1uLL);
  }

  else
  {
    *v25 = 61;
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

  v72 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v28 = (*(*a2 + 16))(a2);
    v29 = (*(*v28 + 80))(v28) + v28[4] - v28[2];
    mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::print(&v72, a2);
    if (v29 == (*(*v28 + 80))(v28) + v28[4] - v28[2])
    {
      (*(*a2 + 40))(a2, v72);
    }
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
  if (*(v32 + 3) - v33 > 7uLL)
  {
    *v33 = 0x676E696C706D6173;
    *(v32 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v32, "sampling", 8uLL);
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    llvm::raw_ostream::write(v36, "=", 1uLL);
  }

  else
  {
    *v37 = 61;
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

  v72 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v40 = (*(*a2 + 16))(a2);
    v41 = (*(*v40 + 80))(v40) + v40[4] - v40[2];
    mlir::ODIE::Compiler::CoreML::SamplingModeAttr::print(&v72, a2);
    if (v41 == (*(*v40 + 80))(v40) + v40[4] - v40[2])
    {
      (*(*a2 + 40))(a2, v72);
    }
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

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (*(v44 + 3) == v45)
  {
    llvm::raw_ostream::write(v44, ":", 1uLL);
  }

  else
  {
    *v45 = 58;
    ++*(v44 + 4);
  }

  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (v47 >= *(v46 + 3))
  {
    llvm::raw_ostream::write(v46, 32);
  }

  else
  {
    *(v46 + 4) = v47 + 1;
    *v47 = 32;
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (*(v48 + 3) == v49)
  {
    llvm::raw_ostream::write(v48, "(", 1uLL);
  }

  else
  {
    *v49 = 40;
    ++*(v48 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ",", 1uLL);
  }

  else
  {
    *v55 = 44;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) == v59)
  {
    llvm::raw_ostream::write(v58, ",", 1uLL);
  }

  else
  {
    *v59 = 44;
    ++*(v58 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (*(v62 + 3) == v63)
  {
    llvm::raw_ostream::write(v62, ")", 1uLL);
  }

  else
  {
    *v63 = 41;
    ++*(v62 + 4);
  }

  v64 = (*(*a2 + 16))(a2);
  v65 = *(v64 + 4);
  if (v65 >= *(v64 + 3))
  {
    llvm::raw_ostream::write(v64, 32);
  }

  else
  {
    *(v64 + 4) = v65 + 1;
    *v65 = 32;
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (*(v66 + 3) - v67 > 1uLL)
  {
    *v67 = 15917;
    *(v66 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v66, "->", 2uLL);
  }

  v68 = (*(*a2 + 16))(a2);
  v69 = *(v68 + 4);
  if (v69 >= *(v68 + 3))
  {
    llvm::raw_ostream::write(v68, 32);
  }

  else
  {
    *(v68 + 4) = v69 + 1;
    *v69 = 32;
  }

  v70 = *this - 16;
  if (!*(*this + 9))
  {
    v70 = 0;
  }

  (*(*a2 + 32))(a2, *(v70 + 1) & 0xFFFFFFFFFFFFFFF8);
  v72 = v74;
  v73 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v72, "interpolation_mode", 18);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v72, "sampling_mode", 13);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v72, v73);
  if (v72 != v74)
  {
    free(v72);
  }
}