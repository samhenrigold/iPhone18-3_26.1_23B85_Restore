BOOL mlir::ODIE::Compiler::Exec::CallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v10, "identifier", 0xA, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v13, "isDispatch", 0xA, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(v16, "output_intents", 0xE, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
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
        mlir::Diagnostic::operator<<<49ul>(v15, "' failed to satisfy constraint: array of intents");
      }
    }
  }

  v7 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v7;
}

BOOL mlir::ODIE::Compiler::Exec::CallOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 3)
    {
      v6 = "size mismatch for operand/result_segment_size";
      v7 = 259;
      (*(*a1 + 16))(v9, a1, &v6);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
      return 0;
    }

    v4 = *(v8 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 2uLL) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 24, 2);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 2);
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::CallOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a6, 0, a6, a7);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a9, 0, a9, a10);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 24) = v12 | (a10 << 32);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) = a5;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 16) = a11;
  if (a12)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 8) = a12;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a2 + 8), a3, 0, a3, a4);
}

void mlir::ODIE::Compiler::Exec::CallOp::build(mlir::StringAttr **a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = a8;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a7, 0, a7, a8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a9, 0, a9, a10);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 24) = v12 | (a10 << 32);
  v18 = *a1;
  v26 = 261;
  v25[0] = a5;
  v25[1] = a6;
  v20 = mlir::StringAttr::get(v18, v25, v19);
  v22 = mlir::SymbolRefAttr::get(v20, 0, 0, v21);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) = v22;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 16) = a11;
  if (a12)
  {
    v23 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 8) = v23;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a2 + 8), a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::verifyInvariantsImpl(unsigned int **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (!v6)
  {
    v32 = "requires attribute 'identifier'";
LABEL_32:
    v34 = v32;
    v35 = 259;
    mlir::Operation::emitOpError(v36, v2, &v34);
    v30 = v37 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    return v30 & 1;
  }

  v7 = *(v5 + 2);
  if (!v7)
  {
    v32 = "requires attribute 'output_intents'";
    goto LABEL_32;
  }

  v8 = *(v5 + 1);
  v36[0] = v2;
  if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v4, "identifier", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
  {
    v36[0] = *this;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(v7, "output_intents", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
    {
      v36[0] = *this;
      if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v8, "isDispatch", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        v9 = (*this)[11];
        v10 = (*this)[4 * ((v9 >> 23) & 1) + 22];
        if ((v9 & 0x800000) != 0)
        {
          v11 = *(*this + 9);
          if (v10)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v11 = 0;
          if (v10)
          {
LABEL_8:
            v12 = 0;
            v13 = v11 + 24;
            while (mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
            {
              ++v12;
              v13 += 32;
              if (v10 == v12)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_30;
          }
        }

LABEL_11:
        ODSOperands = mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(this, 1u);
        if (v15)
        {
          v16 = v15;
          v17 = ODSOperands + 24;
          while (mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
          {
            LODWORD(v10) = v10 + 1;
            v17 += 32;
            if (!--v16)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_30;
        }

LABEL_15:
        v18 = *this;
        v19 = (*this)[9];
        v20 = *this - 4;
        if ((*this)[9])
        {
          v21 = *this - 4;
        }

        else
        {
          v21 = 0;
        }

        if (!v19)
        {
          v30 = 1;
          return v30 & 1;
        }

        v22 = 0;
        v23 = v19 - 1;
        v24 = *this - 4;
        while (1)
        {
          v25 = v21;
          if (!v22)
          {
            goto LABEL_25;
          }

          v26 = *(v18 - 1) & 7;
          v27 = v20;
          v28 = v22;
          if (v26 != 6)
          {
            v29 = (5 - v26);
            v25 = v24;
            v28 = v22 - v29;
            if (v22 <= v29)
            {
              goto LABEL_25;
            }

            v27 = &v20[-4 * v29];
          }

          v25 = &v27[-6 * v28];
LABEL_25:
          v30 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(v25 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, v22);
          if (v30)
          {
            v24 -= 4;
            if (v23 != v22++)
            {
              continue;
            }
          }

          return v30 & 1;
        }
      }
    }
  }

LABEL_30:
  v30 = 0;
  return v30 & 1;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v26 = a5;
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v11 = *(a2 + 2) - 1;
    v12 = v11 > 0x3F;
    v13 = (1 << v11) & 0x8000000080000001;
    if (!v12 && v13 != 0)
    {
      return 1;
    }
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      return 1;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = llvm::cast<mlir::ShapedType,mlir::Type>(&v27);
      (*(v10 + 8))(v10, v9);
      return 1;
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    return 1;
  }

  v25 = 261;
  v24[0] = a3;
  v24[1] = a4;
  mlir::Operation::emitOpError(&v28, a1, v24);
  if (v28)
  {
    mlir::Diagnostic::operator<<<3ul>(v29, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v26);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<352ul>((v20 + 1));
    if (*v21)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>((v21 + 1), &v27);
    }
  }

  v22 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  return v22;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::verify(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = &v1[4 * ((v1[11] >> 23) & 1) + 16];
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v5 = v1[9];
  if (v4 == v5)
  {
    if (!*(v2 + 8))
    {
      goto LABEL_12;
    }

    if (v4)
    {
      v6 = *(v3 + 8);
      v7 = 8 * v4;
      while (*(*v6 + 8) == 2)
      {
        v6 += 8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v8 = "must only have 'return' output intents";
      goto LABEL_11;
    }

LABEL_7:
    if (v5 == 1 && *(*(*(v1 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id)
    {
LABEL_12:
      v9 = 1;
      return v9 & 1;
    }

    v8 = "must return a single !exec.task<...> when dispatching";
  }

  else
  {
    v8 = "missing output intents";
  }

LABEL_11:
  v11 = v8;
  v12 = 259;
  mlir::Operation::emitOpError(v13, v1, &v11);
  v9 = v14 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  return v9 & 1;
}

BOOL mlir::ODIE::Compiler::Exec::CallOp::parse(uint64_t *a1, uint64_t a2)
{
  v30[16] = *MEMORY[0x277D85DE8];
  v28 = v30;
  v29 = 0x400000000;
  v24 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v22 = 0;
  v23 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v18 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &v18);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v24, v6))
  {
    goto LABEL_23;
  }

  if (v24)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2);
    *v8 = v24;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v28, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (((*(*a1 + 408))(a1, "outs", 4) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1)) && (v21 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v9 = *(a2 + 8), v18 = a1, v19 = &v21, v20 = a2, mlir::ODIE::Compiler::Exec::CallOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v18)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v21 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v21)))
  {
    v10 = *(v21 + 8);
    v11 = *(v21 + 12);
    v22 = *(v21 + 16);
    v23 = v10;
    v12 = (v22 + 8 * v10);
    v13 = v29;
    v14 = v26;
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 24) = v13 | (v14 << 32);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v12, &v12[8 * v11]);
    v18 = &v28;
    v19 = &v25;
    v15 = (*(*a1 + 16))(a1);
    v16 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v18, &v22, v15, a2 + 16);
  }

  else
  {
LABEL_23:
    v16 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v16;
}

void mlir::ODIE::Compiler::Exec::CallOp::print(mlir::ODIE::Compiler::Exec::CallOp *this, mlir::OpAsmPrinter *a2)
{
  v67[4] = *MEMORY[0x277D85DE8];
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72))
  {
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

    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x6863746170736964;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, "dispatch", 8uLL);
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
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "<", 1uLL);
  }

  else
  {
    *v11 = 60;
    ++*(v10 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    *v15 = 40;
    ++*(v14 + 4);
  }

  v16 = *(*this + 44);
  v17 = *(*this + 16 * ((v16 >> 23) & 1) + 88);
  if ((v16 & 0x800000) != 0)
  {
    v18 = *(*this + 72);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(*a2 + 16))(a2);
  if (v17)
  {
    v20 = v19;
    (*(*a2 + 160))(a2, *(v18 + 24));
    if (v17 != 1)
    {
      v21 = v17 - 1;
      v22 = (v18 + 56);
      do
      {
        v23 = *(v20 + 4);
        if (*(v20 + 3) - v23 > 1uLL)
        {
          *v23 = 8236;
          *(v20 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v20, ", ", 2uLL);
        }

        v24 = *v22;
        v22 += 4;
        (*(*a2 + 160))(a2, v24);
        --v21;
      }

      while (v21);
    }
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ")", 1uLL);
  }

  else
  {
    *v26 = 41;
    ++*(v25 + 4);
  }

  mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(this, 1u);
  if (v27)
  {
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

    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) - v31 > 3uLL)
    {
      *v31 = 1937012079;
      *(v30 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v30, "outs", 4uLL);
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
    if (*(v34 + 3) == v35)
    {
      llvm::raw_ostream::write(v34, "=", 1uLL);
    }

    else
    {
      *v35 = 61;
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
    if (*(v38 + 3) == v39)
    {
      llvm::raw_ostream::write(v38, "(", 1uLL);
    }

    else
    {
      *v39 = 40;
      ++*(v38 + 4);
    }

    ODSOperands = mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(this, 1u);
    v42 = v41;
    v43 = (*(*a2 + 16))(a2);
    if (v42)
    {
      v44 = v43;
      (*(*a2 + 160))(a2, *(ODSOperands + 24));
      v45 = v42 - 1;
      if (v45)
      {
        v46 = (ODSOperands + 56);
        do
        {
          v47 = *(v44 + 4);
          if (*(v44 + 3) - v47 > 1uLL)
          {
            *v47 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v48 = *v46;
          v46 += 4;
          (*(*a2 + 160))(a2, v48);
          --v45;
        }

        while (v45);
      }
    }

    v49 = (*(*a2 + 16))(a2);
    v50 = *(v49 + 4);
    if (*(v49 + 3) == v50)
    {
      llvm::raw_ostream::write(v49, ")", 1uLL);
    }

    else
    {
      *v50 = 41;
      ++*(v49 + 4);
    }
  }

  v65 = v67;
  v66 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "isDispatch", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "identifier", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v65, v66);
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

  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ":", 1uLL);
  }

  else
  {
    *v55 = 58;
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

  v58 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v59 = *(v58 + 72);
    v60 = *(v58 + 68);
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v64[0] = v59;
  v64[1] = 0;
  v64[2] = v59;
  v64[3] = v60;
  v61 = *(v58 + 36);
  v62 = v58 - 16;
  if (!v61)
  {
    v62 = 0;
  }

  v63[0] = v62;
  v63[1] = 0;
  v63[2] = v62;
  v63[3] = v61;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v64, v63);
  if (v65 != v67)
  {
    free(v65);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "alignment", 9uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v24, a4);
        if (!v24)
        {
          goto LABEL_4;
        }

LABEL_16:
        if (v24)
        {
          v22 = 0;
          v23 = v11;
LABEL_18:
          v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
          v15 = v26 + 24 * v27;
          v16 = *v14;
          *(v15 + 16) = *(v14 + 16);
          *v15 = v16;
          ++v27;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
        return 0;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
  if (v13)
  {
    v11 = *(v12 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v24, a4);
        if (!v24)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      a1[1] = v11;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "value", 5uLL);
  if (v18)
  {
    v19 = *(v17 + 8);
    if (v19)
    {
      v20 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v17 + 8));
      if (!v20)
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
        v23 = v19;
        goto LABEL_18;
      }

      a1[2] = v20;
      a1[3] = v21;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "alignment";
    v18 = 9;
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
    v17 = "value";
    v18 = 5;
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

unint64_t mlir::ODIE::Compiler::Exec::ConstOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::Exec::ConstOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5)
  {
    if (*a3 != 1970037110 || *(a3 + 4) != 101)
    {
      goto LABEL_16;
    }

    v5 = a2[2];
    goto LABEL_18;
  }

  if (a4 != 8)
  {
    if (a4 != 9)
    {
      goto LABEL_16;
    }

    if (*a3 != 0x6E656D6E67696C61 || *(a3 + 8) != 116)
    {
      goto LABEL_16;
    }

    v5 = *a2;
LABEL_18:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v5 = a2[1];
    goto LABEL_18;
  }

LABEL_16:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

uint64_t *mlir::ODIE::Compiler::Exec::ConstOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3 == 5)
  {
    if (*a2 == 1970037110 && *(a2 + 4) == 101)
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

      v4[2] = result;
      v4[3] = v9;
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

      result[1] = v7;
    }
  }

  else if (a3 == 9 && *a2 == 0x6E656D6E67696C61 && *(a2 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

void mlir::ODIE::Compiler::Exec::ConstOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "alignment";
    v15 = 9;
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
    v14 = "value";
    v15 = 5;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::Exec::ConstOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(v10, "alignment", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v13, "sym_name", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(v16, "value", 5, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(uint64_t *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v9 = *a1;
  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    return 1;
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
        mlir::Diagnostic::operator<<<51ul>(v16, "' failed to satisfy constraint: TypedAttr instance");
      }
    }
  }

  v11 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v11;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(mlir::ODIE::Compiler::Exec::ConstOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void *mlir::ODIE::Compiler::Exec::ConstOp::build(mlir::StringAttr **a1, void *a2, const llvm::Twine *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  v11 = mlir::StringAttr::get(*a1, v13, a3);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2) + 8) = v11;
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
  result[2] = a5;
  result[3] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::ConstOp::verifyInvariantsImpl(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 16;
  if (!v4)
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

  v7 = *(v5 + 2);
  if (!v7)
  {
    v9 = "requires attribute 'value'";
    goto LABEL_9;
  }

  v13[0] = v2;
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v13[0] = *this;
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(v7, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v13[0] = *this;
  return mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(v6, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13);
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::parse(mlir::AsmParser *a1, void *a2)
{
  v11 = 0;
  v10 = 0uLL;
  if ((mlir::AsmParser::parseSymbolName(a1, &v11) & 1) == 0)
  {
    return 0;
  }

  if (v11)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
    *(v4 + 8) = v11;
  }

  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v10, 0))
  {
    return 0;
  }

  if (v10)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
    *(v5 + 16) = v10;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) != 0 && (v6 = a2[1], v8[0] = a1, v8[1] = &v9, v8[2] = a2, mlir::ODIE::Compiler::Exec::ConstOp::verifyInherentAttrs(v6, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::Exec::ConstOp::print(mlir::ODIE::Compiler::Exec::ConstOp *this, mlir::OpAsmPrinter *a2)
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

  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
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

  ValueAttr = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(this);
  (*(*a2 + 40))(a2, ValueAttr);
  v11 = v13;
  v12 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v11, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v11, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "index", 5uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "index";
  v10[1] = 5;
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

unint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::Exec::ContextExtractOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1701080681 && *(a2 + 4) == 120)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

void mlir::ODIE::Compiler::Exec::ContextExtractOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ContextExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(a2) = a5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

BOOL mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = "requires attribute 'index'";
    v8 = 259;
    mlir::Operation::emitOpError(v9, v2, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    return 1;
  }

  v13 = 261;
  v12[0] = a3;
  v12[1] = a4;
  mlir::Operation::emitOpError(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<3ul>(v18, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<55ul>((v5 + 1), " must be A type represents a context object., but got ");
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

BOOL mlir::ODIE::Compiler::Exec::ContextExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12 = 0;
  v18 = v20;
  v19 = 0x100000000;
  __src = &v17;
  v16 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v12, *(**v4 + 472)))
  {
    goto LABEL_14;
  }

  if (v12)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(a2);
    *v5 = v12;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v18) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v6 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v16);
    v7 = (*(*a1 + 16))(a1);
    v8 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v13, 1, v18, v19, v7, a2 + 16);
  }

  else
  {
LABEL_14:
    v8 = 0;
  }

  if (__src != &v17)
  {
    free(__src);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v8;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  v20 = a3;
  if (a5 == a3)
  {
    if (a3)
    {
      v9 = a4;
      v11 = 32 * a3;
      while (((*(*a1 + 728))(a1, a2, *v9, a7) & 1) != 0)
      {
        a2 += 32;
        ++v9;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v18[16] = 257;
    (*(*a1 + 24))(&v21, a1, a6, v18, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<48ul>(v22, "number of operands and types do not match: got ");
    }

    v13 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v21, &v20);
    v14 = v13;
    if (*v13)
    {
      mlir::Diagnostic::operator<<<15ul>((v13 + 1), " operands and ");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v14, &v19);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<7ul>((v15 + 1), " types");
    }

    v12 = (v16[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  return v12;
}

void mlir::ODIE::Compiler::Exec::ContextExtractOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v46[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v16 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v17 = *(v16 + 17);
    if (v17)
    {
      v18 = v16[9];
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

  v43 = this;
  v30 = *this;
  v31 = *(*this + 9);
  if (v31)
  {
    v32 = *this - 16;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    (*(*a2 + 32))(a2, *(v30 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v31 != 1)
    {
      v33 = v32 - 16;
      v34 = 1;
      while (1)
      {
        v35 = (*(*a2 + 16))(a2);
        v36 = *(v35 + 4);
        if (*(v35 + 3) - v36 > 1uLL)
        {
          *v36 = 8236;
          *(v35 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v35, ", ", 2uLL);
        }

        v37 = *(v30 - 1) & 7;
        v38 = v32;
        v39 = v34;
        if (v37 == 6)
        {
          goto LABEL_48;
        }

        v40 = (5 - v37);
        v41 = v33;
        v39 = v34 - v40;
        if (v34 > v40)
        {
          break;
        }

LABEL_49:
        (*(*a2 + 32))(a2, *(v41 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v34;
        v33 -= 16;
        if (v31 == v34)
        {
          goto LABEL_50;
        }
      }

      v38 = &v32[-16 * v40];
LABEL_48:
      v41 = &v38[-24 * v39];
      goto LABEL_49;
    }
  }

LABEL_50:
  v44 = v46;
  v45 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*v43);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, v45);
  if (v44 != v46)
  {
    free(v44);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "index", 5uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "index";
  v10[1] = 5;
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

unint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::Exec::ContextInsertOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1701080681 && *(a2 + 4) == 120)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

void mlir::ODIE::Compiler::Exec::ContextInsertOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ContextInsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(a2) = a6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

BOOL mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(*this, *(v4 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = "requires attribute 'index'";
    v8 = 259;
    mlir::Operation::emitOpError(v9, v2, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::Exec::ContextInsertOp::parse(uint64_t *a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v24[0] = v25;
  v24[1] = 0x100000000;
  v21 = &v23;
  v22 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, *(**v4 + 472)))
  {
    goto LABEL_16;
  }

  if (v17)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(a2);
    *v5 = v17;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v15, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v24) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v21) & 1) != 0 && (v13 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v6 = *(a2 + 8), v10 = a1, v11 = &v13, v12 = a2, mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextInsertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v10)))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v21, &v21[v22]);
    v10 = v18;
    v11 = v14;
    v7 = (*(*a1 + 16))(a1);
    v8 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v24, v7, a2 + 16);
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  return v8;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(a2);
  v27 = *(a3 + 2);
  v28 = v10;
  if (v10 == v27)
  {
    v11 = a2[1];
    v12 = **a2;
    v13 = v12 + 32 * (*a2)[1];
    v14 = *v11;
    v15 = *v11 + 32 * v11[1];
    v16 = *a3;
    v29 = v12;
    v30 = v14;
    v31 = v13;
    v32 = v15;
    v33 = v16;
    while (v12 != v13 || v14 != v15 || v31 != v13 || v32 != v15)
    {
      v18 = llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::deref<0ul,1ul>(&v29);
      if (((*(*a1 + 728))(a1, v18, *v19, a5) & 1) == 0)
      {
        return 0;
      }

      llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::tup_inc<0ul,1ul>(&v29);
      v12 = v29;
      v14 = v30;
    }

    return 1;
  }

  else
  {
    v26[16] = 257;
    (*(*a1 + 24))(&v29, a1, a4, v26);
    if (v29)
    {
      mlir::Diagnostic::operator<<<48ul>(&v30, "number of operands and types do not match: got ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v29, &v28);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<15ul>((v20 + 1), " operands and ");
    }

    v22 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v21, &v27);
    v23 = v22;
    if (*v22)
    {
      mlir::Diagnostic::operator<<<7ul>((v22 + 1), " types");
    }

    v24 = (v23[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  return v24;
}

void mlir::ODIE::Compiler::Exec::ContextInsertOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v52[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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
    llvm::raw_ostream::write(v12, "=", 1uLL);
  }

  else
  {
    *v13 = 61;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
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

  v22 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v23 = *(v22 + 17);
    if (v23)
    {
      v24 = v22[9];
      (*(*a2 + 32))(a2, *(*(v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v23 != 1)
      {
        v25 = v23 - 1;
        v26 = (v24 + 56);
        do
        {
          v27 = (*(*a2 + 16))(a2);
          v28 = *(v27 + 4);
          if (*(v27 + 3) - v28 > 1uLL)
          {
            *v28 = 8236;
            *(v27 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v27, ", ", 2uLL);
          }

          v29 = *v26;
          v26 += 4;
          (*(*a2 + 32))(a2, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v25;
        }

        while (v25);
      }
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
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 15917;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, "->", 2uLL);
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

  v49 = this;
  v36 = *this;
  v37 = *(*this + 9);
  if (v37)
  {
    v38 = *this - 16;
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    (*(*a2 + 32))(a2, *(v36 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v37 != 1)
    {
      v39 = v38 - 16;
      v40 = 1;
      while (1)
      {
        v41 = (*(*a2 + 16))(a2);
        v42 = *(v41 + 4);
        if (*(v41 + 3) - v42 > 1uLL)
        {
          *v42 = 8236;
          *(v41 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v41, ", ", 2uLL);
        }

        v43 = *(v36 - 1) & 7;
        v44 = v38;
        v45 = v40;
        if (v43 == 6)
        {
          goto LABEL_57;
        }

        v46 = (5 - v43);
        v47 = v39;
        v45 = v40 - v46;
        if (v40 > v46)
        {
          break;
        }

LABEL_58:
        (*(*a2 + 32))(a2, *(v47 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v40;
        v39 -= 16;
        if (v37 == v40)
        {
          goto LABEL_59;
        }
      }

      v44 = &v38[-16 * v46];
LABEL_57:
      v47 = &v44[-24 * v45];
      goto LABEL_58;
    }
  }

LABEL_59:
  v50 = v52;
  v51 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*v49);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v50, v51);
  if (v50 != v52)
  {
    free(v50);
  }
}

void mlir::ODIE::Compiler::Exec::CopyOp::build(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::ODIE::Compiler::Exec::CopyOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::CopyOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

void mlir::ODIE::Compiler::Exec::CopyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::CopyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::Exec::CopyOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8 = 0;
  v9 = 0;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "outs", 4, v16) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
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

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v7))
  {
    return 0;
  }

  v4 = *(v7 + 8);
  v8 = *(v7 + 16);
  v9 = v4;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v8 + 8 * v4), (v8 + 8 * v4 + 8 * *(v7 + 12)));
  v16[0] = v13;
  v16[1] = v10;
  v5 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v16, &v8, v5, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(a2);
  v27 = a3[1];
  v28 = v10;
  if (v10 == v27)
  {
    v11 = a2[1];
    v12 = **a2;
    v13 = v12 + 32 * (*a2)[1];
    v14 = *v11;
    v15 = *v11 + 32 * v11[1];
    v16 = *a3;
    v29 = v12;
    v30 = v14;
    v31 = v13;
    v32 = v15;
    v33 = v16;
    while (v12 != v13 || v14 != v15 || v31 != v13 || v32 != v15)
    {
      v18 = llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::deref<0ul,1ul>(&v29);
      if (((*(*a1 + 728))(a1, v18, *v19, a5) & 1) == 0)
      {
        return 0;
      }

      llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::tup_inc<0ul,1ul>(&v29);
      v12 = v29;
      v14 = v30;
    }

    return 1;
  }

  else
  {
    v26[16] = 257;
    (*(*a1 + 24))(&v29, a1, a4, v26);
    if (v29)
    {
      mlir::Diagnostic::operator<<<48ul>(&v30, "number of operands and types do not match: got ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v29, &v28);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<15ul>((v20 + 1), " operands and ");
    }

    v22 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v21, &v27);
    v23 = v22;
    if (*v22)
    {
      mlir::Diagnostic::operator<<<7ul>((v22 + 1), " types");
    }

    v24 = (v23[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  return v24;
}

void mlir::ODIE::Compiler::Exec::CopyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v38[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
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

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 3uLL)
  {
    *v11 = 1937012079;
    *(v10 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v10, "outs", 4uLL);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "=", 1uLL);
  }

  else
  {
    *v15 = 61;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ")", 1uLL);
  }

  else
  {
    *v21 = 41;
    ++*(v20 + 4);
  }

  v36 = v38;
  v37 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v38, 0);
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

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++*(v25 + 4);
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v30 = *(v29 + 9);
    v31 = *(v29 + 17);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35[0] = v30;
  v35[1] = 0;
  v35[2] = v30;
  v35[3] = v31;
  v32 = *(v29 + 9);
  v33 = v29 - 16;
  if (!v32)
  {
    v33 = 0;
  }

  v34[0] = v33;
  v34[1] = 0;
  v34[2] = v33;
  v34[3] = v32;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v35, v34);
  if (v36 != v38)
  {
    free(v36);
  }
}

void mlir::ODIE::Compiler::Exec::GetTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::GetTypeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps2(*this, *(v4 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::GetTypeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
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

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v8))
  {
    return 0;
  }

  v5 = *(v8 + 8);
  v4 = *(v8 + 12);
  v9[0] = *(v8 + 16);
  v9[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v9[0] + 8 * v5), (v9[0] + 8 * v5 + 8 * v4));
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v9, v6, a2 + 16);
}

void mlir::ODIE::Compiler::Exec::GetTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++*(v6 + 4);
  }

  v22 = v24;
  v23 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, 0);
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
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
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

  v15 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v16 = *(v15 + 9);
    v17 = *(v15 + 17);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v21[0] = v16;
  v21[1] = 0;
  v21[2] = v16;
  v21[3] = v17;
  v18 = *(v15 + 9);
  v19 = v15 - 16;
  if (!v18)
  {
    v19 = 0;
  }

  v20[0] = v19;
  v20[1] = 0;
  v20[2] = v19;
  v20[3] = v18;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v21, v20);
  if (v22 != v24)
  {
    free(v22);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "identifier", 0xAuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v10[3])
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

uint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "identifier";
  v10[1] = 10;
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

unint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x696669746E656469 ? (v4 = *(a3 + 8) == 29285) : (v4 = 0), v4))
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

void *mlir::ODIE::Compiler::Exec::InferTypeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 10 && *a2 == 0x696669746E656469 && *(a2 + 8) == 29285)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      if (a4[3])
      {
        v5 = 0;
      }

      else
      {
        v5 = a4;
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

void mlir::ODIE::Compiler::Exec::InferTypeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "identifier";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v8, "identifier", 0xA, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InferTypeOp::build(mlir::StringAttr **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  v14 = *a1;
  v20 = 261;
  v19[0] = a7;
  v19[1] = a8;
  v16 = mlir::StringAttr::get(v14, v19, v15);
  v18 = mlir::SymbolRefAttr::get(v16, 0, 0, v17);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(a2) = v18;

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a2 + 8), a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v32 = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v3, "identifier", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v32))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = *(v4 + 17);
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 9) + 24;
          do
          {
            if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v6))
            {
              return 0;
            }

            ++v6;
            v7 += 32;
          }

          while (v5 != v6);
          v4 = *this;
        }
      }

      v8 = *(v4 + 9);
      if (*(v4 + 9))
      {
        v9 = v4 - 16;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = 0;
        for (i = v9; ; i -= 16)
        {
          v12 = v9;
          if (v10)
          {
            v13 = *(v4 - 1) & 7;
            v14 = v4 - 16;
            v15 = v10;
            if (v13 == 6)
            {
              goto LABEL_18;
            }

            v16 = (5 - v13);
            v12 = i;
            v15 = v10 - v16;
            if (v10 > v16)
            {
              break;
            }
          }

LABEL_19:
          v17 = *this;
          v18 = *(v12 + 1) & 0xFFFFFFFFFFFFFFF8;
          v29 = v10;
          if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id)
          {
            v28 = 261;
            v27[0] = "result";
            v27[1] = 6;
            mlir::Operation::emitOpError(&v32, v17, v27);
            if (v32)
            {
              mlir::Diagnostic::operator<<<3ul>(v33, " #");
            }

            v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
            v20 = v19;
            if (*v19)
            {
              mlir::Diagnostic::operator<<<66ul>((v19 + 1), " must be variadic of A type reified as a runtime value., but got ");
              if (*v20)
              {
                v30 = 4;
                v31 = v18;
                v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v30, 1);
                v22 = v20[3] + 24 * *(v20 + 8);
                v23 = *v21;
                *(v22 + 16) = *(v21 + 16);
                *v22 = v23;
                ++*(v20 + 8);
              }
            }

            v24 = *(v20 + 200);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
            if (v24)
            {
              return 0;
            }
          }

          if (v8 == ++v10)
          {
            return 1;
          }
        }

        v14 = &v9[-16 * v16];
LABEL_18:
        v12 = &v14[-24 * v15];
        goto LABEL_19;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v27[0] = "requires attribute 'identifier'";
    v28 = 259;
    mlir::Operation::emitOpError(&v32, v2, v27);
    v25 = (v33[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::Exec::InferTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v15 = 0;
  v16 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v17, v5))
  {
    goto LABEL_16;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v17;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v13[0] = a1, v13[1] = &v14, v13[2] = a2, mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InferTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v13[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v13)))
  {
    v9 = *(v13[0] + 8);
    v15 = *(v13[0] + 16);
    v16 = v9;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v15 + 8 * v9), (v15 + 8 * v9 + 8 * *(v13[0] + 12)));
    v10 = (*(*a1 + 16))(a1);
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, &v15, v10, a2 + 16);
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v11;
}

void mlir::ODIE::Compiler::Exec::InferTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v13 = (*(*a2 + 16))(a2);
  if (v11)
  {
    v14 = v13;
    (*(*a2 + 160))(a2, *(v12 + 24));
    v15 = v11 - 1;
    if (v15)
    {
      v16 = (v12 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a2 + 160))(a2, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v35 = v37;
  v36 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v35, "identifier", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, v36);
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
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
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

  v28 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v29 = *(v28 + 9);
    v30 = *(v28 + 17);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v34[0] = v29;
  v34[1] = 0;
  v34[2] = v29;
  v34[3] = v30;
  v31 = *(v28 + 9);
  v32 = v28 - 16;
  if (!v31)
  {
    v32 = 0;
  }

  v33[0] = v32;
  v33[1] = 0;
  v33[2] = v32;
  v33[3] = v31;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v34, v33);
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::InitOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "identifier", 0xAuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v10[3])
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

uint64_t mlir::ODIE::Compiler::Exec::InitOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "identifier";
  v10[1] = 10;
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

unint64_t mlir::ODIE::Compiler::Exec::InitOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::InitOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x696669746E656469 ? (v4 = *(a3 + 8) == 29285) : (v4 = 0), v4))
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

void *mlir::ODIE::Compiler::Exec::InitOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 10 && *a2 == 0x696669746E656469 && *(a2 + 8) == 29285)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      if (a4[3])
      {
        v5 = 0;
      }

      else
      {
        v5 = a4;
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

void mlir::ODIE::Compiler::Exec::InitOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "identifier";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::InitOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v8, "identifier", 0xA, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InitOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a6, 0, a6, a7);
  v11 = *a1;
  v18 = 261;
  v17[0] = a4;
  v17[1] = a5;
  v13 = mlir::StringAttr::get(v11, v17, v12);
  v15 = mlir::SymbolRefAttr::get(v13, 0, 0, v14);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(a2) = v15;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v16, v17);
}

BOOL mlir::ODIE::Compiler::Exec::InitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v11 = "requires attribute 'identifier'";
    v12 = 259;
    mlir::Operation::emitOpError(v13, v2, &v11);
    v9 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    return v9;
  }

  v13[0] = v2;
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v3, "identifier", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 17);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 9) + 24;
      while (mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v6))
      {
        ++v6;
        v7 += 32;
        if (v5 == v6)
        {
          v4 = *this;
          goto LABEL_9;
        }
      }

      return 0;
    }
  }

LABEL_9:
  if (*(v4 + 9))
  {
    v8 = v4 - 16;
  }

  else
  {
    v8 = 0;
  }

  return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(v4, *(v8 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6);
}

BOOL mlir::ODIE::Compiler::Exec::InitOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v15 = 0;
  v16 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v17, v5))
  {
    goto LABEL_16;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(a2);
    *v7 = v17;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v13[0] = a1, v13[1] = &v14, v13[2] = a2, mlir::ODIE::Compiler::Exec::InitOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InitOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v13[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v13)))
  {
    v9 = *(v13[0] + 8);
    v15 = *(v13[0] + 16);
    v16 = v9;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v15 + 8 * v9), (v15 + 8 * v9 + 8 * *(v13[0] + 12)));
    v10 = (*(*a1 + 16))(a1);
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, &v15, v10, a2 + 16);
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v11;
}

void mlir::ODIE::Compiler::Exec::InitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v13 = (*(*a2 + 16))(a2);
  if (v11)
  {
    v14 = v13;
    (*(*a2 + 160))(a2, *(v12 + 24));
    v15 = v11 - 1;
    if (v15)
    {
      v16 = (v12 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a2 + 160))(a2, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v35 = v37;
  v36 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v35, "identifier", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, v36);
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
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
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

  v28 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v29 = *(v28 + 9);
    v30 = *(v28 + 17);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v34[0] = v29;
  v34[1] = 0;
  v34[2] = v29;
  v34[3] = v30;
  v31 = *(v28 + 9);
  v32 = v28 - 16;
  if (!v31)
  {
    v32 = 0;
  }

  v33[0] = v32;
  v33[1] = 0;
  v33[2] = v32;
  v33[3] = v31;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v34, v33);
  if (v35 != v37)
  {
    free(v35);
  }
}

void mlir::ODIE::Compiler::Exec::IsDefinedOp::build(void **a1, unsigned int *a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v7, 0, &v7, 1);
  __src = v10;
  v9 = 0x200000000;
  v5 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  v6 = mlir::IntegerType::get(v5, 1, 0);
  *__src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v9);
  if (__src != v10)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::IsDefinedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v28 = 0;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v4 + 8, v13);
    (*(v14 + 8))(v14, v3);
  }

  else if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    v27 = 261;
    v25 = "operand";
    v26 = 7;
    mlir::Operation::emitOpError(&v31, v2, &v25);
    if (v31)
    {
      mlir::Diagnostic::operator<<<3ul>(v32, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<88ul>((v7 + 1), " must be memref of any type values or  or A type represents a context object., but got ");
      if (*v8)
      {
        v29 = 4;
        v30 = v3;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v29, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = *(v8 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    if (v12)
    {
      return 0;
    }
  }

  v15 = *this;
  if (*(*this + 9))
  {
    v16 = *this - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(v16 + 1) & 0xFFFFFFFFFFFFFFF8);
  v28 = 0;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v17[2] != 1)
  {
    v27 = 261;
    v25 = "result";
    v26 = 6;
    mlir::Operation::emitOpError(&v31, v15, &v25);
    if (v31)
    {
      mlir::Diagnostic::operator<<<3ul>(v32, " #");
    }

    v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
    v19 = v18;
    if (*v18)
    {
      mlir::Diagnostic::operator<<<42ul>((v18 + 1), " must be 1-bit signless integer, but got ");
      if (*v19)
      {
        v29 = 4;
        v30 = v17;
        v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v29, 1);
        v21 = v19[3] + 24 * *(v19 + 8);
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v21 = v22;
        ++*(v19 + 8);
      }
    }

    v23 = *(v19 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    if (v23)
    {
      return 0;
    }
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::Exec::IsDefinedOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
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

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (((*(*a1 + 536))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v5 = (*(*a1 + 32))(a1);
  v7 = mlir::IntegerType::get(*v5, 1, 0);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v7, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::Exec::IsDefinedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++*(v6 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
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
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "delegate_id", 0xBuLL);
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

uint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "delegate_id";
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

unint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x65746167656C6564 ? (v4 = *(a3 + 3) == 0x64695F6574616765) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::Exec::IsolatedGroupOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
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

void mlir::ODIE::Compiler::Exec::IsolatedGroupOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "delegate_id";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v8, "delegate_id", 0xB, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::IsolatedGroupOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  v15 = 261;
  v14[0] = a7;
  v14[1] = a8;
  v13 = mlir::StringAttr::get(*a1, v14, v12);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) = v13;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v27[0] = "requires attribute 'delegate_id'";
    v28 = 259;
    mlir::Operation::emitOpError(v30, v2, v27);
    v21 = (v31 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
    return v21;
  }

  v30[0] = v2;
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v3, "delegate_id", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 17);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 9) + 24;
      do
      {
        if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v6))
        {
          return 0;
        }

        ++v6;
        v7 += 32;
      }

      while (v5 != v6);
      v4 = *this;
    }
  }

  v8 = *(v4 + 9);
  if (*(v4 + 9))
  {
    v9 = v4 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = 0;
  v11 = v4 - 16;
  do
  {
    v12 = v9;
    if (!v10)
    {
      goto LABEL_19;
    }

    v13 = *(v4 - 1) & 7;
    v14 = v4 - 16;
    v15 = v10;
    if (v13 != 6)
    {
      v16 = (5 - v13);
      v12 = v11;
      v15 = v10 - v16;
      if (v10 <= v16)
      {
        goto LABEL_19;
      }

      v14 = v4 - 16 * v16 - 16;
    }

    v12 = v14 - 24 * v15;
LABEL_19:
    if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v10))
    {
      return 0;
    }

    ++v10;
    v11 -= 16;
  }

  while (v8 != v10);
  v4 = *this;
LABEL_22:
  v17 = ((v4 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 10);
  v29 = 0;
  if (*(v17 + 8) != v17)
  {
    return 1;
  }

  v27[0] = "region #";
  v28 = 259;
  mlir::Operation::emitOpError(v30, v4, v27);
  v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v30, &v29);
  v19 = v18;
  v24 = 1283;
  v23[0] = " ('";
  v23[2] = "region";
  v23[3] = 6;
  v25[0] = v23;
  v25[2] = "') ";
  v26 = 770;
  if (*v18)
  {
    mlir::Diagnostic::operator<<((v18 + 1), v25);
    if (*v19)
    {
      mlir::Diagnostic::operator<<<59ul>((v19 + 1), "failed to verify constraint: region with at least 1 blocks");
    }
  }

  v20 = *(v19 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
  return (v20 & 1) == 0;
}

BOOL mlir::ODIE::Compiler::Exec::IsolatedGroupOp::parse(mlir::Region *a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  v24[0] = v25;
  v24[1] = 0x400000000;
  v20 = 0;
  v21 = &v23;
  v22 = 0x200000000;
  v18 = 0;
  v19 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v16[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v16);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v20, v5))
  {
    goto LABEL_21;
  }

  if (v20)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2);
    *v7 = v20;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &v17;
  v16[2] = a2;
  if (!mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
  {
    goto LABEL_21;
  }

  v16[0] = 0;
  v10 = (*(*a1 + 792))(a1, v16, 0, 0, 0);
  if ((v10 & 0x100) != 0)
  {
    if ((v10 & 1) == 0)
    {
      std::unique_ptr<mlir::Region>::reset[abi:nn200100](v16, 0);
      goto LABEL_21;
    }

    llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v21, v16);
    if ((*(*a1 + 128))(a1))
    {
      operator new();
    }
  }

  std::unique_ptr<mlir::Region>::reset[abi:nn200100](v16, 0);
  if ((*(*a1 + 104))(a1))
  {
    v16[0] = 0;
    if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, v16))
    {
      v11 = *(v16[0] + 2);
      v18 = *(v16[0] + 2);
      v19 = v11;
      v12 = (v18 + 8 * v11);
      v13 = *(v16[0] + 3);
      mlir::OperationState::addRegions(a2, v21, v22);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v12, &v12[8 * v13]);
      v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, &v18, v8, a2 + 16);
      goto LABEL_22;
    }
  }

LABEL_21:
  v14 = 0;
LABEL_22:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v21);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  return v14;
}

void mlir::ODIE::Compiler::Exec::IsolatedGroupOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v46[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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
    v11 = v10[9];
    v12 = *(v10 + 17);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = (*(*a2 + 16))(a2);
  if (v12)
  {
    v14 = v13;
    (*(*a2 + 160))(a2, *(v11 + 24));
    v15 = v12 - 1;
    if (v15)
    {
      v16 = (v11 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a2 + 160))(a2, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v44 = v46;
  v45 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "delegate_id", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, v45);
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

  v24 = *(*this + 11);
  v25 = v24 & 0x7FFFFF;
  if ((v24 & 0x7FFFFF) != 0)
  {
    v26 = ((*this + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v26, 1, 1, 0);
    if (v25 != 1)
    {
      v27 = v26 + 24;
      v28 = 24 * v25 - 24;
      do
      {
        v29 = (*(*a2 + 16))(a2);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 > 1uLL)
        {
          *v30 = 8236;
          *(v29 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v29, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v27, 1, 1, 0);
        v27 += 24;
        v28 -= 24;
      }

      while (v28);
    }
  }

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
  if (*(v33 + 3) == v34)
  {
    llvm::raw_ostream::write(v33, ":", 1uLL);
  }

  else
  {
    *v34 = 58;
    ++*(v33 + 4);
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
  if ((*(*this + 46) & 0x80) != 0)
  {
    v38 = *(v37 + 17);
    v39 = *(v37 + 9);
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v43[0] = v39;
  v43[1] = 0;
  v43[2] = v39;
  v43[3] = v38;
  v40 = *(v37 + 9);
  v41 = v37 - 16;
  if (!v40)
  {
    v41 = 0;
  }

  v42[0] = v41;
  v42[1] = 0;
  v42[2] = v41;
  v42[3] = v40;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v43, v42);
  if (v44 != v46)
  {
    free(v44);
  }
}

void mlir::ODIE::Compiler::Exec::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::LoadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::LoadOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
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

void mlir::ODIE::Compiler::Exec::LoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::Exec::UndefOp::parse(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = v8;
  v7 = 0x100000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v7);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (__src != v8)
  {
    free(__src);
  }

  return v4;
}

void mlir::ODIE::Compiler::Exec::UndefOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, 0);
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

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ":", 1uLL);
  }

  else
  {
    *v8 = 58;
    ++*(v7 + 4);
  }

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

  v11 = *this;
  v12 = *(*this + 9);
  if (v12)
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    (*(*a2 + 32))(a2, *(v11 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v12 != 1)
    {
      v14 = v13 - 16;
      v15 = 1;
      while (1)
      {
        v16 = (*(*a2 + 16))(a2);
        v17 = *(v16 + 4);
        if (*(v16 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v16 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v18 = *(v11 - 1) & 7;
        v19 = v13;
        v20 = v15;
        if (v18 == 6)
        {
          goto LABEL_22;
        }

        v21 = (5 - v18);
        v22 = v14;
        v20 = v15 - v21;
        if (v15 > v21)
        {
          break;
        }

LABEL_23:
        (*(*a2 + 32))(a2, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v15;
        v14 -= 16;
        if (v12 == v15)
        {
          return;
        }
      }

      v19 = &v13[-16 * v21];
LABEL_22:
      v22 = &v19[-24 * v20];
      goto LABEL_23;
    }
  }
}

void mlir::ODIE::Compiler::Exec::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::Exec::YieldOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 17);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  for (i = *(v1 + 9) + 24; mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, (*(*i + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v4); i += 32)
  {
    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::Exec::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  v5 = ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v5;
}

void mlir::ODIE::Compiler::Exec::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
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
    v25 = *(v24 + 17);
    if (v25)
    {
      v26 = *(v24 + 9);
      (*(*a2 + 32))(a2, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 != 1)
      {
        v27 = v25 - 1;
        v28 = (v26 + 56);
        do
        {
          v29 = (*(*a2 + 16))(a2);
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 > 1uLL)
          {
            *v30 = 8236;
            *(v29 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v29, ", ", 2uLL);
          }

          v31 = *v28;
          v28 += 4;
          (*(*a2 + 32))(a2, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v27;
        }

        while (v27);
      }
    }
  }
}

uint64_t mlir::ODIE::Compiler::Exec::verifyDPSOpInterface(mlir::ODIE::Compiler::Exec *this, mlir::Operation *a2)
{
  v2 = this;
  v15 = *MEMORY[0x277D85DE8];
  if (this)
  {
    this = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v12[0] = v2;
  v12[1] = this;
  v3 = v2[9];
  mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(v12);
  if (v4 != v3)
  {
    goto LABEL_8;
  }

  v13[0] = mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(v12);
  v13[1] = 0;
  v13[2] = v13[0];
  v13[3] = v5;
  v6 = v2[9];
  v7 = (v2 - 4);
  if (!v6)
  {
    v7 = 0;
  }

  v10[0] = v7;
  v10[1] = 0;
  v10[2] = v7;
  v10[3] = v6;
  if (mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(v13, v10))
  {
    return 1;
  }

LABEL_8:
  v10[0] = "should be in DPS form, meaning it should produce a result for each InOut value";
  v11 = 259;
  mlir::Operation::emitOpError(v13, v12[0], v10);
  v8 = (v14 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  return v8;
}

uint64_t mlir::ODIE::Compiler::Exec::getInitFuncNameAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a1 + 24) + 32);
  v4 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 96);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v9 = 1283;
  v8[0] = "$";
  v8[2] = v6;
  v8[3] = v5;
  return mlir::StringAttr::get(v3, v8, a3);
}

uint64_t mlir::ODIE::Compiler::Exec::getInitFunc(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  InitFuncNameAttr = mlir::ODIE::Compiler::Exec::getInitFuncNameAttr(a2, a2, a3);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((a1 + 8), &InitFuncNameAttr);
  if (result)
  {
    v5 = *(result + 8);
    if (v5)
    {
      if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        return *(result + 8);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(*a1 + 36);
    v4 = *a1 - 16;
    if (!v3)
    {
      v4 = 0;
    }

    v12 = v4;
    v13 = v3;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v12);
  }

  else
  {
    v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v11 = v6;
    if (*v6 == v6)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v7 = v6[1];
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 48);
      v10 = (*(v8 + 56) - v9) >> 3;
    }

    v12 = v9;
    v13 = v10;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v11, &v12);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::getReturnOutputIntents(mlir::ODIE::Compiler::Exec *this, mlir::Operation *a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(this + 3) + 32);
  v3 = *(this + 9);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v2, 2uLL);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v7, v3, v4);
  v5 = mlir::ArrayAttr::get(v2, v7, v8);
  if (v7 != v9)
  {
    free(v7);
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(v4 + 2 * ((*(v4 + 11) >> 23) & 1) + 8);
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v4, a2);
  if (NearestSymbolTable && (v7 = mlir::SymbolTableCollection::lookupSymbolIn(a2, NearestSymbolTable, v5)) != 0 && ((v8 = *(*(v7 + 48) + 16), v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id, v8 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id) ? (v10 = 0) : (v10 = v7), v32 = v10, v9))
  {
    v15 = *this - 16;
    if (!*(*this + 9))
    {
      v15 = 0;
    }

    v16 = *(v15 + 1) & 0xFFFFFFFFFFFFFFF8;
    ValueAttr = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v32);
    if (v16 == (*v18)(v18, ValueAttr))
    {
      v13 = 1;
      return v13 & 1;
    }

    v30[0] = "result type ";
    v31 = 259;
    mlir::Operation::emitOpError(&v36, *this, v30);
    if (v36)
    {
      LODWORD(v33) = 4;
      v34 = v16;
      v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v38, &v33, 1);
      v20 = v38 + 24 * v39;
      v21 = *v19;
      *(v20 + 16) = *(v19 + 16);
      *v20 = v21;
      ++v39;
      if (v36)
      {
        mlir::Diagnostic::operator<<<22ul>(v37, " does not match type ");
      }
    }

    v22 = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v32);
    v24 = (*v23)(v23, v22);
    if (v36)
    {
      LODWORD(v33) = 4;
      v34 = v24;
      v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v38, &v33, 1);
      v26 = v38 + 24 * v39;
      v27 = *v25;
      *(v26 + 16) = *(v25 + 16);
      *v26 = v27;
      ++v39;
      if (v36)
      {
        mlir::Diagnostic::operator<<<23ul>(v37, " of the global const @");
        if (v36)
        {
          v28 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 16);
          v29 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 24);
          v35 = 261;
          v33 = v28;
          v34 = v29;
          mlir::Diagnostic::operator<<(v37, &v33);
        }
      }
    }
  }

  else
  {
    v30[0] = "'";
    v31 = 259;
    mlir::Operation::emitOpError(&v36, *this, v30);
    if (v36)
    {
      v11 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 16);
      v12 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 24);
      v35 = 261;
      v33 = v11;
      v34 = v12;
      mlir::Diagnostic::operator<<(v37, &v33);
      if (v36)
      {
        mlir::Diagnostic::operator<<<45ul>(v37, "' does not reference a valid global constant");
      }
    }
  }

  v13 = v40 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  return v13 & 1;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(*a1 + 36);
    v4 = *a1 - 16;
    if (!v3)
    {
      v4 = 0;
    }

    v12 = v4;
    v13 = v3;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v12);
  }

  else
  {
    v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v11 = v6;
    if (*v6 == v6)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v7 = v6[1];
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 48);
      v10 = (*(v8 + 56) - v9) >> 3;
    }

    v12 = v9;
    v13 = v10;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v11, &v12);
  }
}

BOOL mlir::ODIE::Compiler::Exec::AsyncAwaitOp::areTypesCompatible(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,void>>::doCastIfPossible(a2);
  v7 = v6;
  v8 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,void>>::doCastIfPossible(a3);
  if (v5)
  {
    if (!v8)
    {
      return (*v7)(v7, v5) == a3;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  return (*v9)(v9, v8) == a2;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<340ul>(uint64_t a1)
{
  v6 = 3;
  v7 = " must be 1-bit signless integer or 32-bit signless integer or 64-bit signless integer or 16-bit float or 32-bit float or 64-bit float or index or memref of any type values or  or A type represents a context object. or Future value of any type or Awaitable memref of any type or Task value of any type or Single result from a task, but got ";
  v8 = 339;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<352ul>(uint64_t a1)
{
  v6 = 3;
  v7 = " must be variadic of 1-bit signless integer or 32-bit signless integer or 64-bit signless integer or 16-bit float or 32-bit float or 64-bit float or index or memref of any type values or  or A type represents a context object. or Future value of any type or Awaitable memref of any type or Task value of any type or Single result from a task, but got ";
  v8 = 351;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F238))
  {
    qword_27FC1F228 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>();
    unk_27FC1F230 = v1;
    __cxa_guard_release(&qword_27FC1F238);
  }

  return qword_27FC1F228;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

uint64_t *mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>()
{
  {
    mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID();
  }

  return &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
}

__guard mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SideEffects::DefaultResource>();
      mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[288];
}

uint64_t llvm::getTypeName<mlir::SideEffects::DefaultResource>()
{
  {
    llvm::getTypeName<mlir::SideEffects::DefaultResource>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SideEffects::DefaultResource>();
    *algn_27FC19918 = v1;
  }

  return llvm::getTypeName<mlir::SideEffects::DefaultResource>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SideEffects::DefaultResource>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SideEffects::DefaultResource]";
  v6 = 96;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v16[0] = *a2;
  v16[1] = v10;
  v16[2] = v7 & 0xFFFFFFFFFFFFFFF9 | 4;
  v16[3] = 0;
  v17 = v8;
  v18 = v9;
  v11 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v16, 1);
  v12 = *a1 + 40 * *(a1 + 8);
  v13 = *(v11 + 32);
  v14 = *(v11 + 16);
  *v12 = *v11;
  *(v12 + 16) = v14;
  *(v12 + 32) = v13;
  LODWORD(v12) = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *a1 + 40 * v12 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 40 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
    }
  }

  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F260))
  {
    qword_27FC1F250 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>();
    *algn_27FC1F258 = v1;
    __cxa_guard_release(&qword_27FC1F260);
  }

  return qword_27FC1F250;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties]";
  v6 = 139;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F288))
  {
    qword_27FC1F278 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>();
    unk_27FC1F280 = v1;
    __cxa_guard_release(&qword_27FC1F288);
  }

  return qword_27FC1F278;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 32;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F2B0))
  {
    qword_27FC1F2A0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>();
    *algn_27FC1F2A8 = v1;
    __cxa_guard_release(&qword_27FC1F2B0);
  }

  return qword_27FC1F2A0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 134;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F2D8))
  {
    qword_27FC1F2C8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>();
    unk_27FC1F2D0 = v1;
    __cxa_guard_release(&qword_27FC1F2D8);
  }

  return qword_27FC1F2C8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F300))
  {
    qword_27FC1F2F0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>();
    *algn_27FC1F2F8 = v1;
    __cxa_guard_release(&qword_27FC1F300);
  }

  return qword_27FC1F2F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties]";
  v6 = 144;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F328))
  {
    qword_27FC1F318 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>();
    unk_27FC1F320 = v1;
    __cxa_guard_release(&qword_27FC1F328);
  }

  return qword_27FC1F318;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties]";
  v6 = 143;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextInsertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

uint64_t llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(uint64_t **a1)
{
  v1 = 0;
  v2 = a1[1];
  v3 = **a1;
  v4 = v3 + 32 * (*a1)[1];
  v5 = *v2;
  v6 = *v2 + 32 * v2[1];
  v14 = v3;
  v15 = v5;
  v16 = v4;
  v17 = v6;
  while (v3 != v4 || v5 != v6 || v16 != v4 || v17 != v6)
  {
    v8 = &unk_286E871F8;
    v9 = 16;
    do
    {
      v10 = v9;
      v11 = *(v8 - 1);
      v12 = (&v14 + (*v8 >> 1));
      if (*v8)
      {
        v11 = *(*v12 + v11);
      }

      if (v11(v12))
      {
        break;
      }

      v8 += 2;
      v9 = v10 - 16;
    }

    while (v10);
    ++v1;
    v3 = v14;
    v5 = v15;
  }

  return v1;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 32;
  }

  return v1 != v2;
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::deref<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E87218;
  do
  {
    v3 = *(v2 - 1);
    v4 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v3 = *(*v4 + v3);
    }

    v2 += 2;
    result = v3(v4);
  }

  while (!result);
  return result;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::tup_inc<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E871F8;
  v3 = 16;
  do
  {
    v4 = v3;
    v5 = *(v2 - 1);
    v6 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v5 = *(*v6 + v5);
    }

    result = v5(v6);
    if (result)
    {
      break;
    }

    v2 += 2;
    v3 = v4 - 16;
  }

  while (v4);
  *(a1 + 32) += 8;
  return result;
}

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::Exec::CopyOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::Exec::CopyOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::deref<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E87218;
  do
  {
    v3 = *(v2 - 1);
    v4 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v3 = *(*v4 + v3);
    }

    v2 += 2;
    result = v3(v4);
  }

  while (!result);
  return result;
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::tup_inc<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E871F8;
  v3 = 16;
  do
  {
    v4 = v3;
    v5 = *(v2 - 1);
    v6 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v5 = *(*v6 + v5);
    }

    result = v5(v6);
    if (result)
    {
      break;
    }

    v2 += 2;
    v3 = v4 - 16;
  }

  while (v4);
  *(a1 + 32) += 8;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F350))
  {
    qword_27FC1F340 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>();
    *algn_27FC1F348 = v1;
    __cxa_guard_release(&qword_27FC1F350);
  }

  return qword_27FC1F340;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties]";
  v6 = 139;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InferTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F378))
  {
    qword_27FC1F368 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>();
    unk_27FC1F370 = v1;
    __cxa_guard_release(&qword_27FC1F378);
  }

  return qword_27FC1F368;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties]";
  v6 = 134;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InitOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F3A0))
  {
    qword_27FC1F390 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>();
    *algn_27FC1F398 = v1;
    __cxa_guard_release(&qword_27FC1F3A0);
  }

  return qword_27FC1F390;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties]";
  v6 = 143;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~GroupDropUnusedResults(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v3 != v3)
  {
    v4 = v3[1];
    if (*(v4 + 8) == v3)
    {
      v7 = *(a2 + 36);
      if (v7)
      {
        v8 = a3;
        v9 = *(v4 + 24);
        v49[0] = 0;
        v51 = v53;
        v52 = 0x600000000;
        v49[1] = 0;
        v50 = 0;
        if ((*(v9 + 46) & 0x80) == 0)
        {
          goto LABEL_23;
        }

        v10 = *(v9 + 68);
        v11 = *(v9 + 72);
        if (v10)
        {
          v46 = v9;
          v12 = 0;
          v13 = a2 - 16;
          v14 = v10 - 1;
          v15 = v7 - 1;
          v16 = (v11 + 24);
          v17 = a2 - 16;
          while (1)
          {
            v18 = a2 - 16;
            if (v12)
            {
              v19 = *(a2 - 8) & 7;
              v20 = a2 - 16;
              v21 = v12;
              if (v19 == 6)
              {
                goto LABEL_12;
              }

              v22 = (5 - v19);
              v18 = v17;
              v21 = v12 - v22;
              if (v12 > v22)
              {
                break;
              }
            }

LABEL_13:
            if (*v18)
            {
              llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v51, *v16);
              v23 = *(v18 + 8);
              if ((v23 & 7) == 6)
              {
                v24 = *(v18 + 16) + 6;
              }

              else
              {
                v24 = v23 & 7;
              }

              v25 = v52 - 1;
              LODWORD(v54) = v24;
              *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::operator[](v49, &v54) = v25;
            }

            if (v15 != v12)
            {
              v17 -= 16;
              v16 += 4;
              if (v14 != v12++)
              {
                continue;
              }
            }

            v9 = v46;
            v8 = a3;
            if ((*(v46 + 46) & 0x80) != 0)
            {
              v27 = *(v46 + 68);
              v11 = *(v46 + 72);
              goto LABEL_25;
            }

LABEL_23:
            v11 = 0;
            goto LABEL_24;
          }

          v20 = v13 - 16 * v22;
LABEL_12:
          v18 = v20 - 24 * v21;
          goto LABEL_13;
        }

LABEL_24:
        v27 = 0;
LABEL_25:
        if (v27 != v52)
        {
          goto LABEL_35;
        }

        if (v52)
        {
          v28 = v51;
          v29 = ((v27 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
          v30 = 8 * v52;
          v31 = (v11 + 24);
          v32 = v27;
          while (v32 && *v28 == *v31)
          {
            ++v28;
            v31 += 4;
            --v32;
            v30 -= 8;
            if (!v30)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_35;
        }

        v29 = 0;
LABEL_33:
        if (v29 != v27)
        {
LABEL_35:
          v33 = (v8 + 24);
          v48 = *(v8 + 24);
          *(v8 + 24) = *(v9 + 16);
          *(v8 + 32) = v9;
          v34 = *(v9 + 24);
          v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::YieldOp>(v8 + 8, *(**v34 + 32));
          v54 = v34;
          v55 = v35;
          v56 = v58;
          v57 = 0x400000000;
          v59 = v61;
          v60 = 0x400000000;
          v62 = v64;
          v63 = 0x400000000;
          v65 = 4;
          v66 = &v68;
          v67 = 0x100000000;
          v69 = &v71;
          v70 = 0x100000000;
          v72 = 0;
          v73 = 0;
          v74 = &mlir::detail::TypeIDResolver<void,void>::id;
          v75 = 0;
          v76 = 0;
          llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v56, v51 & 0xFFFFFFFFFFFFFFF9, 0, v51 & 0xFFFFFFFFFFFFFFF9, v52);
          v36 = mlir::Operation::create(&v54);
          mlir::OpBuilder::insert((v8 + 8), v36);
          v37 = *(*(v36 + 6) + 16);
          mlir::OperationState::~OperationState(&v54);
          if (v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0;
          }

          (*(*v8 + 8))(v8, v9, v38);
          if (v48)
          {
            *v33 = v48;
          }

          else
          {
            *v33 = 0;
            *(v8 + 32) = 0;
          }

          v39 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) != 0)
          {
            v40 = *(a2 + 68);
            v41 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
          }

          else
          {
            v40 = 0;
            v41 = 2;
          }

          AttrDictionary = mlir::Operation::getAttrDictionary(a2);
          v43 = *(AttrDictionary + 8);
          v44 = *(AttrDictionary + 16);
          v45 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(v8 + 8, *(**v39 + 32));
          v54 = v39;
          v55 = v45;
          v56 = v58;
          v57 = 0x400000000;
          v59 = v61;
          v60 = 0x400000000;
          v62 = v64;
          v63 = 0x400000000;
          v65 = 4;
          v66 = &v68;
          v67 = 0x100000000;
          v69 = &v71;
          v70 = 0x100000000;
          v72 = 0;
          v73 = 0;
          v74 = &mlir::detail::TypeIDResolver<void,void>::id;
          v75 = 0;
          v76 = 0;
          llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v56, v41, 0, v41, v40);
          v65 = 0;
          llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(&v62, v43, &v43[16 * v44]);
          mlir::OperationState::addRegion(&v54);
        }

        MEMORY[0x25F891030](v49[0], 4);
        if (v51 != v53)
        {
          free(v51);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::YieldOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.yield";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.isolated_group";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>]";
  v6 = 180;
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

void mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~GroupDropUnusedOperands(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 44);
  if ((v2 & 0x800000) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 68);
  if (!v4)
  {
    return 0;
  }

  v5 = *(((a2 + ((v2 >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  v21[0] = v22;
  v21[1] = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::assign(v21, (v4 + 63) >> 6, 0);
  v7 = 0;
  v22[12] = v4;
  v18 = v20;
  *v19 = 0x600000000;
  for (i = 24; ; i += 32)
  {
    v9 = (*(a2 + 46) & 0x80) != 0 ? *(a2 + 68) : 0;
    if (v7 >= v9)
    {
      break;
    }

    if (**(*(v6 + 6) + 8 * v7))
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v18, *(*(a2 + 72) + i));
    }

    else
    {
      *(v21[0] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    }

    ++v7;
  }

  mlir::Block::eraseArguments(v6, v21);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
  }

  else
  {
    v10 = 0;
  }

  v12 = a2;
  v13 = 0;
  v14 = v10;
  v15 = v17;
  v16 = 0x100000000;
  mlir::MutableOperandRange::assign(&v12, v18 & 0xFFFFFFFFFFFFFFF9, v19[0]);
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>]";
  v6 = 181;
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

void mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>::~RemoveUnusedOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8[0] = v6;
  v8[1] = 0;
  v8[2] = v6;
  v8[3] = v5;
  v9 = 0;
  if (v5)
  {
    mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(v8);
    if (v9)
    {
      return 0;
    }
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>]";
  v6 = 164;
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

void mlir::ODIE::Compiler::Exec::TrivialViewsPattern::~TrivialViewsPattern(mlir::ODIE::Compiler::Exec::TrivialViewsPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::TrivialViewsPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  v10 = *(v4 + 24);
  if (v10 > 0x40)
  {
    operator new[]();
  }

  if (*(v4 + 16) || (*(a2 - 8) ^ *(*(*(a2 + 72) + 24) + 8)) >= 8)
  {
    v9 = "not a trivial view";
    v11 = 259;
    v12 = &v9;
    v8 = *(a3 + 16);
    if (v8 && v8[2] == 1)
    {
      (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::AllocViewOp &>(mlir::ODIE::Compiler::Exec::AllocViewOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v12);
    }

    return 0;
  }

  else
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 68);
      v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v5 = 0;
      v6 = 2;
    }

    (**a3)(a3, a2, v6, v5);
    return 1;
  }
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::TrivialViewsPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::TrivialViewsPattern]";
  v6 = 109;
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

void mlir::ODIE::Compiler::Exec::CombineViewsPattern::~CombineViewsPattern(mlir::ODIE::Compiler::Exec::CombineViewsPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::CombineViewsPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v5 + 24 * *(v5 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v5 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
  {
LABEL_9:
    v10 = "Base is not a view";
LABEL_10:
    v20 = v10;
    v22 = 259;
    v25 = &v20;
    v11 = a3[2];
    if (v11)
    {
      if (v11[2] == 1)
      {
        (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::AllocViewOp &>(mlir::ODIE::Compiler::Exec::AllocViewOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v25);
      }
    }

    return 0;
  }

  if ((*(*(*(v9 + 72) + 24) + 8) ^ v6) >= 8)
  {
    v10 = "BaseView and CurrentView base types are different";
    goto LABEL_10;
  }

  (*(*a3 + 40))(a3, a2);
  v13 = *(a2 + 72);
  v14 = *(*(v9 + 72) + 24);
  v15 = v13[1];
  if (v15)
  {
    v16 = *v13;
    *v15 = *v13;
    if (v16)
    {
      *(v16 + 8) = v13[1];
    }
  }

  v13[3] = v14;
  v13[1] = v14;
  v17 = *v14;
  *v13 = *v14;
  if (v17)
  {
    *(v17 + 8) = v13;
  }

  *v14 = v13;
  v18 = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 72);
  v26 = *(v18 + 24);
  if (v26 > 0x40)
  {
    operator new[]();
  }

  v25 = *(v18 + 16);
  v19 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v24 = *(v19 + 24);
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v23 = *(v19 + 16);
  llvm::APInt::sadd_sat(&v25, &v23, &v20);
  *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) = mlir::IntegerAttr::get(*(**(***(a2 + 24) + 32) + 472), &v20);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x25F891010](v25, 0x1000C8000313F17);
  }

  (*(*a3 + 48))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::CombineViewsPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::CombineViewsPattern]";
  v6 = 109;
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

void mlir::ODIE::Compiler::Exec::ViewOfAllocPattern::~ViewOfAllocPattern(mlir::ODIE::Compiler::Exec::ViewOfAllocPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::ViewOfAllocPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = (v7 + 120);
    if (v7 == -120)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = (v5 + 16 * v6 + 16);
  }

  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id && mlir::Operation::hasOneUse(v8))
  {
    v12[0] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = 0;
    v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type,decltype(nullptr)>((a3 + 1), *(a2 + 24), v12);
    (*(*a3 + 8))(a3, a2, v9);
    return 1;
  }

LABEL_11:
  v12[0] = "Base is not a single-use alloc";
  v13 = 259;
  v14 = v12;
  v11 = a3[2];
  if (v11)
  {
    if (v11[2] == 1)
    {
      (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::AllocViewOp &>(mlir::ODIE::Compiler::Exec::AllocViewOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v14);
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ViewOfAllocPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ViewOfAllocPattern]";
  v6 = 108;
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

void mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>::~RemoveUnusedOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8[0] = v6;
  v8[1] = 0;
  v8[2] = v6;
  v8[3] = v5;
  v9 = 0;
  if (v5)
  {
    mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(v8);
    if (v9)
    {
      return 0;
    }
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>]";
  v6 = 164;
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

uint64_t mlir::ODIE::Compiler::Exec::ContextType::setTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = **(***a1 + 32);
  v7 = *a1;
  v6[0] = &v7;
  v6[1] = v5;
  return mlir::detail::StorageUniquerImpl::mutate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, v7, llvm::function_ref<llvm::LogicalResult ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<llvm::LogicalResult mlir::StorageUniquer::mutate<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::ArrayRef<mlir::Type> &>(mlir::TypeID,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *,llvm::ArrayRef<mlir::Type> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v6);
}

void mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v4 = v6;
  v5 = 0x600000000;
  if ((*(*a1 + 392))())
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v5)
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=(a2, &v4);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v3;
  if (v4 != v6)
  {
    free(v4);
  }
}

uint64_t std::optional<llvm::SmallVector<mlir::Type,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::Type,6u>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 64);
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v3 == 1)
  {
    if (*(result + 8))
    {
      return llvm::SmallVectorImpl<mlir::Type>::operator=(a3, result);
    }
  }

  else if (*(a2 + 8))
  {
    return llvm::SmallVectorImpl<mlir::Type>::operator=(a3, a2);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::Type>,(void *)0>(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    result = (*(*result + 32))(result, *a2);
    if (a3 != 1)
    {
      v6 = 8 * a3;
      v7 = a2 + 1;
      v8 = v6 - 8;
      do
      {
        v9 = (*(*v5 + 16))(v5);
        v10 = *(v9 + 4);
        if (*(v9 + 3) - v10 > 1uLL)
        {
          *v10 = 8236;
          *(v9 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v9, ", ", 2uLL);
        }

        v11 = *v7++;
        result = (*(*v5 + 32))(v5, v11);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncMemRefType::get(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  *(&v9 + 1) = a6;
  v10 = a4;
  v8 = a7;
  *&v9 = a5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(a1, &v11, &v10, &v9, &v8);
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncFutureType::parse(mlir::ODIE::Compiler::Exec::AsyncFutureType *this, mlir::AsmParser *a2)
{
  v11[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v9[0] = 0;
    v3 = (*(*this + 536))(this, v9);
    v4 = *this;
    if (v3)
    {
      v5 = v9[0];
      if ((*(v4 + 168))(this))
      {
        v6 = (*(*this + 32))(this);
        return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type>(*v6, v5);
      }
    }

    else
    {
      v8 = (*(v4 + 40))(this);
      v10 = 259;
      (*(*this + 24))(v11, this, v8, v9);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::Exec::ExecDialect::parseType(uint64_t a1, mlir::ODIE::Compiler::Exec::AsyncMemRefType *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v44, a2, 0);
  v55 = "type";
  v56 = 4;
  if (v47[2])
  {
    goto LABEL_2;
  }

  v7 = v46;
  if (v46 == 4)
  {
    if (*v45 == 1701869940)
    {
      (*(*a2 + 32))(a2);
      (*(*a2 + 40))(a2);
      if (((*(*a2 + 152))(a2) & 1) == 0)
      {
        goto LABEL_108;
      }

      __p.n128_u64[0] = 0;
      v17 = (*(*a2 + 536))(a2, &__p);
      v18 = *a2;
      if (v17)
      {
        v19 = __p.n128_u64[0];
        if ((*(v18 + 168))(a2))
        {
          v20 = *(*(*a2 + 32))(a2);
          __p.n128_u64[0] = v19;
          v21 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v20, &__p);
LABEL_88:
          v6 = v21;
LABEL_109:
          v31 = v6 == 0;
          goto LABEL_110;
        }

LABEL_108:
        v6 = 0;
        goto LABEL_109;
      }

      v32 = (*(v18 + 40))(a2);
LABEL_107:
      v59 = v33;
      v62 = 259;
      (*(*a2 + 24))(&__p, a2, v32, &v59);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      goto LABEL_108;
    }

    goto LABEL_24;
  }

  if (v46)
  {
LABEL_24:
    v48 = "context";
    v49 = 7;
    goto LABEL_25;
  }

  (*(*v44[0] + 648))(v44[0], &v55, 1);
  v48 = "context";
  v49 = 7;
  if (v47[2])
  {
    goto LABEL_2;
  }

  v7 = v46;
  if (v46)
  {
LABEL_25:
    if (v7 != 7 || (*v45 == 1953394531 ? (v12 = *(v45 + 3) == 1954047348) : (v12 = 0), !v12))
    {
      v51.__r_.__value_.__r.__words[0] = "task";
      v51.__r_.__value_.__l.__size_ = 4;
      if (!v7)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    v51.__r_.__value_.__s.__data_[0] = 0;
    v52 = 0;
    LOBYTE(v59) = 0;
    v63 = 0;
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_94;
    }

    mlir::FieldParser<std::string,std::string>::parse(a2, &__p);
    v22 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(&v51, &__p);
    if (v65[8] == 1 && (v65[7] & 0x80000000) != 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v23 = *a2;
    if (v52)
    {
      if (((*(v23 + 128))(a2, v22) & 1) == 0)
      {
        goto LABEL_68;
      }

      mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(a2, &__p);
      std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(&v59, &__p);
      if (v66 == 1 && __p.n128_u64[0] != v65)
      {
        free(__p.n128_u64[0]);
      }

      if (v63)
      {
LABEL_68:
        if ((*(*a2 + 168))(a2))
        {
          v24 = *(*(*a2 + 32))(a2);
          if (v52 == 1)
          {
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v50, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
            }

            else
            {
              v50 = v51;
            }
          }

          else
          {
            *(&v50.__r_.__value_.__s + 23) = 0;
            v50.__r_.__value_.__s.__data_[0] = 0;
          }

          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v50;
          }

          else
          {
            v38 = v50.__r_.__value_.__r.__words[0];
          }

          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v50.__r_.__value_.__l.__size_;
          }

          v55 = v57;
          v56 = 0x600000000;
          std::optional<llvm::SmallVector<mlir::Type,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::Type,6u>>(&v59, &v55, &__p);
          v40 = __p.n128_u64[0];
          v41 = __p.n128_u32[2];
          v53[0] = v38;
          v53[1] = size;
          v6 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(v24, v53, v42, v43);
          v54 = v6;
          mlir::ODIE::Compiler::Exec::ContextType::setTypes(&v54, v40, v41);
          if (__p.n128_u64[0] != v65)
          {
            free(__p.n128_u64[0]);
          }

          if (v55 != v57)
          {
            free(v55);
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          goto LABEL_95;
        }

LABEL_94:
        v6 = 0;
LABEL_95:
        if (v63 == 1 && v59 != v61)
        {
          free(v59);
        }

        if (v52 == 1 && SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        goto LABEL_109;
      }

      v34 = (*(*a2 + 40))(a2);
    }

    else
    {
      v34 = (*(v23 + 40))(a2, v22);
    }

    v55 = v35;
    v58 = 259;
    (*(*a2 + 24))(&__p, a2, v34, &v55);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    goto LABEL_94;
  }

  (*(*v44[0] + 648))(v44[0], &v48, 1);
  v51.__r_.__value_.__r.__words[0] = "task";
  v51.__r_.__value_.__l.__size_ = 4;
  if (v47[2])
  {
    goto LABEL_2;
  }

  v7 = v46;
  if (!v46)
  {
LABEL_19:
    (*(*v44[0] + 648))(v44[0], &v51, 1);
    v55 = "task_result";
    v56 = 11;
    if (v47[2])
    {
      goto LABEL_2;
    }

    v7 = v46;
    if (!v46)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (v7 == 4 && *v45 == 1802723700)
  {
    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v59) = 0;
    v63 = 0;
    if ((*(*a2 + 152))(a2))
    {
      mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(a2, &__p);
      std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(&v59, &__p);
      if (v66 == 1 && __p.n128_u64[0] != v65)
      {
        free(__p.n128_u64[0]);
      }

      v25 = *a2;
      if (v63)
      {
        if ((*(v25 + 168))(a2))
        {
          v26 = *(*(*a2 + 32))(a2);
          __p.n128_u64[0] = v59;
          __p.n128_u64[1] = v60;
          v6 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>(v26, &__p);
LABEL_103:
          if (v63 == 1 && v59 != v61)
          {
            free(v59);
          }

          goto LABEL_109;
        }
      }

      else
      {
        v36 = (*(v25 + 40))(a2);
        v58 = 259;
        (*(*a2 + 24))(&__p, a2, v36, &v55);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      }
    }

    v6 = 0;
    goto LABEL_103;
  }

  v55 = "task_result";
  v56 = 11;
  if (v7)
  {
LABEL_34:
    if (v7 != 11 || (*v45 == 0x7365725F6B736174 ? (v13 = *(v45 + 3) == 0x746C757365725F6BLL) : (v13 = 0), !v13))
    {
      __p.n128_u64[0] = "async.memref";
      __p.n128_u64[1] = 12;
      goto LABEL_40;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_108;
    }

    __p.n128_u64[0] = 0;
    v27 = (*(*a2 + 536))(a2, &__p);
    v28 = *a2;
    if (v27)
    {
      v29 = __p.n128_u64[0];
      if ((*(v28 + 168))(a2))
      {
        v30 = *(*(*a2 + 32))(a2);
        __p.n128_u64[0] = v29;
        v21 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type>(v30, &__p);
        goto LABEL_88;
      }

      goto LABEL_108;
    }

    v32 = (*(v28 + 40))(a2);
    goto LABEL_107;
  }

LABEL_21:
  (*(*v44[0] + 648))(v44[0], &v55, 1);
  __p.n128_u64[0] = "async.memref";
  __p.n128_u64[1] = 12;
  if (v47[2])
  {
    goto LABEL_2;
  }

  v7 = v46;
LABEL_40:
  if (v7)
  {
    if (v7 == 12 && *v45 == 0x656D2E636E797361 && v45[2] == 1717924461)
    {
      v16 = mlir::ODIE::Compiler::Exec::AsyncMemRefType::parse(a2, v5);
LABEL_90:
      v6 = v16;
      v31 = v16 == 0;
LABEL_110:
      v37 = !v31;
      v47[0] = v37;
      *&v47[1] = 257;
      goto LABEL_3;
    }

    __p.n128_u64[0] = "async.future";
    __p.n128_u64[1] = 12;
LABEL_47:
    if (v7 != 12)
    {
      goto LABEL_76;
    }

    if (*v45 != 0x75662E636E797361 || v45[2] != 1701999988)
    {
      goto LABEL_76;
    }

    v16 = mlir::ODIE::Compiler::Exec::AsyncFutureType::parse(a2, v5);
    goto LABEL_90;
  }

  (*(*v44[0] + 648))(v44[0], &__p, 1);
  __p.n128_u64[0] = "async.future";
  __p.n128_u64[1] = 12;
  if (v47[2])
  {
    goto LABEL_2;
  }

  v7 = v46;
  if (v46)
  {
    goto LABEL_47;
  }

  (*(*v44[0] + 648))(v44[0], &__p, 1);
  if (v47[2])
  {
LABEL_2:
    v6 = 0;
LABEL_3:
    v7 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v7 = v46;
LABEL_76:
  v6 = 0;
  v8 = v45;
  *v47 = 0;
  v47[2] = 1;
LABEL_4:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v44) & 0x100) == 0)
  {
    v58 = 257;
    (*(*a2 + 24))(&__p, a2, v4, &v55);
    if (__p.n128_u64[0])
    {
      if (__p.n128_u64[0])
      {
        v62 = 261;
        v59 = v8;
        v60 = v7;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v59);
        if (__p.n128_u64[0])
        {
          if (__p.n128_u64[0])
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v62 = 261;
            v59 = v9;
            v60 = v10;
            mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v59);
            if (__p.n128_u64[0])
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    return 0;
  }

  return v6;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id)
  {
    v6 = (*(*a3 + 16))(a3);
    v10 = *(v6 + 4);
    if (*(v6 + 3) - v10 <= 3uLL)
    {
      v8 = "type";
      v9 = 4;
      goto LABEL_11;
    }

    *v10 = 1701869940;
    v13 = *(v6 + 4) + 4;
LABEL_15:
    *(v6 + 4) = v13;
    goto LABEL_16;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    v11 = (*(*a3 + 16))(a3);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 1954047348;
      *v12 = 1953394531;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "context", 7uLL);
    }

    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) == v19)
    {
      llvm::raw_ostream::write(v18, "<", 1uLL);
    }

    else
    {
      *v19 = 60;
      ++*(v18 + 4);
    }

    if (!*(a2 + 16))
    {
      goto LABEL_41;
    }

    (*(*a3 + 80))(a3, *(a2 + 8));
    if (!*(a2 + 16) || !*(a2 + 32))
    {
      goto LABEL_41;
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (*(v21 + 3) == v22)
    {
      llvm::raw_ostream::write(v21, ",", 1uLL);
    }

    else
    {
      *v22 = 44;
      ++*(v21 + 4);
    }

    if (!*(a2 + 16) || !*(a2 + 32))
    {
      goto LABEL_41;
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 32);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 32;
    }

    if (*(a2 + 16))
    {
      v27 = *(a2 + 24);
      v28 = *(a2 + 32);
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id)
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id)
      {
        v6 = (*(*a3 + 16))(a3);
        v20 = *(v6 + 4);
        if ((*(v6 + 3) - v20) <= 0xA)
        {
          v8 = "task_result";
          v9 = 11;
          goto LABEL_11;
        }

        *(v20 + 7) = 1953265011;
        *v20 = *"task_result";
        v13 = *(v6 + 4) + 11;
      }

      else
      {
        if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id)
        {
          v25 = (*(*a3 + 16))(a3);
          v26 = *(v25 + 4);
          if ((*(v25 + 3) - v26) > 0xB)
          {
            *(v26 + 8) = 1717924461;
            *v26 = *"async.memref";
            *(v25 + 4) += 12;
          }

          else
          {
            llvm::raw_ostream::write(v25, "async.memref", 0xCuLL);
          }

          v31 = (*(*a3 + 16))(a3);
          v32 = *(v31 + 4);
          if (*(v31 + 3) == v32)
          {
            llvm::raw_ostream::write(v31, "<", 1uLL);
          }

          else
          {
            *v32 = 60;
            ++*(v31 + 4);
          }

          v35 = *(a2 + 16);
          if (v35)
          {
            v36 = *(a2 + 8);
            v37 = 8 * v35;
            do
            {
              v38 = *v36;
              v39 = (*(*a3 + 16))(a3);
              llvm::write_integer(v39, v38, 0, 0);
              v40 = (*(*a3 + 16))(a3);
              v41 = *(v40 + 4);
              if (v41 >= *(v40 + 3))
              {
                llvm::raw_ostream::write(v40, 120);
              }

              else
              {
                *(v40 + 4) = v41 + 1;
                *v41 = 120;
              }

              ++v36;
              v37 -= 8;
            }

            while (v37);
          }

          (*(*a3 + 32))(a3, *(a2 + 24));
          v42 = *(a2 + 32);
          if (v42 && ((*(*(a2 + 40) + 8))() & 1) == 0)
          {
            v43 = (*(*a3 + 16))(a3);
            v44 = *(v43 + 4);
            if (*(v43 + 3) - v44 > 1uLL)
            {
              *v44 = 8236;
              *(v43 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v43, ", ", 2uLL);
            }

            (*(*a3 + 40))(a3, v42);
          }

          v45 = *(a2 + 48);
          if (v45)
          {
            v46 = (*(*a3 + 16))(a3);
            v47 = *(v46 + 4);
            if (*(v46 + 3) - v47 > 1uLL)
            {
              *v47 = 8236;
              *(v46 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v46, ", ", 2uLL);
            }

            (*(*a3 + 40))(a3, v45);
          }

          goto LABEL_41;
        }

        if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id)
        {
          return;
        }

        v6 = (*(*a3 + 16))(a3);
        v7 = *(v6 + 4);
        if ((*(v6 + 3) - v7) <= 0xB)
        {
          v8 = "async.future";
          v9 = 12;
LABEL_11:
          llvm::raw_ostream::write(v6, v8, v9);
LABEL_16:
          v14 = (*(*a3 + 16))(a3);
          v15 = *(v14 + 4);
          if (*(v14 + 3) == v15)
          {
            llvm::raw_ostream::write(v14, "<", 1uLL);
          }

          else
          {
            *v15 = 60;
            ++*(v14 + 4);
          }

          (*(*a3 + 32))(a3, *(a2 + 8));
          goto LABEL_41;
        }

        *(v7 + 8) = 1701999988;
        *v7 = *"async.future";
        v13 = *(v6 + 4) + 12;
      }

      goto LABEL_15;
    }

    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 3uLL)
    {
      *v17 = 1802723700;
      *(v16 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v16, "task", 4uLL);
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, "<", 1uLL);
    }

    else
    {
      *v24 = 60;
      ++*(v23 + 4);
    }

    v27 = *(a2 + 8);
    v28 = *(a2 + 16);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::Type>,(void *)0>(a3, v27, v28);
LABEL_41:
  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) == v30)
  {

    llvm::raw_ostream::write(v29, ">", 1uLL);
  }

  else
  {
    *v30 = 62;
    ++*(v29 + 4);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncMemRefType::parse(mlir::ODIE::Compiler::Exec::AsyncMemRefType *this, mlir::AsmParser *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (((*(*this + 152))(this, a2) & 1) == 0)
  {
    return 0;
  }

  v24 = v26;
  v25 = 0x400000000;
  if ((*(*this + 600))(this, &v24, 0, 1))
  {
    v15 = 0;
    v3 = 0;
    if (((*(*this + 536))(this, &v15) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (((*(*this + 128))(this) & 1) == 0)
    {
      v7 = 0;
      v6 = 0;
LABEL_10:
      v14 = 0;
      if (((*(*this + 128))(this) & 1) == 0 || ((*(*this + 440))(this, &v14, 0)) && ((*(*this + 168))(this))
      {
        v8 = *(*(*this + 32))(this);
        v27 = v29;
        v28 = 0x400000000;
        if (v25)
        {
          llvm::SmallVectorImpl<long long>::operator=(&v27, &v24);
          v10 = v14;
          v9 = v15;
          v30 = v32;
          v31 = 0x400000000;
          if (v28)
          {
            llvm::SmallVectorImpl<long long>::operator=(&v30, &v27);
            if (v30 != v32)
            {
              free(v30);
            }
          }
        }

        else
        {
          v10 = v14;
          v9 = v15;
          v30 = v32;
          v31 = 0x400000000;
        }

        v17 = v8;
        v12 = *v8;
        v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
        v16[1] = &v17;
        v23[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJRNS_11SmallVectorIxLj4EEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESQ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSS_E_EEvlS7_;
        v23[1] = v16;
        v19[0] = v27;
        v19[1] = v28;
        v20 = v9;
        v21[0] = v6;
        v21[1] = v7;
        v22 = v10;
        memset(v34, 0, sizeof(v34));
        memset(v33, 0, sizeof(v33));
        v35 = 0;
        v36 = 0xFF51AFD7ED558CCDLL;
        v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v33, 0, v33, v34, v19, &v20, v21, &v22);
        v18 = v19;
        *&v33[0] = v19;
        *(&v33[0] + 1) = v23;
        v3 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v33);
        if (v27 != v29)
        {
          free(v27);
        }

        goto LABEL_18;
      }

      goto LABEL_17;
    }

    *&v33[0] = 0;
    if ((*(*this + 440))(this, v33, 0))
    {
      v4 = llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(*&v33[0]);
      if (v4)
      {
        v6 = v4;
        v7 = v5;
        goto LABEL_10;
      }
    }
  }

LABEL_17:
  v3 = 0;
LABEL_18:
  if (v24 != v26)
  {
    free(v24);
  }

  return v3;
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::detail::TypeUniquer>::attachInterface<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>(uint64_t a1)
{
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v7);
  if (!v1 || (v3 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v2);
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  v7[0] = v5;
  v7[1] = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 9, v7);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>((v3 + 1));
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncMemRefType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::attachInterface<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>(uint64_t a1)
{
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v7);
  if (!v1 || (v3 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v2);
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  v7[0] = v5;
  v7[1] = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 9, v7);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>((v3 + 1));
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::detail::TypeUniquer>::attachInterface<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>(uint64_t a1)
{
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v7);
  if (!v1 || (v3 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v2);
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  v7[0] = v5;
  v7[1] = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 9, v7);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>((v3 + 1));
}

void std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::Type>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

BOOL mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!memcmp(*(a1 + 8), *a2, 8 * v2) && *(a1 + 24) == *(a2 + 16) && *(a1 + 32) == *(a2 + 24))
  {
    return *(a1 + 48) == *(a2 + 40);
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::construct(unint64_t *a1, uint64_t a2)
{
  v10 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a1, *a2, *(a2 + 8));
  v7 = v6;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 0x38uLL, 3);
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 16) = v7;
  result = v10;
  *(v8 + 24) = v10;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJRNS_11SmallVectorIxLj4EEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESQ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSS_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v3 = *a2;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15MetaTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8MetaTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v10[1] = v6;
  v9 = v3;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v11, 0, v11, v12, &v9);
  v8 = &v9;
  *&v11[0] = &v9;
  *(&v11[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15MetaTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8MetaTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail18ContextTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_11ContextTypeEJRNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v14[1] = v9;
  v13[0] = v5;
  v13[1] = v6;
  v7 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v5 + v6, a3, a4);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*(a2 + 8), **a1, v2) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x58uLL, 3);
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, *v4, *(v4 + 8));
  *v5 = 0;
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v5 + 5;
  v5[4] = 0x600000000;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 8), v5);
  }

  return v5;
}