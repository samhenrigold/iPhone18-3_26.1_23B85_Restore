BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::AtomicOrderingAttr>(uint64_t a1, void *a2)
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

  v5 = mlir::LLVM::AtomicOrderingAttr::classof(v14);
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

  if ((atomic_load_explicit(&qword_27FC20C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20C20))
  {
    qword_27FC20C10 = llvm::detail::getTypeNameImpl<mlir::LLVM::AtomicOrderingAttr>();
    *algn_27FC20C18 = v12;
    __cxa_guard_release(&qword_27FC20C20);
  }

  if (v18)
  {
    v17 = 261;
    v15 = qword_27FC20C10;
    v16 = *algn_27FC20C18;
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

uint64_t mlir::LLVM::LoadOp::populateDefaultProperties(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v3 = mlir::IntegerType::get(*(***(result + 8) + 32), 64, 0);
    result = mlir::IntegerAttr::get(v3, 0);
    *(a2 + 56) = result;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps19(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4)
{
  v27[25] = *MEMORY[0x277D85DE8];
  v23 = 0;
  isCompatibleOuterType = mlir::LLVM::isCompatibleOuterType(a2);
  v9 = *a2;
  if (isCompatibleOuterType)
  {
    v10 = *(v9 + 136);
    v11 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID();
    v9 = *a2;
    if (v10 != v11)
    {
      v12 = *(v9 + 136);
      if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
      {
        if (v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
        {
          if ((a2[3] & 1) == 0 || (*(a2 + 7) & 5) == 4)
          {
            return 1;
          }
        }

        else
        {
          if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
          {
            return 1;
          }

          v26 = a2;
          if (mlir::LLVM::LLVMTargetExtType::supportsMemOps(&v26))
          {
            return 1;
          }
        }
      }
    }
  }

  v13 = mlir::detail::TypeIDResolver<mlir::LLVM::PointerElementTypeInterface,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v13))
  {
    return 1;
  }

  v22 = 261;
  v21[0] = a3;
  v21[1] = a4;
  mlir::Operation::emitOpError(&v26, a1, v21);
  if (v26)
  {
    mlir::Diagnostic::operator<<<3ul>(v27, " #");
  }

  v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v26, &v23);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<39ul>((v15 + 1), " must be LLVM type with size, but got ");
    if (*v16)
    {
      v24 = 4;
      v25 = a2;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v24, 1);
      v18 = v16[3] + 24 * *(v16 + 8);
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++*(v16 + 8);
    }
  }

  v14 = (v16[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  return v14;
}

BOOL mlir::LLVM::LoadOp::parse(uint64_t a1, uint64_t a2)
{
  v48[9] = *MEMORY[0x277D85DE8];
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  v32 = 0;
  v33 = 0;
  v31[0] = &v32;
  v31[1] = 1;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 80) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "atomic", 6) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      return 0;
    }

    v6 = **(*(*a1 + 32))(a1);
    v7 = *(v6 + 528);
    if (!v7)
    {
      v8 = *(v6 + 384);
      *&v39 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), &v39);
    }

    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v33, v7))
    {
      return 0;
    }

    if (v33)
    {
      v9 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2);
      *(v9 + 64) = v33;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = 0;
  v29 = 0;
  v47[0] = v48;
  v47[1] = 0x400000000;
  v48[8] = 4;
  v10 = (*(*a1 + 40))(a1);
  v43 = xmmword_2799BEB20;
  v44 = *&off_2799BEB30;
  v45 = xmmword_2799BEB40;
  v39 = xmmword_2799BEAE0;
  v40 = *&off_2799BEAF0;
  v41 = xmmword_2799BEB00;
  v42 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v28, &v39, 7))
  {
    v11 = v29;
    if (!v29)
    {
      goto LABEL_17;
    }

LABEL_15:
    v12 = mlir::LLVM::symbolizeAtomicOrdering(v28, v11);
    if (v13)
    {
      v14 = v12;
      v15 = (*(*a1 + 32))(a1);
      v16 = mlir::IntegerType::get(*v15, 64, 0);
      v17 = mlir::IntegerAttr::get(v16, v14);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 56) = v17;
      goto LABEL_17;
    }

    v26[0] = "invalid ";
    v27 = 259;
    (*(*a1 + 24))(&v39, a1, v10, v26);
    if (v39)
    {
      mlir::Diagnostic::operator<<<36ul>(&v39 + 8, "ordering attribute specification: ");
      if (v39)
      {
        v38 = 261;
        v37[0] = v28;
        v37[1] = v29;
        mlir::Diagnostic::operator<<(&v39 + 8, v37);
        if (v39)
        {
          v38 = 264;
          LOBYTE(v37[0]) = 34;
          mlir::Diagnostic::operator<<(&v39 + 8, v37);
        }
      }
    }

    goto LABEL_41;
  }

  v26[0] = 0;
  v23 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v23);
  v25 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v26, NoneType, "ordering", 8, v47);
  if ((v25 & 0x100) == 0)
  {
    v37[0] = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v38 = 259;
    (*(*a1 + 24))(&v39, a1, v10, v37);
LABEL_41:
    v21 = (v46 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    goto LABEL_43;
  }

  if (v25)
  {
    v11 = *(v26[0] + 24);
    v28 = *(v26[0] + 16);
    v29 = v11;
    if (!v11)
    {
LABEL_17:
      if (v47[0] != v48)
      {
        free(v47[0]);
      }

LABEL_19:
      if ((*(*a1 + 408))(a1, "invariant", 9))
      {
        v18 = *(**(*(*a1 + 32))(a1) + 608);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 24) = v18;
      }

      if ((*(*a1 + 408))(a1, "invariant_group", 15))
      {
        v19 = *(**(*(*a1 + 32))(a1) + 608);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 32) = v19;
      }

      v47[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v20 = *(a2 + 8);
        *&v39 = a1;
        *(&v39 + 1) = v47;
        *&v40 = a2;
        if (mlir::LLVM::LoadOp::verifyInherentAttrs(v20, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v39) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v32) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0)
        {
          *&v39 = 0;
          if ((*(*a1 + 536))(a1, &v39))
          {
            __src = v39;
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v31);
            return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v31, v5, a2 + 16);
          }
        }
      }

      return 0;
    }

    goto LABEL_15;
  }

  v21 = 0;
LABEL_43:
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  return v21;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MulOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::MulOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::MulOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MulOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void *mlir::LLVM::NoneTokenOp::inferReturnTypes(uint64_t a1, void **a2)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a2, 1uLL);
  v4 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID();
  v5 = *(*a1 + 384);
  v7 = v4;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v7);
  **a2 = *result;
  return result;
}

uint64_t mlir::LLVM::NoneTokenOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::OrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isDisjoint", 0xA, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::OrOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::OrOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

void mlir::LLVM::OrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v20 = a4;
  v21 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v21, 0, &v21, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v20, 0, &v20, 1);
  if (a5)
  {
    v8 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::OrOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  __src = v24;
  v23 = 0x200000000;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::OrOp::inferReturnTypes(Dictionary, v12, v13, v9 & 0xFFFFFFFFFFFFFFF9, v10, v14, v15, v16, v18, v19, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v17);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v23);
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::LLVM::OrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::OrOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::LLVM::OrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::OrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7)) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::LLVM::PoisonOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::LLVM::PtrToIntOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::LLVM::PtrToIntOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::ResumeOp::parse(uint64_t a1, uint64_t a2)
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

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::ReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = (*(*a1 + 40))(a1);
  memset(v12, 0, 24);
  v5 = (*(*a1 + 712))(a1, v12, 1);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v15, v12, 1);
    v7 = v15 + 32 * v16;
    v8 = v6[1];
    *v7 = *v6;
    v7[1] = v8;
    LODWORD(v16) = v16 + 1;
    if (!v16)
    {
LABEL_11:
      v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, v13, v4, a2 + 16);
      goto LABEL_13;
    }
  }

  else if (!v16)
  {
    goto LABEL_11;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v12[0] = 0;
  v9 = (*(*a1 + 552))(a1, v12);
  if ((v9 & 0x100) == 0)
  {
    goto LABEL_11;
  }

  if (v9)
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v13, v12[0]);
    goto LABEL_11;
  }

LABEL_12:
  v10 = 0;
LABEL_13:
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v10;
}

BOOL mlir::LLVM::SDivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::SDivOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::SDivOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::LLVM::SDivOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7)) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::SExtOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::SIToFPOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::SRemOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::SRemOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::SelectOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::SelectOp::inferReturnTypes(uint64_t a1, unint64_t a2, unint64_t **a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 < 3)
  {
    return 0;
  }

  **a3 = *(mlir::ValueRange::dereference_iterator(v6, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SelectOp::parse(uint64_t *a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v16[0] = v17;
  v16[1] = 0x400000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v16, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (v15 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v8 = a1, v9 = &v15, p_src = a2, mlir::LLVM::SelectOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SelectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v8)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v15 = v8, ((*(*a1 + 120))(a1)) && (v8 = 0, ((*(*a1 + 536))(a1, &v8)))
  {
    __src = v8;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v15);
    v8 = &v15;
    v9 = 1;
    p_src = &__src;
    v11 = 1;
    v12 = &__src;
    v13 = 1;
    v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(a1, v16, &v8, v4, a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return v6;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v52 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 2);
  v12 = *a3;
  v13 = *a3 + 8 * a3[1];
  v14 = a3[2];
  v15 = v14 + 8 * a3[3];
  v16 = a3[4];
  v17 = v16 + 8 * a3[5];
  v41 = v11;
  v42 = v12;
  v43 = v14;
  v44 = v16;
  v45 = v13;
  v46 = v15;
  v47 = v17;
  while (1)
  {
    if (v12 == v13 && v14 == v15 && v16 == v17)
    {
      v18 = v45 == v13 && v46 == v15;
      if (v18 && v47 == v17)
      {
        break;
      }
    }

    ++v10;
    llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::increment<0ul,1ul,2ul>(&v42);
    v12 = v42;
    v14 = v43;
    v16 = v44;
  }

  v40 = v10;
  if (v11 == v10)
  {
    v20 = *a2;
    v21 = *a3;
    v22 = *a3 + 8 * a3[1];
    v23 = a3[2];
    v24 = v23 + 8 * a3[3];
    v25 = a3[4];
    v26 = v25 + 8 * a3[5];
    v42 = *a2;
    v43 = v21;
    v44 = v23;
    v45 = v25;
    v46 = v22;
    v47 = v24;
    v48 = v26;
    v27 = *(a2 + 2);
    if (v27)
    {
      v28 = v20 + 32 * v27;
      while (1)
      {
        v29 = 0;
        v51 = 0;
        v49[3] = 0;
        v49[1] = 0;
        v49[0] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<0ul>;
        v49[2] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<1ul>;
        v50 = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<2ul>;
        do
        {
          v30 = v49[v29];
          v31 = v49[v29 + 1];
          v32 = (&v43 + (v31 >> 1));
          if (v31)
          {
            v30 = *(*v32 + v30);
          }

          v33 = v30(v32);
          v29 += 2;
        }

        while (!v33);
        if (((*(*a1 + 728))(a1, v20, *v33, a5) & 1) == 0)
        {
          break;
        }

        v42 += 32;
        llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::increment<0ul,1ul,2ul>(&v43);
        v20 = v42;
        if (v42 == v28)
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
    LOWORD(v50) = 257;
    (*(*a1 + 24))(&v42, a1, a4, v49);
    if (v42)
    {
      mlir::Diagnostic::operator<<<48ul>(&v43, "number of operands and types do not match: got ");
    }

    v35 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v42, &v41);
    v36 = v35;
    if (*v35)
    {
      mlir::Diagnostic::operator<<<15ul>((v35 + 1), " operands and ");
    }

    v37 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v36, &v40);
    v38 = v37;
    if (*v37)
    {
      mlir::Diagnostic::operator<<<7ul>((v37 + 1), " types");
    }

    v34 = (v38[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  }

  return v34;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::LLVM::ShlOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v19, 0, &v19, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v18, 0, &v18, 1);
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(a2) = a5;
  __src = v22;
  v21 = 0x200000000;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::ShlOp::inferReturnTypes(Dictionary, v10, v11, v7 & 0xFFFFFFFFFFFFFFF9, v8, v12, v13, v14, v16, v17, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v15);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v21);
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::LLVM::ShlOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

uint64_t mlir::LLVM::ShlOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::ShuffleVectorOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v8, "mask", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::ShuffleVectorOp::parse(void *a1, uint64_t a2)
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
  __src = 0;
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
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v13))
  {
    return 0;
  }

  v5 = v13;
  if (v13)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v6 = *(a2 + 8), v8[0] = a1, v8[1] = &v9, v8[2] = a2, mlir::LLVM::ShuffleVectorOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ShuffleVectorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8[0] = 0, ((*(*a1 + 536))(a1, v8)) && (v12 = v8[0], parseShuffleType(a1, v8[0], &__src, v5)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v14, *v11[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL parseShuffleType(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    v8 = *(*a2 + 136);
    v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v10 = 3;
    if (v9)
    {
      v10 = 1;
    }

    v11 = a2[v10];
    v12 = *(a4 + 16);
    isScalableVectorType = mlir::LLVM::isScalableVectorType(a2);
    *a3 = mlir::LLVM::getVectorType(v11, v12, isScalableVectorType);
    return 1;
  }

  else
  {
    v15 = (*(*a1 + 40))(a1);
    v17 = "expected an LLVM compatible vector type";
    v18 = 259;
    (*(*a1 + 24))(v19, a1, v15, &v17);
    v14 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
  }

  return v14;
}

BOOL mlir::LLVM::StoreOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
        if ((v18 & 1) == 0 || (v19 = v17[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v19, "invariantGroup", 0xE, a3, a4))
        {
          v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
          if ((v21 & 1) == 0 || (v22 = v20[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v22, "noalias_scopes", 0xE, a3, a4))
          {
            v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
            if ((v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v25, "nontemporal", 0xB, a3, a4))
            {
              v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
              if ((v27 & 1) == 0 || (v28 = v26[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v28, "ordering", 8, a3, a4))
              {
                v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
                if ((v30 & 1) == 0 || (v31 = v29[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v31, "syncscope", 9, a3, a4))
                {
                  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
                  if ((v33 & 1) == 0 || (v34 = v32[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v34, a3, a4))
                  {
                    v35 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 72));
                    if ((v36 & 1) == 0)
                    {
                      return 1;
                    }

                    v37 = v35[1];
                    if (!v37 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v37, "volatile_", 9, a3, a4))
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::StoreOp::populateDefaultProperties(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 48))
  {
    v3 = mlir::IntegerType::get(*(***(result + 8) + 32), 64, 0);
    result = mlir::IntegerAttr::get(v3, 0);
    *(a2 + 48) = result;
  }

  return result;
}

BOOL mlir::LLVM::StoreOp::parse(uint64_t a1, void *a2)
{
  v51[9] = *MEMORY[0x277D85DE8];
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  v32 = 0;
  v33 = 0;
  v31[0] = &v32;
  v31[1] = 1;
  v29[1] = 1;
  v30 = 0;
  v29[0] = &v30;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 72) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v38, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "atomic", 6) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      return 0;
    }

    v7 = (*(*a1 + 32))(a1);
    v9 = mlir::NoneType::get(*v7, v8);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v33, v9))
    {
      return 0;
    }

    if (v33)
    {
      v10 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
      *(v10 + 56) = v33;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v27 = 0;
  v28 = 0;
  v50[0] = v51;
  v50[1] = 0x400000000;
  v51[8] = 4;
  v11 = (*(*a1 + 40))(a1);
  v46 = xmmword_2799BEB20;
  v47 = *&off_2799BEB30;
  v48 = xmmword_2799BEB40;
  v42 = xmmword_2799BEAE0;
  v43 = *&off_2799BEAF0;
  v44 = xmmword_2799BEB00;
  v45 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v27, &v42, 7))
  {
    v12 = v28;
    if (!v28)
    {
      goto LABEL_17;
    }

LABEL_15:
    v13 = mlir::LLVM::symbolizeAtomicOrdering(v27, v12);
    if (v14)
    {
      v15 = v13;
      v16 = (*(*a1 + 32))(a1);
      v17 = mlir::LLVM::AtomicOrderingAttr::get(*v16, v15);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 48) = v17;
      goto LABEL_17;
    }

    v25[0] = "invalid ";
    v26 = 259;
    (*(*a1 + 24))(&v42, a1, v11, v25);
    if (v42)
    {
      mlir::Diagnostic::operator<<<36ul>(&v42 + 8, "ordering attribute specification: ");
      if (v42)
      {
        v41 = 261;
        v40[0] = v27;
        v40[1] = v28;
        mlir::Diagnostic::operator<<(&v42 + 8, v40);
        if (v42)
        {
          v41 = 264;
          LOBYTE(v40[0]) = 34;
          mlir::Diagnostic::operator<<(&v42 + 8, v40);
        }
      }
    }

    goto LABEL_40;
  }

  v25[0] = 0;
  v22 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v22);
  v24 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v25, NoneType, "ordering", 8, v50);
  if ((v24 & 0x100) == 0)
  {
    v40[0] = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v41 = 259;
    (*(*a1 + 24))(&v42, a1, v11, v40);
LABEL_40:
    v20 = (v49 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    goto LABEL_42;
  }

  if (v24)
  {
    v12 = *(v25[0] + 24);
    v27 = *(v25[0] + 16);
    v28 = v12;
    if (!v12)
    {
LABEL_17:
      if (v50[0] != v51)
      {
        free(v50[0]);
      }

LABEL_19:
      if ((*(*a1 + 408))(a1, "invariant_group", 15))
      {
        v18 = *(**(*(*a1 + 32))(a1) + 608);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 24) = v18;
      }

      v50[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        v19 = a2[1];
        *&v42 = a1;
        *(&v42 + 1) = v50;
        *&v43 = a2;
        if (mlir::LLVM::StoreOp::verifyInherentAttrs(v19, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v42) && ((*(*a1 + 104))(a1) & 1) != 0)
        {
          *&v42 = 0;
          if ((*(*a1 + 536))(a1, &v42))
          {
            v32 = v42;
            if (((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v30) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v31, v5, (a2 + 2)))
            {
              return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v29, v6, (a2 + 2));
            }
          }
        }
      }

      return 0;
    }

    goto LABEL_15;
  }

  v20 = 0;
LABEL_42:
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  return v20;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::SubOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::SubOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::SwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v10, "branch_weights", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v13, "case_operand_segments", 0x15, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps41(v16, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps41(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || mlir::DenseIntElementsAttr::classof(a1))
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
      v7[0] = "case_values";
      v7[1] = 11;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<59ul>(v10, "' failed to satisfy constraint: integer elements attribute");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::SwitchOp::parse(char **a1, void *a2)
{
  v51[16] = *MEMORY[0x277D85DE8];
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v27[0] = v28;
  v27[1] = 1;
  v25[1] = 1;
  v26 = 0;
  v24 = 0;
  v25[0] = &v26;
  v49 = v51;
  v50 = 0x400000000;
  v47[0] = &v48;
  v47[1] = 0x100000000;
  v23 = 0;
  v44 = v46;
  v45 = 0x200000000;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0xC00000000;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v4 = (*(*a1 + 5))(a1);
  if (((*(*a1 + 88))(a1, v28, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 13))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  v30 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v30))
  {
    goto LABEL_31;
  }

  v26 = v30;
  if (((*(*a1 + 15))(a1) & 1) == 0 || ((*(*a1 + 100))(a1, &v24) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 36))(a1))
  {
    v5 = (*(*a1 + 5))(a1);
    if (((*(*a1 + 90))(a1, &v49, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 13))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v47) & 1) == 0 || ((*(*a1 + 37))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0;
  }

  v21 = (*(*a1 + 5))(a1);
  v33 = &v35;
  v34 = 0x100000000;
  v30 = &v32;
  v31 = 0x100000000;
  if (parseSwitchOpCases(a1, v26, &v23, &v44, &v33, &v30))
  {
    v20 = v5;
    v22 = a2;
    v6 = v23;
    if (v23)
    {
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(v22) + 16) = v6;
    }

    if (v34)
    {
      v7 = v33;
      v8 = &v33[6 * v34];
      do
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(&v41, *v7, &(*v7)[32 * *(v7 + 2)]);
        llvm::SmallVectorTemplateBase<int,true>::push_back(&v38, *(v7 + 2));
        v7 += 6;
      }

      while (v7 != v8);
    }

    if (v31)
    {
      v9 = v30;
      v10 = &v30[8 * v31];
      do
      {
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v36, *v9, &(*v9)[8 * *(v9 + 2)]);
        v9 += 8;
      }

      while (v9 != v10);
    }

    llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v30);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v33);
    v33 = (*(*a1 + 5))(a1);
    if ((*(*a1 + 61))(a1, v22 + 14))
    {
      v11 = v22[1];
      v30 = a1;
      v31 = &v33;
      v32 = v22;
      if (mlir::LLVM::SwitchOp::verifyInherentAttrs(v11, (v22 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v22 + 25), v24);
        v12 = v45 ? v44 | 4 : 0;
        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((v22 + 25), v12, 0, v12, v45);
        v13 = v50;
        v14 = v42;
        v15 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(v22);
        v15[6] = 1;
        v15[7] = v13;
        v15[8] = v14;
        v16 = (*(*a1 + 4))(a1);
        v17 = mlir::detail::DenseArrayAttrImpl<int>::get(*v16, v38, v39);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(v22) + 8) = v17;
        if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v27, v25, v4, (v22 + 2)) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v49, v47, v20, (v22 + 2)))
        {
          v18 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v41, v36, v21, (v22 + 2));
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v30);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v33);
  }

LABEL_31:
  v18 = 0;
LABEL_32:
  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != &v48)
  {
    free(v47[0]);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  return v18;
}

uint64_t parseSwitchOpCases(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a2;
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    return 1;
  }

  v23 = v25;
  v24 = 0x300000000;
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v22);
  v20[0] = a1;
  v20[1] = &v23;
  v20[2] = &IntOrFloatBitWidth;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v12 = 0;
  if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseSwitchOpCases(mlir::OpAsmParser &,mlir::Type,mlir::DenseIntElementsAttr &,llvm::SmallVectorImpl<mlir::Block *> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>> &)::$_0>, v20, 0, 0))
  {
    v19 = v24;
    v13 = mlir::VectorType::get(&v19, 1uLL, a2, 0, 0);
    v14 = v13;
    if (v13)
    {
      v15 = *v13;
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
    }

    else
    {
      v17 = 0;
    }

    *a3 = mlir::DenseElementsAttr::get(v14, v17, v23, v24);
    v12 = (*(*a1 + 328))(a1);
  }

  llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v23);
  return v12;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::LLVM::TruncOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(a2) = a5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

BOOL mlir::LLVM::TruncOp::parse(mlir::AsmParser *a1, uint64_t a2)
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

  v5 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(a2);
  if ((parseOverflowFlags(a1, v5) & 1) == 0)
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

  v9 = __src;
  v15 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (((*(*a1 + 536))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  __src = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

BOOL mlir::LLVM::UDivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::UDivOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::UDivOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::LLVM::UDivOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::UDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7)) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::UIToFPOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "nonNeg", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::UIToFPOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  __src = 0;
  v10[0] = &v11;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v8;
  v15[2] = a2;
  if (!mlir::LLVM::UIToFPOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::UIToFPOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  v11 = v15[0];
  v16 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v15) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  __src = v15[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v5, a2 + 16);
}

uint64_t mlir::LLVM::URemOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::URemOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::UndefOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::VaArgOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
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

  v6 = *(v8 + 8);
  v5 = *(v8 + 12);
  v9[0] = *(v8 + 16);
  v9[1] = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v9[0] + 8 * v6), (v9[0] + 8 * v6 + 8 * v5));
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v9, v4, a2 + 16);
}

uint64_t mlir::LLVM::XOrOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::XOrOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::ZExtOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "nonNeg", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ZExtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  __src = 0;
  v10[0] = &v11;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v8;
  v15[2] = a2;
  if (!mlir::LLVM::ZExtOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ZExtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  v11 = v15[0];
  v16 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v15) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  __src = v15[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v5, a2 + 16);
}

uint64_t mlir::LLVM::ZeroOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
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
        mlir::Diagnostic::operator<<<65ul>(v13, "' failed to satisfy constraint: 1-bit signless integer attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps1(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
  {
    return 1;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_12;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 6;
  if (v6)
  {
    v7 = 2;
  }

  v8 = *&a2[v7];
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v8[2] >> 30))
  {
    return 1;
  }

LABEL_12:
  v17 = 261;
  v16[0] = "operand";
  v16[1] = 7;
  mlir::Operation::emitOpError(&v21, a1, v16);
  if (v21)
  {
    mlir::Diagnostic::operator<<<3ul>(v22, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<90ul>((v10 + 1), " must be signless integer or LLVM dialect-compatible vector of signless integer, but got ");
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    return 1;
  }

  v16 = 261;
  v15[0] = a3;
  v15[1] = a4;
  mlir::Operation::emitOpError(&v20, a1, v15);
  if (v20)
  {
    mlir::Diagnostic::operator<<<3ul>(v21, " #");
  }

  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v17);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<48ul>((v9 + 1), " must be LLVM dialect-compatible type, but got ");
    if (*v10)
    {
      v18 = 4;
      v19 = a2;
      v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v18, 1);
      v12 = v10[3] + 24 * *(v10 + 8);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *v12 = v13;
      ++*(v10 + 8);
    }
  }

  v8 = (v10[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  return v8;
}

uint64_t mlir::LLVM::Annotation::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(mlir::Operation *a1, _DWORD *a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
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

  v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v8 = v7;
  if (*v7)
  {
    mlir::Diagnostic::operator<<<36ul>((v7 + 1), " must be signless integer, but got ");
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 32)
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
    mlir::Diagnostic::operator<<<43ul>((v5 + 1), " must be 32-bit signless integer, but got ");
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

BOOL mlir::LLVM::AssumeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps2(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps3(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v3 = a1[1];
      if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 32)
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
      v6[0] = "op_bundle_sizes";
      v6[1] = 15;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<58ul>(v9, "' failed to satisfy constraint: i32 dense array attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps3(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
      v5[0] = "op_bundle_tags";
      v5[1] = 14;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<48ul>(v8, "' failed to satisfy constraint: array attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AssumeOp::getODSOperands(mlir::LLVM::AssumeOp *this, unsigned int a2)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps6(mlir::Operation *a1, _DWORD *a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
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

  v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v8 = v7;
  if (*v7)
  {
    mlir::Diagnostic::operator<<<42ul>((v7 + 1), " must be 1-bit signless integer, but got ");
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

BOOL mlir::LLVM::AssumeOp::parse(char **a1, void *a2)
{
  v35[6] = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  v28[0] = v29;
  v28[1] = 0x400000000;
  v25 = v27;
  v26 = 0xC00000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  v18 = 0;
  v19 = 0;
  v17[0] = &v18;
  v17[1] = 1;
  v5 = (*(*a1 + 5))(a1);
  if (((*(*a1 + 88))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = (*(*a1 + 5))(a1);
  v33 = v35;
  v34 = 0x100000000;
  v30 = &v32;
  v31 = 0x100000000;
  v7 = parseOpBundles(a1, &v33, &v30, &v19);
  if (v7 >= 0x100u)
  {
    if (v7)
    {
      if (v34)
      {
        v9 = v33;
        v2 = &v33[6 * v34];
        do
        {
          llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(v28, *v9, &(*v9)[32 * *(v9 + 2)]);
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v25, *(v9 + 2));
          v9 += 6;
        }

        while (v9 != v2);
      }

      if (v31)
      {
        v10 = v30;
        v2 = &v30[8 * v31];
        do
        {
          llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v23, *v10, &(*v10)[8 * *(v10 + 2)]);
          v10 += 8;
        }

        while (v10 != v2);
      }

      v11 = v19;
      if (v19)
      {
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(a2) + 8) = v11;
      }

      v8 = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v2) = 1;
  }

  if ((llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v30), llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v33), (v2) || v8) && ((*(*a1 + 13))(a1) & 1) != 0 && (v30 = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v30)) && (v18 = v30, v33 = (*(*a1 + 5))(a1), ((*(*a1 + 61))(a1, a2 + 14)) && (v12 = a2[1], v30 = a1, v31 = &v33, v32 = a2, mlir::LLVM::AssumeOp::verifyInherentAttrs(v12, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AssumeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1>, &v30)) && (v13 = (*(*a1 + 4))(a1), v14 = mlir::detail::DenseArrayAttrImpl<int>::get(*v13, v25, v26), *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(a2) = v14, mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v20, v17, v5, (a2 + 2))))
  {
    v15 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v28, v23, v6, (a2 + 2));
  }

  else
  {
LABEL_23:
    v15 = 0;
  }

  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return v15;
}

uint64_t mlir::LLVM::BitReverseOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::BitReverseOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::ByteSwapOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::ByteSwapOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::ConstrainedFPTruncIntr::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps5(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps4(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps5(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::FPExceptionBehaviorAttr::classof(a1))
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
      v7[0] = "fpExceptionBehavior";
      v7[1] = 19;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<56ul>(v10, "' failed to satisfy constraint: LLVM Exception Behavior");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps4(void *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::RoundingModeAttr::classof(a1))
  {
    v10 = a1;
    if ((mlir::IntegerAttr::getInt(&v10) & 0x8000000000000000) == 0)
    {
      return 1;
    }
  }

  a2(&v10, a3);
  if (v10)
  {
    mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
    if (v10)
    {
      v9 = 261;
      v8[0] = "roundingmode";
      v8[1] = 12;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<76ul>(v11, "' failed to satisfy constraint: LLVM Rounding Mode whose minimum value is 0");
      }
    }
  }

  v6 = (v11[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  return v6;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ConstrainedFPTruncIntr::parse(uint64_t a1, uint64_t a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36[0] = v37;
  v36[1] = 1;
  v34[1] = 1;
  v35 = 0;
  v34[0] = &v35;
  v53 = v55;
  v54 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v37, 1) & 1) == 0)
  {
LABEL_21:
    v21 = 0;
    goto LABEL_39;
  }

  v32 = 0;
  v33 = 0;
  v49 = v51;
  v50 = 0x400000000;
  v52 = 4;
  v5 = (*(*a1 + 40))(a1);
  v45 = xmmword_2799BEB90;
  v46 = *&off_2799BEBA0;
  v47 = xmmword_2799BEBB0;
  v41 = xmmword_2799BEB50;
  v42 = *&off_2799BEB60;
  v43 = xmmword_2799BEB70;
  v44 = *&off_2799BEB80;
  if ((*(*a1 + 424))(a1, &v32, &v41, 7))
  {
    v6 = v33;
    if (v33)
    {
LABEL_4:
      v7 = mlir::LLVM::symbolizeRoundingMode(v32, v6);
      if ((v8 & 1) == 0)
      {
        v30[0] = "invalid ";
        v31 = 259;
        (*(*a1 + 24))(&v41, a1, v5, v30);
        if (v41)
        {
          mlir::Diagnostic::operator<<<40ul>(&v41 + 8, "roundingmode attribute specification: ");
LABEL_44:
          if (v41)
          {
            v40 = 261;
            v39[0] = v32;
            v39[1] = v33;
            mlir::Diagnostic::operator<<(&v41 + 8, v39);
            if (v41)
            {
              v40 = 264;
              LOBYTE(v39[0]) = 34;
              mlir::Diagnostic::operator<<(&v41 + 8, v39);
            }
          }
        }

LABEL_30:
        v21 = (v48 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
        goto LABEL_37;
      }

      v9 = v7;
      v10 = (*(*a1 + 32))(a1);
      v11 = mlir::IntegerType::get(*v10, 64, 0);
      v12 = mlir::IntegerAttr::get(v11, v9);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(a2) + 8) = v12;
    }

LABEL_6:
    if (v49 != v51)
    {
      free(v49);
    }

    v32 = 0;
    v33 = 0;
    v49 = v51;
    v50 = 0x400000000;
    v52 = 4;
    v5 = (*(*a1 + 40))(a1);
    v41 = xmmword_2799BEBC0;
    v42 = *&off_2799BEBD0;
    v43 = xmmword_2799BEBE0;
    if ((*(*a1 + 424))(a1, &v32, &v41, 3))
    {
      v13 = v33;
      if (!v33)
      {
        goto LABEL_12;
      }

LABEL_10:
      v14 = mlir::LLVM::symbolizeFPExceptionBehavior(v32, v13);
      if (v15)
      {
        v16 = v14;
        v17 = (*(*a1 + 32))(a1);
        v18 = mlir::IntegerType::get(*v17, 64, 0);
        v19 = mlir::IntegerAttr::get(v18, v16);
        *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(a2) = v19;
        goto LABEL_12;
      }

      v30[0] = "invalid ";
      v31 = 259;
      (*(*a1 + 24))(&v41, a1, v5, v30);
      if (!v41)
      {
        goto LABEL_30;
      }

      mlir::Diagnostic::operator<<<47ul>(&v41 + 8, "fpExceptionBehavior attribute specification: ");
      goto LABEL_44;
    }

    v30[0] = 0;
    v26 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v26);
    v28 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v30, NoneType, "fpExceptionBehavior", 0x13, &v49);
    if ((v28 & 0x100) == 0)
    {
      v25 = "expected string or keyword containing one of the following enum values for attribute 'fpExceptionBehavior' [ignore, maytrap, strict]";
      goto LABEL_29;
    }

    if (v28)
    {
      v13 = *(v30[0] + 24);
      v32 = *(v30[0] + 16);
      v33 = v13;
      if (!v13)
      {
LABEL_12:
        if (v49 != v51)
        {
          free(v49);
        }

        v49 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v20 = *(a2 + 8);
          *&v41 = a1;
          *(&v41 + 1) = &v49;
          *&v42 = a2;
          if (mlir::LLVM::ConstrainedFPTruncIntr::verifyInherentAttrs(v20, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ConstrainedFPTruncIntr::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v41) && ((*(*a1 + 104))(a1) & 1) != 0)
          {
            *&v41 = 0;
            if ((*(*a1 + 536))(a1, &v41))
            {
              v35 = v41;
              LOWORD(v43) = 257;
              if ((*(*a1 + 400))(a1, "to", 2, &v41) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v53))
              {
                llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v53, &v53[8 * v54]);
                v21 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v36, v34, v4, a2 + 16);
                goto LABEL_39;
              }
            }
          }
        }

        goto LABEL_21;
      }

      goto LABEL_10;
    }

    goto LABEL_36;
  }

  v30[0] = 0;
  v22 = (*(*a1 + 32))(a1);
  v23 = mlir::Builder::getNoneType(v22);
  v24 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v30, v23, "roundingmode", 0xC, &v49);
  if ((v24 & 0x100) == 0)
  {
    v25 = "expected string or keyword containing one of the following enum values for attribute 'roundingmode' [towardzero, tonearest, upward, downward, tonearestaway, dynamic, invalid]";
LABEL_29:
    v39[0] = v25;
    v40 = 259;
    (*(*a1 + 24))(&v41, a1, v5, v39);
    goto LABEL_30;
  }

  if (v24)
  {
    v6 = *(v30[0] + 24);
    v32 = *(v30[0] + 16);
    v33 = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

LABEL_36:
  v21 = 0;
LABEL_37:
  if (v49 != v51)
  {
    free(v49);
  }

LABEL_39:
  if (v53 != v55)
  {
    free(v53);
  }

  return v21;
}

BOOL mlir::LLVM::CopySignOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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

uint64_t mlir::LLVM::CopySignOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps8(mlir::Operation *a1, char *a2, unsigned int a3)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v20 = a3;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
  {
    return 1;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v6 = *(*a2 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v8 = 24;
  if (v7)
  {
    v8 = 8;
  }

  if (mlir::LLVM::isCompatibleFloatingPointType(*&a2[v8]))
  {
    return 1;
  }

LABEL_10:
  v19 = 261;
  v18[0] = "operand";
  v18[1] = 7;
  mlir::Operation::emitOpError(&v24, a1, v18);
  if (v24)
  {
    mlir::Diagnostic::operator<<<3ul>(v25, " #");
  }

  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v20);
  v10 = v9;
  if (*v9)
  {
    v21 = 3;
    v22 = " must be floating point LLVM type or LLVM dialect-compatible vector of floating point LLVM type, but got ";
    v23 = 105;
    v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v9 + 3), &v21, 1);
    v12 = v10[3] + 24 * *(v10 + 8);
    v13 = *v11;
    *(v12 + 16) = *(v11 + 16);
    *v12 = v13;
    ++*(v10 + 8);
    if (*v10)
    {
      v21 = 4;
      v22 = a2;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v21, 1);
      v15 = v10[3] + 24 * *(v10 + 8);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++*(v10 + 8);
    }
  }

  v5 = (v10[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  return v5;
}

BOOL mlir::LLVM::CopySignOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::CopySignOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CopySignOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

uint64_t mlir::LLVM::CoroAlignOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps9(mlir::Operation *a1, uint64_t a2, unsigned int a3)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v5 = *(*a2 + 136);
  if (v5 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID())
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

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<35ul>((v6 + 1), " must be LLVM token type, but got ");
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

BOOL mlir::LLVM::CoroBeginOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v14;
  v8[1] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::LLVM::CoroEndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v17;
  v8[1] = v14;
  v8[2] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(a2);
  v30 = a3[1];
  v31 = v10;
  if (v10 == v30)
  {
    v11 = a2[1];
    v12 = a2[2];
    v13 = **a2;
    v14 = v13 + 32 * (*a2)[1];
    v15 = *v11;
    v16 = *v11 + 32 * v11[1];
    v17 = *v12;
    v18 = *v12 + 32 * v12[1];
    v19 = *a3;
    v32 = v13;
    v33 = v15;
    v34 = v17;
    v35 = v14;
    v36 = v16;
    v37 = v18;
    v38 = v19;
    while (1)
    {
      if (v13 == v14 && v15 == v16 && v17 == v18)
      {
        v20 = v35 == v14 && v36 == v16;
        if (v20 && v37 == v18)
        {
          break;
        }
      }

      v22 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::get<0ul,1ul,2ul>(&v32);
      if (((*(*a1 + 728))(a1, v22, *v38, a5) & 1) == 0)
      {
        return 0;
      }

      llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul>(&v32);
      v15 = v33;
      v17 = v34;
      ++v38;
      v13 = v32;
    }

    return 1;
  }

  else
  {
    v29[16] = 257;
    (*(*a1 + 24))(&v32, a1, a4, v29);
    if (v32)
    {
      mlir::Diagnostic::operator<<<48ul>(&v33, "number of operands and types do not match: got ");
    }

    v23 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v32, &v31);
    v24 = v23;
    if (*v23)
    {
      mlir::Diagnostic::operator<<<15ul>((v23 + 1), " operands and ");
    }

    v25 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v24, &v30);
    v26 = v25;
    if (*v25)
    {
      mlir::Diagnostic::operator<<<7ul>((v25 + 1), " types");
    }

    v27 = (v26[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  }

  return v27;
}

BOOL mlir::LLVM::CoroFreeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v14;
  v8[1] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::LLVM::CoroIdOp::parse(uint64_t a1, uint64_t a2)
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
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10 = 0;
  v11 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10 = *(v9 + 16);
  v11 = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10 + 8 * v5), (v10 + 8 * v5 + 8 * v4));
  v8[0] = v21;
  v8[1] = v18;
  v8[2] = v15;
  v8[3] = v12;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, &v10, v6, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v61 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = **a2;
  v15 = v14 + 32 * (*a2)[1];
  v16 = *v11;
  v17 = *v11 + 32 * v11[1];
  v18 = *v12;
  v19 = *v12 + 32 * v12[1];
  v20 = *v13;
  v21 = *v13 + 32 * v13[1];
  v47 = v14;
  v48 = v16;
  v49 = v18;
  v50 = v20;
  v51 = v15;
  v52 = v17;
  v53 = v19;
  v54 = v21;
  while (v14 != v15 || v16 != v17 || v18 != v19 || v20 != v21 || v51 != v15 || v52 != v17 || v53 != v19 || v54 != v21)
  {
    ++v10;
    llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul,3ul>(&v47);
    v14 = v47;
    v16 = v48;
    v18 = v49;
    v20 = v50;
  }

  v45 = a3[1];
  v46 = v10;
  if (v45 == v10)
  {
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[3];
    v25 = **a2;
    v26 = v25 + 32 * (*a2)[1];
    v27 = *v22;
    v28 = *v22 + 32 * v22[1];
    v29 = *v23;
    v30 = *v23 + 32 * v23[1];
    v31 = *v24;
    v32 = *v24 + 32 * v24[1];
    v33 = *a3;
    v47 = v25;
    v48 = v27;
    v49 = v29;
    v50 = v31;
    v51 = v26;
    v52 = v28;
    v53 = v30;
    v54 = v32;
    v55 = v33;
    while (v25 != v26 || v27 != v28 || v29 != v30 || v31 != v32 || v51 != v26 || v52 != v28 || v53 != v30 || v54 != v32)
    {
      v34 = 0;
      v60 = 0;
      v58 = 0;
      v56[3] = 0;
      v56[1] = 0;
      v56[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>;
      v56[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>;
      v57 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>;
      v59 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<3ul>;
      do
      {
        v35 = v56[v34];
        v36 = v56[v34 + 1];
        v37 = (&v47 + (v36 >> 1));
        if (v36)
        {
          v35 = *(*v37 + v35);
        }

        v38 = v35(v37);
        v34 += 2;
      }

      while (!v38);
      if (((*(*a1 + 728))(a1, v38, *v55, a5) & 1) == 0)
      {
        return 0;
      }

      llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul,3ul>(&v47);
      ++v55;
      v25 = v47;
      v27 = v48;
      v29 = v49;
      v31 = v50;
    }

    return 1;
  }

  else
  {
    LOWORD(v57) = 257;
    (*(*a1 + 24))(&v47, a1, a4, v56);
    if (v47)
    {
      mlir::Diagnostic::operator<<<48ul>(&v48, "number of operands and types do not match: got ");
    }

    v39 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v47, &v46);
    v40 = v39;
    if (*v39)
    {
      mlir::Diagnostic::operator<<<15ul>((v39 + 1), " operands and ");
    }

    v41 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v40, &v45);
    v42 = v41;
    if (*v41)
    {
      mlir::Diagnostic::operator<<<7ul>((v41 + 1), " types");
    }

    v43 = (v42[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
  }

  return v43;
}

BOOL mlir::LLVM::CoroPromiseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v17;
  v8[1] = v14;
  v8[2] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::LLVM::CoroResumeOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::CoroSaveOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
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

uint64_t mlir::LLVM::CoroSizeOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::CoroSuspendOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v13, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, ((*(*a1 + 536))(a1, &v9)) && (__src = v9, v4 = (*(*a1 + 32))(a1), v5 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMTokenType>(*v4), v6 = (*(*a1 + 32))(a1), v7 = mlir::IntegerType::get(*v6, 1, 0), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v11), ((*(*a1 + 728))(a1, v13, v5, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v11, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::CosOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::CosOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::CosOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::CosOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CosOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::CoshOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::CoshOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::CoshOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::CoshOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CoshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

uint64_t mlir::LLVM::CtPopOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::CtPopOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::DbgDeclareOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
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
      v5[0] = "locationExpr";
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
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
      v5[0] = "varInfo";
      v5[1] = 7;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::DIExpressionAttr>(uint64_t a1, void *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC215D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC215D8))
  {
    qword_27FC215C8 = llvm::detail::getTypeNameImpl<mlir::LLVM::DIExpressionAttr>();
    unk_27FC215D0 = v11;
    __cxa_guard_release(&qword_27FC215D8);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC215C8;
    v15 = unk_27FC215D0;
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

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::DILocalVariableAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC215F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC215F0))
  {
    qword_27FC215E0 = llvm::detail::getTypeNameImpl<mlir::LLVM::DILocalVariableAttr>();
    *algn_27FC215E8 = v11;
    __cxa_guard_release(&qword_27FC215F0);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC215E0;
    v15 = *algn_27FC215E8;
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

BOOL mlir::LLVM::DbgDeclareOp::parse(uint64_t a1, void *a2)
{
  v17 = 0;
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DILocalVariableAttr>(a1, &v18))
  {
    return 0;
  }

  v4 = v18;
  if (v18)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  v5 = (*(*a1 + 456))(a1, &v17, 0);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    if (v17)
    {
      v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(a2);
      *v6 = v17;
    }
  }

  if ((*(*a1 + 136))(a1))
  {
    v7 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
    {
      v11 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        v8 = a2[1];
        v10[0] = a1;
        v10[1] = &v11;
        v10[2] = a2;
        if (mlir::LLVM::DbgDeclareOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgDeclareOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
        {
          return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, (a2 + 2));
        }
      }
    }
  }

  return 0;
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DILocalVariableAttr>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 440))(a1, &v10, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
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

BOOL mlir::LLVM::DbgLabelOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps9(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps9(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id)
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
      v5[0] = "label";
      v5[1] = 5;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::DbgLabelOp::parse(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if (((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM11DILabelAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12) & 1) == 0)
  {
    return 0;
  }

  v5 = v11;
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  else
  {
    v9[0] = "invalid kind of attribute specified";
    v10 = 259;
    (*(*a1 + 24))(v12, a1, v4, v9);
    v6 = v13;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    if (v6)
    {
      return 0;
    }
  }

  v9[0] = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v7 = a2[1];
    v12[0] = a1;
    v12[1] = v9;
    v12[2] = a2;
    if (mlir::LLVM::DbgLabelOp::verifyInherentAttrs(v7, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgLabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12))
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::LLVM::DbgValueOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::LLVM::DbgValueOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v9, 0, &v9, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2);
  result[1] = a4;
  if (a5)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2);
    *result = a5;
  }

  return result;
}

BOOL mlir::LLVM::DbgValueOp::parse(uint64_t a1, void *a2)
{
  v17 = 0;
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DILocalVariableAttr>(a1, &v18))
  {
    return 0;
  }

  v4 = v18;
  if (v18)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  v5 = (*(*a1 + 456))(a1, &v17, 0);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    if (v17)
    {
      v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2);
      *v6 = v17;
    }
  }

  if ((*(*a1 + 136))(a1))
  {
    v7 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
    {
      v11 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        v8 = a2[1];
        v10[0] = a1;
        v10[1] = &v11;
        v10[2] = a2;
        if (mlir::LLVM::DbgValueOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
        {
          return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, (a2 + 2));
        }
      }
    }
  }

  return 0;
}

BOOL mlir::LLVM::EhTypeidForOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
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

BOOL mlir::LLVM::Exp2Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::Exp2Op::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::Exp2Op::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::Exp2Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Exp2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::ExpOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::ExpOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::ExpOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::ExpOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

uint64_t mlir::LLVM::ExpectOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::ExpectOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7[1] = 1;
  __src = 0;
  v7[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, *v7[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::ExpectWithProbabilityOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps10(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps10(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
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
      v5[0] = "prob";
      v5[1] = 4;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<55ul>(v8, "' failed to satisfy constraint: 64-bit float attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::ExpectWithProbabilityOp::inferReturnTypes(uint64_t a1, unint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::ExpectWithProbabilityOp::parse(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v12[1] = 1;
  __src = 0;
  v12[0] = &__src;
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

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  F64Type = mlir::Builder::getF64Type(v5);
  v7 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, F64Type) & 1) == 0)
  {
    return 0;
  }

  v8 = v21;
  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  else
  {
    v19[0] = "invalid kind of attribute specified";
    v20 = 259;
    (*(*a1 + 24))(v22, a1, v7, v19);
    v9 = v23;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
    if (v9)
    {
      return 0;
    }
  }

  v19[0] = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v10 = *(a2 + 8);
    v22[0] = a1;
    v22[1] = v19;
    v22[2] = a2;
    if (mlir::LLVM::ExpectWithProbabilityOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExpectWithProbabilityOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v22) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v22[0] = 0;
      if (mlir::AsmParser::parseType<mlir::IntegerType>(a1, v22))
      {
        __src = v22[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14);
        if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v12, v4, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v14, *v12[0], a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::LLVM::FAbsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::FAbsOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FAbsOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::FAbsOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FAbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::FCeilOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::FCeilOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FCeilOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::FCeilOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FCeilOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::FFloorOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::FFloorOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FFloorOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::FFloorOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FFloorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::FMAOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::FMAOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FMAOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::FMAOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMAOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::FMulAddOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::FMulAddOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FMulAddOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::FMulAddOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMulAddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::FTruncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::FTruncOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FTruncOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::FTruncOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FTruncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

uint64_t mlir::LLVM::FshlOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FshlOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::FshrOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FshrOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::GetActiveLaneMaskOp::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v16, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v13, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, &__src)) && (v9 = __src, v20 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src)) && (v7 = 0, ((*(*a1 + 536))(a1, &v7)) && (__src = v7, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v19), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::InvariantEndOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps10(mlir::Operation *a1, _DWORD *a2, const char *a3, const char *a4)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id && !a2[2])
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
    mlir::Diagnostic::operator<<<51ul>((v5 + 1), " must be LLVM pointer in address space 0, but got ");
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

BOOL mlir::LLVM::InvariantEndOp::parse(uint64_t a1, void *a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v19, v5))
  {
    return 0;
  }

  if (v19)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>(a2);
    *v6 = v19;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && (v13 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v8 = a2[1], v12[0] = a1, v12[1] = &v13, v12[2] = a2, mlir::LLVM::InvariantEndOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InvariantEndOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v15) & 1) != 0 && (v9 = *(*(*a1 + 32))(a1), LODWORD(v12[0]) = 0, v10 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, v12), ((*(*a1 + 728))(a1, v20, v10, a2 + 2)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v14, v7, (a2 + 2));
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::InvariantStartOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::InvariantStartOp::parse(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v19, v5))
  {
    return 0;
  }

  if (v19)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>(a2);
    *v6 = v19;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v11 = a1;
  v12[0] = &v13;
  v12[1] = a2;
  if (!mlir::LLVM::InvariantStartOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InvariantStartOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v11) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v15) & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(*a1 + 32))(a1);
  LODWORD(v11) = 0;
  v11 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, &v11);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v11, v12);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v14, v7, a2 + 16);
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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
        mlir::Diagnostic::operator<<<66ul>(v13, "' failed to satisfy constraint: 32-bit signless integer attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

uint64_t mlir::LLVM::LaunderInvariantGroupOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::LaunderInvariantGroupOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::LifetimeEndOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::LLVM::LifetimeEndOp::build(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v10, 0, &v10, 1);
  v7 = mlir::IntegerType::get(*a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v7, a3);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(a2);
  *result = IntegerAttr;
  return result;
}

BOOL mlir::LLVM::LifetimeEndOp::parse(uint64_t a1, void *a2)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, v5))
  {
    return 0;
  }

  if (v17)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(a2);
    *v6 = v17;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v15, 1)) && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v8 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LifetimeEndOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LifetimeEndOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, (a2 + 2));
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LifetimeStartOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::LLVM::LifetimeStartOp::build(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v10, 0, &v10, 1);
  v7 = mlir::IntegerType::get(*a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v7, a3);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(a2);
  *result = IntegerAttr;
  return result;
}

BOOL mlir::LLVM::LifetimeStartOp::parse(uint64_t a1, void *a2)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, v5))
  {
    return 0;
  }

  if (v17)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(a2);
    *v6 = v17;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v15, 1)) && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v8 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LifetimeStartOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LifetimeStartOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, (a2 + 2));
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps11(mlir::Operation *a1, uint64_t a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
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
    mlir::Diagnostic::operator<<<44ul>((v5 + 1), " must be floating point LLVM type, but got ");
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

BOOL mlir::LLVM::LlrintOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::LlroundOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::Log10Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::Log10Op::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::Log10Op::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::Log10Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Log10Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::Log2Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::Log2Op::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::Log2Op::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::Log2Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Log2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::LogOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::LogOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::LogOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::LogOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LogOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::LrintOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::LroundOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::MaskedLoadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "alignment", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps13(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps13(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
      v5[0] = "nontemporal";
      v5[1] = 11;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<47ul>(v8, "' failed to satisfy constraint: unit attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::LLVM::MaskedLoadOp::getODSOperands(mlir::LLVM::MaskedLoadOp *this, unsigned int a2)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a3;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 3;
  if (v6)
  {
    v7 = 1;
  }

  v8 = a2[v7];
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v8[2] == 1)
  {
    return 1;
  }

LABEL_10:
  v17 = 261;
  v16[0] = "operand";
  v16[1] = 7;
  mlir::Operation::emitOpError(&v21, a1, v16);
  if (v21)
  {
    mlir::Diagnostic::operator<<<3ul>(v22, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<76ul>((v10 + 1), " must be LLVM dialect-compatible vector of 1-bit signless integer, but got ");
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps13(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (mlir::LLVM::isCompatibleVectorType(a2))
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
    mlir::Diagnostic::operator<<<67ul>((v6 + 1), " must be variadic of LLVM dialect-compatible vector type, but got ");
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(mlir::Operation *a1, void *a2, const char *a3, const char *a4, unsigned int a5)
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

BOOL mlir::LLVM::MaskedLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::MaskedLoadOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaskedLoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::MaskedStoreOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

BOOL mlir::LLVM::MaskedStoreOp::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v7 = *(a2 + 8), v25[0] = a1, v25[1] = &v9, v25[2] = a2, mlir::LLVM::MaskedStoreOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaskedStoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v25)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v15 = v25[0], ((*(*a1 + 120))(a1)) && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v13 = v25[0], v26 = 257, ((*(*a1 + 400))(a1, "into", 4, v25)) && ((*(*a1 + 536))(a1, &v11) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v10, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v12, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixColumnMajorLoadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "columns", 7, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(v13, "isVolatile", 0xA, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v16, "rows", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixColumnMajorLoadOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 152))(a1) & 1) != 0 && (v20 = 257, ((*(*a1 + 400))(a1, "stride", 6, v19)) && ((*(*a1 + 136))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 168))(a1) & 1) != 0 && (__src = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v6 = *(a2 + 8), v19[0] = a1, v19[1] = &__src, v19[2] = a2, mlir::LLVM::MatrixColumnMajorLoadOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixColumnMajorLoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v19[0] = 0, ((*(*a1 + 536))(a1, v19)) && (__src = v19[0], v20 = 257, ((*(*a1 + 400))(a1, "from", 4, v19)) && ((*(*a1 + 536))(a1, &v11) & 1) != 0 && (v20 = 257, ((*(*a1 + 400))(a1, "stride", 6, v19)) && (v19[0] = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, v19)) && (v9 = v19[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v8, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixColumnMajorStoreOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "columns", 7, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(v13, "isVolatile", 0xA, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v16, "rows", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixColumnMajorStoreOp::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 152))(a1) & 1) != 0 && (v26 = 257, ((*(*a1 + 400))(a1, "stride", 6, v25)) && ((*(*a1 + 136))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 168))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v7 = *(a2 + 8), v25[0] = a1, v25[1] = &v9, v25[2] = a2, mlir::LLVM::MatrixColumnMajorStoreOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixColumnMajorStoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v25)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v15 = v25[0], v26 = 257, ((*(*a1 + 400))(a1, "to", 2, v25)) && ((*(*a1 + 536))(a1, &v13) & 1) != 0 && (v26 = 257, ((*(*a1 + 400))(a1, "stride", 6, v25)) && (v25[0] = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, v25)) && (v11 = v25[0], mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixMultiplyOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "lhs_columns", 0xB, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v13, "lhs_rows", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v16, "rhs_columns", 0xB, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixMultiplyOp::parse(uint64_t a1, uint64_t a2)
{
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
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v19, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v16, 1)) && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v6 = *(a2 + 8), v8 = a1, v9[0] = &v10, v9[1] = a2, mlir::LLVM::MatrixMultiplyOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixMultiplyOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v8)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v14 = v8, ((*(*a1 + 120))(a1)) && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v12 = v8, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v10 = 0, ((*(*a1 + 536))(a1, &v10)) && (v8 = v10, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v8, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v13, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v11, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixTransposeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "columns", 7, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v13, "rows", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixTransposeOp::parse(uint64_t a1, uint64_t a2)
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

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  __src = a1;
  v14[0] = &v7;
  v14[1] = a2;
  if (!mlir::LLVM::MatrixTransposeOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixTransposeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
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
  v15 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &__src) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (((*(*a1 + 536))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  __src = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

BOOL mlir::LLVM::MaxNumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::MaxNumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::MaxNumOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::MaxNumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaxNumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::MaximumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::MaximumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::MaximumOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::MaximumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaximumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps15(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps16(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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
      v5[0] = "len";
      v5[1] = 3;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<60ul>(v8, "' failed to satisfy constraint: arbitrary integer attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps17(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemcpyInlineOp::getIsVolatile(mlir::LLVM::MemcpyInlineOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemcpyInlineOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2) + 24) = a5;
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    result[4] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    result[5] = a10;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemcpyOp::getIsVolatile(mlir::LLVM::MemcpyOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemcpyOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v15, 0, &v15, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    result[4] = a10;
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemmoveOp::getIsVolatile(mlir::LLVM::MemmoveOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemmoveOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v15, 0, &v15, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    result[4] = a10;
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemsetInlineOp::getIsVolatile(mlir::LLVM::MemsetInlineOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemsetInlineOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2) + 24) = a5;
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    result[4] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    result[5] = a10;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps15(mlir::Operation *a1, _DWORD *a2)
{
  v16[25] = *MEMORY[0x277D85DE8];
  v12 = 1;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 8)
  {
    return 1;
  }

  v11 = 261;
  v10[0] = "operand";
  v10[1] = 7;
  mlir::Operation::emitOpError(&v15, a1, v10);
  if (v15)
  {
    mlir::Diagnostic::operator<<<3ul>(v16, " #");
  }

  v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v15, &v12);
  v5 = v4;
  if (*v4)
  {
    mlir::Diagnostic::operator<<<42ul>((v4 + 1), " must be 8-bit signless integer, but got ");
    if (*v5)
    {
      v13 = 4;
      v14 = a2;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v5 + 3), &v13, 1);
      v7 = v5[3] + 24 * *(v5 + 8);
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++*(v5 + 8);
    }
  }

  v3 = (v5[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemsetOp::getIsVolatile(mlir::LLVM::MemsetOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemsetOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v15, 0, &v15, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    result[4] = a10;
  }

  return result;
}

BOOL mlir::LLVM::MinNumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::MinNumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::MinNumOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::MinNumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MinNumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::MinimumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::MinimumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::MinimumOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::MinimumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MinimumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::NearbyintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::NearbyintOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::NearbyintOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::NearbyintOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::NearbyintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::NoAliasScopeDeclOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps18(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps18(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
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
      v5[0] = "scope";
      v5[1] = 5;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<57ul>(v8, "' failed to satisfy constraint: LLVM dialect alias scope");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::NoAliasScopeDeclOp::parse(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if (((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14AliasScopeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12) & 1) == 0)
  {
    return 0;
  }

  v5 = v11;
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  else
  {
    v9[0] = "invalid kind of attribute specified";
    v10 = 259;
    (*(*a1 + 24))(v12, a1, v4, v9);
    v6 = v13;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    if (v6)
    {
      return 0;
    }
  }

  v9[0] = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v7 = a2[1];
    v12[0] = a1;
    v12[1] = v9;
    v12[2] = a2;
    if (mlir::LLVM::NoAliasScopeDeclOp::verifyInherentAttrs(v7, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::NoAliasScopeDeclOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12))
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::LLVM::PowIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

BOOL mlir::LLVM::PowIOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::PowIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::PowIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::PowOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::PowOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::PowOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::PowOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::PowOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

uint64_t mlir::LLVM::PtrAnnotation::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::RintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::RintOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::RintOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::RintOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::RoundEvenOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::RoundEvenOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::RoundEvenOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::RoundEvenOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RoundEvenOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::RoundOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::RoundOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::RoundOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::RoundOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RoundOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

uint64_t mlir::LLVM::SAddSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SAddSat::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::SMaxOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SMaxOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::SMinOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SMinOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::LLVM::SSACopyOp::build(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v15, 0, &v15, 1);
  __src = v18;
  v17 = 0x200000000;
  v4 = *(a2 + 2);
  v5 = a2[6];
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  if (!mlir::LLVM::SSACopyOp::inferReturnTypes(Dictionary, v7, v8, v4 & 0xFFFFFFFFFFFFFFF9, v5, v9, v10, v11, v13, v14, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v12);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v17);
  if (__src != v18)
  {
    free(__src);
  }
}

uint64_t mlir::LLVM::SSACopyOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::LLVM::SSACopyOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::SSHLSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SSHLSat::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::SSubSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SSubSat::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::SinOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::SinOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SinOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::SinOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SinOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::SinhOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::SinhOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SinhOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::SinhOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SinhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::SqrtOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::SqrtOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::SqrtOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v11 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::LLVM::SqrtOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v9)))
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

BOOL mlir::LLVM::StackRestoreOp::parse(uint64_t a1, uint64_t a2)
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