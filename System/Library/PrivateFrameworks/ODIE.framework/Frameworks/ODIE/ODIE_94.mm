uint64_t mlir::complex::ConjOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::ConjOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::ConjOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::ConjOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::ConjOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::ConjOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::ConjOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::ConjOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::ConjOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::ConjOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ConjOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::ConjOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "value", 5uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

uint64_t mlir::complex::ConstantOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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
  v10[0] = "value";
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

unint64_t mlir::complex::ConstantOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::ConstantOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
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

uint64_t *mlir::complex::ConstantOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

void mlir::complex::ConstantOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::complex::ConstantOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::complex::ConstantOp::verifyInvariantsImpl(unsigned int **this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v20 = v2;
    if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v20))
    {
      return 0;
    }

    v4 = *this;
    v5 = (*this)[9] ? *this - 4 : 0;
    v6 = *(v5 + 1) & 0xFFFFFFFFFFFFFFF8;
    v17 = 0;
    if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      return 1;
    }

    v16 = 261;
    v15[0] = "result";
    v15[1] = 6;
    mlir::Operation::emitOpError(&v20, v4, v15);
    if (v20)
    {
      mlir::Diagnostic::operator<<<3ul>(v21, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v17);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<32ul>((v7 + 1), " must be complex-type, but got ");
      if (*v8)
      {
        v18 = 4;
        v19 = v6;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v18, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = *(v8 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    return (v12 & 1) == 0;
  }

  else
  {
    v15[0] = "requires attribute 'value'";
    v16 = 259;
    mlir::Operation::emitOpError(&v20, v2, v15);
    v13 = (v21[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  return v13;
}

uint64_t mlir::complex::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  __src = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v13, v5))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
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
  if (!mlir::complex::ConstantOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v10))
  {
    return 0;
  }

  __src = v10[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v13);
  return 1;
}

void mlir::complex::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
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
  v14 = v16;
  v15 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v14, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, v15);
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

  v13 = *this - 16;
  if (!*(*this + 9))
  {
    v13 = 0;
  }

  (*(*a2 + 32))(a2, *(v13 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::complex::CosOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::CosOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::CosOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::CosOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::CosOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::CosOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::CosOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::CosOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::CosOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::CosOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::CosOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::CosOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::CosOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::CreateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v9 = 0;
    return v9 & 1;
  }

  v3 = *this;
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8);
  v6 = *(*(v4 + 56) + 8);
  if ((v6 ^ v5) >= 8)
  {
    v11 = "failed to verify that all of {real, imaginary} have same type";
LABEL_19:
    v12 = v11;
    v13 = 259;
    mlir::Operation::emitOpError(v14, v3, &v12);
    v9 = v15 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    return v9 & 1;
  }

  if (*(v3 + 9))
  {
    v7 = v3 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = *((*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) + 8);
  if ((v5 & 0xFFFFFFFFFFFFFFF8) != v8)
  {
    v11 = "failed to verify that complex element type matches real operand type";
    goto LABEL_19;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFF8) != v8)
  {
    v11 = "failed to verify that complex element type matches imaginary operand type";
    goto LABEL_19;
  }

  v9 = 1;
  return v9 & 1;
}

BOOL mlir::complex::CreateOp::parse(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
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

  v16 = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v16))
  {
    return 0;
  }

  v10 = v16;
  __src = v16;
  if ((*v16)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v6 = *v16[1];
    v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v6 + 8, v7))
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v12);
      if ((*(*a1 + 728))(a1, v14, __src[1], a2 + 16))
      {
        return (*(*a1 + 728))(a1, v12, __src[1], a2 + 16) & 1;
      }

      return 0;
    }
  }

  v4 = (*(*a1 + 16))(a1);
  v9[16] = 257;
  (*(*a1 + 24))(&v16, a1, v4, v9);
  if (v16)
  {
    mlir::Diagnostic::operator<<<70ul>(v17, "'complex' must be complex type with floating-point elements, but got ");
    if (v16)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v17, &v10);
    }
  }

  v5 = (v17[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  return v5;
}

void mlir::complex::CreateOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::complex::detail::DivOpGenericAdaptorBase::DivOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::DivOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::DivOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::DivOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::DivOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::DivOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::DivOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::DivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::DivOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::DivOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::complex::DivOp::parse(uint64_t a1, uint64_t a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(a2);
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
    if (mlir::complex::DivOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::DivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

void mlir::complex::DivOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

BOOL mlir::complex::EqualOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps5(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = *this;
  v4 = *(*(*(*this + 9) + 56) + 8) ^ *(*(*(*this + 9) + 24) + 8);
  v5 = 1;
  if (v4 >= 8)
  {
    v7 = "failed to verify that all of {lhs, rhs} have same type";
    v8 = 259;
    mlir::Operation::emitOpError(v9, v3, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps5(mlir::Operation *a1, _DWORD *a2, const char *a3, const char *a4, unsigned int a5)
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

uint64_t mlir::complex::EqualOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
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
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v8))
  {
    return 0;
  }

  v10 = v8;
  v5 = (*(*a1 + 32))(a1);
  v8 = mlir::IntegerType::get(*v5, 1, 0);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v8, v9);
  v6 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v4, a2 + 16);
  result = 0;
  if (v6)
  {
    return (*(*a1 + 728))(a1, v11, *v9[0], a2 + 16) & 1;
  }

  return result;
}

void mlir::complex::EqualOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::complex::detail::ExpOpGenericAdaptorBase::ExpOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::ExpOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::ExpOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::ExpOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::ExpOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::ExpOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::ExpOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::ExpOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::ExpOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::ExpOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::ExpOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::ExpOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ExpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::ExpOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::Expm1Op::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::Expm1Op::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::Expm1Op::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::Expm1Op::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::Expm1Op::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::Expm1Op::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::Expm1Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::Expm1Op::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::Expm1Op::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::Expm1Op::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::Expm1Op::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Expm1Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::Expm1Op::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::detail::ImOpGenericAdaptorBase::ImOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::ImOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::ImOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::ImOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::ImOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::ImOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::ImOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::ImOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::ImOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
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

  **a11 = *((v13[1] & 0xFFFFFFFFFFFFFFF8) + 8);
  return 1;
}

BOOL mlir::complex::ImOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v12[0] = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v5 = *this;
  v6 = *((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  if ((*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) != v6)
  {
    v10 = "failed to verify that complex element type matches result type";
    v11 = 259;
    mlir::Operation::emitOpError(v12, v5, &v10);
    v8 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v8;
}

BOOL mlir::complex::ImOp::parse(void **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = ((*a1)[5])(a1);
  if ((((*a1)[88])(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*a1)[51])(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
    {
      return 0;
    }

    if (v17)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(a2);
      *v5 = v17;
    }
  }

  v12[0] = ((*a1)[5])(a1);
  if ((((*a1)[61])(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  __src = a1;
  v22[0] = v12;
  v22[1] = a2;
  if (!mlir::complex::ImOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ImOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if ((((*a1)[13])(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  v14 = __src;
  if ((*__src)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && (v10 = *__src[1], v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v10 + 8, v11)))
  {
    __src = v16[1];
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v22);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16);
  }

  else
  {
    v7 = ((*a1)[2])(a1);
    v13 = 257;
    ((*a1)[3])(&__src, a1, v7, v12);
    if (__src)
    {
      mlir::Diagnostic::operator<<<70ul>(v22, "'complex' must be complex type with floating-point elements, but got ");
      if (__src)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(v22, &v14);
      }
    }

    v8 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v8;
}

void mlir::complex::ImOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::Log1pOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::Log1pOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::Log1pOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::Log1pOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::Log1pOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::Log1pOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::Log1pOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::Log1pOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::Log1pOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::Log1pOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::Log1pOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Log1pOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::Log1pOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::detail::LogOpGenericAdaptorBase::LogOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::LogOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::LogOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::LogOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::LogOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::LogOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::LogOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::LogOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::LogOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::LogOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::LogOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::LogOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::LogOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::LogOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::LogOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::LogOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::detail::MulOpGenericAdaptorBase::MulOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::MulOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::MulOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::MulOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::MulOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::MulOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::MulOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::MulOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::MulOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::MulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::complex::MulOp::parse(uint64_t a1, uint64_t a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(a2);
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
    if (mlir::complex::MulOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::MulOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

void mlir::complex::MulOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::complex::detail::NegOpGenericAdaptorBase::NegOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::NegOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::NegOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::NegOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::NegOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::NegOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::NegOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::NegOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::NegOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::NegOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::NegOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::NegOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::NegOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::NegOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::NegOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::NegOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

BOOL mlir::complex::NotEqualOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps5(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = *this;
  v4 = *(*(*(*this + 9) + 56) + 8) ^ *(*(*(*this + 9) + 24) + 8);
  v5 = 1;
  if (v4 >= 8)
  {
    v7 = "failed to verify that all of {lhs, rhs} have same type";
    v8 = 259;
    mlir::Operation::emitOpError(v9, v3, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

uint64_t mlir::complex::NotEqualOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
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
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v8))
  {
    return 0;
  }

  v10 = v8;
  v5 = (*(*a1 + 32))(a1);
  v8 = mlir::IntegerType::get(*v5, 1, 0);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v8, v9);
  v6 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v4, a2 + 16);
  result = 0;
  if (v6)
  {
    return (*(*a1 + 728))(a1, v11, *v9[0], a2 + 16) & 1;
  }

  return result;
}

void mlir::complex::NotEqualOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::complex::PowOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::PowOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::PowOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::PowOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::PowOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::PowOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::PowOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::PowOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::PowOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::complex::PowOp::parse(uint64_t a1, uint64_t a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(a2);
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
    if (mlir::complex::PowOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::PowOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

void mlir::complex::PowOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::complex::detail::ReOpGenericAdaptorBase::ReOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::ReOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::ReOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::ReOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::ReOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::ReOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::ReOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::ReOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::ReOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::ReOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
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

  **a11 = *((v13[1] & 0xFFFFFFFFFFFFFFF8) + 8);
  return 1;
}

BOOL mlir::complex::ReOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v12[0] = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v5 = *this;
  v6 = *((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  if ((*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) != v6)
  {
    v10 = "failed to verify that complex element type matches result type";
    v11 = 259;
    mlir::Operation::emitOpError(v12, v5, &v10);
    v8 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v8;
}

BOOL mlir::complex::ReOp::parse(void **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = ((*a1)[5])(a1);
  if ((((*a1)[88])(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*a1)[51])(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
    {
      return 0;
    }

    if (v17)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::ReOpGenericAdaptorBase::Properties>(a2);
      *v5 = v17;
    }
  }

  v12[0] = ((*a1)[5])(a1);
  if ((((*a1)[61])(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  __src = a1;
  v22[0] = v12;
  v22[1] = a2;
  if (!mlir::complex::ReOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ReOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if ((((*a1)[13])(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  v14 = __src;
  if ((*__src)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && (v10 = *__src[1], v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v10 + 8, v11)))
  {
    __src = v16[1];
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v22);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16);
  }

  else
  {
    v7 = ((*a1)[2])(a1);
    v13 = 257;
    ((*a1)[3])(&__src, a1, v7, v12);
    if (__src)
    {
      mlir::Diagnostic::operator<<<70ul>(v22, "'complex' must be complex type with floating-point elements, but got ");
      if (__src)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(v22, &v14);
      }
    }

    v8 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v8;
}

void mlir::complex::ReOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::RsqrtOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::RsqrtOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::RsqrtOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::RsqrtOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::RsqrtOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::RsqrtOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::RsqrtOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::RsqrtOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::RsqrtOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::RsqrtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::RsqrtOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::RsqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::RsqrtOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::SignOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::SignOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::SignOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::SignOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::SignOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::SignOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::SignOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::SignOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::SignOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::SignOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::SignOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::SignOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::SignOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SignOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::SignOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::SinOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::SinOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::SinOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::SinOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::SinOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::SinOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::SinOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::SinOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::SinOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::SinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::SinOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::SinOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::SinOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SinOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::SinOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::SqrtOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::SqrtOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::SqrtOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::SqrtOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::SqrtOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::SqrtOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::SqrtOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::SqrtOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::SqrtOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::SqrtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::SqrtOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::SqrtOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::detail::SubOpGenericAdaptorBase::SubOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::complex::SubOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::SubOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::SubOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::SubOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::SubOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::SubOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::SubOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::SubOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::SubOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::complex::SubOp::parse(uint64_t a1, uint64_t a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(a2);
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
    if (mlir::complex::SubOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SubOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

void mlir::complex::SubOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::complex::TanOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::TanOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::TanOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::TanOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::TanOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::TanOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::TanOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::TanOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::TanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::TanOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::TanOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::TanOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::TanOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::TanhOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::complex::TanhOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
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

unint64_t mlir::complex::TanhOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::TanhOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *mlir::complex::TanhOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
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

void mlir::complex::TanhOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
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

BOOL mlir::complex::TanhOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::TanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::complex::TanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::complex::TanhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  __src = 0;
  v12 = 0;
  v10[0] = &__src;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties>(a2);
      *v5 = v12;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v6 = *(a2 + 8);
    v8[0] = a1;
    v8[1] = &v9;
    v8[2] = a2;
    if (mlir::complex::TanhOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::TanhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v8[0] = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, v8))
      {
        __src = v8[0];
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
        return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v10, v4, a2 + 16);
      }
    }
  }

  return 0;
}

void mlir::complex::TanhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void MergeComplexBitcast::~MergeComplexBitcast(MergeComplexBitcast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t MergeComplexBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[8] = *MEMORY[0x277D85DE8];
  if ((~*(*(*(a2 + 72) + 24) + 8) & 7) != 0)
  {
    v3 = *(*(a2 + 72) + 24);
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120 || *(*(v7 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
    {
      v8 = v3 + 24 * *(v3 + 16) + 120;
      if (v3 + 24 * *(v3 + 16) == -120)
      {
        return 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = v3 + 16 * v6;
    v8 = v9 + 16;
    if (*(*(v9 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
    {
LABEL_11:
      if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
      {
        return 0;
      }

      v23[0] = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      v21[0] = *(*(v8 + 72) + 24);
      goto LABEL_22;
    }
  }

  v11 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v12 = *(*(v8 + 72) + 24);
  }

  else
  {
    v12 = *(*(v8 + 72) + 24);
    if (*(*(*(v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = *(a2 + 24);
      v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id, *(**v13 + 32));
      if ((v15 & 1) == 0)
      {
        v22 = 1283;
        v21[2] = "arith.bitcast";
        v21[3] = 13;
        v20 = 259;
        llvm::operator+(v21, &v19, v23);
        llvm::report_fatal_error(v23, 1);
      }

      v23[0] = v13;
      v23[1] = v14;
      v23[2] = v24;
      v23[3] = 0x400000000;
      v24[4] = v25;
      v24[5] = 0x400000000;
      v25[4] = v26;
      v25[5] = 0x400000000;
      v26[8] = 4;
      v26[9] = v27;
      v26[10] = 0x100000000;
      v27[1] = v28;
      v27[2] = 0x100000000;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v28[4] = 0;
      v28[6] = 0;
      mlir::arith::BitcastOp::build(a3 + 8, v23, v11, v12);
      v16 = mlir::Operation::create(v23);
      mlir::OpBuilder::insert((a3 + 8), v16);
      v17 = *(*(v16 + 6) + 16);
      mlir::OperationState::~OperationState(v23);
      if (v17 == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_23;
    }
  }

  v23[0] = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v21[0] = v12;
LABEL_22:
  v18 = mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), v23, v21);
LABEL_23:
  (*(*a3 + 8))(a3, a2, v18);
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, const char **a3, uint64_t *a4)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v20 = 1283;
    v18 = "complex.bitcast";
    v19 = 15;
    v15 = 259;
    llvm::operator+(&__src, v14, v21);
    llvm::report_fatal_error(v21, 1);
  }

  v21[0] = a2;
  v21[1] = v8;
  v22[0] = &v23;
  v22[1] = 0x400000000;
  v24[0] = v25;
  v24[1] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[8] = 4;
  v26[9] = v27;
  v26[10] = 0x100000000;
  v27[1] = v28;
  v27[2] = 0x100000000;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v28[4] = 0;
  v28[6] = 0;
  v10 = *a4;
  __src = *a3;
  v14[0] = v10;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v22, v14, 0, v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v24, &__src, v17);
  v11 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v12;
}

const char *llvm::detail::getTypeNameImpl<MergeComplexBitcast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MergeComplexBitcast]";
  v6 = 81;
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

void MergeArithBitcast::~MergeArithBitcast(MergeArithBitcast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t MergeArithBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
  {
    return 0;
  }

  v9 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(*(v7 + 72) + 24);
  v12 = v9;
  v10 = mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &v12, &v11);
  (*(*a3 + 8))(a3, a2, v10);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<MergeArithBitcast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MergeArithBitcast]";
  v6 = 79;
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

void anonymous namespace::FoldComponentNeg<mlir::complex::ImOp,1>::~FoldComponentNeg(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldComponentNeg<mlir::complex::ImOp,1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
  {
    return 0;
  }

  v9 = *(*(v7 + 72) + 24);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16) + 120;
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = v9 + 16 * v10 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
  {
    return 0;
  }

  v12 = *((*(v11 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = *(*(v11 + 72) + 56);
  v15 = v12;
  v13 = mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(a3 + 1, *(a2 + 24), &v15, &v14);
  ((*a3)[1])(a3, a2, v13);
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "arith.negf";
    v15[3] = 10;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  v17[0] = a2;
  v17[1] = v8;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::arith::NegFOp::build(a1, v17, *a3, *a4, 0);
  v10 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldComponentNeg<mlir::complex::ImOp,1>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldComponentNeg<mlir::complex::ImOp, 1>]";
  v6 = 125;
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

void anonymous namespace::FoldComponentNeg<mlir::complex::ReOp,0>::~FoldComponentNeg(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldComponentNeg<mlir::complex::ReOp,0>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
  {
    return 0;
  }

  v9 = *(*(v7 + 72) + 24);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16) + 120;
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = v9 + 16 * v10 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
  {
    return 0;
  }

  v12 = *((*(v11 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = *(*(v11 + 72) + 24);
  v15 = v12;
  v13 = mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(a3 + 1, *(a2 + 24), &v15, &v14);
  ((*a3)[1])(a3, a2, v13);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldComponentNeg<mlir::complex::ReOp,0>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldComponentNeg<mlir::complex::ReOp, 0>]";
  v6 = 125;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24218))
  {
    qword_27FC24208 = llvm::detail::getTypeNameImpl<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>();
    unk_27FC24210 = v1;
    __cxa_guard_release(&qword_27FC24218);
  }

  return qword_27FC24208;
}

const char *llvm::detail::getTypeNameImpl<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::complex::detail::AbsOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::ComplexType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 536))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24240))
  {
    qword_27FC24230 = llvm::detail::getTypeNameImpl<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>();
    *algn_27FC24238 = v1;
    __cxa_guard_release(&qword_27FC24240);
  }

  return qword_27FC24230;
}

const char *llvm::detail::getTypeNameImpl<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::complex::detail::AddOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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