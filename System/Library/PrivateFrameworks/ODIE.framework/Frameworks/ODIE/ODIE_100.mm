BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v7 = *(*a1 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v8 = a1[1];
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v8[2] == -2147483616)
    {
      return 1;
    }
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
        mlir::Diagnostic::operator<<<86ul>(v14, "' failed to satisfy constraint: 32-bit unsigned integer attribute or string attribute");
      }
    }
  }

  v9 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::BranchOp::verifyInvariantsImpl(unsigned int **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(v3, "dest", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v6 = "requires attribute 'dest'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id)
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
    mlir::Diagnostic::operator<<<85ul>((v6 + 1), " must be A register in the ODIX dialect that abstracts away concrete types, but got ");
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

uint64_t mlir::ODIE::Compiler::ODIX::BranchOp::verify(mlir::ODIE::Compiler::ODIX::BranchOp *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      goto LABEL_24;
    }

    v13[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    UInt = mlir::IntegerAttr::getUInt(v13);
    v5 = *(v1 + 16);
    if (v5)
    {
      v5 = (v5[3] & 0xFFFFFFFFFFFFFFF8);
    }

    if (*v5 == v5)
    {
      goto LABEL_22;
    }

    for (i = v5[1]; i != v5; i = i[1])
    {
      v7 = i - 1;
      if (!i)
      {
        v7 = 0;
      }

      if (v7[4] != v7 + 4)
      {
        break;
      }
    }

    if (i == v5)
    {
      goto LABEL_22;
    }

    v9 = i - 1;
    if (!i)
    {
      v9 = 0;
    }

    v10 = v9[5];
    v15 = v5;
    v16 = i;
    v17 = v10;
    if (!v10)
    {
LABEL_22:
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        ++v11;
        mlir::Region::OpIterator::operator++(&v15);
      }

      while (v17);
    }

    if (UInt > v11)
    {
      goto LABEL_24;
    }

    return 1;
  }

  if (mlir::ODIE::Compiler::ODIX::labelOpByName((*(*(v1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v2) || mlir::ODIE::Compiler::ODIX::destOpByLabelAttr((*(*(v1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v2))
  {
    return 1;
  }

LABEL_24:
  v14 = 257;
  mlir::Operation::emitError(&v15, v1, v13);
  if (v15)
  {
    mlir::Diagnostic::operator<<<42ul>(&v16, "jump/branch has invalid destination label");
  }

  v8 = (v18 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v8;
}

uint64_t mlir::ODIE::Compiler::ODIX::BranchOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v4 || *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 0;
  }

  result = mlir::ODIE::Compiler::ODIX::labelOpByName((*(*(a1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v4);
  if (result)
  {
    v7 = *(result + 8);
    if (v7 != *(result + 16) + 32 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LabelOp,void>::id)
    {
      (*(*a2 + 40))(a2, a1);
      *(v3 + 16 * ((*(a1 + 44) >> 23) & 1)) = *(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 64);
      (*(*a2 + 48))(a2, a1);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::BranchOp::parse(uint64_t a1, void *a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0 || ((*(*a1 + 56))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v11, 0) & 1) == 0)
  {
    return 0;
  }

  if (v11)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>(a2);
    *v4 = v11;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v5 = a2[1];
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a2;
  if (!mlir::ODIE::Compiler::ODIX::BranchOp::verifyInherentAttrs(v5, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::BranchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9))
  {
    return 0;
  }

  v6 = *(**(*(*a1 + 32))(a1) + 384);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v9);
  return (*(*a1 + 728))(a1, v12, v7, a2 + 2) & 1;
}

void mlir::ODIE::Compiler::ODIX::BranchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
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
    *v9 = 15917;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "->", 2uLL);
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v13 = v15;
  v14 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v13, "dest", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, v14);
  if (v13 != v15)
  {
    free(v13);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::CallOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v29, a4);
    if (v29)
    {
      mlir::Diagnostic::operator<<<42ul>(v30, "expected DictionaryAttr to set properties");
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
        (a3)(&v29, a4);
        if (v29)
        {
LABEL_31:
          mlir::Diagnostic::operator<<<55ul>(v30, v12);
LABEL_32:
          if (v29)
          {
            v27 = 0;
            v28 = v11;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
            v20 = v31 + 24 * v32;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v32;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "callee", 6uLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v11[3])
      {
        (a3)(&v29, a4);
        if (v29)
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

      a1[1] = v11;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "isDispatch", 0xAuLL);
  if (v16)
  {
    v11 = *(v15 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        (a3)(&v29, a4);
        if (v29)
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

      a1[2] = v11;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
  if (v18)
  {
    v11 = *(v17 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a3)(&v29, a4);
        if (v29)
        {
          goto LABEL_31;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
        return 0;
      }

      a1[3] = v11;
    }
  }

  v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v23 & 1) == 0 || (v24 = *(v22 + 8)) == 0)
  {
    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v26 & 1) == 0)
    {
      return 1;
    }

    v24 = *(v25 + 8);
    if (!v24)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 4, 2, v24, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::ODIE::Compiler::ODIX::CallOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v25 = 261;
    v23 = "arg_attrs";
    v24 = 9;
    v7 = mlir::StringAttr::get(v6, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v25 = 261;
    v23 = "callee";
    v24 = 6;
    v10 = mlir::StringAttr::get(v9, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v25 = 261;
    v23 = "isDispatch";
    v24 = 10;
    v13 = mlir::StringAttr::get(v12, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v25 = 261;
    v23 = "res_attrs";
    v24 = 9;
    v16 = mlir::StringAttr::get(v15, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v16, v14);
  }

  v17 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 2);
  v18 = *(**v17 + 32);
  v25 = 261;
  v23 = "operandSegmentSizes";
  v24 = 19;
  v20 = mlir::StringAttr::get(v18, &v23, v19);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v20, v17);
  if (v27)
  {
    v21 = mlir::DictionaryAttr::get(a1, v26, v27);
  }

  else
  {
    v21 = 0;
  }

  if (v26 != v28)
  {
    free(v26);
  }

  return v21;
}

unint64_t mlir::ODIE::Compiler::ODIX::CallOp::computePropertiesHash(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(*(a1 + 8));
  v4 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 8) - 0xAE502812AA7333) ^ v3);
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = (8 * v5 - 0xAE502812AA7333) ^ HIDWORD(v5);
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ ((0x9DDFEA08EB382D69 * v7) >> 47) ^ (0x9DDFEA08EB382D69 * v7));
  v15 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6))));
  v14 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = *(a1 + 36) ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (8 * *(a1 + 32) + 8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  memset(v18, 0, sizeof(v18));
  v19 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v17, 0, v18, &v18[3] + 8, &v16, &v15, &v14, &v13);
}

unint64_t mlir::ODIE::Compiler::ODIX::CallOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 <= 9)
  {
    if (a4 == 6)
    {
      if (*a3 != 1819042147 || *(a3 + 4) != 25957)
      {
        goto LABEL_41;
      }

      a1 = a2[1];
    }

    else
    {
      v5 = 0;
      if (a4 != 9)
      {
        return v5 | a1;
      }

      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        a1 = *a2;
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_41;
        }

        a1 = a2[3];
      }
    }

LABEL_44:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
    return v5 | a1;
  }

  if (a4 == 10)
  {
    if (*a3 != 0x7461707369447369 || *(a3 + 8) != 26723)
    {
      goto LABEL_41;
    }

    a1 = a2[2];
    goto LABEL_44;
  }

  if (a4 == 19)
  {
    v6 = *(a3 + 11);
    v7 = *a3 == 0x53646E617265706FLL && *(a3 + 8) == 0x6953746E656D6765;
    v8 = 1400139365;
  }

  else
  {
    v5 = 0;
    if (a4 != 21)
    {
      return v5 | a1;
    }

    v6 = *(a3 + 13);
    v7 = *a3 == 0x5F646E617265706FLL && *(a3 + 8) == 0x5F746E656D676573;
    v8 = 1935635566;
  }

  v12 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v12)
  {
LABEL_41:
    LOBYTE(a1) = 0;
    v5 = 0;
    return v5 | a1;
  }

  a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 4), 2);
  v5 = a1 & 0xFFFFFFFFFFFFFF00;
  return v5 | a1;
}

uint64_t *mlir::ODIE::Compiler::ODIX::CallOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 9)
  {
    if (a3 == 6)
    {
      if (*a2 == 1819042147 && *(a2 + 4) == 25957)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (*(a4 + 24))
          {
            v16 = 0;
          }

          else
          {
            v16 = a4;
          }
        }

        else
        {
          v16 = 0;
        }

        result[1] = v16;
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

      else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
    }
  }

  else if (a3 == 10)
  {
    if (*a2 == 0x7461707369447369 && *(a2 + 8) == 26723)
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

      result[2] = v11;
    }
  }

  else
  {
    if (a3 == 19)
    {
      v4 = *a2 ^ 0x53646E617265706FLL;
      v5 = *(a2 + 8) ^ 0x6953746E656D6765;
      v6 = *(a2 + 11);
      v7 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v4 = *a2 ^ 0x5F646E617265706FLL;
      v5 = *(a2 + 8) ^ 0x5F746E656D676573;
      v6 = *(a2 + 13);
      v7 = 1935635566;
    }

    if (v4 | v5 | v6 ^ (v7 | 0x73657A6900000000))
    {
      v12 = 1;
    }

    else
    {
      v12 = a4 == 0;
    }

    if (!v12 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v13 = *(a4 + 8);
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v13[2] == 32 && *(a4 + 16) == 2)
      {
        v14 = *(a4 + 32);
        if (v14 >= 4)
        {
          return memmove(result + 4, *(a4 + 24), v14 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::CallOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v24 = 261;
    v22 = "arg_attrs";
    v23 = 9;
    v8 = mlir::StringAttr::get(v7, &v22, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v24 = 261;
    v22 = "callee";
    v23 = 6;
    v11 = mlir::StringAttr::get(v10, &v22, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v24 = 261;
    v22 = "isDispatch";
    v23 = 10;
    v14 = mlir::StringAttr::get(v13, &v22, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = *(**v15 + 32);
    v24 = 261;
    v22 = "res_attrs";
    v23 = 9;
    v17 = mlir::StringAttr::get(v16, &v22, a3);
    mlir::NamedAttrList::push_back(a3, v17, v15);
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 2);
  v19 = *(**v18 + 32);
  v24 = 261;
  v22 = "operandSegmentSizes";
  v23 = 19;
  v21 = mlir::StringAttr::get(v19, &v22, v20);
  mlir::NamedAttrList::push_back(a3, v21, v18);
}

BOOL mlir::ODIE::Compiler::ODIX::CallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(v13, "callee", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps5(v16, "isDispatch", 0xA, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(v19, "res_attrs", 9, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps5(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::ODIX::CallOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2))
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
      memmove(v3 + 4, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 2uLL) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 16))(a2, *(v5 + 8));
  (*(*a2 + 24))(a2, *(v5 + 16));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 32, 2);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 24))(a2, *(v5 + 24));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 32), 2);
  }

  return result;
}

void *mlir::ODIE::Compiler::ODIX::CallOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a4, 0, a4, a5);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a6, 0, a6, a7);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2) + 32) = v13 | (a7 << 32);
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2);
  result[1] = a3;
  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2);
    *result = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2);
    result[2] = a10;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::CallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 64;
  if (!v4)
  {
    v20 = "requires attribute 'callee'";
    v21 = 259;
    mlir::Operation::emitOpError(v22, v2, &v20);
    v14 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
    return v14;
  }

  v7 = *(v5 + 2);
  v8 = *(v5 + 3);
  v22[0] = v2;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(v4, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
  {
    return 0;
  }

  v22[0] = *this;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(v6, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
  {
    return 0;
  }

  v22[0] = *this;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(v8, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
  {
    return 0;
  }

  v22[0] = *this;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps5(v7, "isDispatch", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
  {
    return 0;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 24);
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
      while (mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps1(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  v14 = 1;
  ODSOperands = mlir::ODIE::Compiler::ODIX::CallOp::getODSOperands(this, 1u);
  if (v16)
  {
    v17 = v16;
    for (i = ODSOperands + 24; mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps1(*this, (*(*i + 8) & 0xFFFFFFFFFFFFFFF8), v10); i += 32)
    {
      LODWORD(v10) = v10 + 1;
      v14 = 1;
      if (!--v17)
      {
        return v14;
      }
    }

    return 0;
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::ODIX::CallOp::getODSOperands(mlir::ODIE::Compiler::ODIX::CallOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 96);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

uint64_t mlir::ODIE::Compiler::ODIX::CallOp::parse(uint64_t a1, void *a2)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = 0x400000000;
  v22 = 0;
  v23 = v25;
  v24 = 0x400000000;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2) + 16) = v4;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v20[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v20);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v22, v6))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2);
    *(v8 + 8) = v22;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 408))(a1, "outs", 4) & 1) != 0 && (((*(*a1 + 136))(a1) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0) || (v21 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14) & 1) == 0) || (v9 = a2[1], v20[0] = a1, v20[1] = &v21, v20[2] = a2, !mlir::ODIE::Compiler::ODIX::CallOp::verifyInherentAttrs(v9, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20)))
  {
LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  v10 = v27;
  v11 = v24;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(a2) + 32) = v10 | (v11 << 32);
  v12 = *(**(*(*a1 + 32))(a1) + 384);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  v13 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), v20);
  if (v27)
  {
    v14 = v26;
    v15 = 32 * v27;
    while (((*(*a1 + 728))(a1, v14, v13, a2 + 2) & 1) != 0)
    {
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_27;
  }

LABEL_22:
  if (v24)
  {
    v16 = v23;
    v17 = 32 * v24;
    while (((*(*a1 + 728))(a1, v16, v13, a2 + 2) & 1) != 0)
    {
      v16 += 32;
      v18 = 1;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v18 = 1;
LABEL_28:
  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  return v18;
}

void mlir::ODIE::Compiler::ODIX::CallOp::print(mlir::ODIE::Compiler::ODIX::CallOp *this, mlir::OpAsmPrinter *a2)
{
  v52[4] = *MEMORY[0x277D85DE8];
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80))
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

  (*(*a2 + 48))(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
  }

  else
  {
    *v11 = 40;
    ++*(v10 + 4);
  }

  v12 = *(*this + 44);
  v13 = *(*this + 16 * ((v12 >> 23) & 1) + 96);
  if ((v12 & 0x800000) != 0)
  {
    v14 = *(*this + 72);
  }

  else
  {
    v14 = 0;
  }

  v15 = (*(*a2 + 16))(a2);
  if (v13)
  {
    v16 = v15;
    (*(*a2 + 160))(a2, *(v14 + 24));
    if (v13 != 1)
    {
      v17 = v13 - 1;
      v18 = (v14 + 56);
      do
      {
        v19 = *(v16 + 4);
        if (*(v16 + 3) - v19 > 1uLL)
        {
          *v19 = 8236;
          *(v16 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v20 = *v18;
        v18 += 4;
        (*(*a2 + 160))(a2, v20);
        --v17;
      }

      while (v17);
    }
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ")", 1uLL);
  }

  else
  {
    *v22 = 41;
    ++*(v21 + 4);
  }

  mlir::ODIE::Compiler::ODIX::CallOp::getODSOperands(this, 1u);
  if (v23)
  {
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
    if (*(v26 + 3) - v27 > 3uLL)
    {
      *v27 = 1937012079;
      *(v26 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v26, "outs", 4uLL);
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

    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) == v31)
    {
      llvm::raw_ostream::write(v30, "=", 1uLL);
    }

    else
    {
      *v31 = 61;
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
    if (*(v34 + 3) == v35)
    {
      llvm::raw_ostream::write(v34, "(", 1uLL);
    }

    else
    {
      *v35 = 40;
      ++*(v34 + 4);
    }

    ODSOperands = mlir::ODIE::Compiler::ODIX::CallOp::getODSOperands(this, 1u);
    v38 = v37;
    v39 = (*(*a2 + 16))(a2);
    if (v38)
    {
      v40 = v39;
      (*(*a2 + 160))(a2, *(ODSOperands + 24));
      v41 = v38 - 1;
      if (v41)
      {
        v42 = (ODSOperands + 56);
        do
        {
          v43 = *(v40 + 4);
          if (*(v40 + 3) - v43 > 1uLL)
          {
            *v43 = 8236;
            *(v40 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v40, ", ", 2uLL);
          }

          v44 = *v42;
          v42 += 4;
          (*(*a2 + 160))(a2, v44);
          --v41;
        }

        while (v41);
      }
    }

    v45 = (*(*a2 + 16))(a2);
    v46 = *(v45 + 4);
    if (*(v45 + 3) == v46)
    {
      llvm::raw_ostream::write(v45, ")", 1uLL);
    }

    else
    {
      *v46 = 41;
      ++*(v45 + 4);
    }
  }

  v50 = v52;
  v51 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "isDispatch", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "callee", 6);
  v47 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v47 && v47 == mlir::ArrayAttr::get(*(***(*this + 24) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "arg_attrs", 9);
  }

  v48 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v48 && v48 == mlir::ArrayAttr::get(*(***(*this + 24) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "res_attrs", 9);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v50, v51);
  if (v50 != v52)
  {
    free(v50);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v20, a4);
    if (v20)
    {
      mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    return 0;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "alignment", 9uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v20, a4);
        if (v20)
        {
          if (v20)
          {
            v18 = 0;
            v19 = v11;
            v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
            v13 = v22 + 24 * v23;
            v14 = *v12;
            *(v13 + 16) = *(v12 + 16);
            *v13 = v14;
            ++v23;
          }
        }

        goto LABEL_4;
      }

      *a1 = v11;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "data", 4uLL);
  if (v16)
  {
    v17 = *(v15 + 8);
    if (v17)
    {
      a1[1] = v17;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "alignment";
    v15 = 9;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "data";
    v15 = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 4)
  {
    if (a4 != 9)
    {
      goto LABEL_10;
    }

    if (*a3 != 0x6E656D6E67696C61 || *(a3 + 8) != 116)
    {
      goto LABEL_10;
    }

    v5 = *a2;
LABEL_12:
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    return v6 | v5;
  }

  if (*a3 == 1635017060)
  {
    v5 = a2[1];
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v5) = 0;
  v6 = 0;
  return v6 | v5;
}

uint64_t *mlir::ODIE::Compiler::ODIX::DataRecordOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4)
  {
    if (*a2 == 1635017060)
    {
      result[1] = a4;
    }
  }

  else if (a3 == 9 && *a2 == 0x6E656D6E67696C61 && *(a2 + 8) == 116)
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

void mlir::ODIE::Compiler::ODIX::DataRecordOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "alignment";
    v12 = 9;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "data";
    v12 = 4;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::DataRecordOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps7(v10, "alignment", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps6(v13, "data", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps7(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps6(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v9 = *a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v10 = a1[1];
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v10[2] == 8)
    {
      return 1;
    }
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v11))
  {
    return 1;
  }

  a4(&v16, a5);
  if (v16)
  {
    mlir::Diagnostic::operator<<<12ul>(v17, "attribute '");
    if (v16)
    {
      v15 = 261;
      v14[0] = a2;
      v14[1] = a3;
      mlir::Diagnostic::operator<<(v17, v14);
      if (v16)
      {
        mlir::Diagnostic::operator<<<93ul>(v17, "' failed to satisfy constraint: i8 dense array attribute or constant vector/tensor attribute");
      }
    }
  }

  v12 = (v17[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v12;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(a2);
  if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3))
  {
    return (*(*a1 + 48))(a1, v3 + 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::getAlignment(mlir::ODIE::Compiler::ODIX::DataRecordOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

BOOL mlir::ODIE::Compiler::ODIX::DataRecordOp::verifyInvariantsImpl(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  if (!v6)
  {
    v9 = "requires attribute 'alignment'";
LABEL_7:
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
    v9 = "requires attribute 'data'";
    goto LABEL_7;
  }

  v13[0] = v2;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps6(v7, "data", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v13[0] = *this;
  return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps7(v5, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13);
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::parse(uint64_t a1, void *a2)
{
  v11 = 0;
  v12 = 0;
  if (((*(*a1 + 440))(a1, &v12, 0) & 1) == 0)
  {
    return 0;
  }

  if (v12)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(a2);
    *(v4 + 8) = v12;
  }

  v14 = 257;
  if (((*(*a1 + 400))(a1, "alignment", 9, v13) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v11, v6))
  {
    return 0;
  }

  if (v11)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(a2);
    *v7 = v11;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) != 0 && (v8 = a2[1], v13[0] = a1, v13[1] = &v10, v13[2] = a2, mlir::ODIE::Compiler::ODIX::DataRecordOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::DataRecordOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::DataRecordOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
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
  if ((*(v8 + 3) - v9) > 8)
  {
    *(v9 + 8) = 116;
    *v9 = *"alignment";
    *(v8 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v8, "alignment", 9uLL);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v17 = v19;
  v18 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "data", 4);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "alignment", 9);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23[0] = *(a2 + 8);
  v20[0] = a2;
  v17[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__7;
  v8 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v23, v20, 1, v17) & 1) == 0)
  {
    v20[0] = "region #";
    v21 = 259;
    mlir::Operation::emitOpError(v23, a1, v20);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v23, &v22);
    v10 = v9;
    if (a4)
    {
      v16 = 1283;
      v15[0] = " ('";
      v15[2] = a3;
      v15[3] = a4;
      v11 = v15;
      v17[2] = "') ";
      v12 = 2;
      v13 = 3;
    }

    else
    {
      v12 = 3;
      v11 = " ";
      v13 = 1;
    }

    v19 = v13;
    v17[0] = v11;
    v18 = v12;
    if (*v9)
    {
      mlir::Diagnostic::operator<<((v9 + 1), v17);
      if (*v10)
      {
        mlir::Diagnostic::operator<<<50ul>((v10 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v8 = (v10[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataSegmentOp::parse(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x200000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = 0;
  v4 = (*(*a1 + 792))(a1, &v14, 0, 0, 0);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v15, &v14);
      if ((*(*a1 + 128))(a1))
      {
        operator new();
      }

      goto LABEL_3;
    }

    v10 = v14;
    v14 = 0;
    if (v10)
    {
      mlir::Region::~Region(v10);
      MEMORY[0x25F891040](v11);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_3:
  v5 = v14;
  v14 = 0;
  if (v5)
  {
    mlir::Region::~Region(v5);
    MEMORY[0x25F891040](v6);
  }

  v7 = v15;
  if (v16)
  {
    v8 = 8 * v16;
    do
    {
      if (**v7 == *v7)
      {
        operator new();
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
    v7 = v15;
    v9 = v16;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::addRegions(a2, v7, v9);
  v12 = 1;
LABEL_19:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v15);
  return v12;
}

void mlir::ODIE::Compiler::ODIX::DataSegmentOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, 0);
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

  v7 = *(*this + 11);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((*this + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v9, 1, 1, 0);
    if (v8 != 1)
    {
      v10 = v9 + 24;
      v11 = 24 * v8 - 24;
      do
      {
        v12 = (*(*a2 + 16))(a2);
        v13 = *(v12 + 4);
        if (*(v12 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v10, 1, 1, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "function_type", 0xDuLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "num_inputs", 0xAuLL);
    if (v13)
    {
      v11 = *(v12 + 8);
      if (v11)
      {
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v16[3])
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
          goto LABEL_27;
        }

        a1[2] = v16;
      }
    }

    return 1;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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
LABEL_27:
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

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "function_type";
    v18 = 13;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "num_inputs";
    v18 = 10;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "sym_name";
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

unint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 10)
    {
      if (*a3 != 0x75706E695F6D756ELL || *(a3 + 8) != 29556)
      {
        goto LABEL_17;
      }

      v5 = a2[1];
    }

    else
    {
      if (a4 != 13)
      {
        goto LABEL_17;
      }

      if (*a3 != 0x6E6F6974636E7566 || *(a3 + 5) != 0x657079745F6E6F69)
      {
        goto LABEL_17;
      }

      v5 = *a2;
    }

LABEL_19:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v5 = a2[2];
    goto LABEL_19;
  }

LABEL_17:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

void *mlir::ODIE::Compiler::ODIX::FunctionOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (a4[3])
        {
          v7 = 0;
        }

        else
        {
          v7 = a4;
        }
      }

      else
      {
        v7 = 0;
      }

      result[2] = v7;
    }
  }

  else if (a3 == 10)
  {
    if (*a2 == 0x75706E695F6D756ELL && *(a2 + 8) == 29556)
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

      result[1] = v6;
    }
  }

  else if (a3 == 13 && *a2 == 0x6E6F6974636E7566 && *(a2 + 5) == 0x657079745F6E6F69)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

  return result;
}

void mlir::ODIE::Compiler::ODIX::FunctionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "function_type";
    v15 = 13;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "num_inputs";
    v15 = 10;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "sym_name";
    v15 = 8;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::FunctionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps8(v10, "function_type", 0xD, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps9(v13, "num_inputs", 0xA, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(v16, "sym_name", 8, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps8(void **a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps9(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = a1[1];
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 16)
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
        mlir::Diagnostic::operator<<<66ul>(v13, "' failed to satisfy constraint: 16-bit signless integer attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(mlir::ODIE::Compiler::ODIX::FunctionOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::ODIE::Compiler::ODIX::FunctionOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, const char *a4, uint64_t a5, unsigned int a6)
{
  v10 = *a1;
  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  v11 = mlir::StringAttr::get(v10, v17, a3);
  v13 = mlir::SymbolRefAttr::get(v11, 0, 0, v12);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(a2) + 16) = v13;
  v14 = mlir::TypeAttr::get(a5);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(a2) = v14;
  v15 = mlir::IntegerType::get(*a1, 16, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v15, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(a2) + 8) = IntegerAttr;

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::ODIX::FunctionOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v10 = "requires attribute 'function_type'";
LABEL_12:
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
    v10 = "requires attribute 'num_inputs'";
    goto LABEL_12;
  }

  v8 = *(v4 + 2);
  if (!v8)
  {
    v10 = "requires attribute 'sym_name'";
    goto LABEL_12;
  }

  v14[0] = v2;
  if (mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(v8, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = *this, mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps8(v5, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)) && (v14[0] = *this, mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps9(v7, "num_inputs", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)))
  {
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "region", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::verify(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::RegionOp>((((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10)), &v15);
  v24 = v17;
  v25 = v18;
  v22 = v15;
  v23 = v16;
  v26 = v19;
  v2 = v20;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v10 = 0;
  if (v16 == v20)
  {
    return 1;
  }

  while (1)
  {
    v3 = (*(&v14 + 1))();
    v4 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 64);
    if (*(v4 + 24) == 18 && !(**(v4 + 16) ^ 0x5F746C7561666564 | *(*(v4 + 16) + 8) ^ 0x696F707972746E65 | *(*(v4 + 16) + 16) ^ 0x746ELL) && v10 != 0)
    {
      break;
    }

    ++v10;
    mlir::Region::OpIterator::operator++(&v11);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v11);
    if (v12 == v2)
    {
      return 1;
    }
  }

  v8 = "@default_entrypoint should always be the first region in the function";
  v9 = 259;
  mlir::Operation::emitOpError(&v15, *this, &v8);
  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v6;
}

uint64_t mlir::ODIE::Compiler::ODIX::GetContextOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "slot", 4uLL);
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

uint64_t mlir::ODIE::Compiler::ODIX::GetContextOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "slot";
  v10[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::GetContextOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::GetContextOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1953459315)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::ODIX::GetContextOp::setInherentAttr(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1953459315)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::GetContextOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "slot";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::GetContextOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(v8, "slot", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(void **a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1)[17] == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
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
        mlir::Diagnostic::operator<<<48ul>(v12, "' failed to satisfy constraint: index attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::ODIE::Compiler::ODIX::GetContextOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v8, 0, &v8, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>(a2);
  *result = a4;
  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::GetContextOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(v3, "slot", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u);
  }

  else
  {
    v6 = "requires attribute 'slot'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::GetContextOp::parse(uint64_t a1, void *a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v13, *(**v4 + 472)))
  {
    return 0;
  }

  if (v13)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>(a2);
    *v5 = v13;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && (v17 = 257, ((*(*a1 + 400))(a1, "outs", 4, v16)) && ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v6 = a2[1], v16[0] = a1, v16[1] = &v10, v16[2] = a2, mlir::ODIE::Compiler::ODIX::GetContextOp::verifyInherentAttrs(v6, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::GetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16)) && (v7 = *(**(*(*a1 + 32))(a1) + 384), v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v16), ((*(*a1 + 728))(a1, v14, v8, a2 + 2)))
  {
    return (*(*a1 + 728))(a1, v11, v8, a2 + 2) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::GetContextOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  if (*(v12 + 3) - v13 > 3uLL)
  {
    *v13 = 1937012079;
    *(v12 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v12, "outs", 4uLL);
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
    llvm::raw_ostream::write(v16, "=", 1uLL);
  }

  else
  {
    *v17 = 61;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "slot", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::HeaderOp::parse(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x200000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = 0;
  v4 = (*(*a1 + 792))(a1, &v14, 0, 0, 0);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v15, &v14);
      if ((*(*a1 + 128))(a1))
      {
        operator new();
      }

      goto LABEL_3;
    }

    v10 = v14;
    v14 = 0;
    if (v10)
    {
      mlir::Region::~Region(v10);
      MEMORY[0x25F891040](v11);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_3:
  v5 = v14;
  v14 = 0;
  if (v5)
  {
    mlir::Region::~Region(v5);
    MEMORY[0x25F891040](v6);
  }

  v7 = v15;
  if (v16)
  {
    v8 = 8 * v16;
    do
    {
      if (**v7 == *v7)
      {
        operator new();
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
    v7 = v15;
    v9 = v16;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::addRegions(a2, v7, v9);
  v12 = 1;
LABEL_19:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v15);
  return v12;
}

void mlir::ODIE::Compiler::ODIX::HeaderOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, 0);
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

  v7 = *(*this + 11);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((*this + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v9, 1, 1, 0);
    if (v8 != 1)
    {
      v10 = v9 + 24;
      v11 = 24 * v8 - 24;
      do
      {
        v12 = (*(*a2 + 16))(a2);
        v13 = *(v12 + 4);
        if (*(v12 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v10, 1, 1, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "region_name", 0xBuLL);
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

uint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "region_name";
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

unint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6E5F6E6F69676572 ? (v4 = *(a3 + 3) == 0x656D616E5F6E6F69) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::ODIX::InvokeRegionOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6E5F6E6F69676572 && *(a2 + 3) == 0x656D616E5F6E6F69)
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

void mlir::ODIE::Compiler::ODIX::InvokeRegionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "region_name";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "region_name", 0xB, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInvariantsImpl(unsigned int **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v7[0] = v1;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v2, "region_name", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v7);
  }

  else
  {
    v5 = "requires attribute 'region_name'";
    v6 = 259;
    mlir::Operation::emitOpError(v7, v1, &v5);
    v3 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::parse(uint64_t a1, void *a2)
{
  v12 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v12, v5))
  {
    return 0;
  }

  if (v12)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>(a2);
    *v7 = v12;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v8 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::InvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::InvokeRegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
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

  v9 = v11;
  v10 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v9, "region_name", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v10[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "dest", 4uLL);
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        *a1 = v8;
      }
    }

    return 1;
  }

  else
  {
    a3(&v9, a4);
    if (v9)
    {
      mlir::Diagnostic::operator<<<42ul>(v10, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "dest";
  v10[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::JumpOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::JumpOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1953719652)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::ODIE::Compiler::ODIX::JumpOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "dest";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::JumpOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(v8, "dest", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::JumpOp::verifyInvariantsImpl(unsigned int **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v7[0] = v1;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(v2, "dest", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v7);
  }

  else
  {
    v5 = "requires attribute 'dest'";
    v6 = 259;
    mlir::Operation::emitOpError(v7, v1, &v5);
    v3 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::verify(mlir::ODIE::Compiler::ODIX::JumpOp *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      goto LABEL_24;
    }

    v13[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    UInt = mlir::IntegerAttr::getUInt(v13);
    v5 = *(v1 + 16);
    if (v5)
    {
      v5 = (v5[3] & 0xFFFFFFFFFFFFFFF8);
    }

    if (*v5 == v5)
    {
      goto LABEL_22;
    }

    for (i = v5[1]; i != v5; i = i[1])
    {
      v7 = i - 1;
      if (!i)
      {
        v7 = 0;
      }

      if (v7[4] != v7 + 4)
      {
        break;
      }
    }

    if (i == v5)
    {
      goto LABEL_22;
    }

    v9 = i - 1;
    if (!i)
    {
      v9 = 0;
    }

    v10 = v9[5];
    v15 = v5;
    v16 = i;
    v17 = v10;
    if (!v10)
    {
LABEL_22:
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        ++v11;
        mlir::Region::OpIterator::operator++(&v15);
      }

      while (v17);
    }

    if (UInt > v11)
    {
      goto LABEL_24;
    }

    return 1;
  }

  if (mlir::ODIE::Compiler::ODIX::labelOpByName((*(*(v1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v2) || mlir::ODIE::Compiler::ODIX::destOpByLabelAttr((*(*(v1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v2))
  {
    return 1;
  }

LABEL_24:
  v14 = 257;
  mlir::Operation::emitError(&v15, v1, v13);
  if (v15)
  {
    mlir::Diagnostic::operator<<<42ul>(&v16, "jump/branch has invalid destination label");
  }

  v8 = (v18 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v8;
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v4 || *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 != v7 + 32 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LabelOp,void>::id && *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64) == v4)
  {
    (*(*a2 + 16))(a2, a1);
    return 1;
  }

  result = mlir::ODIE::Compiler::ODIX::labelOpByName((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8), v4);
  if (result)
  {
    v9 = *(result + 8);
    if (v9 == *(result + 16) + 32 || *(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LabelOp,void>::id)
    {
      return 0;
    }

    (*(*a2 + 40))(a2, a1);
    *(v3 + 16 * ((*(a1 + 44) >> 23) & 1)) = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 64);
    (*(*a2 + 48))(a2, a1);
    return 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::parse(uint64_t a1, void *a2)
{
  v9 = 0;
  if (((*(*a1 + 56))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v9, 0) & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(a2);
    *v4 = v9;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) != 0 && (v5 = a2[1], v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::ODIE::Compiler::ODIX::JumpOp::verifyInherentAttrs(v5, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::JumpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::JumpOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 15917;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "->", 2uLL);
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v11 = v13;
  v12 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v11, "dest", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::LabelOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
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

uint64_t mlir::ODIE::Compiler::ODIX::LabelOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "sym_name";
  v10[1] = 8;
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

unint64_t mlir::ODIE::Compiler::ODIX::LabelOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::LabelOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::ODIX::LabelOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::LabelOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "sym_name";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::LabelOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "sym_name", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::LabelOp::verifyInvariantsImpl(unsigned int **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v7[0] = v1;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v2, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v7);
  }

  else
  {
    v5 = "requires attribute 'sym_name'";
    v6 = 259;
    mlir::Operation::emitOpError(v7, v1, &v5);
    v3 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::ODIX::LabelOp::parse(uint64_t a1, void *a2)
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

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v12, v5))
  {
    return 0;
  }

  if (v12)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>(a2);
    *v7 = v12;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v8 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::ODIX::LabelOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::LabelOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v11 = v13;
  v12 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v11, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "data_segment", 0xCuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "data_segment";
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

unint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x6765735F61746164 ? (v4 = *(a3 + 8) == 1953391981) : (v4 = 0), v4))
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

uint64_t *mlir::ODIE::Compiler::ODIX::LoadDsOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12 && *a2 == 0x6765735F61746164 && *(a2 + 8) == 1953391981)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

void mlir::ODIE::Compiler::ODIX::LoadDsOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "data_segment";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(v8, "data_segment", 0xC, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::ODIX::DataRefAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC24D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D10))
  {
    qword_27FC24D00 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::DataRefAttr>();
    *algn_27FC24D08 = v11;
    __cxa_guard_release(&qword_27FC24D10);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC24D00;
    v15 = *algn_27FC24D08;
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

BOOL mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(v3, "data_segment", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v6 = "requires attribute 'data_segment'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  v4 = (*(*a1 + 704))(a1, v11, 1);
  result = 0;
  if (v4)
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v6 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadDsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)))
    {
      v7 = *(**(*(*a1 + 32))(a1) + 384);
      v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
      v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v9);
      return (*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::LoadDsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v7, 0);
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v10[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "imm", 3uLL);
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        *a1 = v8;
      }
    }

    return 1;
  }

  else
  {
    a3(&v9, a4);
    if (v9)
    {
      mlir::Diagnostic::operator<<<42ul>(v10, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "imm";
  v10[1] = 3;
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

unint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 28009 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
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

void mlir::ODIE::Compiler::ODIX::LoadImmOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "imm";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(v8, "imm", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v5 = *(*a1 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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
        mlir::Diagnostic::operator<<<141ul>(v14, "' failed to satisfy constraint: An Attribute containing a integer value or An Attribute containing a floating-point value or index attribute");
      }
    }
  }

  v7 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(v3, "imm", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v6 = "requires attribute 'imm'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  v4 = (*(*a1 + 704))(a1, v11, 1);
  result = 0;
  if (v4)
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v6 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadImmOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)))
    {
      v7 = *(**(*(*a1 + 32))(a1) + 384);
      v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
      v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v9);
      return (*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::LoadImmOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v7, 0);
}

void mlir::ODIE::Compiler::ODIX::MoveOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
}

BOOL mlir::ODIE::Compiler::ODIX::MoveOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::MoveOp::canonicalize(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 56);
  v4 = *(v2 + 24);
  if (v3 == v4)
  {
    (*(*a2 + 16))(a2, a1);
    return 1;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = -1;
    v7 = *v4;
    do
    {
      v7 = *v7;
      ++v6;
    }

    while (v7);
    if (v6 >= 2)
    {
      v8 = *v3;
      if (*v3)
      {
        v9 = -1;
        do
        {
          v8 = *v8;
          ++v9;
        }

        while (v8);
        if (v9 > 1)
        {
          return 0;
        }
      }
    }

    v10 = -1;
    v11 = *v4;
    do
    {
      v11 = *v11;
      ++v10;
    }

    while (v11);
    if (v10 > 1)
    {
      v12 = *v3;
      if (!*v3)
      {
        goto LABEL_32;
      }

      v13 = -1;
      do
      {
        v12 = *v12;
        ++v13;
      }

      while (v12);
      if (v13 <= 1)
      {
LABEL_32:
        v21 = v4[1];
        if ((v21 & 7) == 7)
        {
          v22 = 0;
        }

        else
        {
          v22 = v4;
        }

        if ((v21 & 7) != 7 && ((v22[1] & 7) != 6 || &v22[3 * v22[2]] != -120))
        {
          if ((v3[1] ^ v21) <= 7)
          {
            v23 = a2;
            v24 = v4;
LABEL_52:
            mlir::RewriterBase::replaceAllUsesWith(v23, v24, v3);
            return 1;
          }

          return 0;
        }

LABEL_46:
        mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::MoveOp &>(a2[2], a1);
        return 0;
      }
    }

    v14 = -1;
    v15 = *v4;
    do
    {
      v15 = *v15;
      ++v14;
    }

    while (v15);
    if (v14 > 1)
    {
      goto LABEL_31;
    }
  }

  v16 = *v3;
  if (!*v3)
  {
    goto LABEL_31;
  }

  v17 = -1;
  do
  {
    v16 = *v16;
    ++v17;
  }

  while (v16);
  if (v17 < 2)
  {
LABEL_31:
    if (v5)
    {
      v18 = -1;
      do
      {
        v5 = *v5;
        ++v18;
      }

      while (v5);
      if (v18 > 1)
      {
        return 0;
      }
    }

    v19 = *v3;
    if (*v3)
    {
      v20 = -1;
      do
      {
        v19 = *v19;
        ++v20;
      }

      while (v19);
      if (v20 > 1)
      {
        return 0;
      }
    }

    goto LABEL_32;
  }

  v26 = v3[1];
  if ((v26 & 7) == 7)
  {
    v27 = 0;
  }

  else
  {
    v27 = v3;
  }

  if ((v26 & 7) == 7 || (v27[1] & 7) == 6 && &v27[3 * v27[2]] == -120)
  {
    goto LABEL_46;
  }

  if ((v4[1] ^ v26) <= 7)
  {
    v23 = a2;
    v24 = v3;
    v3 = v4;
    goto LABEL_52;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::ODIX::MoveOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && (v12 = 257, ((*(*a1 + 400))(a1, "to", 2, v11)) && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(**(*(*a1 + 32))(a1) + 384), v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), v11), ((*(*a1 + 728))(a1, v9, v5, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::MoveOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 28532;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "to", 2uLL);
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, 0);
}

uint64_t mlir::ODIE::Compiler::ODIX::ProgramOp::parse(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x200000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = 0;
  v4 = (*(*a1 + 792))(a1, &v14, 0, 0, 0);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v15, &v14);
      if ((*(*a1 + 128))(a1))
      {
        operator new();
      }

      goto LABEL_3;
    }

    v10 = v14;
    v14 = 0;
    if (v10)
    {
      mlir::Region::~Region(v10);
      MEMORY[0x25F891040](v11);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_3:
  v5 = v14;
  v14 = 0;
  if (v5)
  {
    mlir::Region::~Region(v5);
    MEMORY[0x25F891040](v6);
  }

  v7 = v15;
  if (v16)
  {
    v8 = 8 * v16;
    do
    {
      if (**v7 == *v7)
      {
        operator new();
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
    v7 = v15;
    v9 = v16;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::addRegions(a2, v7, v9);
  v12 = 1;
LABEL_19:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v15);
  return v12;
}

void mlir::ODIE::Compiler::ODIX::ProgramOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, 0);
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

  v7 = *(*this + 11);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((*this + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v9, 1, 1, 0);
    if (v8 != 1)
    {
      v10 = v9 + 24;
      v11 = 24 * v8 - 24;
      do
      {
        v12 = (*(*a2 + 16))(a2);
        v13 = *(v12 + 4);
        if (*(v12 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v10, 1, 1, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::ODIX::RegionOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "name", 4uLL);
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

uint64_t mlir::ODIE::Compiler::ODIX::RegionOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "name";
  v10[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::RegionOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::RegionOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::ODIX::RegionOp::setInherentAttr(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::RegionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::RegionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::RegionOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, const char *a4)
{
  v7 = 261;
  v6[0] = a3;
  v6[1] = a4;
  v5 = mlir::StringAttr::get(*a1, v6, a3);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(a2) = v5;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::ODIX::RegionOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "region", 6, 0);
  }

  else
  {
    v6 = "requires attribute 'name'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::RegionOp::parse(mlir::Region *a1, mlir::Region *a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = v24;
  v23 = 0x200000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v19);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v21, v5))
  {
    goto LABEL_22;
  }

  if (v21)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(a2);
    *v7 = v21;
  }

  v20 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *(a2 + 1);
  v19[0] = a1;
  v19[1] = &v20;
  v19[2] = a2;
  if (!mlir::ODIE::Compiler::ODIX::RegionOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19))
  {
    goto LABEL_22;
  }

  v19[0] = 0;
  v9 = (*(*a1 + 792))(a1, v19, 0, 0, 0);
  if ((v9 & 0x100) != 0)
  {
    if (v9)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v22, v19);
      if ((*(*a1 + 128))(a1))
      {
        operator new();
      }

      goto LABEL_9;
    }

    v15 = v19[0];
    v19[0] = 0;
    if (v15)
    {
      mlir::Region::~Region(v15);
      MEMORY[0x25F891040](v16);
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v10 = v19[0];
  v19[0] = 0;
  if (v10)
  {
    mlir::Region::~Region(v10);
    MEMORY[0x25F891040](v11);
  }

  v12 = v22;
  if (v23)
  {
    v13 = 8 * v23;
    do
    {
      if (**v12 == *v12)
      {
        operator new();
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
    v12 = v22;
    v14 = v23;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::addRegions(a2, v12, v14);
  v17 = 1;
LABEL_23:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v22);
  return v17;
}

void mlir::ODIE::Compiler::ODIX::RegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v16 = v18;
  v17 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v16, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, v17);
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

  v9 = *(*this + 11);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((*this + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v11, 1, 1, 0);
    if (v10 != 1)
    {
      v12 = v11 + 24;
      v13 = 24 * v10 - 24;
      do
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = *(v14 + 4);
        if (*(v14 + 3) - v15 > 1uLL)
        {
          *v15 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v12, 1, 1, 0);
        v12 += 24;
        v13 -= 24;
      }

      while (v13);
    }
  }

  if (v16 != v18)
  {
    free(v16);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "slot", 4uLL);
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

uint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "slot";
  v10[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1953459315)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::ODIX::SetContextOp::setInherentAttr(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1953459315)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::SetContextOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "slot";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(v8, "slot", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::ODIE::Compiler::ODIX::SetContextOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v8, 0, &v8, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(a2);
  *result = a4;
  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v8[0] = v2;
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(v3, "slot", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u);
  }

  else
  {
    v6 = "requires attribute 'slot'";
    v7 = 259;
    mlir::Operation::emitOpError(v8, v2, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::parse(uint64_t a1, void *a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v14, *(**v4 + 472)))
  {
    return 0;
  }

  if (v14)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(a2);
    *v5 = v14;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v12, 1)) && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v6 = a2[1], v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInherentAttrs(v6, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && (v7 = *(**(*(*a1 + 32))(a1) + 384), v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v10), ((*(*a1 + 728))(a1, v15, v8, a2 + 2)))
  {
    return (*(*a1 + 728))(a1, v12, v8, a2 + 2) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::SetContextOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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
  v17 = v19;
  v18 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "slot", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "symbol", 6uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "sym_name";
    v15 = 8;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "symbol";
    v15 = 6;
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

unint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 == 1651341683 && *(a3 + 4) == 27759)
    {
      v4 = a2[1];
      goto LABEL_11;
    }
  }

  else if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
  {
    v4 = *a2;
LABEL_11:
    v6 = v4 & 0xFFFFFFFFFFFFFF00;
    return v6 | v4;
  }

  LOBYTE(v4) = 0;
  v6 = 0;
  return v6 | v4;
}

uint64_t *mlir::ODIE::Compiler::ODIX::SymbolOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1651341683 && *(a2 + 4) == 27759)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

  else if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
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

    *result = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::SymbolOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "sym_name";
    v12 = 8;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "symbol";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v10, "sym_name", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(v13, "symbol", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::ODIX::SymbolAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC24DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24DC8))
  {
    qword_27FC24DB8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::SymbolAttr>();
    unk_27FC24DC0 = v11;
    __cxa_guard_release(&qword_27FC24DC8);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC24DB8;
    v15 = unk_27FC24DC0;
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

BOOL mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInvariantsImpl(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (!v6)
  {
    v9 = "requires attribute 'sym_name'";
LABEL_7:
    v11 = v9;
    v12 = 259;
    mlir::Operation::emitOpError(v13, v2, &v11);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    return v8;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v9 = "requires attribute 'symbol'";
    goto LABEL_7;
  }

  v13[0] = v2;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13))
  {
    return 0;
  }

  v13[0] = *this;
  return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(v7, "symbol", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13);
}

BOOL mlir::ODIE::Compiler::ODIX::SymbolOp::verify(unsigned int **this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = 1;
  if (*(*(*&v1[4 * ((v1[11] >> 23) & 1) + 18] + 32) + 16) != *(*(*&v1[4 * ((v1[11] >> 23) & 1) + 18] + 24) + 12))
  {
    v4 = "Inconsistent output intents, each output should havean explicit intent";
    v5 = 259;
    mlir::Operation::emitOpError(v6, v1, &v4);
    v2 = (v7 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
  }

  return v2;
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::parse(mlir::AsmParser *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if ((mlir::AsmParser::parseSymbolName(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(a2);
    *v4 = v10;
  }

  v5 = (*(*a1 + 40))(a1);
  v13 = 0;
  v14[0] = a1;
  if (((*(*a1 + 448))(a1, &v13, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler4ODIX10SymbolAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v14) & 1) == 0)
  {
    return 0;
  }

  v6 = v13;
  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(a2) + 8) = v6;
  }

  else
  {
    v11[0] = "invalid kind of attribute specified";
    v12 = 259;
    (*(*a1 + 24))(v14, a1, v5, v11);
    v7 = v15;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    if (v7)
    {
      return 0;
    }
  }

  v11[0] = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v8 = a2[1];
    v14[0] = a1;
    v14[1] = v11;
    v14[2] = a2;
    if (mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SymbolOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14))
    {
      return 1;
    }
  }

  return 0;
}

void mlir::ODIE::Compiler::ODIX::SymbolOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
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

  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
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

  v12 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = (*(*v9 + 80))(v9) + v9[4] - v9[2];
    mlir::ODIE::Compiler::ODIX::SymbolAttr::print(&v12, a2);
    if (v10 == (*(*v9 + 80))(v9) + v9[4] - v9[2])
    {
      (*(*a2 + 40))(a2, v12);
    }
  }

  v12 = v14;
  v13 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v12, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v12, "symbol", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v12, v13);
  if (v12 != v14)
  {
    free(v12);
  }
}

void mlir::ODIE::Compiler::ODIX::ValueOp::build(mlir::ODIE::Compiler::ODIX::ValueOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  __src = v10;
  v9 = 0x200000000;
  v3 = *this;
  v4 = (a2 + 64);
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  v5 = *(*v3 + 384);
  v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v7);
  *__src = *v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v4, __src, __src + 8 * v9);
  if (__src != v10)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::ValueOp::parse(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
  return 1;
}

void mlir::ODIE::Compiler::ODIX::ValueOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v4, 0);
}

void *mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x1000000000;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0x4800000000;
  v4 = a1;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(mlir::ODIE::Compiler::ODIX::FunctionOp)::$_0>, &v4, 1);
  return a1;
}

void mlir::ODIE::Compiler::ODIX::RegionTable::insertRegion(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v6 = a2 + 64;
  *v10 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) + 16);
  v11[0] = a2;
  llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::insert(a1, v10, a3, a4);
  v7 = *(*(v6 + 16 * ((*(a2 + 44) >> 23) & 1)) + 16);
  v10[0] = v11;
  v10[1] = 0x600000000;
  v12 = v7;
  v13 = v15;
  v14 = 0x600000000;
  llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::insert((a1 + 24), &v12, v8, v9);
  if (v13 != v15)
  {
    free(v13);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }
}

uint64_t **llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = llvm::xxh3_64bits(*a2, v7, a3, a4);
  return llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::try_emplace_with_hash<mlir::ODIE::Compiler::ODIX::RegionOp>(a1, v6, v7, v8, (a2 + 16));
}

uint64_t **llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = llvm::xxh3_64bits(*a2, v7, a3, a4);
  return llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<llvm::SmallVector<mlir::Operation *,6u>>(a1, v6, v7, v8, a2 + 16);
}

mlir::Operation **mlir::ODIE::Compiler::ODIX::RegionTable::removeUse(mlir::Operation **this, mlir::Operation *a2)
{
  v3 = *(this + 8);
  if (v3)
  {
      ;
    }
  }

  else
  {
    i = this[3];
  }

  v6 = (this[3] + 8 * v3);
  if (i != v6)
  {
    v7 = *i;
    do
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 8 * v8;
        this = *(v7 + 8);
        while (*this != a2)
        {
          ++this;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        this = *(v7 + 8);
      }

      v10 = (*(v7 + 8) + 8 * v8);
      if (this != v10)
      {
        if (v10 != this + 1)
        {
          this = memmove(this, this + 1, v10 - (this + 1));
          LODWORD(v8) = *(v7 + 16);
        }

        *(v7 + 16) = v8 - 1;
      }

      do
      {
LABEL_22:
        v11 = *(i + 1);
        i = (i + 8);
        v7 = v11;
        if (v11)
        {
          v12 = v7 == -8;
        }

        else
        {
          v12 = 1;
        }
      }

      while (v12);
    }

    while (i != v6);
  }

  return this;
}

void mlir::ODIE::Compiler::ODIX::RegionTable::replaceUses(mlir::Operation **a1, mlir::Operation *a2, unsigned __int8 *a3, unint64_t a4)
{
  mlir::ODIE::Compiler::ODIX::RegionTable::removeUse(a1, a2);
  v10 = llvm::xxh3_64bits(a3, a4, v8, v9);
  v11 = *llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 3), a3, a4, v10) + 1;

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v11, a2);
}

BOOL llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::erase(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v5 = llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::find(a1, a2, a3, a4);
  v7 = v5;
  v8 = *a1 + 8 * *(a1 + 8);
  if (v8 != v5)
  {
    v9 = *v5;
    llvm::StringMapImpl::RemoveKey(a1, *v5 + *(a1 + 20), **v5, v6);
    MEMORY[0x25F891030](v9, 8);
  }

  return v8 != v7;
}

BOOL llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::erase(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v5 = llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::find(a1, a2, a3, a4);
  v7 = v5;
  v8 = *a1 + 8 * *(a1 + 8);
  if (v8 != v5)
  {
    v9 = *v5;
    llvm::StringMapImpl::RemoveKey(a1, *v5 + *(a1 + 20), **v5, v6);
    llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::Destroy<llvm::MallocAllocator>(v9);
  }

  return v8 != v7;
}

BOOL mlir::ODIE::Compiler::ODIX::FunctionOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(***a2 + 32);
  v26 = 0;
  v27 = v4;
  v5 = (*(*a1 + 40))(a1);
  if (mlir::AsmParser::parseSymbolName(a1, &v26))
  {
    v7 = *(*(*(a2 + 1) + 96) + 16);
    v8 = mlir::SymbolRefAttr::get(v26, 0, 0, v6);
    mlir::NamedAttrList::push_back(a2 + 112, v7, v8);
    v35 = v37;
    v36 = 0x100000000;
    v32 = v34;
    v33 = 0x600000000;
    *&v38 = a1;
    *(&v38 + 1) = &v32;
    v39 = &v35;
    if (((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::parseArguments(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &)::$_0>, &v38, " in argument list", 17) & 1) == 0)
    {
      goto LABEL_18;
    }

    v9 = v33;
    if (v33 <= v36)
    {
      v9 = v36;
    }

    v10 = *(*(*(a2 + 1) + 96) + 8);
    I16IntegerAttr = mlir::Builder::getI16IntegerAttr(&v27, v9);
    mlir::NamedAttrList::push_back(a2 + 112, v10, I16IntegerAttr);
    if ((*(*a1 + 408))(a1, "outs", 4) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) != 0 && (*&v38 = a1, *(&v38 + 1) = &v32, v39 = &v35, ((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::parseArguments(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &)::$_0>, &v38, " in argument list", 17)))
    {
      if (!v33 && v36)
      {
        v12 = v36 << 6;
        v13 = (v35 + 32);
        do
        {
          v14 = *v13;
          v13 += 8;
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v32, v14);
          v12 -= 64;
        }

        while (v12);
      }

      v15 = *(*(*a1 + 32))(a1);
      *&v38 = v32 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v38 + 1) = v33;
      *__src = xmmword_25D0A0640;
      v16 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v15, &v38, __src);
      if (v16)
      {
        v17 = **(*(a2 + 1) + 96);
        v18 = mlir::TypeAttr::get(v16);
        mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
        __src[0] = v29;
        __src[1] = 0x400000000;
        v31 = 4;
        v19 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 496))(a1, __src))
        {
          v20 = __src[0];
          v21 = __src[0] + 16 * LODWORD(__src[1]);
          *(a2 + 24) = 0;
          llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 28, v20, v21);
          mlir::OperationState::addRegion(a2);
        }

        v25 = 257;
        (*(*a1 + 24))(&v38, a1, v19, v24);
        if (v38)
        {
          mlir::Diagnostic::operator<<<41ul>(&v38 + 8, "failed to parse the attribute dictionary");
        }

        v22 = (v40 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
        if (__src[0] != v29)
        {
          free(__src[0]);
        }
      }

      else
      {
        v30 = 257;
        (*(*a1 + 24))(&v38, a1, v5, __src);
        if (v38)
        {
          mlir::Diagnostic::operator<<<34ul>(&v38 + 8, "failed to construct function type");
        }

        v22 = (v40 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
      }
    }

    else
    {
LABEL_18:
      v22 = 0;
    }

    if (v32 != v34)
    {
      free(v32);
    }

    if (v35 != v37)
    {
      free(v35);
    }
  }

  else
  {
    v30 = 257;
    (*(*a1 + 24))(&v38, a1, v5, __src);
    if (v38)
    {
      mlir::Diagnostic::operator<<<28ul>(&v38 + 8, "expected valid symbol name.");
    }

    v22 = (v40 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  }

  return v22;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::ODIE::Compiler::ODIX::FunctionOp *this, mlir::OpAsmPrinter *a2)
{
  v26 = *MEMORY[0x277D85DE8];
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

  v6 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 8);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
  v7 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v24 = *(v8 + 32) == v8 + 32;
  v23[0] = a2;
  v23[1] = &v24;
  v23[2] = this;
  NumInputs = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this);
  mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::OpAsmPrinter &)::$_0::operator()(v23, 0, NumInputs);
  v10 = *this;
  if (mlir::ODIE::Compiler::ODIX::FunctionOp::getNumArguments(*this) != NumInputs)
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) == v12)
    {
      llvm::raw_ostream::write(v11, " ", 1uLL);
    }

    else
    {
      *v12 = 32;
      ++*(v11 + 4);
    }

    (*(*a2 + 72))(a2, "outs", 4);
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if ((*(v13 + 3) - v14) > 2)
    {
      *(v14 + 2) = 32;
      *v14 = 15648;
      *(v13 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v13, " = ", 3uLL);
    }

    NumArguments = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumArguments(*this);
    mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::OpAsmPrinter &)::$_0::operator()(v23, NumInputs, NumArguments);
    v10 = *this;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v10);
  v17 = *(AttrDictionary + 8);
  v18 = *(AttrDictionary + 16);
  v19 = *(*(*this + 48) + 96);
  v25[0] = *(v19[2] + 16);
  v25[1] = *(*v19 + 16);
  v25[2] = *(v19[1] + 16);
  (*(*a2 + 200))(a2, v17, v18, v25, 3);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, " ", 1uLL);
  }

  else
  {
    *v21 = 32;
    ++*(v20 + 4);
  }

  return (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), 0, 1, 0);
}

llvm::raw_ostream *mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::OpAsmPrinter &)::$_0::operator()(void *a1, unsigned int a2, unsigned int a3)
{
  v6 = a1[2];
  v7 = (*(**a1 + 16))(*a1);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, "(", 1uLL);
  }

  else
  {
    *v8 = 40;
    ++*(v7 + 4);
  }

  v9 = a3 - a2;
  if (a3 > a2)
  {
    v10 = a2;
    do
    {
      v11 = *a1;
      v12 = *(((*v6 + 16 * ((*(*v6 + 44) >> 23) & 1) + ((*(*v6 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v6 + 40) + 8);
      if (v12)
      {
        v13 = v12 - 8;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(*(v13 + 48) + 8 * v10);
      if (*a1[1] == 1)
      {
        (*(*v11 + 32))(v11, *(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      else
      {
        (*(*v11 + 152))(v11, v14, 0, 0, 0);
      }

      if (++v10 < a3)
      {
        v15 = (*(**a1 + 16))();
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
      }

      --v9;
    }

    while (v9);
  }

  result = (*(**a1 + 16))();
  v18 = *(result + 4);
  if (*(result + 3) == v18)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v18 = 41;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::getNumArguments(mlir::ODIE::Compiler::ODIX::FunctionOp *this)
{
  v1 = (((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(v3 + 56) - *(v3 + 48)) >> 3;
}

uint64_t mlir::ODIE::Compiler::ODIX::CallOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *this;
  while (1)
  {
    v5 = *(v4 + 2);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    if (!v4 || *(*(v4 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  v7 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v4, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
  {
    return 1;
  }

  v11 = 257;
  mlir::Operation::emitOpError(&v14, *this, v10);
  if (v14)
  {
    mlir::Diagnostic::operator<<<19ul>(v15, "expected a valid '");
    if (v14)
    {
      v13 = 262;
      v12[0] = "odix.symbol";
      v12[1] = 11;
      mlir::Diagnostic::operator<<(v15, v12);
      if (v14)
      {
        mlir::Diagnostic::operator<<<16ul>(v15, "' as the callee");
      }
    }
  }

  v8 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v8;
}

uint64_t mlir::ODIE::Compiler::ODIX::ValueOp::getEffects(void *a1, uint64_t a2)
{
  v4 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>();
  v7 = *a1 - 16;
  v8 = v4;
  v6 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(a2, &v8, &v7, &v6);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4);
  }

  v5 = *a1 + 40 * v4;
  v6 = *a3;
  v7 = *a4;
  *v5 = *a2;
  *(v5 + 8) = v7;
  *(v5 + 16) = v6 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataSegmentOp::getRecordOffsets@<X0>(mlir::ODIE::Compiler::ODIX::DataSegmentOp *this@<X0>, void *a2@<X8>)
{
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::DataRecordOp>((((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40)), &v14);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v3 = v18;
  result = v15;
  if (v15 != v18)
  {
    v5 = 0;
    do
    {
      v9 = (*(&v13 + 1))();
      Alignment = mlir::ODIE::Compiler::ODIX::DataRecordOp::getAlignment(&v9);
      v7 = (v5 - (v5 != 0)) / Alignment;
      if (v5)
      {
        ++v7;
      }

      v8 = v7 * Alignment;
      llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(a2, v7 * Alignment);
      v5 = v8 + mlir::ODIE::Compiler::ODIX::DataRecordOp::getSize(&v9);
      mlir::Region::OpIterator::operator++(&v10);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v10);
      result = v11;
    }

    while (v11 != v3);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::getSize(mlir::ODIE::Compiler::ODIX::DataRecordOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  v2 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v1);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = (*(v3 + 16))(v3, v2);
    v8 = (*(v7 + 24))(v7, v6);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = 1;
      do
      {
        v12 = *v8++;
        v11 *= v12;
        v10 -= 8;
      }

      while (v10);
    }

    else
    {
      v11 = 1;
    }

    v14 = (*(v5 + 16))(v5, v4);
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v21 = v14[4];
      if (v21)
      {
        if ((*v21)[17] == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
        {
          v11 = *v21[7];
        }
      }
    }

    v15 = (*(v5 + 16))(v5, v4);
    v25 = (*(v16 + 8))(v16, v15);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v25);
    if (IntOrFloatBitWidth == 1)
    {
      v18 = 8;
    }

    else
    {
      v18 = IntOrFloatBitWidth;
    }

    v19 = v11 * v18 + 7;
    return (v19 >> 3);
  }

  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v22 = v1[2];
    v25 = v1[1];
    v23 = mlir::Type::getIntOrFloatBitWidth(&v25);
    if (v23 == 1)
    {
      v24 = 8;
    }

    else
    {
      v24 = v23;
    }

    v19 = v22 * v24 + 7;
    return (v19 >> 3);
  }

  LODWORD(v13) = -1;
  return v13;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataSegmentOp::getSize(mlir::ODIE::Compiler::ODIX::DataSegmentOp *this)
{
  v10[6] = *MEMORY[0x277D85DE8];
  if (*(*(*this + 16) + 32) == *(*this + 16) + 32)
  {
    return 0;
  }

  mlir::ODIE::Compiler::ODIX::DataSegmentOp::getRecordOffsets(this, &v8);
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(v3 + 32);
  v4 = *(v8 + v9 - 1);
  v5 = mlir::ODIE::Compiler::ODIX::DataRecordOp::getSize(&v7) + v4;
  if (v8 != v10)
  {
    free(v8);
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::ODIX::labelOpByName(void *a1, uint64_t a2)
{
  mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::LabelOp>(a1, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v9 = v10[3];
  v4 = v11;
  while (v7 != v4)
  {
    result = (*(&v9 + 1))(v7, v3);
    if (*(result + 16 * ((*(result + 44) >> 23) & 1) + 64) == a2)
    {
      return result;
    }

    mlir::Region::OpIterator::operator++(&v6);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v6);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::verifySymbolUses(mlir::ODIE::Compiler::ODIX::FunctionOp *this, mlir::SymbolTableCollection *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *this;
  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    if (!v4 || *(*(v4 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  v7 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v4, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80));
  if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
  {
    v11 = *(*(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 72) + 24);
    v12 = *(v11 + 8);
    if (v12 == mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this))
    {
      v13 = *(v11 + 12);
      v14 = *(*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) + 8);
      if (v13 == v14 - mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this))
      {
        v9 = 1;
        return v9 & 1;
      }

      v30 = 257;
      mlir::Operation::emitOpError(&v31, *this, v29);
      if (v31)
      {
        mlir::Diagnostic::operator<<<28ul>(v32, "expected function results '");
      }

      LODWORD(v27[0]) = *(v11 + 8);
      v21 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v31, v27);
      v22 = v21;
      if (*v21)
      {
        mlir::Diagnostic::operator<<<28ul>((v21 + 1), "' to match symbol results '");
      }

      v23 = *(*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) + 8);
      v26 = v23 - mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this);
      v24 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v22, &v26);
      v25 = v24;
      if (*v24)
      {
        mlir::Diagnostic::operator<<<2ul>((v24 + 1), "'");
      }

      v8 = *(v25 + 200);
    }

    else
    {
      v30 = 257;
      mlir::Operation::emitOpError(&v31, *this, v29);
      if (v31)
      {
        mlir::Diagnostic::operator<<<27ul>(v32, "expected function inputs '");
      }

      v26 = *(v11 + 8);
      v15 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v31, &v26);
      v16 = v15;
      if (*v15)
      {
        mlir::Diagnostic::operator<<<27ul>((v15 + 1), "' to match symbol inputs '");
      }

      NumInputs = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this);
      if (*v16)
      {
        LODWORD(v27[0]) = 5;
        v27[1] = NumInputs;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), v27, 1);
        v19 = v16[3] + 24 * *(v16 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v16 + 8);
        if (*v16)
        {
          mlir::Diagnostic::operator<<<2ul>((v16 + 1), "'");
        }
      }

      v8 = *(v16 + 200);
    }
  }

  else
  {
    v28 = 257;
    mlir::Operation::emitOpError(&v31, *this, v27);
    if (v31)
    {
      mlir::Diagnostic::operator<<<19ul>(v32, "expected a valid '");
      if (v31)
      {
        v30 = 262;
        v29[0] = "odix.symbol";
        v29[1] = 11;
        mlir::Diagnostic::operator<<(v32, v29);
        if (v31)
        {
          mlir::Diagnostic::operator<<<20ul>(v32, "' as the symbol ref");
        }
      }
    }

    v8 = v32[192];
  }

  v9 = v8 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  return v9 & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<85ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<141ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::parseArguments(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &)::$_0>(uint64_t *a1)
{
  v13 = 0uLL;
  BYTE8(v16) = 0;
  v15 = 0uLL;
  *&v14 = 0;
  LOBYTE(v16) = 0;
  v2 = (*(**a1 + 760))();
  if ((v2 & 0x100) != 0)
  {
    v5 = v2;
    v6 = a1[2];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<mlir::OpAsmParser::Argument&>(v6, &v13);
    }

    else
    {
      v8 = (*v6 + (v7 << 6));
      v9 = v13;
      v10 = v14;
      v11 = v16;
      v8[2] = v15;
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      ++*(v6 + 8);
    }
  }

  else
  {
    v3 = *a1;
    v4 = llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(a1[1]);
    return (*(*v3 + 536))(v3, v4);
  }

  return v5;
}

__n128 llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<mlir::OpAsmParser::Argument&>(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  v4 = a2[3];
  v10[2] = a2[2];
  v10[3] = v4;
  v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(a1, v10, 1);
  v6 = *a1 + (*(a1 + 8) << 6);
  result = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 48);
  *(v6 + 32) = *(v5 + 32);
  *(v6 + 48) = v9;
  *v6 = result;
  *(v6 + 16) = v8;
  ++*(a1 + 8);
  return result;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::DataRecordOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

_DWORD *mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::MoveOp &>(_DWORD *result, uint64_t a2)
{
  v2 = "Can't fold between I/O registers";
  v3 = 259;
  v4 = &v2;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 88))(result, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::MoveOp &>(mlir::ODIE::Compiler::ODIX::MoveOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v4);
    }
  }

  return result;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::LabelOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::RegionOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B90))
  {
    qword_27FC24B80 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>();
    *algn_27FC24B88 = v1;
    __cxa_guard_release(&qword_27FC24B90);
  }

  return qword_27FC24B80;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties]";
  v6 = 147;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24BB8))
  {
    qword_27FC24BA8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>();
    unk_27FC24BB0 = v1;
    __cxa_guard_release(&qword_27FC24BB8);
  }

  return qword_27FC24BA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::ODIX::BranchOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::ODIX::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::BranchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24BE0))
  {
    qword_27FC24BD0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>();
    *algn_27FC24BD8 = v1;
    __cxa_guard_release(&qword_27FC24BE0);
  }

  return qword_27FC24BD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C08))
  {
    qword_27FC24BF8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>();
    unk_27FC24C00 = v1;
    __cxa_guard_release(&qword_27FC24C08);
  }

  return qword_27FC24BF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::DataRecordOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C30))
  {
    qword_27FC24C20 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>();
    *algn_27FC24C28 = v1;
    __cxa_guard_release(&qword_27FC24C30);
  }

  return qword_27FC24C20;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C58))
  {
    qword_27FC24C48 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>();
    unk_27FC24C50 = v1;
    __cxa_guard_release(&qword_27FC24C58);
  }

  return qword_27FC24C48;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::GetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C80))
  {
    qword_27FC24C70 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>();
    *algn_27FC24C78 = v1;
    __cxa_guard_release(&qword_27FC24C80);
  }

  return qword_27FC24C70;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties]";
  v6 = 142;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::InvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24CA8))
  {
    qword_27FC24C98 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>();
    unk_27FC24CA0 = v1;
    __cxa_guard_release(&qword_27FC24CA8);
  }

  return qword_27FC24C98;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::ODIX::JumpOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::ODIX::JumpOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::JumpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24CD0))
  {
    qword_27FC24CC0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>();
    *algn_27FC24CC8 = v1;
    __cxa_guard_release(&qword_27FC24CD0);
  }

  return qword_27FC24CC0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24CF8))
  {
    qword_27FC24CE8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>();
    unk_27FC24CF0 = v1;
    __cxa_guard_release(&qword_27FC24CF8);
  }

  return qword_27FC24CE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::DataRefAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::DataRefAttr]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadDsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D38))
  {
    qword_27FC24D28 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>();
    unk_27FC24D30 = v1;
    __cxa_guard_release(&qword_27FC24D38);
  }

  return qword_27FC24D28;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadImmOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::ODIX::MoveOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::ODIX::MoveOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D60))
  {
    qword_27FC24D50 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>();
    *algn_27FC24D58 = v1;
    __cxa_guard_release(&qword_27FC24D60);
  }

  return qword_27FC24D50;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D88))
  {
    qword_27FC24D78 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>();
    unk_27FC24D80 = v1;
    __cxa_guard_release(&qword_27FC24D88);
  }

  return qword_27FC24D78;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24DB0))
  {
    qword_27FC24DA0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>();
    *algn_27FC24DA8 = v1;
    __cxa_guard_release(&qword_27FC24DB0);
  }

  return qword_27FC24DA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::SymbolAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::SymbolAttr]";
  v6 = 100;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler4ODIX10SymbolAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::ODIX::SymbolAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SymbolOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t **llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::try_emplace_with_hash<mlir::ODIE::Compiler::ODIX::RegionOp>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v15 = buffer;
  v16 = buffer + 2;
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  *(v16 + a3) = 0;
  v17 = *a5;
  *v15 = a3;
  v15[1] = v17;
  *i = v15;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t **llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 73), 8uLL);
  v13 = buffer;
  v14 = buffer + 9;
  if (a3)
  {
    memcpy(buffer + 9, a2, a3);
  }

  *(v14 + a3) = 0;
  *v13 = a3;
  v13[1] = (v13 + 3);
  v13[2] = 0x600000000;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(mlir::ODIE::Compiler::ODIX::FunctionOp)::$_0>(uint64_t *result, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v5 = *result;
  v6 = *(*(a2 + 48) + 16);
  if (a2 && v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v12 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 16);
    v13 = a2;
    llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::insert(v5, &v12, a3, a4);
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,void>::id)
  {
    v7 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = llvm::xxh3_64bits(v8, v9, a3, a4);
    v11 = *llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<>((v5 + 24), v8, v9, v10) + 1;

    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v11, a2);
  }
}

uint64_t **llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<llvm::SmallVector<mlir::Operation *,6u>>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  *i = llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::create<llvm::MallocAllocator,llvm::SmallVector<mlir::Operation *,6u>>(a2, a3, a1, a5);
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t *llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::create<llvm::MallocAllocator,llvm::SmallVector<mlir::Operation *,6u>>(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  buffer = llvm::allocate_buffer((a2 + 73), 8uLL);
  v8 = buffer;
  v9 = buffer + 9;
  if (a2)
  {
    memcpy(buffer + 9, a1, a2);
  }

  *(v9 + a2) = 0;
  *v8 = a2;
  v8[1] = (v8 + 3);
  v8[2] = 0x600000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<mlir::Operation *>::operator=((v8 + 1), a4);
  }

  return v8;
}

uint64_t llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *a4;
  v12[0] = *a2;
  v12[1] = v6;
  v12[2] = v5 & 0xFFFFFFFFFFFFFFF9 | 4;
  v12[3] = 0;
  v13 = 0;
  v14 = 0;
  v7 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v12, 1);
  v8 = *a1 + 40 * *(a1 + 8);
  v9 = *(v7 + 32);
  v10 = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = v10;
  *(v8 + 32) = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 40 * v8 - 40;
}

uint64_t mlir::ODIE::Compiler::ODIX::destOpByLabelAttr(void *a1, uint64_t a2)
{
  if (*a1 == a1)
  {
    return 0;
  }

  for (i = a1[1]; i != a1; i = i[1])
  {
    v4 = i - 1;
    if (!i)
    {
      v4 = 0;
    }

    if (v4[4] != v4 + 4)
    {
      break;
    }
  }

  if (i == a1)
  {
    return 0;
  }

  v5 = i - 1;
  if (!i)
  {
    v5 = 0;
  }

  v6 = v5[5];
  v12[0] = a1;
  v12[1] = i;
  for (j = v6; j; v6 = j)
  {
    v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(v6 + 56) + 8), *(*(v6 + 56) + 8) + 16 * *(*(v6 + 56) + 16), "odix.label", 0xAuLL);
    if (v8)
    {
      v9 = *(v7 + 8);
      if (v9)
      {
        if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && v9 == a2)
        {
          break;
        }
      }
    }

    mlir::Region::OpIterator::operator++(v12);
  }

  return v6;
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::Compiler::TorchImport::TorchImportDialect>(uint64_t **a1)
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286EA32F8;
  v2[3] = v2;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id, "TorchImport", 0xBuLL, v2);
  return std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v2);
}

uint64_t mlir::ODIE::Compiler::TorchImportFrontendExtension::canHandle(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v3 = &v4;
  mlir::detail::walk<mlir::ForwardIterator>(*a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::TorchImportFrontendExtension::canHandle(mlir::ModuleOp *)::$_0>, &v3, 1);
  return v4;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::TorchImportFrontendExtension::canHandle(mlir::ModuleOp *)::$_0>(_BYTE **a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = *(v2 + 8) + 32;
  }

  else
  {
    v3 = v2 + 24;
  }

  v4 = *(*v3 + 24);
  v5 = 1;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
  {
    **a1 = 1;
    return 0;
  }

  return v5;
}

void mlir::ODIE::Compiler::TorchImport::TorchImportDialect::~TorchImportDialect(mlir::ODIE::Compiler::TorchImport::TorchImportDialect *this)
{
  *this = &unk_286E78B58;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(this + 192);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 192);
  llvm::StringMap<mlir::DynamicAttrDefinition *,llvm::MallocAllocator>::~StringMap(this + 168);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>::destroyAll(this + 36);
  MEMORY[0x25F891030](*(this + 18), 8);
  llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::~StringMap(this + 120);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::destroyAll(this + 24);
  MEMORY[0x25F891030](*(this + 12), 8);

  mlir::Dialect::~Dialect(this);
}

{
  mlir::ODIE::Compiler::TorchImport::TorchImportDialect::~TorchImportDialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::TorchImport::TorchImportDialect::parseType(uint64_t a1, unint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v16 = 0;
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v17, a2, 0);
  v21[0] = "tuple";
  v21[1] = 5;
  if (v20[2])
  {
    goto LABEL_2;
  }

  v6 = v19;
  if (v19 != 5)
  {
    if (!v19)
    {
      (*(*v17[0] + 648))(v17[0], v21, 1);
      if (v20[2])
      {
LABEL_2:
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_12;
      }

      v6 = v19;
    }

    goto LABEL_11;
  }

  if (*v18 != 1819309428 || v18[4] != 101)
  {
LABEL_11:
    v5 = 0;
    v7 = v18;
    *v20 = 0;
    v20[2] = 1;
    goto LABEL_12;
  }

  (*(*a2 + 32))(a2);
  (*(*a2 + 40))(a2);
  LOBYTE(v27) = 0;
  v31 = 0;
  if ((*(*a2 + 152))(a2))
  {
    mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(a2, &v24);
    std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(&v27, &v24);
    if (v26[48] == 1 && v24 != v26)
    {
      free(v24);
    }

    v13 = *a2;
    if (v31)
    {
      if ((*(v13 + 168))(a2))
      {
        v14 = (*(*a2 + 32))(a2);
        v5 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::TorchImport::TupleType,llvm::ArrayRef<mlir::Type>>(*v14, v27, v28);
        goto LABEL_34;
      }
    }

    else
    {
      v15 = (*(v13 + 40))(a2);
      v23 = 259;
      (*(*a2 + 24))(&v24, a2, v15, v22);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    }
  }

  v5 = 0;
LABEL_34:
  if (v31 == 1 && v27 != &v29)
  {
    free(v27);
  }

  v6 = 0;
  v7 = 0;
  v16 = v5;
  v20[0] = v5 != 0;
  *&v20[1] = 257;
LABEL_12:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v17) & 0x100) == 0)
  {
    v9 = mlir::ExtensibleDialect::parseOptionalDynamicType(a1, v7, v6, a2, &v16);
    if ((v9 & 0x100) != 0)
    {
      if (v9)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v23 = 257;
      (*(*a2 + 24))(&v24, a2, v4, v22);
      if (v24)
      {
        if (v24)
        {
          v30 = 261;
          v27 = v7;
          v28 = v6;
          mlir::Diagnostic::operator<<(&v25, &v27);
          if (v24)
          {
            if (v24)
            {
              v10 = *(a1 + 8);
              v11 = *(a1 + 16);
              v30 = 261;
              v27 = v10;
              v28 = v11;
              mlir::Diagnostic::operator<<(&v25, &v27);
              if (v24)
              {
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
      return 0;
    }
  }

  return v5;
}