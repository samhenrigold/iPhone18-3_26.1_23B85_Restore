uint64_t mlir::arith::MinSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::MinSIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::MinSIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::MinSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::MinUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::MinUIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::MinUIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::MinUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::detail::MinimumFOpGenericAdaptorBase::MinimumFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::MinimumFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::MinimumFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "fastmath";
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

unint64_t mlir::arith::MinimumFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::MinimumFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
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

uint64_t *mlir::arith::MinimumFOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::MinimumFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::MinimumFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::MinimumFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::MinimumFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::MinimumFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::MinimumFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinimumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::MinimumFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::detail::MulFOpGenericAdaptorBase::MulFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::MulFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::MulFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "fastmath";
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

unint64_t mlir::arith::MulFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::MulFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
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

uint64_t *mlir::arith::MulFOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::MulFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::MulFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::MulFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::MulFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::MulFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::MulFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::MulFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::detail::MulIOpGenericAdaptorBase::MulIOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::MulIOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "overflowFlags", 0xDuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::MulIOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "overflowFlags";
  v10[1] = 13;
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

unint64_t mlir::arith::MulIOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::MulIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
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

uint64_t *mlir::arith::MulIOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

void mlir::arith::MulIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "overflowFlags";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::MulIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v8, "overflowFlags", 0xD, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::MulIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::MulIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::MulIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10))
    {
      return 0;
    }

    v4 = v10;
    if (v10)
    {
      *mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(a2) = v4;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::MulIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::MulIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x776F6C667265766FLL;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "overflow", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::IntegerOverflowFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "overflowFlags", 13);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "overflowFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::MulSIExtendedOp::getAsmResultNames(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, v6, "low", 3);
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

  return v16(a3, v7 + v14, "high", 4);
}

uint64_t mlir::arith::MulSIExtendedOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = a4;
  v16[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 2uLL);
  if (a5 < 2)
  {
    return 0;
  }

  v12 = 1;
  v13 = *(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = v13;
  *(*a11 + 8) = v14;
  return v12;
}

uint64_t mlir::arith::MulSIExtendedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      if (!*(*this + 9) || ((v3 = *(*this - 1) & 7, v3 != 6) ? (v4 = v3 == 5) : (v4 = 1), v4))
      {
        v5 = -40;
      }

      else
      {
        v5 = -32;
      }

      if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*this + v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u))
      {
        v6 = *this;
        v7 = *(*this + 9);
        v8 = *(*(v7 + 24) + 8);
        v9 = *(*(v7 + 56) + 8);
        if ((v9 ^ v8) > 7)
        {
          goto LABEL_32;
        }

        v10 = v6[9];
        v11 = v10 ? (v6 - 4) : 0;
        v12 = *(v11 + 8);
        if ((v12 ^ v9) > 7)
        {
          goto LABEL_32;
        }

        if (!v10 || (*(v11 + 8) & 7) == 6)
        {
          v16 = *(v11 - 16);
        }

        else
        {
          if ((v12 & 7) != 5)
          {
            if ((*(v6 - 3) ^ v12) <= 7)
            {
              v13 = 0x3FFFFFFFFFFFFFF8;
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          v16 = *(v6 - 4);
        }

        if ((v16 ^ v12) < 8)
        {
          v13 = 0x3FFFFFFFFFFFFFF6;
LABEL_31:
          if ((*&v6[v13 + 2] ^ v8) < 8)
          {
            return 1;
          }
        }

LABEL_32:
        v17 = "failed to verify that all of {lhs, rhs, low, high} have same type";
        v18 = 259;
        mlir::Operation::emitOpError(v19, v6, &v17);
        v14 = (v20 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
        return v14;
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::MulSIExtendedOp::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, *v7[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::MulSIExtendedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, 0);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::MulUIExtendedOp::getAsmResultNames(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, v6, "low", 3);
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

  return v16(a3, v7 + v14, "high", 4);
}

uint64_t mlir::arith::MulUIExtendedOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = a4;
  v16[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 2uLL);
  if (a5 < 2)
  {
    return 0;
  }

  v12 = 1;
  v13 = *(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = v13;
  *(*a11 + 8) = v14;
  return v12;
}

uint64_t mlir::arith::MulUIExtendedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      if (!*(*this + 9) || ((v3 = *(*this - 1) & 7, v3 != 6) ? (v4 = v3 == 5) : (v4 = 1), v4))
      {
        v5 = -40;
      }

      else
      {
        v5 = -32;
      }

      if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*this + v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u))
      {
        v6 = *this;
        v7 = *(*this + 9);
        v8 = *(*(v7 + 24) + 8);
        v9 = *(*(v7 + 56) + 8);
        if ((v9 ^ v8) > 7)
        {
          goto LABEL_32;
        }

        v10 = v6[9];
        v11 = v10 ? (v6 - 4) : 0;
        v12 = *(v11 + 8);
        if ((v12 ^ v9) > 7)
        {
          goto LABEL_32;
        }

        if (!v10 || (*(v11 + 8) & 7) == 6)
        {
          v16 = *(v11 - 16);
        }

        else
        {
          if ((v12 & 7) != 5)
          {
            if ((*(v6 - 3) ^ v12) <= 7)
            {
              v13 = 0x3FFFFFFFFFFFFFF8;
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          v16 = *(v6 - 4);
        }

        if ((v16 ^ v12) < 8)
        {
          v13 = 0x3FFFFFFFFFFFFFF6;
LABEL_31:
          if ((*&v6[v13 + 2] ^ v8) < 8)
          {
            return 1;
          }
        }

LABEL_32:
        v17 = "failed to verify that all of {lhs, rhs, low, high} have same type";
        v18 = 259;
        mlir::Operation::emitOpError(v19, v6, &v17);
        v14 = (v20 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
        return v14;
      }
    }
  }

  return 0;
}

uint64_t mlir::arith::MulUIExtendedOp::parse(uint64_t a1, uint64_t a2)
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
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, *v7[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::MulUIExtendedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, 0);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::detail::NegFOpGenericAdaptorBase::NegFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::NegFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::NegFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "fastmath";
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

unint64_t mlir::arith::NegFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::NegFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
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

uint64_t *mlir::arith::NegFOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::NegFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::NegFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::NegFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

void mlir::arith::NegFOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  v8 = mlir::arith::FastMathFlagsAttr::get(*a1, v5);
  *mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(a2) = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

BOOL mlir::arith::NegFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::NegFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::NegFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::NegFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
      }
    }
  }

  return 0;
}

void mlir::arith::NegFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
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
  if (v6 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
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
    if (*(v9 + 3) - v10 > 7uLL)
    {
      *v10 = 0x6874616D74736166;
      *(v9 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v9, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v20 = v22;
  v21 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v20, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v20, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, v21);
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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v20 != v22)
  {
    free(v20);
  }
}

uint64_t mlir::arith::OrIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::OrIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::OrIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::OrIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::detail::RemFOpGenericAdaptorBase::RemFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::RemFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::RemFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "fastmath";
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

unint64_t mlir::arith::RemFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::RemFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
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

uint64_t *mlir::arith::RemFOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::RemFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::RemFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::RemFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::RemFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::RemFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::RemFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::RemFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::RemFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::RemSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::RemSIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::RemSIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::RemSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::RemUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::RemUIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::RemUIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::RemUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::SIToFPOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v3 = *this;
      v4 = (*(*(*(v3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v5 = *(*v4 + 136);
      v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v7 = v6;
      if (v6)
      {
        v10 = v4[1];
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (v3[9])
      {
        v11 = v3 - 4;
      }

      else
      {
        v11 = 0;
      }

      v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = *(*v12 + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v15 = v14;
      if (v14)
      {
        v17 = v12[1];
        v16 = v12[2];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v9 != v16 || memcmp(v10, v17, 8 * v9))
      {
LABEL_37:
        v23 = "failed to verify that input and output have the same tensor dimensions";
        v24 = 259;
        mlir::Operation::emitOpError(v25, v3, &v23);
        v8 = (v26 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return v8;
      }

      if (v15)
      {
        v18 = v12[1];
        v19 = v12[2];
        if (!v7)
        {
LABEL_32:
          v20 = 0;
          v21 = 0;
LABEL_35:
          if (v19 == v20 && !memcmp(v18, v21, 8 * v19))
          {
            return 1;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v21 = v4[1];
      v20 = v4[2];
      goto LABEL_35;
    }
  }

  return 0;
}

BOOL mlir::arith::SIToFPOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::SIToFPOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
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
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::detail::ShLIOpGenericAdaptorBase::ShLIOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::ShLIOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "overflowFlags", 0xDuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::ShLIOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "overflowFlags";
  v10[1] = 13;
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

unint64_t mlir::arith::ShLIOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::ShLIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
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

uint64_t *mlir::arith::ShLIOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

void mlir::arith::ShLIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "overflowFlags";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::ShLIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v8, "overflowFlags", 0xD, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::ShLIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::ShLIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::ShLIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10))
    {
      return 0;
    }

    v4 = v10;
    if (v10)
    {
      *mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(a2) = v4;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::ShLIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ShLIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::ShLIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x776F6C667265766FLL;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "overflow", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::IntegerOverflowFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "overflowFlags", 13);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "overflowFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::ShRSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::ShRSIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::ShRSIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::ShRSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::ShRUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::ShRUIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::ShRUIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::ShRUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::detail::SubFOpGenericAdaptorBase::SubFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::SubFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::SubFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "fastmath";
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

unint64_t mlir::arith::SubFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::SubFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
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

uint64_t *mlir::arith::SubFOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::SubFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::SubFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::SubFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::SubFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::SubFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::SubFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::SubFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::detail::SubIOpGenericAdaptorBase::SubIOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::SubIOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "overflowFlags", 0xDuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::SubIOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "overflowFlags";
  v10[1] = 13;
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

unint64_t mlir::arith::SubIOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::SubIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
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

uint64_t *mlir::arith::SubIOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

void mlir::arith::SubIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "overflowFlags";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::SubIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v8, "overflowFlags", 0xD, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::SubIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::SubIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::SubIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10))
    {
      return 0;
    }

    v4 = v10;
    if (v10)
    {
      *mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(a2) = v4;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::SubIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::SubIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x776F6C667265766FLL;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "overflow", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::IntegerOverflowFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "overflowFlags", 13);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "overflowFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
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
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::arith::detail::TruncFOpGenericAdaptorBase::TruncFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::TruncFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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
        goto LABEL_21;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "roundingmode", 0xCuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (!mlir::arith::RoundingModeAttr::classof(*(v12 + 8)))
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
LABEL_21:
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

uint64_t mlir::arith::TruncFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "fastmath";
    v15 = 8;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "roundingmode";
    v15 = 12;
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

unint64_t mlir::arith::TruncFOp::computePropertiesHash(void *a1)
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

unint64_t mlir::arith::TruncFOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12)
  {
    if (*a3 == 0x676E69646E756F72 && *(a3 + 8) == 1701080941)
    {
      v4 = a2[1];
      goto LABEL_11;
    }
  }

  else if (a4 == 8 && *a3 == 0x6874616D74736166)
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

void *mlir::arith::TruncFOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    if (*a2 == 0x676E69646E756F72 && *(a2 + 8) == 1701080941)
    {
      if (a4)
      {
        result = mlir::arith::RoundingModeAttr::classof(a4);
        if (result)
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

      v5[1] = v8;
    }
  }

  else if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::TruncFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "fastmath";
    v12 = 8;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "roundingmode";
    v12 = 12;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::arith::TruncFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v10, "fastmath", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v13, "roundingmode", 0xC, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::arith::RoundingModeAttr::classof(a1) & 1) != 0)
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
        mlir::Diagnostic::operator<<<61ul>(v14, "' failed to satisfy constraint: Floating point rounding mode");
      }
    }
  }

  v9 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(uint64_t a1, uint64_t *a2)
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

  v5 = mlir::arith::RoundingModeAttr::classof(v14);
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

  if ((atomic_load_explicit(&qword_27FC1FCD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FCD0))
  {
    qword_27FC1FCC0 = llvm::detail::getTypeNameImpl<mlir::arith::RoundingModeAttr>();
    *algn_27FC1FCC8 = v12;
    __cxa_guard_release(&qword_27FC1FCD0);
  }

  if (v18)
  {
    v17 = 261;
    v15 = qword_27FC1FCC0;
    v16 = *algn_27FC1FCC8;
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

uint64_t mlir::arith::TruncFOp::getRoundingmode(mlir::arith::TruncFOp *this)
{
  v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  if (v2)
  {
    return mlir::IntegerAttr::getInt(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::TruncFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(v3 + 8);
  v4 = *(v3 + 9);
  v29[0] = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v4, "roundingmode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    return 0;
  }

  v29[0] = *this;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v6 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v7 = *this;
  v8 = (*(*(*(v7 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(*v8 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11 = v10;
  if (v10)
  {
    v15 = v8[1];
    v14 = v8[2];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (*(v7 + 9))
  {
    v16 = v7 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(v16 + 1) & 0xFFFFFFFFFFFFFFF8);
  v18 = *(*v17 + 136);
  v19 = v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v20 = v19;
  if (v19)
  {
    v22 = v17[1];
    v21 = v17[2];
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v14 == v21 && !memcmp(v15, v22, 8 * v14))
  {
    if (v20)
    {
      v23 = v17[1];
      v24 = v17[2];
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    if (v11)
    {
      v25 = v8[1];
      v26 = v8[2];
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    if (v24 == v26 && !memcmp(v23, v25, 8 * v24))
    {
      return 1;
    }
  }

  v27 = "failed to verify that input and output have the same tensor dimensions";
  v28 = 259;
  mlir::Operation::emitOpError(v29, v7, &v27);
  v12 = (v30 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
  return v12;
}

BOOL mlir::arith::TruncFOp::parse(uint64_t a1, uint64_t a2)
{
  v40[9] = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v26 = 0;
  v27 = 0;
  v25[0] = &v26;
  v25[1] = 1;
  __src = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  v23 = 0uLL;
  v39[0] = v40;
  v39[1] = 0x400000000;
  v40[8] = 4;
  v5 = (*(*a1 + 40))(a1);
  v35 = xmmword_2799BDFE8;
  v36 = *&off_2799BDFF8;
  v37 = xmmword_2799BE008;
  v33 = xmmword_2799BDFC8;
  v34 = *&off_2799BDFD8;
  if (((*(*a1 + 424))(a1, &v23, &v33, 5) & 1) == 0)
  {
    *&v33 = 0;
    v6 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v6);
    v8 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, &v33, NoneType, "roundingmode", 0xC, v39);
    if ((v8 & 0x100) != 0)
    {
      if ((v8 & 1) == 0)
      {
        v12 = 0;
        goto LABEL_40;
      }

      v23 = *(v33 + 16);
    }
  }

  if (!*(&v23 + 1))
  {
    goto LABEL_45;
  }

  if (*(&v23 + 1) > 10)
  {
    if (*(&v23 + 1) == 11)
    {
      if (*v23 == 0x7A5F647261776F74 && *(v23 + 3) == 0x6F72657A5F647261)
      {
        v9 = 3;
        goto LABEL_44;
      }
    }

    else if (*(&v23 + 1) == 15)
    {
      if (*v23 == 0x657261656E5F6F74 && *(v23 + 7) == 0x6E6576655F747365)
      {
        v9 = 0;
        goto LABEL_44;
      }

      if (*v23 == 0x657261656E5F6F74 && *(v23 + 7) == 0x796177615F747365)
      {
        v9 = 4;
        goto LABEL_44;
      }
    }
  }

  else if (*(&v23 + 1) == 6)
  {
    if (*v23 == 1635217525 && *(v23 + 4) == 25714)
    {
      v9 = 2;
      goto LABEL_44;
    }
  }

  else if (*(&v23 + 1) == 8 && *v23 == 0x647261776E776F64)
  {
    v9 = 1;
LABEL_44:
    v15 = (*(*a1 + 32))(a1);
    v16 = mlir::IntegerType::get(*v15, 32, 0);
    v17 = mlir::IntegerAttr::get(v16, v9);
    *(mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(a2) + 8) = v17;
LABEL_45:
    if (v39[0] != v40)
    {
      free(v39[0]);
    }

    if ((*(*a1 + 408))(a1, "fastmath", 8))
    {
      if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v27, 0))
      {
        return 0;
      }

      if (v27)
      {
        v18 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(a2);
        *v18 = v27;
      }
    }

    v39[0] = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v19 = *(a2 + 8);
      *&v33 = a1;
      *(&v33 + 1) = v39;
      *&v34 = a2;
      if (mlir::arith::TruncFOp::verifyInherentAttrs(v19, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v33) && ((*(*a1 + 104))(a1) & 1) != 0)
      {
        *&v33 = 0;
        if ((*(*a1 + 536))(a1, &v33))
        {
          v26 = v33;
          LOWORD(v35) = 257;
          if ((*(*a1 + 400))(a1, "to", 2, &v33))
          {
            *&v33 = 0;
            if ((*(*a1 + 536))(a1, &v33))
            {
              __src = v33;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v25);
              return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v25, v4, a2 + 16);
            }
          }
        }
      }
    }

    return 0;
  }

  v21 = "invalid ";
  v22 = 259;
  (*(*a1 + 24))(&v33, a1, v5, &v21);
  if (v33)
  {
    mlir::Diagnostic::operator<<<40ul>(&v33 + 8, "roundingmode attribute specification: ");
    if (v33)
    {
      v32 = 261;
      v31[0] = v23;
      mlir::Diagnostic::operator<<(&v33 + 8, v31);
      if (v33)
      {
        v32 = 264;
        LOBYTE(v31[0]) = 34;
        mlir::Diagnostic::operator<<(&v33 + 8, v31);
      }
    }
  }

  v12 = (v38 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
LABEL_40:
  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  return v12;
}

void mlir::arith::TruncFOp::print(mlir::arith::TruncFOp **this, mlir::OpAsmPrinter *a2)
{
  v35[4] = *MEMORY[0x277D85DE8];
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
  v6 = *this;
  v7 = (*(*this + 11) >> 23) & 1;
  if (*(*this + 2 * v7 + 9))
  {
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

    Roundingmode = mlir::arith::TruncFOp::getRoundingmode(*this);
    if (Roundingmode > 4)
    {
      v12 = 0;
      v13 = &str_105;
    }

    else
    {
      v11 = Roundingmode & 7;
      v12 = *(&unk_25D09FAC8 + v11 * 8);
      v13 = off_2799BE288[v11];
    }

    v14 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v14, v13, v12);
    v6 = *this;
    v7 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v6 + 2 * v7 + 8))
  {
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

    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 7uLL)
    {
      *v18 = 0x6874616D74736166;
      *(v17 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v17, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v33 = v35;
  v34 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v33, "roundingmode", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v33, "fastmath", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, v34);
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

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t mlir::arith::TruncIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
    {
      v3 = *this;
      v4 = (*(*(*(v3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v5 = *(*v4 + 136);
      v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v7 = v6;
      if (v6)
      {
        v10 = v4[1];
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (v3[9])
      {
        v11 = v3 - 4;
      }

      else
      {
        v11 = 0;
      }

      v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = *(*v12 + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v15 = v14;
      if (v14)
      {
        v17 = v12[1];
        v16 = v12[2];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v9 != v16 || memcmp(v10, v17, 8 * v9))
      {
LABEL_37:
        v23 = "failed to verify that input and output have the same tensor dimensions";
        v24 = 259;
        mlir::Operation::emitOpError(v25, v3, &v23);
        v8 = (v26 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return v8;
      }

      if (v15)
      {
        v18 = v12[1];
        v19 = v12[2];
        if (!v7)
        {
LABEL_32:
          v20 = 0;
          v21 = 0;
LABEL_35:
          if (v19 == v20 && !memcmp(v18, v21, 8 * v19))
          {
            return 1;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v21 = v4[1];
      v20 = v4[2];
      goto LABEL_35;
    }
  }

  return 0;
}

BOOL mlir::arith::TruncIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::TruncIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
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
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::arith::UIToFPOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v3 = *this;
      v4 = (*(*(*(v3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v5 = *(*v4 + 136);
      v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v7 = v6;
      if (v6)
      {
        v10 = v4[1];
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (v3[9])
      {
        v11 = v3 - 4;
      }

      else
      {
        v11 = 0;
      }

      v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = *(*v12 + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v15 = v14;
      if (v14)
      {
        v17 = v12[1];
        v16 = v12[2];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v9 != v16 || memcmp(v10, v17, 8 * v9))
      {
LABEL_37:
        v23 = "failed to verify that input and output have the same tensor dimensions";
        v24 = 259;
        mlir::Operation::emitOpError(v25, v3, &v23);
        v8 = (v26 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return v8;
      }

      if (v15)
      {
        v18 = v12[1];
        v19 = v12[2];
        if (!v7)
        {
LABEL_32:
          v20 = 0;
          v21 = 0;
LABEL_35:
          if (v19 == v20 && !memcmp(v18, v21, 8 * v19))
          {
            return 1;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v21 = v4[1];
      v20 = v4[2];
      goto LABEL_35;
    }
  }

  return 0;
}

BOOL mlir::arith::UIToFPOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::UIToFPOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
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
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
}

void mlir::arith::XOrIOp::build(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::arith::XOrIOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::XOrIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::XOrIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::XOrIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::XOrIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
}

void mlir::arith::SelectOp::build(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a3;
  v17 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v19, 0, &v19, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  __src = v22;
  v21 = 0x200000000;
  v6 = *(a2 + 2);
  v7 = a2[6];
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  if (!mlir::arith::SelectOp::inferReturnTypes(Dictionary, v9, v10, v6 & 0xFFFFFFFFFFFFFFF9, v7, v11, v12, v13, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v14);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v21);
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::arith::SelectOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 < 3)
  {
    return 0;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::arith::SelectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = 0;
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    v3 = *this;
    v4 = *(*this + 9);
    v5 = *(v4[7] + 8);
    v6 = *(v4[11] + 8);
    if ((v6 ^ v5) > 7 || (*(v3 + 9) ? (v7 = v3 - 16) : (v7 = 0), (*(v7 + 1) ^ v6 | *(v7 + 1) ^ v5) >= 8))
    {
      v37 = "failed to verify that all of {true_value, false_value, result} have same type";
      v38 = 259;
LABEL_20:
      mlir::Operation::emitOpError(v39, v3, &v37);
      v2 = v40 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
      return v2 & 1;
    }

    v8 = (*(v4[3] + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = *v8;
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v8[2] != 1)
    {
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
      v12 = (*(v11 + 24))(v11, v8);
      v14 = v13;
      v15 = *this - 16;
      if (!*(*this + 9))
      {
        v15 = 0;
      }

      v16 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = *v16;
      v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
      v20 = (*(v19 + 24))(v19, v16);
      if (v14 != v21 || memcmp(v12, v20, 8 * v14))
      {
        goto LABEL_19;
      }

      v22 = *this - 16;
      if (!*(*this + 9))
      {
        v22 = 0;
      }

      v23 = (*(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
      v24 = *v23;
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v26 = mlir::detail::InterfaceMap::lookup(v24 + 8, v25);
      v27 = (*(v26 + 24))(v26, v23);
      v29 = v28;
      v30 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v31 = *v30;
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
      v34 = (*(v33 + 24))(v33, v30);
      if (v29 != v35 || memcmp(v27, v34, 8 * v29))
      {
LABEL_19:
        v37 = "failed to verify that condition is signless i1 or has matching shape";
        v38 = 259;
        v3 = *this;
        goto LABEL_20;
      }
    }

    v2 = 1;
  }

  return v2 & 1;
}

uint64_t mlir::arith::CmpFPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v19 = a1;
  if (!mlir::IntegerAttr::getInt(&v19))
  {
    return 1;
  }

  v18 = a1;
  result = mlir::IntegerAttr::getInt(&v18);
  if (result != 1)
  {
    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17) == 2)
    {
      return 1;
    }

    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 3)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 4)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 5)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 6)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 7)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 8)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 9)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 10)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 11)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 12)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 13)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 14)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 15;
  }

  return result;
}

uint64_t mlir::arith::CmpIPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v13 = a1;
  if (!mlir::IntegerAttr::getInt(&v13))
  {
    return 1;
  }

  v12 = a1;
  result = mlir::IntegerAttr::getInt(&v12);
  if (result != 1)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 2)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 3)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 4)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 5)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 6)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 7)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 8)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 9;
  }

  return result;
}

void mlir::arith::stringifyIntegerOverflowFlags(int a1@<W0>, std::string *a2@<X8>)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v13 = v15;
    v14 = 0x200000000;
    if (a1)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v13, "nsw", 3);
    }

    if ((v3 & 2) != 0)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v13, "nuw", 3);
    }

    v4 = v13;
    v5 = v14;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    if (v5)
    {
      v6 = 16 * v5;
      v7 = &v4[16 * v5];
      v8 = 2 * v5 - 2;
      v9 = 8;
      do
      {
        v8 += *&v4[v9];
        v9 += 16;
        v6 -= 16;
      }

      while (v6);
      std::string::reserve(a2, v8);
      std::string::append(a2, *v4, *(v4 + 1));
      if (v5 != 1)
      {
        v10 = v4 + 16;
        do
        {
          std::string::append(a2, ", ", 2uLL);
          v11 = *v10;
          v12 = *(v10 + 1);
          v10 += 16;
          std::string::append(a2, v11, v12);
        }

        while (v10 != v7);
      }
    }

    if (v13 != v15)
    {
      free(v13);
    }
  }

  else
  {

    std::string::basic_string[abi:nn200100]<0>(a2, "none");
  }
}

uint64_t mlir::arith::symbolizeIntegerOverflowFlags(_DWORD *a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  *&v14 = a1;
  *(&v14 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    return 0x100000000;
  }

  v15 = v17;
  v16 = 0x200000000;
  llvm::StringRef::split(&v14, &v15, ",", 1uLL, -1, 1);
  if (v16)
  {
    v2 = 0;
    v3 = v15;
    v4 = 16 * v16;
    while (1)
    {
      v13 = *v3;
      v5 = llvm::StringRef::trim(&v13, " \t\n\v\f\r", 6);
      if (v6 != 3)
      {
        break;
      }

      if (*v5 == 29550 && *(v5 + 2) == 119)
      {
        v9 = 1;
      }

      else
      {
        if (*v5 != 30062 || *(v5 + 2) != 119)
        {
          break;
        }

        v9 = 2;
      }

      v2 |= v9;
      ++v3;
      v4 -= 16;
      if (!v4)
      {
        v10 = v2;
        goto LABEL_21;
      }
    }

    v11 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
LABEL_21:
    v11 = 0x100000000;
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v10 | v11;
}

uint64_t mlir::arith::RoundingModeAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 32)
  {
    return 0;
  }

  v8 = a1;
  if (!mlir::IntegerAttr::getInt(&v8))
  {
    return 1;
  }

  v7 = a1;
  result = mlir::IntegerAttr::getInt(&v7);
  if (result != 1)
  {
    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 2)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 3)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 4;
  }

  return result;
}

char *mlir::arith::stringifyAtomicRMWKind(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return &str_105;
  }

  else
  {
    return off_2799BE2B0[a1];
  }
}

uint64_t mlir::arith::symbolizeAtomicRMWKind(unsigned __int16 *a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 5)
  {
    if (a2 == 3)
    {
      v11 = *a1;
      v12 = *(a1 + 2);
      if (v11 != 29295 || v12 != 105)
      {
        return 0;
      }

      return 11;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      switch(*a1)
      {
        case 0x66646461:
          return 0;
        case 0x69646461:
          return 1;
        case 0x7378616D:
          return 4;
        case 0x7578616D:
          return 5;
        case 0x736E696D:
          return 7;
        case 0x756E696D:
          return 8;
        case 0x666C756D:
          return 9;
        case 0x696C756D:
          return 10;
        case 0x69646E61:
          return 12;
        default:
          return 0;
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        v4 = *a1;
        v5 = a1[2];
        if (v4 == 1769173857 && v5 == 28263)
        {
          return 2;
        }

        return 0;
      case 7:
        if (*a1 != 1853383021 || *(a1 + 3) != 1718449518)
        {
          v8 = *a1;
          v9 = *(a1 + 3);
          if (v8 == 1852729709 && v9 == 1718449518)
          {
            return 14;
          }

          return 0;
        }

        return 13;
      case 8:
        if (*a1 != 0x666D756D6978616DLL)
        {
          if (*a1 == 0x666D756D696E696DLL)
          {
            return 6;
          }

          return 0;
        }

        return 3;
      default:
        return result;
    }
  }
}

unint64_t mlir::arith::symbolizeAtomicRMWKind(unint64_t this)
{
  if (this >= 0xF)
  {
    return 0;
  }

  return this;
}

uint64_t mlir::arith::AtomicRMWKindAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v18 = a1;
  if (!mlir::IntegerAttr::getInt(&v18))
  {
    return 1;
  }

  v17 = a1;
  result = mlir::IntegerAttr::getInt(&v17);
  if (result != 1)
  {
    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 2)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 3)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 4)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 5)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 6)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 7)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 8)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 9)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 10)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 11)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 12)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 13)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 14;
  }

  return result;
}

void mlir::arith::stringifyFastMathFlags(int a1@<W0>, std::string *a2@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v15 = v17;
    v16 = 0x200000000;
    if ((~a1 & 0x7F) == 0)
    {
      v4 = "fast";
      v5 = 4;
LABEL_22:
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, v4, v5);
      goto LABEL_23;
    }

    if (a1)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "reassoc", 7);
      if ((v3 & 2) == 0)
      {
LABEL_9:
        if ((v3 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_9;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "nnan", 4);
    if ((v3 & 4) == 0)
    {
LABEL_10:
      if ((v3 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "ninf", 4);
    if ((v3 & 8) == 0)
    {
LABEL_11:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "nsz", 3);
    if ((v3 & 0x10) == 0)
    {
LABEL_12:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

LABEL_19:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "arcp", 4);
    if ((v3 & 0x20) == 0)
    {
LABEL_13:
      if ((v3 & 0x40) == 0)
      {
LABEL_23:
        v6 = v15;
        v7 = v16;
        a2->__r_.__value_.__l.__size_ = 0;
        a2->__r_.__value_.__r.__words[2] = 0;
        a2->__r_.__value_.__r.__words[0] = 0;
        if (v7)
        {
          v8 = 16 * v7;
          v9 = v7 - 1;
          v10 = 8;
          v11 = &v6[16 * v7];
          do
          {
            v9 += *&v6[v10];
            v10 += 16;
            v8 -= 16;
          }

          while (v8);
          std::string::reserve(a2, v9);
          std::string::append(a2, *v6, *(v6 + 1));
          if (v7 != 1)
          {
            v12 = v6 + 16;
            do
            {
              std::string::append(a2, ",", 1uLL);
              v13 = *v12;
              v14 = *(v12 + 1);
              v12 += 16;
              std::string::append(a2, v13, v14);
            }

            while (v12 != v11);
          }
        }

        if (v15 != v17)
        {
          free(v15);
        }

        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "contract", 8);
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v4 = "afn";
    v5 = 3;
    goto LABEL_22;
  }

  std::string::basic_string[abi:nn200100]<0>(a2, "none");
}

uint64_t mlir::arith::symbolizeFastMathFlags(_DWORD *a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  *&v15 = a1;
  *(&v15 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    return 0x100000000;
  }

  v16 = v18;
  v17 = 0x200000000;
  llvm::StringRef::split(&v15, &v16, ",", 1uLL, -1, 1);
  if (v17)
  {
    v2 = 0;
    v3 = 16 * v17;
    v4 = v16;
    while (1)
    {
      v14 = *v4;
      v5 = llvm::StringRef::trim(&v14, " \t\n\v\f\r", 6);
      if (v6 > 6)
      {
        if (v6 == 8)
        {
          if (*v5 != 0x74636172746E6F63)
          {
            goto LABEL_41;
          }

          v7 = 32;
        }

        else
        {
          if (v6 != 7 || (*v5 == 1935762802 ? (v8 = *(v5 + 3) == 1668248435) : (v8 = 0), !v8))
          {
LABEL_41:
            v12 = 0;
            v11 = 0;
            goto LABEL_42;
          }

          v7 = 1;
        }
      }

      else if (v6 == 3)
      {
        if (*v5 == 29550 && *(v5 + 2) == 122)
        {
          v7 = 8;
        }

        else
        {
          if (*v5 != 26209 || *(v5 + 2) != 110)
          {
            goto LABEL_41;
          }

          v7 = 64;
        }
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_41;
        }

        switch(*v5)
        {
          case 0x6E616E6E:
            v7 = 2;
            break;
          case 0x666E696E:
            v7 = 4;
            break;
          case 0x70637261:
            v7 = 16;
            break;
          case 0x74736166:
            v7 = 127;
            break;
          default:
            goto LABEL_41;
        }
      }

      v2 |= v7;
      ++v4;
      v3 -= 16;
      if (!v3)
      {
        v11 = v2;
        goto LABEL_40;
      }
    }
  }

  v11 = 0;
LABEL_40:
  v12 = 0x100000000;
LABEL_42:
  if (v16 != v18)
  {
    free(v16);
  }

  return v11 | v12;
}

BOOL mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(unint64_t **a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    return 0;
  }

  v9[0] = v10;
  v9[1] = 0x100000000;
  mlir::Operation::fold(a2, 0, 0, v9);
  v5 = v9[0];
  v6 = *v9[0] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v7 = v6 != 0;
  if (v6 && *a1)
  {
    **a1 = v6;
    v5 = v9[0];
  }

  if (v5 != v10)
  {
    free(v5);
  }

  return v7;
}

uint64_t mlir::detail::constant_int_range_predicate_matcher::match(uint64_t (**this)(const void ***), mlir::Operation *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v30 = 0;
  v37 = &v30;
  if (mlir::detail::constant_int_value_binder::match(&v37, a2))
  {
    v4 = *this;
    mlir::ConstantIntRanges::ConstantIntRanges(&v37, &v30, &v30, &v30, &v30);
    v5 = v4(&v37);
    if (v44 >= 0x41 && v43)
    {
      MEMORY[0x25F891010](v43, 0x1000C8000313F17);
    }

    if (v42 >= 0x41 && v41)
    {
      MEMORY[0x25F891010](v41, 0x1000C8000313F17);
    }

    if (v40 >= 0x41 && v39)
    {
      MEMORY[0x25F891010](v39, 0x1000C8000313F17);
    }

    if (v38 < 0x41)
    {
      goto LABEL_40;
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_40;
    }

LABEL_39:
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
    goto LABEL_40;
  }

  LOBYTE(v21) = 0;
  v29 = 0;
  v20 = &v21;
  v36 = a2;
  if (!mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2) || (InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2), (v8 = a2) == 0))
  {
    v5 = 0;
    goto LABEL_27;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v9 = *(a2 + 9);
    v10 = *(a2 + 17);
    v11 = v10;
    v12 = &v39;
    v37 = &v39;
    v38 = 0x100000000;
    if (v10 < 2)
    {
      if (!v10)
      {
        v17 = 0;
        goto LABEL_25;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(&v37, v10);
      v13 = v38;
      v12 = v37;
    }

    v14 = &v12[9 * v13];
    v15 = (v9 + 24);
    do
    {
      v16 = *v15;
      v15 += 4;
      mlir::IntegerValueRange::getMaxRange(v16, v14);
      v14 += 72;
      --v10;
    }

    while (v10);
    v17 = v38;
    v12 = v37;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v12 = &v39;
    v37 = &v39;
    HIDWORD(v38) = 1;
  }

LABEL_25:
  LODWORD(v38) = v17 + v11;
  v35 = 0;
  v32 = &v36;
  v33 = &v20;
  v34 = &v35;
  (*(InterfaceFor + 8))(InterfaceFor, v8, v12);
  v18 = v35;
  llvm::SmallVector<mlir::IntegerValueRange,1u>::~SmallVector(&v37);
  v5 = 0;
  if (v18 == 1)
  {
    v5 = (*this)(&v21);
  }

LABEL_27:
  if (v29 == 1)
  {
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }

    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }

    if (v24 >= 0x41 && v23)
    {
      MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }

    if (v22 >= 0x41)
    {
      v6 = v21;
      if (v21)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x25F891010](v30, 0x1000C8000313F17);
  }

  return v5;
}

uint64_t mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

__guard mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferIntRangeInterface>();
      mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[328];
}

uint64_t llvm::getTypeName<mlir::InferIntRangeInterface>()
{
  {
    llvm::getTypeName<mlir::InferIntRangeInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferIntRangeInterface>();
    *algn_27FC19A58 = v1;
  }

  return llvm::getTypeName<mlir::InferIntRangeInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferIntRangeInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferIntRangeInterface]";
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

llvm::APInt ***llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::detail::infer_int_range_op_binder::match(mlir::Operation *)::{lambda(mlir::Value,mlir::IntegerValueRange const&)#1}>(llvm::APInt ***result, llvm::APInt *a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    v3 = result;
    if ((**result - 16) == a2)
    {
      v5 = *result[1];
      if (*(v5 + 64) == 1)
      {
        llvm::APInt::operator=(*result[1], a3);
        llvm::APInt::operator=((v5 + 16), (a3 + 16));
        llvm::APInt::operator=((v5 + 32), (a3 + 32));
        result = llvm::APInt::operator=((v5 + 48), (a3 + 48));
      }

      else if (*(v5 + 64))
      {
        if (*(v5 + 56) >= 0x41u)
        {
          result = *(v5 + 48);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v5 + 40) >= 0x41u)
        {
          result = *(v5 + 32);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v5 + 24) >= 0x41u)
        {
          result = *(v5 + 16);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v5 + 8) >= 0x41u)
        {
          result = *v5;
          if (*v5)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        *(v5 + 64) = 0;
      }

      else
      {
        v6 = *(a3 + 8);
        *(v5 + 8) = v6;
        if (v6 > 0x40)
        {
          operator new[]();
        }

        *v5 = *a3;
        v7 = *(a3 + 24);
        *(v5 + 24) = v7;
        if (v7 > 0x40)
        {
          operator new[]();
        }

        *(v5 + 16) = *(a3 + 16);
        v8 = *(a3 + 40);
        *(v5 + 40) = v8;
        if (v8 > 0x40)
        {
          operator new[]();
        }

        *(v5 + 32) = *(a3 + 32);
        v9 = *(a3 + 56);
        *(v5 + 56) = v9;
        if (v9 > 0x40)
        {
          operator new[]();
        }

        *(v5 + 48) = *(a3 + 48);
        *(v5 + 64) = 1;
      }

      *v3[2] = 1;
    }
  }

  return result;
}

BOOL mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 >= 0x41)
  {
    if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return 1;
    }

    v1 = *v1;
  }

  return *v1 != 0;
}

uint64_t mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(uint64_t a1)
{
  if (llvm::APInt::sgt((a1 + 32), 0))
  {
    return 1;
  }

  return llvm::APInt::slt((a1 + 48), 0);
}

BOOL llvm::APInt::sgt(llvm::APInt *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 < 0x41)
  {
    goto LABEL_2;
  }

  v7 = v4 - llvm::APInt::getNumSignBits(this) + 1;
  v4 = *(v3 + 2);
  if (v7 < 0x41)
  {
    if (v4 > 0x40)
    {
      v5 = **v3;
      return v5 > a2;
    }

LABEL_2:
    v5 = (*v3 << -v4) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    return v5 > a2;
  }

  v8 = v4 - 1;
  if (v4 >= 0x41)
  {
    v3 = (*v3 + 8 * (v8 >> 6));
  }

  return ((*v3 >> v8) & 1) == 0;
}

uint64_t llvm::APInt::slt(llvm::APInt *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 < 0x41)
  {
    goto LABEL_2;
  }

  v7 = v4 - llvm::APInt::getNumSignBits(this) + 1;
  v4 = *(v3 + 2);
  if (v7 < 0x41)
  {
    if (v4 > 0x40)
    {
      v5 = **v3;
      return v5 < a2;
    }

LABEL_2:
    v5 = (*v3 << -v4) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    return v5 < a2;
  }

  v8 = v4 - 1;
  if (v4 >= 0x41)
  {
    v3 = (*v3 + 8 * (v8 >> 6));
  }

  return (*v3 >> v8) & 1;
}

uint64_t mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(uint64_t a1)
{
  if (llvm::APInt::sgt((a1 + 32), -1))
  {
    return 1;
  }

  return llvm::APInt::slt((a1 + 48), -1);
}

uint64_t mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
  }

  else
  {
    v1 = *(a1 + 20);
  }

  if ((v1 & 7) == 3)
  {
    return (v1 >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
  }

  else
  {
    v1 = *(a1 + 20);
  }

  return (v1 & 7) == 3 && (v1 & 8) == 0;
}

BOOL mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
    if ((v1 & 8) == 0)
    {
      return 0;
    }
  }

  else
  {
    v1 = *(a1 + 20);
    if ((v1 & 8) == 0)
    {
      return 0;
    }
  }

  return (v1 & 7) == 0;
}

BOOL mlir::m_NaNFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = a1;
  }

  return (*(v1 + 20) & 7) == 1;
}

BOOL mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
    if ((v1 & 8) == 0)
    {
      return (v1 & 7) == 0;
    }
  }

  else
  {
    v1 = *(a1 + 20);
    if ((v1 & 8) == 0)
    {
      return (v1 & 7) == 0;
    }
  }

  return 0;
}

BOOL mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(const llvm::APFloat **a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5 = 1;
  llvm::APFloat::Storage::Storage<unsigned long long &>(v6, v2, &v5);
  v3 = llvm::APFloat::compare(v6, a1) == 1;
  llvm::APFloat::Storage::~Storage(v6);
  return v3;
}

uint64_t *llvm::APFloat::Storage::Storage<unsigned long long &>(uint64_t *a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble, v3);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2, v3);
}

uint64_t *getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v6 = v5 || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v6 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v8)
  {
    v1 = (*(v9 + 8))(v9, v8);
  }

  v10 = *(*v1 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 8);
  v6 = *(*a2 + 16);
  (*(v6 + 24))(v6, v5);
  v7 = *a2;
  result = (*(*(v7 + 16) + 24))();
  if (v9)
  {
    v10 = 8 * v9;
    v11 = 1;
    do
    {
      v12 = *result++;
      v11 *= v12;
      v10 -= 8;
    }

    while (v10);
  }

  else
  {
    v11 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 1;
  return result;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<llvm::APFloatBase::uninitializedTag>(llvm::detail::IEEEFloat *a1, void *a2)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
}

__guard mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::arith::ArithFastMathInterface>();
      mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[323];
}

uint64_t llvm::getTypeName<mlir::arith::ArithFastMathInterface>()
{
  {
    llvm::getTypeName<mlir::arith::ArithFastMathInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::arith::ArithFastMathInterface>();
    unk_27FC19A30 = v1;
  }

  return llvm::getTypeName<mlir::arith::ArithFastMathInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithFastMathInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithFastMathInterface]";
  v6 = 97;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<89ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<124ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::detail::constant_int_predicate_matcher::match(uint64_t (**a1)(uint64_t *), uint64_t a2)
{
  v7 = 1;
  v5 = &v6;
  v6 = 0;
  if (mlir::detail::constant_int_value_binder::match(&v5, a2))
  {
    v3 = (*a1)(&v6);
  }

  else
  {
    v3 = 0;
  }

  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t *a2, void **a3)
{
  if (*(a2 + 2) > 0x40u)
  {
    operator new[]();
  }

  v4 = *a2;
  v8 = *(a2 + 2);
  v7 = v4;
  result = llvm::APInt::operator+=(&v7, a3);
  v6 = v7;
  *(a1 + 8) = v8;
  *a1 = v6;
  *(a1 + 16) = 1;
  return result;
}

uint64_t *llvm::cast<mlir::ElementsAttr,mlir::Attribute>(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return a1;
}

void *mlir::ElementsAttr::try_value_begin<llvm::APInt>(uint64_t a1, uint64_t a2)
{
  mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID();
  result = (**(a2 + 8))(v8);
  if (v9 == 1)
  {
    v5 = v8[0];
    v6 = BYTE1(v8[0]);
    v7 = v8[1];
    if (LOBYTE(v8[0]) == 1)
    {
      *a1 = v8[0];
      *(a1 + 1) = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
    }

    else
    {
      *a1 = v8[0];
      *(a1 + 1) = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      v5 = 1;
    }

    *(a1 + 24) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

char *mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1))
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  result = *(a2 + 8);
  if (*a2 == 1)
  {
    v7 = &result[16 * v5];
    v8 = *(v7 + 2);
    *(a1 + 8) = v8;
    if (v8 > 0x40)
    {
      operator new[]();
    }

    *a1 = *v7;
  }

  else
  {
    v9 = *(*result + 24);

    return v9();
  }

  return result;
}

void **llvm::SmallVector<llvm::APInt,4u>::~SmallVector(void **a1)
{
  llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(*a1, *a1 + 2 * *(a1 + 2));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

void anonymous namespace::AddIAddConstant::~AddIAddConstant(_anonymous_namespace_::AddIAddConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddIAddConstant::matchAndRewrite(_anonymous_namespace_::AddIAddConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = v5;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v39, v42, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v41 + 32), *(v19 + 8) & v41[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v40 + 24));
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

uint64_t anonymous namespace::static_dag_matcher_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v8 = *(a1 + 16);
    if (!v8 || v8[2] != 1)
    {
      return 0;
    }

    v9 = *(*v8 + 88);
    goto LABEL_15;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
  a5[1] = 1;
  v13 = *(*(a2 + 72) + 56);
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (!v13)
  {
LABEL_12:
    v17 = *(a1 + 16);
    if (!v17 || v17[2] != 1)
    {
      return 0;
    }

    v9 = *(*v17 + 88);
LABEL_15:
    v9();
    return 0;
  }

  v14 = *(v13 + 8) & 7;
  if (v14 == 6)
  {
    v15 = v13 + 24 * *(v13 + 16);
    v16 = (v15 + 120);
    if (v15 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = (v13 + 16 * v14 + 16);
  }

  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v16);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    Attr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = Attr;
  return 1;
}

uint64_t anonymous namespace::static_dag_matcher_2(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = &v13;
  v13 = 0;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_8;
  }

  v6 = *(a2 - 1) & 7;
  if (v6 == 6)
  {
    v7 = &a2[3 * *a2 - 2];
    v8 = v7 + 15;
    if (v7 == -120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = &a2[2 * v6];
  }

  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, v8))
  {
    v9 = v13;
    *a3 = v13;
  }

LABEL_8:
  v11 = *(a1 + 16);
  if (v11)
  {
    if (v11[2] == 1)
    {
    }
  }

  return 0;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v6;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  v7 = *a3;
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  mlir::arith::ConstantOp::build(v6, v14, v7, v10);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(result, a2, a3);
  }

  else
  {
    v4 = (*result + 16 * v3);
    *v4 = a2;
    v4[1] = a3;
    *(result + 8) = v3 + 1;
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AddIOp>(a1, *(**a2 + 32));
  v30 = a2;
  v31 = v8;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38 = 4;
  v39 = v41;
  v40 = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v38 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v36, v11, &v11[16 * v12]);
  if (v12)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(&v30);
    v14 = v31;
    v15 = *(v31 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v31;
    Dictionary = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      v27 = "Property conversion failed.";
LABEL_15:
      llvm::report_fatal_error(v27, 1, v17);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  v18 = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
  if (!mlir::arith::AddIOp::inferReturnTypes(v18, v19, v20, v9 & 0xFFFFFFFFFFFFFFF9, v10, v21, v22, v23, v28, v29, &v43))
  {
    v27 = "Failed to infer result type(s).";
    goto LABEL_15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v34, v43, &v43[v44]);
  if (v43 != v45)
  {
    free(v43);
  }

  v24 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(a1, v24);
  if (*(*(v24 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(&v30);
  return v25;
}

uint64_t anonymous namespace::static_dag_matcher_0(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = &v13;
  v13 = 0;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_8;
  }

  v6 = *(a2 - 1) & 7;
  if (v6 == 6)
  {
    v7 = &a2[3 * *a2 - 2];
    v8 = v7 + 15;
    if (v7 == -120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = &a2[2 * v6];
  }

  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, v8))
  {
    v9 = v13;
    *a3 = v13;
  }

LABEL_8:
  v11 = *(a1 + 16);
  if (v11)
  {
    if (v11[2] == 1)
    {
    }
  }

  return 0;
}

uint64_t anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization1(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
  v5[1] = 176;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 1;
  }

  v4 = v5;
  if (a1)
  {
    if (a1[2] == 1)
    {
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization1(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(const char ***a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<30ul>(v5, ": arbitrary integer attribute");
}

uint64_t applyToIntegerAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, void **, void **), uint64_t a5)
{
  v13 = *(a2 + 24);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  v12 = *(a2 + 16);
  v11 = *(a3 + 24);
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v10 = *(a3 + 16);
  a4(&v8, a5, &v12, &v10);
  v6 = mlir::IntegerAttr::get((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8), &v8);
  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  return v6;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>@<X0>(uint64_t *a1@<X1>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v5 = *a1;
  result = llvm::APInt::operator+=(&v5, a2);
  *(a3 + 8) = v6;
  *a3 = v5;
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AddIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.addi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddIAddConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddIAddConstant]";
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

void anonymous namespace::AddISubConstantRHS::~AddISubConstantRHS(_anonymous_namespace_::AddISubConstantRHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddISubConstantRHS::matchAndRewrite(_anonymous_namespace_::AddISubConstantRHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = v5;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v42, v39, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v41 + 32), *(v19 + 8) & v41[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v40 + 24));
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}