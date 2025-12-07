uint64_t mlir::LLVM::StackSaveOp::parse(uint64_t a1, uint64_t a2)
{
  __src = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v6);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(mlir::Operation *a1, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v22 = a5;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 3;
  if (v10)
  {
    v11 = 1;
  }

  v12 = a2[v11];
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v12[2] >> 30))
  {
    return 1;
  }

LABEL_10:
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
    mlir::Diagnostic::operator<<<70ul>((v14 + 1), " must be LLVM dialect-compatible vector of signless integer, but got ");
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

uint64_t mlir::LLVM::StepVectorOp::parse(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  if (((*(*a1 + 536))(a1, &v5) & 1) == 0)
  {
    return 0;
  }

  __src = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
  return 1;
}

uint64_t mlir::LLVM::StripInvariantGroupOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::StripInvariantGroupOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  __src = 0;
  v6[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
}

BOOL mlir::LLVM::TanOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::TanOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::TanOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::TanOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::TanOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

BOOL mlir::LLVM::TanhOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::TanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::TanhOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::TanhOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::TanhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

uint64_t mlir::LLVM::UAddSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::UAddSat::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps19(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = a1[1];
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 8)
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
      v6[0] = "failureKind";
      v6[1] = 11;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<65ul>(v9, "' failed to satisfy constraint: 8-bit signless integer attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

uint64_t mlir::LLVM::UMaxOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::UMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

uint64_t mlir::LLVM::UMinOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::UMinOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

uint64_t mlir::LLVM::USHLSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::USHLSat::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

uint64_t mlir::LLVM::USubSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::USubSat::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9)))
  {
    v6 = *(v9 + 8);
    v5 = *(v9 + 12);
    v10[0] = *(v9 + 16);
    v10[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v6), (v10[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v10, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a3;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_9;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 3;
  if (v6)
  {
    v7 = 1;
  }

  v8 = *a2[v7];
  v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v8 + 8, v9))
  {
    return 1;
  }

LABEL_9:
  v18 = 261;
  v17[0] = "operand";
  v17[1] = 7;
  mlir::Operation::emitOpError(&v22, a1, v17);
  if (v22)
  {
    mlir::Diagnostic::operator<<<3ul>(v23, " #");
  }

  v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
  v12 = v11;
  if (*v11)
  {
    mlir::Diagnostic::operator<<<68ul>((v11 + 1), " must be LLVM dialect-compatible vector of floating-point, but got ");
    if (*v12)
    {
      v20 = 4;
      v21 = a2;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v12 + 3), &v20, 1);
      v14 = v12[3] + 24 * *(v12 + 8);
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++*(v12 + 8);
    }
  }

  v10 = (v12[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  return v10;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps19(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_8;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 3;
  if (v6)
  {
    v7 = 1;
  }

  if (*(*a2[v7] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

LABEL_8:
  v16 = 261;
  v15[0] = "operand";
  v15[1] = 7;
  mlir::Operation::emitOpError(&v20, a1, v15);
  if (v20)
  {
    mlir::Diagnostic::operator<<<3ul>(v21, " #");
  }

  v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v17);
  v9 = v8;
  if (*v8)
  {
    mlir::Diagnostic::operator<<<71ul>((v8 + 1), " must be LLVM dialect-compatible vector of LLVM pointer type, but got ");
    if (*v9)
    {
      v18 = 4;
      v19 = a2;
      v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v9 + 3), &v18, 1);
      v11 = v9[3] + 24 * *(v9 + 8);
      v12 = *v10;
      *(v11 + 16) = *(v10 + 16);
      *v11 = v12;
      ++*(v9 + 8);
    }
  }

  v13 = (v9[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  return v13;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps20(mlir::Operation *a1, void *a2)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
  {
    return 1;
  }

  v14 = 261;
  v13[0] = "operand";
  v13[1] = 7;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v8 = v7;
  if (*v7)
  {
    mlir::Diagnostic::operator<<<34ul>((v7 + 1), " must be floating-point, but got ");
    if (*v8)
    {
      v16 = 4;
      v17 = a2;
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v16, 1);
      v10 = v8[3] + 24 * *(v8 + 8);
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++*(v8 + 8);
    }
  }

  v6 = (v8[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v6;
}

BOOL mlir::LLVM::VaCopyOp::parse(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v7[0] = v8;
  v7[1] = 1;
  v15[0] = v16;
  v15[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && (v14 = 257, ((*(*a1 + 400))(a1, "to", 2, v13)) && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v15))
  {
    v13[0] = v7;
    v13[1] = v10;
    v4 = (*(*a1 + 16))(a1);
    v5 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::SmallVector<mlir::Type,1u> &>(a1, v13, v15, v4, a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  return v5;
}

BOOL mlir::LLVM::VaEndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  v7 = 0;
  v6[0] = &v7;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v7))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::VaStartOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  v7 = 0;
  v6[0] = &v7;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v7))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::masked_gather::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v8, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::masked_gather::getODSOperands(mlir::LLVM::masked_gather *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = &byte_25D0A01CC;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 68);
    v8 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 + 32 * (a2 + (v7 - 3) * v2);
}

BOOL mlir::LLVM::masked_gather::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::masked_gather::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::masked_gather::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

BOOL mlir::LLVM::masked_scatter::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v8, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::masked_scatter::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v7 = *(a2 + 8), v25[0] = a1, v25[1] = &v9, v25[2] = a2, mlir::LLVM::masked_scatter::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::masked_scatter::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v25)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v15 = v25[0], ((*(*a1 + 120))(a1)) && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v13 = v25[0], v26 = 257, ((*(*a1 + 400))(a1, "into", 4, v25)) && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v11 = v25[0], mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v10, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v12, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::vector_extract::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "pos", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::vector_extract::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v13 = 0;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v13, v6))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v17[0] = a1;
  v17[1] = &__src;
  v17[2] = a2;
  if (!mlir::LLVM::vector_extract::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_extract::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v17[0] = 0;
  if (((*(*a1 + 536))(a1, v17) & 1) == 0)
  {
    return 0;
  }

  __src = v17[0];
  v18 = 257;
  if (((*(*a1 + 400))(a1, "from", 4, v17) & 1) == 0)
  {
    return 0;
  }

  v17[0] = 0;
  if (((*(*a1 + 536))(a1, v17) & 1) == 0)
  {
    return 0;
  }

  v11 = v17[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v10, v4, a2 + 16);
}

BOOL mlir::LLVM::vector_insert::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "pos", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::vector_insert::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::vector_insert::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v13, v6))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), __src = a1, v20[0] = &v10, v20[1] = a2, mlir::LLVM::vector_insert::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_insert::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src)) && ((*(*a1 + 104))(a1) & 1) != 0 && (__src = 0, ((*(*a1 + 536))(a1, &__src)) && (v12 = __src, v21 = 257, ((*(*a1 + 400))(a1, "into", 4, &__src)) && (v10 = 0, ((*(*a1 + 536))(a1, &v10)) && (__src = v10, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v20), ((*(*a1 + 728))(a1, v14, __src, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::vector_reduce_fmax::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fmax::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::vector_reduce_fmax::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmax::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

BOOL mlir::LLVM::vector_reduce_fmaximum::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fmaximum::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::vector_reduce_fmaximum::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmaximum::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

BOOL mlir::LLVM::vector_reduce_fmin::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fmin::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::vector_reduce_fmin::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmin::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

BOOL mlir::LLVM::vector_reduce_fminimum::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fminimum::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::vector_reduce_fminimum::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fminimum::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
  {
    v6 = *(v9[0] + 8);
    v11 = *(v9[0] + 16);
    v12 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v6), (v11 + 8 * v6 + 8 * *(v9[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, &v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  return v7;
}

uint64_t mlir::LLVM::LLVMDialect::verifyOperationAttribute(int a1, mlir::Operation *this, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a3 + 24) != 16)
  {
    return 1;
  }

  v4 = *(a3 + 16);
  v6 = *v4;
  v5 = v4[1];
  if (v6 != 0x7461642E6D766C6CLL || v5 != 0x74756F79616C5F61)
  {
    return 1;
  }

  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v19 = 257;
    mlir::Operation::emitOpError(&v31, this, v18);
    if (v31)
    {
      mlir::Diagnostic::operator<<<11ul>(v32, "expected '");
      if (v31)
      {
        LOWORD(v25) = 261;
        v21 = "llvm.data_layout";
        v22 = 16;
        mlir::Diagnostic::operator<<(v32, &v21);
        if (v31)
        {
          mlir::Diagnostic::operator<<<28ul>(v32, "' to be a string attributes");
        }
      }
    }

    v8 = (v32[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    return v8;
  }

  v11 = a4[2];
  v12 = a4[3];
  v15 = this;
  llvm::DataLayout::parse(v11, v12, &v31);
  v8 = 1;
  if ((v33 & 1) == 0)
  {
LABEL_28:
    llvm::DataLayout::~DataLayout(&v31);
    return v8;
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  LODWORD(v22) = 0;
  v26 = 0;
  v27 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = &unk_286E79D28;
  v28 = v29;
  llvm::raw_ostream::SetUnbuffered(&v21);
  v13 = 0;
  if (v33)
  {
    v13 = v31;
    v31 = 0;
  }

  v20 = v13;
  v19 = 257;
  llvm::logAllUnhandledErrors(&v20, &v21, v18);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  std::operator+<char>();
  v19 = 260;
  v18[0] = &__p;
  llvm::function_ref<void ()(llvm::Twine const&)>::callback_fn<mlir::LLVM::LLVMDialect::verifyOperationAttribute(mlir::Operation *,mlir::NamedAttribute)::$_0>(&v15, v18);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  llvm::raw_ostream::~raw_ostream(&v21);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if ((v33 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_28;
  }

  v14 = v31;
  v31 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return 0;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v55[1] = a4;
  v56 = a2;
  v54 = a1;
  v55[0] = a3;
  isCompatibleType = mlir::LLVM::LLVMDialect::isCompatibleType(a2, a2, a3, a4);
  v52[0] = v55;
  v52[1] = &v54;
  v52[2] = &v53;
  v53 = a3;
  v51[0] = v55;
  v51[1] = &v54;
  v51[2] = &v53;
  v50[0] = &v56;
  v50[1] = &v54;
  v50[2] = &v53;
  v49[0] = &v56;
  v49[1] = &v54;
  v49[2] = &v53;
  result = 1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  if (v10 <= 13)
  {
    if (v10 > 10)
    {
      if (v10 != 11)
      {
        if (v10 != 12)
        {
          if ((*v9 != 0x6165722E6D766C6CLL || *(v9 + 5) != 0x796C6E6F64616572) && (*v9 != 0x6165722E6D766C6CLL || *(v9 + 5) != 0x656E6F6E64616572))
          {
            if (memcmp(v9, "llvm.inalloca", 0xDuLL))
            {
              v13 = "llvm.returned";
              goto LABEL_43;
            }

LABEL_79:
            if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v58 = 257;
              mlir::Operation::emitError(&v61, a1, v57);
              if (v61)
              {
                v59 = 0;
                v60 = v53;
                v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v59, 1);
                v31 = v63 + 24 * v64;
                v32 = *v30;
                *(v31 + 16) = *(v30 + 16);
                *v31 = v32;
                ++v64;
                if (v61)
                {
                  mlir::Diagnostic::operator<<<28ul>(v62, " should be a type attribute");
                }
              }

              v33 = v65;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
              if (v33)
              {
                return 0;
              }
            }

            return !isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_5::operator()(v50);
          }

LABEL_109:
          if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v58 = 257;
            mlir::Operation::emitError(&v61, a1, v57);
            if (v61)
            {
              v59 = 0;
              v60 = v53;
              v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v59, 1);
              v40 = v63 + 24 * v64;
              v41 = *v39;
              *(v40 + 16) = *(v39 + 16);
              *v40 = v41;
              ++v64;
              if (v61)
              {
                mlir::Diagnostic::operator<<<28ul>(v62, " should be a unit attribute");
              }
            }

            v42 = v65;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
            if (v42)
            {
              return 0;
            }
          }

          if (isCompatibleType && *(*v56 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
          {
            v58 = 257;
            mlir::Operation::emitError(&v61, v54, v57);
            if (v61)
            {
              v59 = 0;
              v60 = v53;
              v43 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v59, 1);
              v44 = v63 + 24 * v64;
              v45 = *v43;
              *(v44 + 16) = *(v43 + 16);
              *v44 = v45;
              ++v64;
              if (v61)
              {
                mlir::Diagnostic::operator<<<45ul>(v62, " attribute attached to non-pointer LLVM type");
              }
            }

            v46 = v65;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
            if (v46)
            {
              return 0;
            }
          }

          return 1;
        }

        if (*v9 == 0x616F6E2E6D766C6CLL && *(v9 + 2) == 1935763820)
        {
          goto LABEL_109;
        }

        if (*v9 == 0x6E6F6E2E6D766C6CLL && *(v9 + 2) == 1819047278)
        {
          goto LABEL_109;
        }

        if ((*v9 != 0x6769732E6D766C6CLL || *(v9 + 2) != 1954047342) && (*v9 != 0x72657A2E6D766C6CLL || *(v9 + 2) != 1954047343))
        {
          if (*v9 == 0x756F6E2E6D766C6CLL && *(v9 + 2) == 1717920878)
          {
            return mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(v52);
          }

          return result;
        }

        return mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(v52) && (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_4::operator()(v49));
      }

      v25 = *(v9 + 3);
      v26 = *v9 == 0x666F6E2E6D766C6CLL;
      v27 = 0x656572666F6E2E6DLL;
      goto LABEL_64;
    }

    if (v10 != 9)
    {
      if (v10 != 10)
      {
        return result;
      }

      if (*v9 == 0x7679622E6D766C6CLL && *(v9 + 4) == 27745)
      {
        goto LABEL_79;
      }

      if (*v9 == 0x7279622E6D766C6CLL && *(v9 + 4) == 26213)
      {
        goto LABEL_79;
      }

      if (memcmp(v9, "llvm.align", 0xAuLL))
      {
        v13 = "llvm.inreg";
LABEL_43:
        if (!memcmp(v9, v13, v10))
        {
          return mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(v52);
        }

        return 1;
      }

      return mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_2::operator()(v51) && (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_3::operator()(v50));
    }

    v20 = 116;
    if (*v9 == 0x73656E2E6D766C6CLL && *(v9 + 8) == 116)
    {
      goto LABEL_109;
    }

    v22 = *(v9 + 8);
    v23 = *v9 == 0x6572732E6D766C6CLL;
    goto LABEL_74;
  }

  if (v10 > 16)
  {
    if (v10 != 17)
    {
      if (v10 == 20)
      {
        if (*v9 != 0x7265642E6D766C6CLL || v9[1] != 0x65636E6572656665 || *(v9 + 4) != 1701601889)
        {
          return result;
        }
      }

      else
      {
        if (v10 != 28)
        {
          return result;
        }

        v14 = *v9 == 0x7265642E6D766C6CLL && v9[1] == 0x65636E6572656665;
        v15 = v14 && v9[2] == 0x5F726F5F656C6261;
        if (!v15 || *(v9 + 6) != 1819047278)
        {
          return result;
        }
      }

      return mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_2::operator()(v51) && (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_3::operator()(v50));
    }

    v22 = *(v9 + 16);
    v23 = *v9 == 0x6572702E6D766C6CLL && v9[1] == 0x657461636F6C6C61;
    v20 = 100;
LABEL_74:
    if (v23 && v22 == v20)
    {
      goto LABEL_79;
    }

    return result;
  }

  if (v10 != 14)
  {
    if (v10 != 15)
    {
      return result;
    }

    if (*v9 != 0x696C612E6D766C6CLL || *(v9 + 7) != 0x6B636174736E6769)
    {
      return result;
    }

    return mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_2::operator()(v51) && (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_3::operator()(v50));
  }

  if (*v9 == 0x6972772E6D766C6CLL && *(v9 + 6) == 0x796C6E6F65746972)
  {
    goto LABEL_109;
  }

  v25 = *(v9 + 6);
  v26 = *v9 == 0x636F6E2E6D766C6CLL;
  v27 = 0x657275747061636FLL;
LABEL_64:
  if (v26 && v25 == v27)
  {
    goto LABEL_109;
  }

  return result;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(*(*a1)[1] + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v2 = *a1[1];
  v10 = 257;
  mlir::Operation::emitError(&v13, v2, v9);
  if (v13)
  {
    v3 = *a1[2];
    v11 = 0;
    v12 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v15, &v11, 1);
    v5 = v15 + 24 * v16;
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++v16;
    if (v13)
    {
      mlir::Diagnostic::operator<<<28ul>(&v14, " should be a unit attribute");
    }
  }

  v7 = (v17 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_3::operator()(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(***a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

  v2 = *a1[1];
  v10 = 257;
  mlir::Operation::emitError(&v13, v2, v9);
  if (v13)
  {
    v3 = *a1[2];
    v11 = 0;
    v12 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v15, &v11, 1);
    v5 = v15 + 24 * v16;
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++v16;
    if (v13)
    {
      mlir::Diagnostic::operator<<<45ul>(&v14, " attribute attached to non-pointer LLVM type");
    }
  }

  v7 = (v17 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_5::operator()(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(***a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 1;
  }

  v2 = *a1[1];
  v10 = 257;
  mlir::Operation::emitError(&v13, v2, v9);
  if (v13)
  {
    v3 = *a1[2];
    v11 = 0;
    v12 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v15, &v11, 1);
    v5 = v15 + 24 * v16;
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++v16;
    if (v13)
    {
      mlir::Diagnostic::operator<<<45ul>(&v14, " attribute attached to non-pointer LLVM type");
    }
  }

  v7 = v17;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return (v7 & 1) == 0;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_4::operator()(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(***a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 1;
  }

  v2 = *a1[1];
  v10 = 257;
  mlir::Operation::emitError(&v13, v2, v9);
  if (v13)
  {
    v3 = *a1[2];
    v11 = 0;
    v12 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v15, &v11, 1);
    v5 = v15 + 24 * v16;
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++v16;
    if (v13)
    {
      mlir::Diagnostic::operator<<<45ul>(&v14, " attribute attached to non-integer LLVM type");
    }
  }

  v7 = (v17 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_2::operator()(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(*(*a1)[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 1;
  }

  v2 = *a1[1];
  v10 = 257;
  mlir::Operation::emitError(&v13, v2, v9);
  if (v13)
  {
    v3 = *a1[2];
    v11 = 0;
    v12 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v15, &v11, 1);
    v5 = v15 + 24 * v16;
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++v16;
    if (v13)
    {
      mlir::Diagnostic::operator<<<32ul>(&v14, " should be an integer attribute");
    }
  }

  v7 = (v17 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyRegionArgAttribute(uint64_t a1, mlir::Operation *a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t *a6)
{
  if (!llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2))
  {
    return 1;
  }

  v11 = *((*(*(v10 + 48) + 8))() + 8 * a4);

  return mlir::LLVM::LLVMDialect::verifyParameterAttribute(a2, v11, a5, a6);
}

BOOL mlir::LLVM::LLVMDialect::verifyRegionResultAttribute(uint64_t a1, void ***a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t *a6)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2))
  {
    return 1;
  }

  v11 = *((*(*(v10 + 48) + 16))() + 8 * a4);
  v12 = *(*v11 + 136);
  if (v12 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    v36 = 257;
    mlir::Operation::emitError(&v39, a2, v35);
    if (v39)
    {
      mlir::Diagnostic::operator<<<64ul>(v40, "cannot attach result attributes to functions with a void return");
    }

    goto LABEL_72;
  }

  v13 = *(a5 + 16);
  v14 = *(a5 + 24);
  if (v14 > 12)
  {
    if (v14 <= 14)
    {
      if (v14 == 13)
      {
        if (*v13 != 0x6C6C612E6D766C6CLL || *(v13 + 5) != 0x727470636F6C6C61)
        {
          v27 = *v13 == 0x616E692E6D766C6CLL && *(v13 + 5) == 0x61636F6C6C616E69;
          if (!v27 && memcmp(*(a5 + 16), "llvm.readnone", *(a5 + 24)) && memcmp(v13, "llvm.readonly", 0xDuLL) && memcmp(v13, "llvm.returned", 0xDuLL))
          {
            goto LABEL_66;
          }
        }
      }

      else if (*v13 != 0x636F6E2E6D766C6CLL || *(v13 + 6) != 0x657275747061636FLL)
      {
        v16 = *(v13 + 6);
        v17 = *v13 == 0x6972772E6D766C6CLL;
        v18 = 0x796C6E6F65746972;
        goto LABEL_25;
      }

LABEL_69:
      v36 = 257;
      mlir::Operation::emitError(&v39, a2, v35);
      if (v39)
      {
        v37 = 0;
        v38 = a5;
        v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v41, &v37, 1);
        v33 = v41 + 24 * v42;
        v34 = *v32;
        *(v33 + 16) = *(v32 + 16);
        *v33 = v34;
        ++v42;
        if (v39)
        {
          mlir::Diagnostic::operator<<<33ul>(v40, " is not a valid result attribute");
        }
      }

LABEL_72:
      v19 = (v43 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
      return v19;
    }

    if (v14 != 17)
    {
      if (v14 == 15)
      {
        if (*v13 == 0x6C6C612E6D766C6CLL && *(v13 + 7) == 0x6E67696C61636F6CLL)
        {
          goto LABEL_69;
        }

        v16 = *(v13 + 7);
        v17 = *v13 == 0x696C612E6D766C6CLL;
        v18 = 0x6B636174736E6769;
LABEL_25:
        if (!v17 || v16 != v18)
        {
          goto LABEL_66;
        }

        goto LABEL_69;
      }

      goto LABEL_66;
    }

    v24 = *(v13 + 16);
    v25 = *v13 == 0x6572702E6D766C6CLL && v13[1] == 0x657461636F6C6C61;
    v22 = 100;
LABEL_52:
    if (!v25 || v24 != v22)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  switch(v14)
  {
    case 9:
      v22 = 116;
      if (*v13 == 0x73656E2E6D766C6CLL && *(v13 + 8) == 116)
      {
        goto LABEL_69;
      }

      v24 = *(v13 + 8);
      v25 = *v13 == 0x6572732E6D766C6CLL;
      goto LABEL_52;
    case 10:
      if ((*v13 != 0x7679622E6D766C6CLL || *(v13 + 4) != 27745) && (*v13 != 0x7279622E6D766C6CLL || *(v13 + 4) != 26213))
      {
        break;
      }

      goto LABEL_69;
    case 11:
      v16 = *(v13 + 3);
      v17 = *v13 == 0x666F6E2E6D766C6CLL;
      v18 = 0x656572666F6E2E6DLL;
      goto LABEL_25;
  }

LABEL_66:

  return mlir::LLVM::LLVMDialect::verifyParameterAttribute(a2, v11, a5, a6);
}

mlir::Operation *mlir::LLVM::LLVMDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, const char *a4, uint64_t a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v9 = *(*a3 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    if (a3[3])
    {
      v14 = 1;
    }

    else
    {
      v14 = a3 == 0;
    }

    if (v14 || *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
LABEL_12:
      v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
      if (!v15)
      {
        return 0;
      }

      if ((*v16)(v16, v15) != a4)
      {
        return 0;
      }

      if (!mlir::LLVM::LLVMDialect::isCompatibleType(a4, v17, v18, v19))
      {
        return 0;
      }

      if (!mlir::LLVM::LLVMDialect::isCompatibleType(a4, v20, v21, v22))
      {
        return 0;
      }

      v23 = *a3;
      v24 = *(*a3 + 136);
      if (v24 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v23 + 8, v25))
        {
          return 0;
        }
      }

      if (a3)
      {
        v26 = *a3;
        v27 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v28 = mlir::detail::InterfaceMap::lookup(v26 + 8, v27);
      }

      else
      {
        v28 = 0;
      }

      v39 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(a2, *(**a5 + 32));
      v47 = a5;
      v48 = v39;
      v49 = v51;
      v50 = 0x400000000;
      v52 = v54;
      v53 = 0x400000000;
      v55 = v57;
      v56 = 0x400000000;
      v58 = 4;
      v59 = &v61;
      v60 = 0x100000000;
      v62 = &v64;
      v63 = 0x100000000;
      v65 = 0;
      v66 = 0;
      v67 = &mlir::detail::TypeIDResolver<void,void>::id;
      v68 = 0;
      v69 = 0;
      __src = (*v28)(v28, a3);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(&v47) = a3;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v52, &__src, v43);
      v31 = mlir::Operation::create(&v47);
      mlir::OpBuilder::insert(a2, v31);
      v32 = *(*(v31 + 6) + 16);
      v33 = &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id;
      goto LABEL_23;
    }

    v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id, *(**a5 + 32));
    if (v37)
    {
      v47 = a5;
      v48 = v36;
      v49 = v51;
      v50 = 0x400000000;
      v52 = v54;
      v53 = 0x400000000;
      v55 = v57;
      v56 = 0x400000000;
      v58 = 4;
      v59 = &v61;
      v60 = 0x100000000;
      v62 = &v64;
      v63 = 0x100000000;
      v65 = 0;
      v66 = 0;
      v67 = &mlir::detail::TypeIDResolver<void,void>::id;
      v68 = 0;
      v69 = 0;
      __src = a4;
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddressOfOpGenericAdaptorBase::Properties>(&v47) = a3;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v52, &__src, v43);
      v31 = mlir::Operation::create(&v47);
      mlir::OpBuilder::insert(a2, v31);
      v34 = *(*(v31 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id;
      goto LABEL_28;
    }

    v46 = 1283;
    v44 = "llvm.mlir.addressof";
    v13 = 19;
LABEL_37:
    v45 = v13;
    v41 = 259;
    llvm::operator+(&__src, &v40, &v47);
    llvm::report_fatal_error(&v47, 1);
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id)
  {
    if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id)
    {
      if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id)
      {
        v10 = &unk_27FC20028;
        v11 = mlir::RegisteredOperationName::lookup(&unk_27FC20028, *(**a5 + 32));
        if ((v12 & 1) == 0)
        {
          v46 = 1283;
          v44 = "llvm.mlir.zero";
          v13 = 14;
          goto LABEL_37;
        }

        goto LABEL_25;
      }

      goto LABEL_12;
    }

    v10 = &unk_27FC1FFB0;
    v11 = mlir::RegisteredOperationName::lookup(&unk_27FC1FFB0, *(**a5 + 32));
    if (v35)
    {
LABEL_25:
      v47 = a5;
      v48 = v11;
      v49 = v51;
      v50 = 0x400000000;
      v52 = v54;
      v53 = 0x400000000;
      v55 = v57;
      v56 = 0x400000000;
      v58 = 4;
      v59 = &v61;
      v60 = 0x100000000;
      v62 = &v64;
      v63 = 0x100000000;
      v65 = 0;
      v66 = 0;
      v67 = &mlir::detail::TypeIDResolver<void,void>::id;
      v68 = 0;
      v69 = 0;
      __src = a4;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v52, &__src, v43);
      v31 = mlir::Operation::create(&v47);
      mlir::OpBuilder::insert(a2, v31);
      v34 = *(*(v31 + 6) + 16) == v10;
      goto LABEL_28;
    }

    v46 = 1283;
    v44 = "llvm.mlir.poison";
    v13 = 16;
    goto LABEL_37;
  }

  v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::UndefOp>(a2, *(**a5 + 32));
  v47 = a5;
  v48 = v30;
  v49 = v51;
  v50 = 0x400000000;
  v52 = v54;
  v53 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v58 = 4;
  v59 = &v61;
  v60 = 0x100000000;
  v62 = &v64;
  v63 = 0x100000000;
  v65 = 0;
  v66 = 0;
  v67 = &mlir::detail::TypeIDResolver<void,void>::id;
  v68 = 0;
  v69 = 0;
  __src = a4;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v52, &__src, v43);
  v31 = mlir::Operation::create(&v47);
  mlir::OpBuilder::insert(a2, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = &mlir::detail::TypeIDResolver<mlir::LLVM::UndefOp,void>::id;
LABEL_23:
  v34 = v32 == v33;
LABEL_28:
  if (v34)
  {
    v29 = v31;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(&v47);
  return v29;
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E8B428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = (mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::~Owner(v5) - 3);
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

void *mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::~Owner(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v5 = a1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    MEMORY[0x25F891030](*v6, 8);
    MEMORY[0x25F891040](v6, 0x1020C405AF6BDC9);
  }

  return a1;
}

void *llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(void *result)
{
  v1 = *result;
  if (*result != result[1])
  {
    v2 = result;
    do
    {
      if (*(*v1 + 24) != 13)
      {
        break;
      }

      v3 = *(*v1 + 16);
      v4 = *v3;
      v5 = *(v3 + 5);
      if (v4 != 0x6874616D74736166 || v5 != 0x7367616C46687461)
      {
        break;
      }

      v7 = v1[1];
      result = mlir::LLVM::FastmathFlagsAttr::get(*(**v7 + 32), 0);
      if (v7 != result)
      {
        break;
      }

      v8 = v2[1];
      v1 = (*v2 + 16);
      *v2 = v1;
    }

    while (v1 != v8);
  }

  return result;
}

uint64_t verifyStructIndices(unint64_t a1, unsigned int a2, void *a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = a2;
  if (*(*a3 + 16) > a2)
  {
    v9 = *(*a1 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id || a1 == 0)
    {
      if (v9 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || a1 == 0)
      {
        if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || a1 == 0)
        {
          v13 = v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id || a1 == 0;
          if (v13 && (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id || !a1))
          {
            v29 = a1;
            a4(&v30, a5);
            if (v30)
            {
              mlir::Diagnostic::operator<<<6ul>(&v30 + 8, "type ");
              if (v30)
              {
                mlir::Diagnostic::operator<<<mlir::Type &>(&v30 + 8, &v29);
                if (v30)
                {
                  mlir::Diagnostic::operator<<<28ul>(&v30 + 8, " cannot be indexed (index #");
                }
              }
            }

            v27 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v28);
            v24 = v27;
            if (*v27)
            {
              mlir::Diagnostic::operator<<<2ul>((v27 + 1), ")");
            }

            goto LABEL_45;
          }
        }

        v21 = *(a1 + 8);
      }

      else
      {
        v21 = *(a1 + 24);
      }

      v30 = *a3;
      v31 = a3[2];
      v22 = a2 + 1;
      return verifyStructIndices(v21, v22, &v30, a4, a5);
    }

    v15 = mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::operator[](a3, a2);
    v16 = v15 & 0xFFFFFFFFFFFFFFF8;
    if ((v15 & 4) != 0)
    {
      v16 = 0;
    }

    v29 = v16;
    if (!v16)
    {
      a4(&v30, a5);
      if (v30)
      {
        mlir::Diagnostic::operator<<<16ul>(&v30 + 8, "expected index ");
      }

      v23 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v28);
      v24 = v23;
      if (*v23)
      {
        mlir::Diagnostic::operator<<<34ul>((v23 + 1), " indexing a struct to be constant");
      }

      goto LABEL_45;
    }

    Int = mlir::IntegerAttr::getInt(&v29);
    v18 = *(a1 + 24);
    if (v18)
    {
      v19 = (a1 + 16);
      v20 = *(a1 + 28) >> 3;
      if (Int < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v19 = (a1 + 8);
      v20 = v18 >> 2;
      if (Int < 0)
      {
        goto LABEL_41;
      }
    }

    if ((Int & 0x7FFFFFFFu) < v20)
    {
      v21 = *(*v19 + 8 * (Int & 0x7FFFFFFF));
      v30 = *a3;
      v31 = a3[2];
      v22 = v28 + 1;
      return verifyStructIndices(v21, v22, &v30, a4, a5);
    }

LABEL_41:
    a4(&v30, a5);
    if (v30)
    {
      mlir::Diagnostic::operator<<<7ul>(&v30 + 8, "index ");
    }

    v25 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v28);
    v24 = v25;
    if (*v25)
    {
      mlir::Diagnostic::operator<<<36ul>((v25 + 1), " indexing a struct is out of bounds");
    }

LABEL_45:
    v14 = (v24[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    return v14;
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr> mlir::LocationAttr::findInstanceOf<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>>(void)::{lambda(mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>)#1}>(void **a1, void *a2)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    return 1;
  }

  v3 = a2[3];
  if (!v3)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id)
    {
      result = 0;
      **a1 = a2;
    }
  }

  return result;
}

llvm::raw_ostream *printOpBundles(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRangeRange,mlir::TypeRangeRange,std::optional<mlir::ArrayAttr>)::$_0::operator()<std::tuple<mlir::OperandRange,mlir::TypeRange,mlir::Attribute const&>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = **(a2 + 32);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v7;
  (*(*a1 + 80))(a1, v6, v5);
  v9 = (*(*a1 + 16))(a1);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a1, v20);
  v11 = (*(*a1 + 16))(a1);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 2)
  {
    *(v12 + 2) = 32;
    *v12 = 14880;
    *(v11 + 4) += 3;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::raw_ostream::write(v11, " : ", 3uLL);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v13 = mlir::TypeRange::dereference_iterator(v8, 0);
  (*(*a1 + 32))(a1, v13);
  if (v3 != 1)
  {
    for (i = 1; i != v3; ++i)
    {
      v15 = (*(*a1 + 16))(a1);
      v16 = *(v15 + 4);
      if (*(v15 + 3) - v16 > 1uLL)
      {
        *v16 = 8236;
        *(v15 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v15, ", ", 2uLL);
      }

      v17 = mlir::TypeRange::dereference_iterator(v8, i);
      (*(*a1 + 32))(a1, v17);
    }
  }

LABEL_15:
  result = (*(*a1 + 16))(a1);
  v19 = *(result + 4);
  if (*(result + 3) == v19)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v19 = 41;
  ++*(result + 4);
  return result;
}

uint64_t std::function<mlir::TypeRange ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOpBundles(mlir::OpAsmParser &,llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u> &,llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u> &,mlir::ArrayAttr &)::$_0>(v3);
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOpBundles(mlir::OpAsmParser &,llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u> &,llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u> &,mlir::ArrayAttr &)::$_0>(uint64_t *a1)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = (*(**a1 + 40))(*a1);
  v27[0] = v28;
  v27[1] = 0x100000000;
  v25[0] = v26;
  v25[1] = 0x600000000;
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  if (mlir::AsmParser::parseString(v1, __p))
  {
    if ((*(*v1 + 280))(v1) & 1) != 0 && (((*(*v1 + 304))(v1) & 1) != 0 || ((*(*v1 + 720))(v1, v27, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*v1 + 104))(v1) & 1) != 0 && (mlir::AsmParser::parseTypeList(v1, v25) & 1) != 0 && ((*(*v1 + 296))(v1)))
    {
      v6 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>>(v2, v27, 1);
      v7 = (*v2 + 48 * *(v2 + 8));
      *v7 = v7 + 2;
      v7[1] = 0x100000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v7, v6);
      }

      ++*(v2 + 8);
      v8 = *(v4 + 8);
      v9 = *v4;
      v10 = v25;
      if (v8 >= *(v4 + 12))
      {
        if (v9 <= v25 && v9 + (v8 << 6) > v25)
        {
          v17 = v25 - v9;
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::grow(v4, v8 + 1);
          v9 = *v4;
          v10 = &v17[*v4];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::grow(v4, v8 + 1);
          v9 = *v4;
          v10 = v25;
        }
      }

      v11 = (v9 + (*(v4 + 8) << 6));
      *v11 = v11 + 2;
      v11[1] = 0x600000000;
      if (*(v10 + 2))
      {
        llvm::SmallVectorImpl<mlir::Type>::operator=(v11, v10);
      }

      ++*(v4 + 8);
      v12 = *(*(*v1 + 32))(v1);
      v23 = 260;
      v22[0] = __p;
      v14 = mlir::StringAttr::get(v12, v22, v13);
      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(v3, v14);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v18 = "expect operand bundle tag";
    v19 = 259;
    (*(*v1 + 24))(v22, v1, v5, &v18);
    v15 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v15;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 48 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMVoidType>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[41];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMVoidType>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMVoidType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMVoidType>();
    unk_27FC1B160 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMVoidType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMVoidType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMVoidType]";
  v6 = 86;
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

unint64_t *llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5 - a3;
  v11 = *(a1 + 8);
  v12 = a5 - a3 + v11;
  if (v12 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v12, 8);
    v11 = *(a1 + 8);
  }

  result = std::uninitialized_copy[abi:nn200100]<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Type *>(a2, a3, a4, a5, (*a1 + 8 * v11));
  *(a1 + 8) += v10;
  return result;
}

unint64_t *std::uninitialized_copy[abi:nn200100]<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  if (a2 != a4)
  {
    v7 = a2;
    do
    {
      *a5++ = *(mlir::ValueRange::dereference_iterator(&v9, v7) + 8) & 0xFFFFFFFFFFFFFFF8;
      v10 = ++v7;
    }

    while (a4 != v7);
  }

  return a5;
}

BOOL mlir::AsmParser::parseAttribute<mlir::Attribute>(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v14 = v21;
  *a2 = v21;
  if (v14)
  {
    v15 = *(**v14 + 32);
    v23 = 261;
    v22[0] = a4;
    v22[1] = a5;
    v16 = mlir::StringAttr::get(v15, v22, v13);
    mlir::NamedAttrList::push_back(a6, v16, v14);
    return 1;
  }

  else
  {
    v19 = "invalid kind of attribute specified";
    v20 = 259;
    (*(*a1 + 24))(v22, a1, v12, &v19);
    v17 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  return v17;
}

uint64_t mlir::ElementsAttr::getValues<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(a1[1] + 16))();
  v6 = v5;
  mlir::ElementsAttr::value_begin<mlir::Attribute>(a1, &v18);
  v7 = (*(a1[1] + 16))();
  v9 = (*(v8 + 24))(v8, v7);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = 1;
    do
    {
      v13 = *v9++;
      v12 *= v13;
      v11 -= 8;
    }

    while (v11);
  }

  else
  {
    v12 = 1;
  }

  v15 = 257;
  v16 = 0;
  v17 = v12;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, v4, v6, &v18, &v15);
  if ((v15 & 1) == 0)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v18 & 1) == 0)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

llvm::raw_ostream *mlir::ElementsAttr::value_begin<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<mlir::Attribute>(a1, &v13);
  if (v16 == 1)
  {
    *a2 = v13;
    v5 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v5;
  }

  else
  {
    v6 = llvm::errs(result);
    v8 = llvm::getTypeName<mlir::Attribute>();
    v10 = llvm::raw_ostream::operator<<(v7, v8, v9);
    v12 = mlir::operator<<(v11, *a1);
    result = llvm::raw_ostream::operator<<(v12, "\n");
    __break(1u);
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5)
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

void *mlir::ElementsAttr::try_value_begin<mlir::Attribute>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID();
  result = (**(a1 + 8))(v8);
  if (v9 == 1)
  {
    v5 = v8[0];
    v6 = BYTE1(v8[0]);
    v7 = v8[1];
    if (LOBYTE(v8[0]) == 1)
    {
      *a2 = v8[0];
      *(a2 + 1) = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = 0;
    }

    else
    {
      *a2 = v8[0];
      *(a2 + 1) = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = 0;
      v5 = 1;
    }

    *(a2 + 24) = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  return v1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<73ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<parseInsertExtractValueElementType(mlir::AsmParser &,mlir::Type &,mlir::Type,mlir::detail::DenseArrayAttrImpl<long long>)::$_0>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = (*(**a1 + 40))(*a1);
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  return (*(*v5 + 24))(v5, v6, v8);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<102ul>(uint64_t a1, char *__s)
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

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseGEPIndices(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<int> &)::$_0>(uint64_t *a1)
{
  v6 = 0;
  v7 = *a1;
  v2 = mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(v7, &v6, &v7);
  if ((v2 & 0x100) != 0)
  {
    if (v2)
    {
      llvm::SmallVectorTemplateBase<int,true>::push_back(a1[1], v6);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    llvm::SmallVectorTemplateBase<int,true>::push_back(a1[1], 0x80000000);
    v3 = *a1;
    v4 = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(a1[2]);
    return (*(*v3 + 704))(v3, v4, 1);
  }
}

unint64_t mlir::LLVM::GEPIndicesAdaptor<mlir::OperandRange>::iterator::operator*(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1 == 0x80000000)
  {
    return *(*(a1 + 16) + 32 * *(a1 + 24) + 24) | 4;
  }

  else
  {
    return mlir::IntegerAttr::get(*(**a1 + 8), v1) & 0xFFFFFFFFFFFFFFFBLL;
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMTokenType>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[36];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMTokenType>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMTokenType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMTokenType>();
    *algn_27FC1B138 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMTokenType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMTokenType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMTokenType]";
  v6 = 87;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseSwitchOpCases(mlir::OpAsmParser &,mlir::Type,mlir::DenseIntElementsAttr &,llvm::SmallVectorImpl<mlir::Block *> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>> &)::$_0>(uint64_t *a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v10 = 0;
  if ((mlir::AsmParser::parseInteger<long long>(*a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *a1[2];
  LODWORD(v12) = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, v10, 1);
  }

  if (v3)
  {
    v4 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  }

  else
  {
    v4 = 0;
  }

  v11 = (v4 & v10);
  v6 = llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(v2, &v11, 1);
  v7 = *v2 + 16 * *(v2 + 8);
  *(v7 + 8) = *(v6 + 8);
  *v7 = *v6;
  *(v6 + 8) = 0;
  ++*(v2 + 8);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  v9 = 0;
  v14[0] = v15;
  v14[1] = 0x100000000;
  v11 = v13;
  v12 = 0x600000000;
  if ((*(**a1 + 104))() & 1) != 0 && ((*(**a1 + 800))(*a1, &v9) & 1) != 0 && (((*(**a1 + 288))(*a1) & 1) == 0 || ((*(**a1 + 720))(*a1, v14, 0, 0, 0xFFFFFFFFLL) & 1) != 0 && ((*(**a1 + 584))(*a1, &v11) & 1) != 0 && ((*(**a1 + 296))(*a1)))
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a1[3], v9);
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(a1[4], v14);
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>>::emplace_back<llvm::SmallVector<mlir::Type,6u>&>(a1[5], &v11);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  return v5;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::LLVM::vector_extract::getVectorBitWidth(void *a1)
{
  VectorNumElements = mlir::LLVM::getVectorNumElements(a1);
  v3 = *(*a1 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v5 = 3;
  if (v4)
  {
    v5 = 1;
  }

  v7 = a1[v5];
  return mlir::Type::getIntOrFloatBitWidth(&v7) * VectorNumElements;
}

uint64_t mlir::LLVM::vector_insert::getVectorBitWidth(void *a1)
{
  VectorNumElements = mlir::LLVM::getVectorNumElements(a1);
  v3 = *(*a1 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v5 = 3;
  if (v4)
  {
    v5 = 1;
  }

  v7 = a1[v5];
  return mlir::Type::getIntOrFloatBitWidth(&v7) * VectorNumElements;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v14 = v21;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v14;
  if (v14)
  {
    v15 = *(**v14 + 32);
    v23 = 261;
    v22[0] = a4;
    v22[1] = a5;
    v16 = mlir::StringAttr::get(v15, v22, v13);
    mlir::NamedAttrList::push_back(a6, v16, v14);
    return 1;
  }

  else
  {
    v19 = "invalid kind of attribute specified";
    v20 = 259;
    (*(*a1 + 24))(v22, a1, v12, &v19);
    v17 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  return v17;
}

unint64_t mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::iterator::operator*(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1 == 0x80000000)
  {
    return mlir::ValueRange::dereference_iterator((a1 + 16), *(a1 + 24)) | 4;
  }

  else
  {
    return mlir::IntegerAttr::get(*(**a1 + 8), v1) & 0xFFFFFFFFFFFFFFFBLL;
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GEPOp::verify(void)::$_0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, *v2, v3);
}

uint64_t *mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>()
{
  {
    mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID();
  }

  return &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
}

__n128 llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v9[2] = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  v9[3] = 0;
  v10 = 0;
  v11 = 0;
  v5 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v9, 1);
  v6 = *a1 + 40 * *(a1 + 8);
  v7 = *(v5 + 32);
  result = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = result;
  *(v6 + 32) = v7;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *>(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v8[2] = 0;
  v9[0] = 0;
  *(v9 + 5) = 0;
  v3 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v8, 1);
  v4 = *a1 + 40 * *(a1 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 40 * v4 - 40;
}

__n128 llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v9[2] = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  v9[3] = 0;
  v10 = 0;
  v11 = 0;
  v5 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v9, 1);
  v6 = *a1 + 40 * *(a1 + 8);
  v7 = *(v5 + 32);
  result = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = result;
  *(v6 + 32) = v7;
  ++*(a1 + 8);
  return result;
}

uint64_t parseOptionalKeywordAlternative(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v5 = 0;
  v6 = &a2[2 * a3];
  while (((*(*a1 + 408))(a1, *v3, v3[1]) & 1) == 0)
  {
    v5 = (v5 + 1);
    v3 += 2;
    if (v3 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

BOOL mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v15 = 0;
  if (((*(*a1 + 440))(a1, &v15, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = v15;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v16[0] = "callee";
    v16[1] = 6;
    v10 = mlir::StringAttr::get(v9, v16, v7);
    mlir::NamedAttrList::push_back(a3, v10, v8);
    return 1;
  }

  else
  {
    v13 = "invalid kind of attribute specified";
    v14 = 259;
    (*(*a1 + 24))(v16, a1, v6, &v13);
    v11 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v11;
}

BOOL mlir::AsmParser::parseAttribute<mlir::TypeAttr>(uint64_t a1, uint64_t *a2, const char *a3, const char *a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v12 = v19;
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    v14 = mlir::StringAttr::get(v13, v20, v11);
    mlir::NamedAttrList::push_back(a5, v14, v12);
    return 1;
  }

  else
  {
    v17 = "invalid kind of attribute specified";
    v18 = 259;
    (*(*a1 + 24))(v20, a1, v10, &v17);
    v15 = (v22 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
  }

  return v15;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<mlir::LLVM::ExtractValueOp::verify(void)::$_0>(mlir::Operation ***a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v6 = 261;
  v5[0] = a2;
  v5[1] = a3;
  mlir::Operation::emitOpError(a4, *v4, v5);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<mlir::LLVM::InsertValueOp::verify(void)::$_0>(mlir::Operation ***a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v6 = 261;
  v5[0] = a2;
  v5[1] = a3;
  mlir::Operation::emitOpError(a4, *v4, v5);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMMetadataType>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[26];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMMetadataType>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMMetadataType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMMetadataType>();
    *algn_27FC1B0E8 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMMetadataType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMMetadataType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMMetadataType]";
  v6 = 90;
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

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMLabelType>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[21];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMLabelType>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMLabelType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMLabelType>();
    unk_27FC1B0C0 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMLabelType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMLabelType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMLabelType]";
  v6 = 87;
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

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::PointerElementTypeInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC205B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC205B8))
  {
    v1 = llvm::getTypeName<mlir::LLVM::PointerElementTypeInterface>();
    qword_27FC205B0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC205B8);
  }

  return qword_27FC205B0;
}

uint64_t llvm::getTypeName<mlir::LLVM::PointerElementTypeInterface>()
{
  if ((atomic_load_explicit(&qword_27FC205D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC205D0))
  {
    qword_27FC205C0 = llvm::detail::getTypeNameImpl<mlir::LLVM::PointerElementTypeInterface>();
    *algn_27FC205C8 = v1;
    __cxa_guard_release(&qword_27FC205D0);
  }

  return qword_27FC205C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::PointerElementTypeInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::PointerElementTypeInterface]";
  v6 = 101;
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

uint64_t mlir::Diagnostic::operator<<<147ul>(uint64_t a1)
{
  v6 = 3;
  v7 = "' linkage not supported in aliases, available options: private, internal, linkonce, weak, linkonce_odr, weak_odr, external or available_externally";
  v8 = 146;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::LLVM::LLVMFuncOp::verify(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(*(a2 + 48) + 16);
  if (a2 && v4 == &unk_27FC1FF90)
  {
    v5 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if (*v3)
    {
      if (*v3 != v5)
      {
        result = 0;
        v7 = "'llvm.landingpad' should have a consistent result type inside a function";
        v8 = 72;
LABEL_11:
        *v2 = v7;
        v2[1] = v8;
        return result;
      }

      return 1;
    }

LABEL_12:
    *v3 = v5;
    return 1;
  }

  if (v4 != &unk_27FC1FFB8)
  {
    return 2;
  }

  v5 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!*v3)
  {
    goto LABEL_12;
  }

  if (*v3 != v5)
  {
    result = 0;
    v7 = "'llvm.resume' should have a consistent input type inside a function";
    v8 = 67;
    goto LABEL_11;
  }

  return 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMPPCFP128Type>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[31];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMPPCFP128Type>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMPPCFP128Type>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMPPCFP128Type>();
    unk_27FC1B110 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMPPCFP128Type>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMPPCFP128Type>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMPPCFP128Type]";
  v6 = 90;
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.mlir.constant";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::LLVM::GEPArg,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM12LLVMVoidTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM16LLVMPPCFP128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM13LLVMTokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM13LLVMLabelTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM16LLVMMetadataTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 2017817449 ? (v4 = *(a3 + 3) == 1952670072) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 7)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    if (v5 == 2017817449 && v6 == 1952670072)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "isExact";
    v7[1] = 7;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isExact", 7uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
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

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "isExact";
  v10[1] = 7;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AShrOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::LLVM::detail::ExactFlagInterfaceInterfaceTraits::Model<mlir::LLVM::AShrOp>::setIsExact(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(**(***(a2 + 24) + 32) + 608);
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v3;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::ExactFlagInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC205E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC205E0))
  {
    v1 = llvm::getTypeName<mlir::LLVM::ExactFlagInterface>();
    qword_27FC205D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC205E0);
  }

  return qword_27FC205D8;
}

uint64_t llvm::getTypeName<mlir::LLVM::ExactFlagInterface>()
{
  if ((atomic_load_explicit(&qword_27FC205F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC205F8))
  {
    qword_27FC205E8 = llvm::detail::getTypeNameImpl<mlir::LLVM::ExactFlagInterface>();
    unk_27FC205F0 = v1;
    __cxa_guard_release(&qword_27FC205F8);
  }

  return qword_27FC205E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::ExactFlagInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::ExactFlagInterface]";
  v6 = 92;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AShrOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::AShrOp::inferReturnTypes(a4, a5, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "llvm.ashr";
      v22 = 9;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AShrOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC20608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20608))
  {
    v7 = llvm::getTypeName<mlir::LLVM::ExactFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::ExactFlagInterface::Trait>(void)::Empty>>();
    qword_27FC20600 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v7, v8);
    __cxa_guard_release(&qword_27FC20608);
  }

  v9[11] = qword_27FC20600;
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v9[12] = v2;
  do
  {
    v4 = v9[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 12);
  return v4 == a1;
}

uint64_t llvm::getTypeName<mlir::LLVM::ExactFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::ExactFlagInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20620))
  {
    qword_27FC20610 = llvm::detail::getTypeNameImpl<mlir::LLVM::ExactFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::ExactFlagInterface::Trait>(void)::Empty>>();
    *algn_27FC20618 = v1;
    __cxa_guard_release(&qword_27FC20620);
  }

  return qword_27FC20610;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::ExactFlagInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::ExactFlagInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::ExactFlagInterface::Trait<Empty>]";
  v6 = 106;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v7 = (*(*a3 + 16))(a3);
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

    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 4)
    {
      *(v10 + 4) = 116;
      *v10 = 1667332197;
      *(v9 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v9, "exact", 5uLL);
    }
  }

  v11 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ",", 1uLL);
  }

  else
  {
    *v14 = 44;
    ++*(v13 + 4);
  }

  v15 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "isExact", 7);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
  v18 = (*(*a3 + 16))(a3);
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

  v20 = (*(*a3 + 16))(a3);
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

  v22 = (*(*a3 + 16))(a3);
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

  if (*(a2 + 36))
  {
    v24 = a2 - 16;
  }

  else
  {
    v24 = 0;
  }

  (*(*a3 + 32))(a3, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::Op<mlir::LLVM::AShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::ExactFlagInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64), v10 = a1, mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v5, "isExact", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v8 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::initProperties(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v14[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v13, a6, a2, a3);
    if (v13)
    {
      mlir::Diagnostic::operator<<<42ul>(v14, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "overflowFlags", 0xDuLL);
  if ((v11 & 1) != 0 && (v12 = *(v10 + 8)) != 0)
  {
    if (!mlir::convertFromAttribute(a3, v12, a5, a6))
    {
      return 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  v4 = mlir::LLVM::IntegerOverflowFlagsAttr::get(v2, v3);
  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "overflowFlags";
  v10[1] = 13;
  v7 = mlir::StringAttr::get(v5, v10, v6);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v7, v4);
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v2, v12, v13);
  }

  else
  {
    v8 = 0;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddOp>::hashProperties(uint64_t a1, unsigned int *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((0xEEFF504759C16B48 * *a2 - 0x4089B058A25136EBLL) ^ ((0xEEFF504759C16B48 * *a2 - 0x4089B058A25136EBLL) >> 47));
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AddOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddOpGenericAdaptorBase::Properties>(a2);
  v5 = 0;
  if (((*(*a1 + 72))(a1, &v5) & 1) == 0)
  {
    return 0;
  }

  *v3 = v5;
  return 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20630))
  {
    v1 = llvm::getTypeName<mlir::LLVM::IntegerOverflowFlagsInterface>();
    qword_27FC20628 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20630);
  }

  return qword_27FC20628;
}

uint64_t llvm::getTypeName<mlir::LLVM::IntegerOverflowFlagsInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20648))
  {
    qword_27FC20638 = llvm::detail::getTypeNameImpl<mlir::LLVM::IntegerOverflowFlagsInterface>();
    unk_27FC20640 = v1;
    __cxa_guard_release(&qword_27FC20648);
  }

  return qword_27FC20638;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::IntegerOverflowFlagsInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::IntegerOverflowFlagsInterface]";
  v6 = 103;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AddOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::AddOp::inferReturnTypes(a4, a5, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "llvm.add";
      v22 = 8;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AddOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[14] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::IntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[13] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 13);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::IntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20658))
  {
    v1 = llvm::getTypeName<mlir::LLVM::IntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::IntegerOverflowFlagsInterface::Trait>(void)::Empty>>();
    qword_27FC20650 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20658);
  }

  return qword_27FC20650;
}

uint64_t llvm::getTypeName<mlir::LLVM::IntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::IntegerOverflowFlagsInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20670))
  {
    qword_27FC20660 = llvm::detail::getTypeNameImpl<mlir::LLVM::IntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::IntegerOverflowFlagsInterface::Trait>(void)::Empty>>();
    *algn_27FC20668 = v1;
    __cxa_guard_release(&qword_27FC20670);
  }

  return qword_27FC20660;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::IntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::IntegerOverflowFlagsInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::IntegerOverflowFlagsInterface::Trait<Empty>]";
  v6 = 117;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

  v11 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  printOverflowFlags(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v14 = (*(*a3 + 16))(a3);
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

  v16 = (*(*a3 + 16))(a3);
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

  v18 = (*(*a3 + 16))(a3);
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

  if (*(a2 + 36))
  {
    v20 = a2 - 16;
  }

  else
  {
    v20 = 0;
  }

  (*(*a3 + 32))(a3, *(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::IntegerOverflowFlagsInterface::Trait,mlir::OpTrait::IsCommutative,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v7 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddrSpaceCastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::PromotableOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20680))
  {
    v1 = llvm::getTypeName<mlir::PromotableOpInterface>();
    qword_27FC20678 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20680);
  }

  return qword_27FC20678;
}

uint64_t llvm::getTypeName<mlir::PromotableOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20698))
  {
    qword_27FC20688 = llvm::detail::getTypeNameImpl<mlir::PromotableOpInterface>();
    unk_27FC20690 = v1;
    __cxa_guard_release(&qword_27FC20698);
  }

  return qword_27FC20688;
}

const char *llvm::detail::getTypeNameImpl<mlir::PromotableOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PromotableOpInterface]";
  v6 = 89;
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

__guard mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ViewLikeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[411];
}

uint64_t llvm::getTypeName<mlir::ViewLikeOpInterface>()
{
  {
    llvm::getTypeName<mlir::ViewLikeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ViewLikeOpInterface>();
    unk_27FC19CF0 = v1;
  }

  return llvm::getTypeName<mlir::ViewLikeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ViewLikeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ViewLikeOpInterface]";
  v6 = 87;
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 72);
  v6 = v5[3];
  v7 = *(v6 + 8);
  v8 = *(a2 - 8);
  if ((v8 ^ v7) >= 8)
  {
    if ((~v7 & 7) == 0)
    {
      v6 = 0;
    }

    if (!v6)
    {
      return 0;
    }

    v10 = *(v6 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v6 + 24 * *(v6 + 16) + 120;
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      v11 = v6 + 16 * v10 + 16;
    }

    if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AddrSpaceCastOp,void>::id)
    {
      return 0;
    }

    v6 = *(*(v11 + 72) + 24);
    if ((*(v6 + 8) ^ v8) > 7)
    {
      v12 = v5[1];
      if (v12)
      {
        v13 = *v5;
        *v12 = *v5;
        if (v13)
        {
          *(v13 + 8) = v5[1];
        }
      }

      v5[3] = v6;
      v14 = *v6;
      *v5 = *v6;
      v5[1] = v6;
      if (v14)
      {
        *(v14 + 8) = v5;
      }

      *v6 = v5;
      v6 = a2 - 16;
    }
  }

  if (v6 < 8)
  {
    return 0;
  }

  if (a2 - 16 != (v6 & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v6 | 4);
  }

  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC206A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC206A8))
  {
    v1 = llvm::getTypeName<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>>();
    qword_27FC206A0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC206A8);
  }

  return qword_27FC206A0;
}

uint64_t llvm::getTypeName<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC206C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC206C0))
  {
    qword_27FC206B0 = llvm::detail::getTypeNameImpl<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>>();
    *algn_27FC206B8 = v1;
    __cxa_guard_release(&qword_27FC206C0);
  }

  return qword_27FC206B0;
}

const char *llvm::detail::getTypeNameImpl<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PromotableOpInterface::Trait<Empty>]";
  v6 = 103;
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

uint64_t mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC206D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC206D0))
  {
    v1 = llvm::getTypeName<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>>();
    qword_27FC206C8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC206D0);
  }

  return qword_27FC206C8;
}

uint64_t llvm::getTypeName<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC206E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC206E8))
  {
    qword_27FC206D8 = llvm::detail::getTypeNameImpl<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>>();
    unk_27FC206E0 = v1;
    __cxa_guard_release(&qword_27FC206E8);
  }

  return qword_27FC206D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ViewLikeOpInterface::Trait<Empty>]";
  v6 = 101;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, 0);
  v10 = (*(*a3 + 16))(a3);
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

  v12 = (*(*a3 + 16))(a3);
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

  v14 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = (*(*a3 + 16))(a3);
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

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 28532;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "to", 2uLL);
  }

  v20 = (*(*a3 + 16))(a3);
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

  if (*(a2 + 36))
  {
    v22 = a2 - 16;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 32))(a3, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::Op<mlir::LLVM::AddrSpaceCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6E5F6C61626F6C67 ? (v4 = *(a3 + 3) == 0x656D616E5F6C6162) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 11)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    if (v5 == 0x6E5F6C61626F6C67 && v6 == 0x656D616E5F6C6162)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (a4[3])
        {
          v8 = 0;
        }

        else
        {
          v8 = a4;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "global_name";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "global_name", 0xBuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v12[3])
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
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

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "global_name";
  v10[1] = 11;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AddressOfOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::LLVM::AddressOfOp>::verifySymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  for (i = *(a2 + 16); i; i = *(v7 + 16))
  {
    v6 = *(i + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v7 = *(v6 + 16);
    if (!v7 || (mlir::LLVM::satisfiesLLVMModule(*(v6 + 16), a2) & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  v8 = mlir::SymbolTableCollection::lookupSymbolIn(a3, v7, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *(*(v8 + 48) + 16);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::GlobalOp,void>::id)
  {
    v15 = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
    if (*(v15 + 24) > 0x40u)
    {
      operator new[]();
    }

    if (*((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) != *(v15 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = 1;
    return v14 & 1;
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id && v9 != &unk_27FC1FEA8)
  {
LABEL_20:
    v13 = "must reference a global defined by 'llvm.mlir.global', 'llvm.mlir.alias' or 'llvm.func'";
    goto LABEL_21;
  }

  if (v9 != &unk_27FC1FEA8)
  {
    goto LABEL_25;
  }

  v11 = *(((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40) + 8);
  v12 = v11 ? v11 - 8 : 0;
  if (*((*(*(*(*(v12 + 32) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8) == *((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
    goto LABEL_25;
  }

LABEL_19:
  v13 = "pointer address space must match address space of the referenced global or alias";
LABEL_21:
  v17 = v13;
  v18 = 259;
  mlir::Operation::emitOpError(v19, a2, &v17);
  v14 = v20 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
  return v14 & 1;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5 < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v5 & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC206F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC206F8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>>();
    qword_27FC206F0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC206F8);
  }

  return qword_27FC206F0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20710))
  {
    qword_27FC20700 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>>();
    *algn_27FC20708 = v1;
    __cxa_guard_release(&qword_27FC20710);
  }

  return qword_27FC20700;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<Empty>]";
  v6 = 133;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 48))(a3, *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8));
  v17 = v19;
  v18 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "global_name", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, v18);
  v10 = (*(*a3 + 16))(a3);
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

  v12 = (*(*a3 + 16))(a3);
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

  v14 = (*(*a3 + 16))(a3);
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

  if (*(a2 + 9))
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  (*(*a3 + 32))(a3, *(v16 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::Op<mlir::LLVM::AddressOfOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  if (!v6)
  {
    v10 = "requires attribute 'global_name'";
    v11 = 259;
    mlir::Operation::emitOpError(v12, a1, &v10);
    v8 = v13 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    return v8 & 1;
  }

  v12[0] = a1;
  if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v6, "global_name", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12))
  {
    if (*(a1 + 9))
    {
      v7 = a1 - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(a1, *(v7 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 <= 9)
  {
    if (a4 == 7)
    {
      if (*a3 != 1802398060 || *(a3 + 3) != 1701273963)
      {
        goto LABEL_46;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      goto LABEL_48;
    }

    if (a4 == 8)
    {
      if (*a3 != 0x656D616E5F6D7973)
      {
LABEL_46:
        v4 = 0;
        v7 = 0;
        return v7 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
LABEL_48:
      v13 = *v5;
      v7 = v13 & 0xFFFFFFFFFFFFFF00;
      v4 = v13;
      return v7 | v4;
    }

    v7 = 0;
    if (a4 == 9)
    {
      if (*a3 != 0x61636F6C5F6F7364 || *(a3 + 8) != 108)
      {
        goto LABEL_46;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      goto LABEL_48;
    }
  }

  else
  {
    if (a4 <= 11)
    {
      if (a4 == 10)
      {
        if (*a3 != 0x79745F7361696C61 || *(a3 + 8) != 25968)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*a3 != 0x696C696269736976 || *(a3 + 3) != 0x5F7974696C696269)
        {
          goto LABEL_46;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
      }

      goto LABEL_48;
    }

    if (a4 == 12)
    {
      if (*a3 != 0x5F64656D616E6E75 || *(a3 + 8) != 1919181921)
      {
        goto LABEL_46;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      goto LABEL_48;
    }

    v7 = 0;
    if (a4 == 13)
    {
      if (*a3 != 0x6C5F646165726874 || *(a3 + 5) != 0x5F6C61636F6C5F64)
      {
        goto LABEL_46;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      goto LABEL_48;
    }
  }

  return v7 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 <= 9)
  {
    switch(v7)
    {
      case 7:
        v20 = *v6;
        v21 = *(v6 + 3);
        if (v20 == 1802398060 && v21 == 1701273963)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
            {
              v23 = a4;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          v5[10] = v23;
        }

        break;
      case 8:
        if (*v6 == 0x656D616E5F6D7973)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v32 = a4;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v5[11] = v32;
        }

        break;
      case 9:
        v12 = *v6;
        v13 = *(v6 + 8);
        if (v12 == 0x61636F6C5F6F7364 && v13 == 108)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

          v5[9] = v15;
        }

        break;
    }
  }

  else if (v7 > 11)
  {
    if (v7 == 12)
    {
      v28 = *v6;
      v29 = v6[2];
      if (v28 == 0x5F64656D616E6E75 && v29 == 1919181921)
      {
        if (a4)
        {
          if (mlir::LLVM::UnnamedAddrAttr::classof(a4))
          {
            v31 = a4;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v5[13] = v31;
      }
    }

    else if (v7 == 13)
    {
      v16 = *v6;
      v17 = *(v6 + 5);
      if (v16 == 0x6C5F646165726874 && v17 == 0x5F6C61636F6C5F64)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v19 = a4;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v5[12] = v19;
      }
    }
  }

  else if (v7 == 10)
  {
    v24 = *v6;
    v25 = *(v6 + 4);
    if (v24 == 0x79745F7361696C61 && v25 == 25968)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v27 = a4;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v5[8] = v27;
    }
  }

  else
  {
    v8 = *v6;
    v9 = *(v6 + 3);
    if (v8 == 0x696C696269736976 && v9 == 0x5F7974696C696269)
    {
      if (a4)
      {
        if (mlir::LLVM::VisibilityAttr::classof(a4))
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v5[14] = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v30 = 261;
    v28 = "alias_type";
    v29 = 10;
    v9 = mlir::StringAttr::get(v8, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v30 = 261;
    v28 = "dso_local";
    v29 = 9;
    v12 = mlir::StringAttr::get(v11, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v30 = 261;
    v28 = "linkage";
    v29 = 7;
    v15 = mlir::StringAttr::get(v14, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v30 = 261;
    v28 = "sym_name";
    v29 = 8;
    v18 = mlir::StringAttr::get(v17, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v30 = 261;
    v28 = "thread_local_";
    v29 = 13;
    v21 = mlir::StringAttr::get(v20, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v30 = 261;
    v28 = "unnamed_addr";
    v29 = 12;
    v24 = mlir::StringAttr::get(v23, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v30 = 261;
    v28 = "visibility_";
    v29 = 11;
    v27 = mlir::StringAttr::get(v26, &v28, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v11, "alias_type", 0xA, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v14, "dso_local", 9, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v20, "sym_name", 8, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v23, "thread_local_", 0xD, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v26, a4, a5))
            {
              v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
              if ((v28 & 1) == 0)
              {
                return 1;
              }

              v29 = v27[1];
              if (!v29 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v29, a4, a5))
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    v6 = a4[2];
    *(a3 + 48) = *(a4 + 6);
    *(a3 + 16) = v5;
    *(a3 + 32) = v6;
  }

  else
  {
    *(a3 + 48) = 0;
    v4 = 0uLL;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
  }

  *a3 = v4;
  return mlir::LLVM::AliasOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v33, a6, a2, a3);
    if (v33)
    {
      mlir::Diagnostic::operator<<<42ul>(v34, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alias_type", 0xAuLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "dso_local", 9uLL);
    if (v15)
    {
      v13 = *(v14 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v33, a6);
          if (!v33)
          {
            goto LABEL_4;
          }

LABEL_29:
          if (v33)
          {
            LODWORD(v32[0]) = 0;
            v32[1] = v13;
            v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, v32, 1);
            v21 = v35 + 24 * v36;
            v22 = *v20;
            *(v21 + 16) = *(v20 + 16);
            *v21 = v22;
            ++v36;
          }

          goto LABEL_4;
        }

        a3[1] = v13;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "linkage", 7uLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
        {
          (a5)(&v33, a6);
          if (!v33)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[2] = v13;
      }
    }

    v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v19)
    {
      v13 = *(v18 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v33, a6);
          if (!v33)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[3] = v13;
      }
    }

    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "thread_local_", 0xDuLL);
    if (v24)
    {
      v25 = *(v23 + 8);
      v32[0] = v25;
      if (v25)
      {
        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v33, a6);
          if (!v33)
          {
            goto LABEL_4;
          }

LABEL_51:
          if (v33)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v34, v32);
          }

          goto LABEL_4;
        }

        a3[4] = v25;
      }
    }

    v26 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "unnamed_addr", 0xCuLL);
    if (v27)
    {
      v28 = *(v26 + 8);
      v32[0] = v28;
      if (v28)
      {
        if (!mlir::LLVM::UnnamedAddrAttr::classof(v28))
        {
          (a5)(&v33, a6);
          if (!v33)
          {
            goto LABEL_4;
          }

          goto LABEL_51;
        }

        a3[5] = v28;
      }
    }

    v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "visibility_", 0xBuLL);
    if (v30)
    {
      v31 = *(v29 + 8);
      v32[0] = v31;
      if (v31)
      {
        if (!mlir::LLVM::VisibilityAttr::classof(v31))
        {
          (a5)(&v33, a6);
          if (!v33)
          {
            goto LABEL_4;
          }

          goto LABEL_51;
        }

        a3[6] = v31;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  (a5)(&v33, a6);
  if (v33)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v34 = v36;
  v35 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v33 = 261;
    v31 = "alias_type";
    v32 = 10;
    v9 = mlir::StringAttr::get(v8, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v33 = 261;
    v31 = "dso_local";
    v32 = 9;
    v12 = mlir::StringAttr::get(v11, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v33 = 261;
    v31 = "linkage";
    v32 = 7;
    v15 = mlir::StringAttr::get(v14, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v33 = 261;
    v31 = "sym_name";
    v32 = 8;
    v18 = mlir::StringAttr::get(v17, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v33 = 261;
    v31 = "thread_local_";
    v32 = 13;
    v21 = mlir::StringAttr::get(v20, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v33 = 261;
    v31 = "unnamed_addr";
    v32 = 12;
    v24 = mlir::StringAttr::get(v23, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v33 = 261;
    v31 = "visibility_";
    v32 = 11;
    v27 = mlir::StringAttr::get(v26, &v31, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v34, v27, v25);
  }

  v28 = v34;
  if (v35)
  {
    v29 = mlir::DictionaryAttr::get(v3, v34, v35);
    v28 = v34;
  }

  else
  {
    v29 = 0;
  }

  if (v28 != v36)
  {
    free(v28);
  }

  return v29;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AliasOp>::hashProperties(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v28 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v29 = v6;
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v14 = a2[4];
  v15 = a2[5];
  v16 = (8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14);
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v26 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v27 = v13;
  v18 = HIDWORD(v15);
  v19 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = HIDWORD(a2[6]);
  v22 = 0x9DDFEA08EB382D69 * ((8 * a2[6] - 0xAE502812AA7333) ^ v21);
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  v25 = v20;
  memset(v31, 0, sizeof(v31));
  v32 = 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v30, 0, v31, &v31[3] + 8, &v29, &v28, &v27, &v26, &v25, &v24);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AliasOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::LinkageAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::UnnamedAddrAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VisibilityAttr>(a1, v3 + 6);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AliasOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 16))(a3, v4[8]);
  (*(*a3 + 24))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  (*(*a3 + 24))(a3, v4[13]);
  v5 = v4[14];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::LLVM::AliasOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>(uint64_t a1)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC20720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20720))
  {
    v7 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl>(void)::Empty>>();
    qword_27FC20718 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v7, v8);
    __cxa_guard_release(&qword_27FC20720);
  }

  v9[5] = qword_27FC20718;
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v9[9] = v2;
  do
  {
    v4 = v9[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  return v4 == a1;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20738))
  {
    qword_27FC20728 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl>(void)::Empty>>();
    unk_27FC20730 = v1;
    __cxa_guard_release(&qword_27FC20738);
  }

  return qword_27FC20728;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl<Empty>]";
  v6 = 141;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  v9 = a2 + 64;
  v10 = mlir::LLVM::linkage::stringifyLinkage(*(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16) + 8));
  v12 = v11;
  v13 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v13, v10, v12);
  v14 = (*(*a3 + 16))(a3);
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

  v43[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 48);
  Int = mlir::IntegerAttr::getInt(v43);
  if (Int == 1)
  {
    v17 = "hidden";
    v18 = 6;
  }

  else
  {
    if (Int != 2)
    {
      goto LABEL_14;
    }

    v17 = "protected";
    v18 = 9;
  }

  v19 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v19, v17, v18);
  v20 = (*(*a3 + 16))(a3);
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

LABEL_14:
  v43[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 40);
  if (!v43[0])
  {
    goto LABEL_22;
  }

  v22 = mlir::IntegerAttr::getInt(v43);
  if (v22 == 1)
  {
    v23 = "local_unnamed_addr";
    v24 = 18;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_22;
    }

    v23 = "unnamed_addr";
    v24 = 12;
  }

  v25 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v25, v23, v24);
  v26 = (*(*a3 + 16))(a3);
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

LABEL_22:
  v28 = (*(a2 + 44) >> 23) & 1;
  if (*(v9 + 16 * v28 + 32))
  {
    v29 = (*(*a3 + 16))(a3);
    v30 = *(v29 + 4);
    if (*(v29 + 3) - v30 > 0xCuLL)
    {
      qmemcpy(v30, "thread_local ", 13);
      *(v29 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v29, "thread_local ", 0xDuLL);
    }

    v28 = (*(a2 + 44) >> 23) & 1;
  }

  (*(*a3 + 88))(a3, *(*(v9 + 16 * v28 + 24) + 16), *(*(v9 + 16 * v28 + 24) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v32 = *(AttrDictionary + 8);
  v33 = *(AttrDictionary + 16);
  v43[0] = "sym_name";
  v43[1] = 8;
  v34 = *(*(a2 + 48) + 96);
  v44 = *(*v34 + 16);
  v45 = *(v34[2] + 16);
  v35 = v34[5];
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  v46 = v37;
  v47 = v36;
  v48 = *(v34[4] + 16);
  v49 = *(v34[6] + 16);
  v50 = v37;
  v51 = v36;
  (*(*a3 + 192))(a3, v32, v33, v43, 7);
  v38 = (*(*a3 + 16))(a3);
  v39 = *(v38 + 4);
  if ((*(v38 + 3) - v39) > 2)
  {
    *(v39 + 2) = 32;
    *v39 = 14880;
    *(v38 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v38, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(v9 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8));
  v40 = (*(*a3 + 16))(a3);
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

  return (*(*a3 + 224))(a3, ((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, 1, 0);
}

uint64_t mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_45;
  }

  v6 = *(a1 + 11);
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v8 = (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  while (1)
  {
    if (v8 == *v8)
    {
      goto LABEL_11;
    }

    v9 = v8[1];
    if (v8 == v9 || v8 != *(v9 + 8))
    {
      break;
    }

    if (*(v9 + 24) == v9 + 24)
    {
      v41 = 257;
      mlir::Operation::emitOpError(&v42, a1, v40);
      if (v42)
      {
        mlir::Diagnostic::operator<<<26ul>(v43, "expects a non-empty block");
      }

      v12 = v44;
      goto LABEL_19;
    }

LABEL_11:
    ++v7;
    v8 += 3;
    if ((v6 & 0x7FFFFF) == v7)
    {
      goto LABEL_21;
    }
  }

  LODWORD(v38[0]) = v7;
  v40[0] = "expects region #";
  v41 = 259;
  mlir::Operation::emitOpError(&v42, a1, v40);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v42, v38);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
LABEL_19:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  if (v12)
  {
LABEL_45:
    v32 = 0;
    return v32 & 1;
  }

  LODWORD(v6) = *(a1 + 11);
LABEL_21:
  v13 = (a1 + 64);
  v14 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
  v15 = *v14;
  if (!*v14)
  {
    v23 = "requires attribute 'alias_type'";
    goto LABEL_36;
  }

  v16 = v14[2];
  if (!v16)
  {
    v23 = "requires attribute 'linkage'";
    goto LABEL_36;
  }

  v17 = v14[3];
  if (!v17)
  {
    v23 = "requires attribute 'sym_name'";
LABEL_36:
    v40[0] = v23;
    v41 = 259;
    mlir::Operation::emitOpError(&v42, a1, v40);
    v24 = v44;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    if (v24)
    {
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  v18 = v14[1];
  v20 = v14[4];
  v19 = v14[5];
  v21 = v14[6];
  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v15, "alias_type", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42))
  {
    goto LABEL_45;
  }

  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v17, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42))
  {
    goto LABEL_45;
  }

  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42))
  {
    goto LABEL_45;
  }

  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v18, "dso_local", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42))
  {
    goto LABEL_45;
  }

  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v20, "thread_local_", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42))
  {
    goto LABEL_45;
  }

  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42))
  {
    goto LABEL_45;
  }

  v42 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v21, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42) || !mlir::LLVM::__mlir_ods_local_region_constraint_LLVMOps1(a1, ((&v13[4 * ((*(a1 + 11) >> 23) & 1) + 1] + ((*(a1 + 11) >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "initializer", 11))
  {
    goto LABEL_45;
  }

LABEL_37:
  if (!mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::AliasOp>::verifyTrait(a1, v22))
  {
    goto LABEL_45;
  }

  isCompatibleOuterType = mlir::LLVM::isCompatibleOuterType(*(*&v13[4 * ((*(a1 + 11) >> 23) & 1)] + 8));
  v26 = *(*&v13[4 * ((*(a1 + 11) >> 23) & 1)] + 8);
  v27 = *v26;
  if (isCompatibleOuterType)
  {
    v28 = *(v27 + 136);
    if (v28 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID() || (v29 = *(*v26 + 136), v29 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID()) || (v30 = *(*v26 + 136), v30 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID()) || (v31 = *(*v26 + 136), v31 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID()))
    {
LABEL_43:
      v40[0] = "expects type to be a valid element type for an LLVM global alias";
      v41 = 259;
      mlir::Operation::emitOpError(&v42, a1, v40);
      goto LABEL_44;
    }
  }

  else
  {
    v34 = mlir::detail::TypeIDResolver<mlir::LLVM::PointerElementTypeInterface,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v34))
    {
      goto LABEL_43;
    }
  }

  v35 = *(*&v13[4 * ((*(a1 + 11) >> 23) & 1) + 4] + 8);
  if (v35 < 9 && ((0x19Fu >> v35) & 1) != 0)
  {
    v32 = 1;
  }

  else
  {
    v39 = 257;
    mlir::Operation::emitOpError(&v42, a1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<2ul>(v43, "'");
      if (v42)
      {
        v36 = mlir::LLVM::linkage::stringifyLinkage(*(*&v13[4 * ((*(a1 + 11) >> 23) & 1) + 4] + 8));
        v41 = 261;
        v40[0] = v36;
        v40[1] = v37;
        mlir::Diagnostic::operator<<(v43, v40);
        if (v42)
        {
          mlir::Diagnostic::operator<<<147ul>(v43);
        }
      }
    }

LABEL_44:
    v32 = v44 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  }

  return v32 & 1;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::AliasOp>::verifyTrait(mlir::detail *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((mlir::detail::verifySymbol(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 1;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v5 + 48) + 32))(*(v5 + 48), v6))
  {
    return 1;
  }

  v9 = *(*(v5 + 48) + 16);
  v7 = 1;
  if (v9 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v10 = "symbol's parent must have the SymbolTable trait";
    v11 = 259;
    mlir::Operation::emitOpError(v12, a1, &v10);
    v7 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v7;
}

uint64_t mlir::Op<mlir::LLVM::AliasOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::ReturnOp,void>::id)
        {
          v19 = 1283;
          v18[0] = "expects regions to end with '";
          v18[2] = "llvm.return";
          v18[3] = 11;
          v20[0] = v18;
          v20[2] = "', found '";
          v21 = 770;
          v14 = *(v8 + 8);
          v22 = v20;
          v23 = *(v14 + 16);
          v24 = 1282;
          v25[0] = &v22;
          v25[2] = "'";
          v26 = 770;
          mlir::Operation::emitOpError(&v29, this, v25);
          mlir::Diagnostic::attachNote(v30, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(this, a2))
  {
    v9 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10 + 32;
    v11 = *(v10 + 32);
    if ((*(v11 + 46) & 0x80) != 0 && *(v11 + 68) && *(*(*(*(*(v11 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
      v16 = *(v10 + 40);
      if (v16 == v12)
      {
        v13 = 1;
        return v13 & 1;
      }

      while (1)
      {
        v25[0] = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(v16);
        v25[1] = v17;
        if (!v25[0] || !mlir::MemoryEffectOpInterface::hasNoEffect(v25))
        {
          break;
        }

        v16 = *(v16 + 8);
        v13 = 1;
        if (v16 == v12)
        {
          return v13 & 1;
        }
      }

      v28 = 257;
      mlir::Operation::emitError(&v29, v16, v27);
      if (v29)
      {
        mlir::Diagnostic::operator<<<60ul>(v30, "ops with side effects are not allowed in alias initializers");
      }
    }

    else
    {
      v27[0] = "initializer region must always return a pointer";
      v28 = 259;
      mlir::Operation::emitOpError(&v29, this, v27);
    }

    v13 = v31 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 8)
  {
    if (*a3 == 0x61636F6C6C616E69)
    {
      v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      goto LABEL_16;
    }
  }

  else if (a4 == 9)
  {
    if (*a3 != 0x6E656D6E67696C61 || *(a3 + 8) != 116)
    {
      if (*a3 != 0x7079745F6D656C65 || *(a3 + 8) != 101)
      {
        goto LABEL_14;
      }

      v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    }

LABEL_16:
    v7 = *v4;
    v8 = v7 & 0xFFFFFFFFFFFFFF00;
    v7 = v7;
    return v8 | v7;
  }

LABEL_14:
  v7 = 0;
  v8 = 0;
  return v8 | v7;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 8)
  {
    if (*v5 == 0x61636F6C6C616E69)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v4[10] = v11;
    }
  }

  else if (v6 == 9)
  {
    if (*v5 == 0x6E656D6E67696C61 && *(v5 + 8) == 116)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

      v4[8] = v12;
    }

    else
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      if (v8 == 0x7079745F6D656C65 && v9 == 101)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

        v4[9] = v13;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v18 = 261;
    v16 = "alignment";
    v17 = 9;
    v9 = mlir::StringAttr::get(v8, &v16, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v18 = 261;
    v16 = "elem_type";
    v17 = 9;
    v12 = mlir::StringAttr::get(v11, &v16, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = *(**v13 + 32);
    v18 = 261;
    v16 = "inalloca";
    v17 = 8;
    v15 = mlir::StringAttr::get(v14, &v16, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v11, "alignment", 9, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v14, "elem_type", 9, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0)
      {
        return 1;
      }

      v17 = v15[1];
      if (!v17 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v17, "inalloca", 8, a4, a5))
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v25, a6, a2, a3);
    if (v25)
    {
      mlir::Diagnostic::operator<<<42ul>(v26, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "elem_type", 9uLL);
    if (v16)
    {
      v13 = *(v15 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          a5(&v25, a6);
          if (!v25)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        a3[1] = v13;
      }
    }

    v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "inalloca", 8uLL);
    if (v18)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v25, a6);
          if (!v25)
          {
            goto LABEL_4;
          }

          if (!v25)
          {
            goto LABEL_4;
          }

          v23 = 0;
          v24 = v19;
          goto LABEL_26;
        }

        a3[2] = v19;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  a5(&v25, a6);
  if (!v25)
  {
    goto LABEL_4;
  }

LABEL_17:
  mlir::Diagnostic::operator<<<55ul>(v26, v14);
  if (v25)
  {
    v23 = 0;
    v24 = v13;
LABEL_26:
    v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
    v21 = v27 + 24 * v28;
    v22 = *v20;
    *(v21 + 16) = *(v20 + 16);
    *v21 = v22;
    ++v28;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v22 = v24;
  v23 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v21 = 261;
    v19 = "alignment";
    v20 = 9;
    v9 = mlir::StringAttr::get(v8, &v19, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v22, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v21 = 261;
    v19 = "elem_type";
    v20 = 9;
    v12 = mlir::StringAttr::get(v11, &v19, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v22, v12, v10);
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = *(**v13 + 32);
    v21 = 261;
    v19 = "inalloca";
    v20 = 8;
    v15 = mlir::StringAttr::get(v14, &v19, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v22, v15, v13);
  }

  v16 = v22;
  if (v23)
  {
    v17 = mlir::DictionaryAttr::get(v3, v22, v23);
    v16 = v22;
  }

  else
  {
    v17 = 0;
  }

  if (v16 != v24)
  {
    free(v16);
  }

  return v17;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AllocaOp>::hashProperties(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = HIDWORD(a2[2]);
  v7 = 0x9DDFEA08EB382D69 * ((8 * a2[2] - 0xAE502812AA7333) ^ v6);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AllocaOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  v5 = v4[10];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t llvm::getTypeName<mlir::PromotableAllocationOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20760))
  {
    qword_27FC20750 = llvm::detail::getTypeNameImpl<mlir::PromotableAllocationOpInterface>();
    *algn_27FC20758 = v1;
    __cxa_guard_release(&qword_27FC20760);
  }

  return qword_27FC20750;
}

const char *llvm::detail::getTypeNameImpl<mlir::PromotableAllocationOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PromotableAllocationOpInterface]";
  v6 = 99;
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

void mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits::Model<mlir::LLVM::AllocaOp>::handleDestructuringComplete(mlir::Operation *this@<X1>, _BYTE *a2@<X8>)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v4 = *this;
    v3 = *(this + 1);
    *v3 = *this;
    *(v4 + 8) = v3;
    *this = 0;
    *(this + 1) = 0;
  }

  mlir::Operation::destroy(this);
  *a2 = 0;
  a2[16] = 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DestructurableAllocationOpInterface>();
      mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[16];
}

uint64_t llvm::getTypeName<mlir::DestructurableAllocationOpInterface>()
{
  {
    llvm::getTypeName<mlir::DestructurableAllocationOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DestructurableAllocationOpInterface>();
    *algn_27FC1B098 = v1;
  }

  return llvm::getTypeName<mlir::DestructurableAllocationOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestructurableAllocationOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestructurableAllocationOpInterface]";
  v6 = 103;
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

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::LLVM::AllocaOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2 - 16;
  v9 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>();
  v7 = 0;
  v6 = 0;
  v5 = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::AutomaticAllocationScopeResource *>(a3, &v9, &v8, &v7, &v6, &v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v12[10] = *MEMORY[0x277D85DE8];
  v12[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v12[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v12[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v12[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v12[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v12[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v12[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC20770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20770))
  {
    v8 = llvm::getTypeName<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>>();
    qword_27FC20768 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC20770);
  }

  v12[7] = qword_27FC20768;
  if ((atomic_load_explicit(&qword_27FC20798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20798))
  {
    v10 = llvm::getTypeName<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>>();
    qword_27FC20790 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v10, v11);
    __cxa_guard_release(&qword_27FC20798);
  }

  v12[8] = qword_27FC20790;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v12[9] = v3;
  do
  {
    v5 = v12[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20788))
  {
    qword_27FC20778 = llvm::detail::getTypeNameImpl<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>>();
    unk_27FC20780 = v1;
    __cxa_guard_release(&qword_27FC20788);
  }

  return qword_27FC20778;
}

const char *llvm::detail::getTypeNameImpl<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::PromotableAllocationOpInterface::Trait<Empty>]";
  v6 = 113;
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

uint64_t llvm::getTypeName<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC207B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC207B0))
  {
    qword_27FC207A0 = llvm::detail::getTypeNameImpl<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>>();
    *algn_27FC207A8 = v1;
    __cxa_guard_release(&qword_27FC207B0);
  }

  return qword_27FC207A0;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestructurableAllocationOpInterface::Trait<Empty>]";
  v6 = 117;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = *(***(a2 + 24) + 32);
  v8 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v32 = v8;
  v27 = a2;
  *&v28 = &v32 + 2;
  *(&v28 + 1) = 1;
  *&v33 = &v31 + 2;
  *(&v33 + 1) = 1;
  v9 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v7, &v28, &v33);
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16))
  {
    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if ((*(v10 + 3) - v11) > 8)
    {
      *(v11 + 8) = 97;
      *v11 = *" inalloca";
      *(v10 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " inalloca", 9uLL);
    }
  }

  v12 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 30752;
    *(v14 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, " x ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8));
  mlir::LLVM::AllocaOp::getAlignment(&v27);
  if ((v16 & 1) != 0 && mlir::LLVM::AllocaOp::getAlignment(&v27))
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v18 = *(AttrDictionary + 8);
    v19 = *(AttrDictionary + 16);
    *&v28 = "elem_type";
    *(&v28 + 1) = 9;
    v29 = *(*(*(*(a2 + 48) + 96) + 16) + 16);
    (*(*a3 + 192))(a3, v18, v19, &v28, 2);
  }

  else
  {
    v20 = mlir::Operation::getAttrDictionary(a2);
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(*(a2 + 48) + 96);
    v28 = *(*v23 + 16);
    *&v29 = "elem_type";
    *(&v29 + 1) = 9;
    v30 = *(v23[2] + 16);
    (*(*a3 + 192))(a3, v21, v22, &v28, 3);
  }

  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if ((*(v24 + 3) - v25) > 2)
  {
    *(v25 + 2) = 32;
    *v25 = 14880;
    *(v24 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v24, " : ", 3uLL);
  }

  return (*(*a3 + 32))(a3, v9);
}

uint64_t mlir::Op<mlir::LLVM::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::LLVM::LLVMPointerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *(v6 + 8);
  if (!v7)
  {
    v15[0] = "requires attribute 'elem_type'";
    v16 = 259;
    mlir::Operation::emitOpError(&v18, a1, v15);
    v13 = v20;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v11 = 0;
    return v11 & 1;
  }

  v8 = *v6;
  v9 = *(v6 + 16);
  v18 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v8, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v18))
  {
    goto LABEL_14;
  }

  v18 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v7, "elem_type", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v18))
  {
    goto LABEL_14;
  }

  v18 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v9, "inalloca", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v18) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps4(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0))
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 36) ? a1 - 16 : 0;
  if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(a1, *(v10 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    goto LABEL_14;
  }

LABEL_17:
  v14 = *(*(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) + 8);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
  {
    v14 = 0;
  }

  v17 = v14;
  if (v14 && !mlir::LLVM::LLVMTargetExtType::supportsMemOps(&v17))
  {
    v16 = 257;
    mlir::Operation::emitOpError(&v18, a1, v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<52ul>(&v19, "this target extension type cannot be used in alloca");
    }

    v11 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AndOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0x400000000;
  v19 = v21;
  if (mlir::LLVM::AndOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &v19))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
    v24 = v20;
    v22[0] = v14;
    v22[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22))
    {
      v15 = 1;
    }

    else
    {
      v23 = "llvm.and";
      v24 = 8;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AndOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[10] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

  v11 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v14 = (*(*a3 + 16))(a3);
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

  v16 = (*(*a3 + 16))(a3);
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

  v18 = (*(*a3 + 16))(a3);
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

  if (*(a2 + 36))
  {
    v20 = a2 - 16;
  }

  else
  {
    v20 = 0;
  }

  (*(*a3 + 32))(a3, *(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v7 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 12)
  {
    if (a4 == 16)
    {
      if (*a3 == 0x5F6572756C696166 && a3[1] == 0x676E69726564726FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      }

      else
      {
        if (*a3 != 0x5F73736563637573 || a3[1] != 0x676E69726564726FLL)
        {
          goto LABEL_51;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      goto LABEL_57;
    }

    if (a4 == 14)
    {
      if (*a3 != 0x5F7361696C616F6ELL || *(a3 + 6) != 0x7365706F63735F73)
      {
        goto LABEL_51;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      goto LABEL_57;
    }

    v6 = 0;
    if (a4 == 13)
    {
      if (*a3 != 0x675F737365636361 || *(a3 + 5) != 0x7370756F72675F73)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if (a4 == 4)
    {
      if (*a3 == 1633772148)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
      }

      else
      {
        if (*a3 != 1801545079)
        {
LABEL_51:
          v4 = 0;
          v6 = 0;
          return v6 | v4;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
      }

LABEL_57:
      v15 = *v5;
      v6 = v15 & 0xFFFFFFFFFFFFFF00;
      v4 = v15;
      return v6 | v4;
    }

    if (a4 == 9)
    {
      if (*a3 == 0x6E656D6E67696C61 && *(a3 + 8) == 116)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      else if (*a3 == 0x706F6373636E7973 && *(a3 + 8) == 101)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
      }

      else
      {
        if (*a3 != 0x656C6974616C6F76 || *(a3 + 8) != 95)
        {
          goto LABEL_51;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
      }

      goto LABEL_57;
    }

    v6 = 0;
    if (a4 == 12)
    {
      if (*a3 != 0x63735F7361696C61 || *(a3 + 2) != 1936027759)
      {
        goto LABEL_51;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      goto LABEL_57;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 > 12)
  {
    switch(v7)
    {
      case 16:
        if (*v6 == 0x5F6572756C696166 && v6[1] == 0x676E69726564726FLL)
        {
          if (a4)
          {
            if (mlir::LLVM::AtomicOrderingAttr::classof(a4))
            {
              v33 = a4;
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v5[11] = v33;
        }

        else
        {
          v19 = *v6;
          v18 = v6[1];
          if (v19 == 0x5F73736563637573 && v18 == 0x676E69726564726FLL)
          {
            if (a4)
            {
              if (mlir::LLVM::AtomicOrderingAttr::classof(a4))
              {
                v21 = a4;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
            }

            v5[13] = v21;
          }
        }

        break;
      case 14:
        v28 = *v6;
        v29 = *(v6 + 6);
        if (v28 == 0x5F7361696C616F6ELL && v29 == 0x7365706F63735F73)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v31 = a4;
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
          }

          v5[12] = v31;
        }

        break;
      case 13:
        v12 = *v6;
        v13 = *(v6 + 5);
        if (v12 == 0x675F737365636361 && v13 == 0x7370756F72675F73)
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

          v5[8] = v15;
        }

        break;
    }
  }

  else
  {
    switch(v7)
    {
      case 4:
        if (*v6 == 1633772148)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v32 = a4;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v5[15] = v32;
        }

        else if (*v6 == 1801545079)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

          v5[17] = v16;
        }

        break;
      case 9:
        if (*v6 == 0x6E656D6E67696C61 && *(v6 + 8) == 116)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v34 = a4;
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }

          v5[10] = v34;
        }

        else if (*v6 == 0x706F6373636E7973 && *(v6 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v35 = a4;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
          }

          v5[14] = v35;
        }

        else
        {
          v24 = *v6;
          v25 = *(v6 + 8);
          if (v24 == 0x656C6974616C6F76 && v25 == 95)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v27 = a4;
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v27 = 0;
            }

            v5[16] = v27;
          }
        }

        break;
      case 12:
        v8 = *v6;
        v9 = *(v6 + 2);
        if (v8 == 0x63735F7361696C61 && v9 == 1936027759)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v5[9] = v11;
        }

        break;
    }
  }
}