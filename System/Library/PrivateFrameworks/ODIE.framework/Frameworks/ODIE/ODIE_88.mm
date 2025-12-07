BOOL mlir::tensor::FromElementsOp::parse(uint64_t a1, uint64_t a2)
{
  v33[16] = *MEMORY[0x277D85DE8];
  v31 = v33;
  v32 = 0x400000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v31, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || (v28 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v28)))
  {
    v20 = 0;
    goto LABEL_16;
  }

  v5 = v28;
  v26 = v28;
  __src = v28;
  v6 = *v28;
  if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
    if ((*(v8 + 16))(v8, v5))
    {
      v9 = (*(v8 + 24))(v8, v5);
      if (!v10)
      {
LABEL_11:
        v12 = *v5;
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        (*(v14 + 8))(v14, v5);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v28);
        v15 = __src[2];
        if (v15)
        {
          v16 = __src[1];
          v17 = 8 * v15;
          v18 = 1;
          do
          {
            v19 = *v16++;
            v18 *= v19;
            v17 -= 8;
          }

          while (v17);
        }

        else
        {
          v18 = 1;
        }

        v23 = __src[3];
        v28 = v30;
        v29 = 0x200000000;
        llvm::SmallVectorImpl<mlir::Type>::assign(&v28, v18, v23);
        v24 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,2u>>(a1, v31, v32, v28, v29, v4, a2 + 16);
        if (v28 != v30)
        {
          free(v28);
        }

        v20 = v24;
        goto LABEL_16;
      }

      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v22 = (*(*a1 + 16))(a1);
  v25[16] = 257;
  (*(*a1 + 24))(&v28, a1, v22, v25);
  if (v28)
  {
    mlir::Diagnostic::operator<<<71ul>(&v29, "'result' must be statically shaped tensor of any type values, but got ");
    if (v28)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(&v29, &v26);
    }
  }

  v20 = (v30[184] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
LABEL_16:
  if (v31 != v33)
  {
    free(v31);
  }

  return v20;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,2u>>(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  v20 = a3;
  if (a3 == a5)
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

void mlir::tensor::FromElementsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
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

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, 0);
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

  v22 = *this - 16;
  if (!*(*this + 9))
  {
    v22 = 0;
  }

  (*(*a2 + 32))(a2, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::tensor::detail::GatherOpGenericAdaptorBase::GatherOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::tensor::GatherOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v21, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "gather_dims", 0xBuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        a3(&v21, a4);
        if (!v21)
        {
          goto LABEL_4;
        }

        if (!v21)
        {
          goto LABEL_4;
        }

        v19 = 0;
        v20 = v11;
LABEL_20:
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
        v17 = v23 + 24 * v24;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v24;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
        return 0;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "unique", 6uLL);
  if (v14)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v21, a4);
        if (!v21)
        {
          goto LABEL_4;
        }

        if (!v21)
        {
          goto LABEL_4;
        }

        v19 = 0;
        v20 = v15;
        goto LABEL_20;
      }

      a1[1] = v15;
    }
  }

  return 1;
}

uint64_t mlir::tensor::GatherOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "gather_dims";
    v15 = 11;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "unique";
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

unint64_t mlir::tensor::GatherOp::computePropertiesHash(void *a1)
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

unint64_t mlir::tensor::GatherOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1902734965 || *(a3 + 4) != 25973)
    {
      goto LABEL_13;
    }

    v5 = a2[1];
LABEL_15:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  if (a4 == 11 && *a3 == 0x645F726568746167 && *(a3 + 3) == 0x736D69645F726568)
  {
    v5 = *a2;
    goto LABEL_15;
  }

LABEL_13:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

void *mlir::tensor::GatherOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  else if (a3 == 11 && *a2 == 0x645F726568746167 && *(a2 + 3) == 0x736D69645F726568)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = a4[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v7[2] == 64)
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

void mlir::tensor::GatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "gather_dims";
    v12 = 11;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "unique";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::tensor::GatherOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "gather_dims", 0xB, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v13, "unique", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::GatherOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 1);
    v13[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "gather_dims", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13) && (v13[0] = *this, mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13)) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps11(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v8 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = "requires attribute 'gather_dims'";
    v12 = 259;
    mlir::Operation::emitOpError(v13, v2, &v11);
    v9 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v9;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps11(mlir::Operation *a1, uint64_t *a2, unsigned int a3)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v5 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v14 = mlir::detail::InterfaceMap::lookup(v5 + 8, v13);
  v15 = (*(v14 + 8))(v14, a2);
  v16 = *(*v15 + 136);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!(v15[2] >> 30))
    {
      return 1;
    }
  }

  else if (v16 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_2:
  v18 = 261;
  v17[0] = "operand";
  v17[1] = 7;
  mlir::Operation::emitOpError(&v22, a1, v17);
  if (v22)
  {
    mlir::Diagnostic::operator<<<3ul>(v23, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<69ul>((v6 + 1), " must be ranked tensor of signless integer or index values, but got ");
    if (*v7)
    {
      v20 = 4;
      v21 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v20, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  return v11;
}

BOOL mlir::tensor::GatherOp::parse(uint64_t *a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "gather_dims", 11, &v20) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2);
    *v4 = v13;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "unique", 6))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2) + 8) = v5;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v20 = a1;
  v21 = &v10;
  v22 = a2;
  if (!mlir::tensor::GatherOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v20))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10))
  {
    return 0;
  }

  v7 = *(v10 + 8);
  v11 = *(v10 + 16);
  v12 = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v7), (v11 + 8 * v7 + 8 * *(v10 + 12)));
  v20 = v17;
  v21 = v14;
  v8 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v20, &v11, v8, a2 + 16);
}

void mlir::tensor::GatherOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v38[4] = *MEMORY[0x277D85DE8];
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
  if ((*(v12 + 3) - v13) > 0xA)
  {
    *(v13 + 7) = 1936550244;
    *v13 = *"gather_dims";
    *(v12 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v12, "gather_dims", 0xBuLL);
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

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(v16 + 4);
  }

  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
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
    if ((*(v20 + 3) - v21) > 5)
    {
      *(v21 + 4) = 25973;
      *v21 = 1902734965;
      *(v20 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v20, "unique", 6uLL);
    }
  }

  v36 = v38;
  v37 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "gather_dims", 11);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "unique", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, v37);
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

BOOL mlir::tensor::GenerateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  if ((*(v2 + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (*(v2 + 9))
    {
      v6 = v2 - 16;
    }

    else
    {
      v6 = 0;
    }

    if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v2, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      return mlir::tensor::__mlir_ods_local_region_constraint_TensorOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0);
    }
  }

  return 0;
}

BOOL mlir::tensor::__mlir_ods_local_region_constraint_TensorOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23[0] = *(a2 + 8);
  v20[0] = a2;
  v17[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__5;
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

void mlir::tensor::GenerateOp::parse(uint64_t a1, uint64_t a2)
{
  v4[16] = *MEMORY[0x277D85DE8];
  v2 = v4;
  v3 = 0x400000000;
  operator new();
}

void mlir::tensor::GenerateOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
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

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
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
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v21 = *v17 == v17 || ((v18 = v17[1]) != 0 ? (v19 = v18 - 8) : (v19 = 0), (v20 = *(v19 + 32), *(mlir::Operation::getAttrDictionary(v20) + 16)) || (*(v20 + 46) & 0x80) != 0 && *(v20 + 68)) || *(v20 + 36) != 0;
  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, v21, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v30, 0);
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

  v29 = *this - 16;
  if (!*(*this + 9))
  {
    v29 = 0;
  }

  (*(*a2 + 32))(a2, *(v29 + 1) & 0xFFFFFFFFFFFFFFF8);
}

unint64_t mlir::tensor::InsertOp::getODSOperandIndexAndLength(mlir::tensor::InsertOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor8InsertOp27getODSOperandIndexAndLengthEj_isVariadic;
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

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir6tensor8InsertOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::tensor::InsertOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 < 2)
  {
    return 0;
  }

  v12 = 1;
  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return v12;
}

uint64_t mlir::tensor::InsertOp::verifyInvariantsImpl(mlir::tensor::InsertOp *this)
{
  v26 = *MEMORY[0x277D85DE8];
  mlir::tensor::InsertOp::getODSOperands(this, 0);
  v3 = v2;
  ODSOperands = mlir::tensor::InsertOp::getODSOperands(this, 1u);
  if (v5)
  {
    v6 = v5;
    v7 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v3))
    {
      ++v3;
      v7 += 32;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_20;
  }

LABEL_5:
  v8 = mlir::tensor::InsertOp::getODSOperands(this, 2u);
  if (v9)
  {
    v10 = v9;
    v11 = v8 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v3))
    {
      ++v3;
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

LABEL_9:
  if (*(*this + 36))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    v13 = *(*(mlir::tensor::InsertOp::getODSOperands(this, 1u) + 24) + 8);
    v14 = *this;
    if (*(*this + 36))
    {
      v15 = *this - 16;
    }

    else
    {
      v15 = 0;
    }

    if ((*(v15 + 8) ^ v13) >= 8)
    {
      v22 = "failed to verify that result type matches type of dest";
      v23 = 259;
      goto LABEL_29;
    }

    v16 = *(*(mlir::tensor::InsertOp::getODSOperands(this, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(*v16 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 24;
    }

    else
    {
      if (v17 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v18 = 0;
LABEL_26:
        if (v18 == (*(*(mlir::tensor::InsertOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          v19 = 1;
          return v19 & 1;
        }

        v22 = "failed to verify that scalar type matches element type of dest";
        v23 = 259;
        v14 = *this;
LABEL_29:
        mlir::Operation::emitOpError(v24, v14, &v22);
        v19 = v25 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
        return v19 & 1;
      }

      v21 = 8;
    }

    v18 = *(v16 + v21);
    goto LABEL_26;
  }

LABEL_20:
  v19 = 0;
  return v19 & 1;
}

uint64_t mlir::tensor::InsertOp::getODSOperands(mlir::tensor::InsertOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::InsertOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::tensor::InsertOp::parse(uint64_t a1, uint64_t a2)
{
  v32[16] = *MEMORY[0x277D85DE8];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  v30 = v32;
  v31 = 0x400000000;
  v20[1] = 1;
  __src = 0;
  v20[0] = &__src;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  v28[12] = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v27) & 1) == 0)
  {
    goto LABEL_28;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v30, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v27))
  {
    goto LABEL_28;
  }

  v5 = v27;
  __src = v27;
  v19 = v27;
  v6 = *v27;
  if (*(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    (*(v10 + 8))(v10, v5);
    v11 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v22);
    v12 = *(*__src + 136);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 24;
    }

    else
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v13 = 0;
LABEL_21:
        if (((*(*a1 + 728))(a1, v25, v13, a2 + 16) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v20, v4, a2 + 16))
        {
          if (!v31)
          {
            v8 = 1;
            goto LABEL_29;
          }

          v15 = v30;
          v16 = 32 * v31;
          while (((*(*a1 + 728))(a1, v15, v11, a2 + 16) & 1) != 0)
          {
            v15 += 32;
            v8 = 1;
            v16 -= 32;
            if (!v16)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_28:
        v8 = 0;
        goto LABEL_29;
      }

      v14 = 8;
    }

    v13 = *(__src + v14);
    goto LABEL_21;
  }

  v7 = (*(*a1 + 16))(a1);
  v18[16] = 257;
  (*(*a1 + 24))(&v27, a1, v7, v18);
  if (v27)
  {
    mlir::Diagnostic::operator<<<58ul>(v28, "'dest' must be ranked tensor of any type values, but got ");
    if (v27)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v28, &v19);
    }
  }

  v8 = (v29 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
LABEL_29:
  if (v30 != v32)
  {
    free(v30);
  }

  return v8;
}

void mlir::tensor::InsertOp::print(mlir::tensor::InsertOp *this, mlir::OpAsmPrinter *a2)
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

  ODSOperands = mlir::tensor::InsertOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
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
  if (*(v9 + 3) - v10 > 3uLL)
  {
    *v10 = 1869901417;
    *(v9 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v9, "into", 4uLL);
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

  v13 = mlir::tensor::InsertOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(v13 + 24));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "[", 1uLL);
  }

  else
  {
    *v15 = 91;
    ++*(v14 + 4);
  }

  v16 = mlir::tensor::InsertOp::getODSOperands(this, 2u);
  v18 = v17;
  v19 = (*(*a2 + 16))(a2);
  if (v18)
  {
    v20 = v19;
    (*(*a2 + 160))(a2, *(v16 + 24));
    v21 = v18 - 1;
    if (v21)
    {
      v22 = (v16 + 56);
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
    llvm::raw_ostream::write(v25, "]", 1uLL);
  }

  else
  {
    *v26 = 93;
    ++*(v25 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, 0);
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
    llvm::raw_ostream::write(v30, ":", 1uLL);
  }

  else
  {
    *v31 = 58;
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

  v34 = mlir::tensor::InsertOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v34 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  *(result + 56) = v2[2];
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 72) = v7;
  *(result + 80) = v6;
  return result;
}

BOOL mlir::tensor::InsertSliceOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v30, a4);
    if (v30)
    {
      mlir::Diagnostic::operator<<<42ul>(v31, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_offsets", 0xEuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        (a3)(&v30, a4);
        if (v30)
        {
LABEL_37:
          mlir::Diagnostic::operator<<<60ul>(v31, v24);
LABEL_38:
          if (v30)
          {
            v28 = 0;
            v29 = v11;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v28, 1);
            v26 = v32 + 24 * v33;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v33;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        return 0;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_sizes", 0xCuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v11[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        (a3)(&v30, a4);
        if (v30)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

      a1[1] = v11;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_strides", 0xEuLL);
  if (v17)
  {
    v11 = *(v16 + 8);
    if (v11)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v18 = v11[1];
        if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v18[2] == 64)
        {
          a1[2] = v11;
          goto LABEL_25;
        }
      }

      (a3)(&v30, a4);
      if (v30)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v20 & 1) == 0 || (v21 = *(v19 + 8)) == 0)
  {
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v23 & 1) == 0)
    {
      return 1;
    }

    v21 = *(v22 + 8);
    if (!v21)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 5, v21, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::tensor::InsertSliceOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "static_offsets";
    v21 = 14;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "static_sizes";
    v21 = 12;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "static_strides";
    v21 = 14;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

unint64_t mlir::tensor::InsertSliceOp::computePropertiesHash(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v19 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = 0xB492B66FBE98F273 * v6;
  v10 = a1[4];
  v11 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v12 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30);
  v13 = __ROR8__(v9 - v10, 43) - 0x3C5A37A36834CED9 * *(a1 + 28);
  v14 = v9 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v11 + 20;
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) >> 47));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  v22 = 0;
  v23 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v20, 0, v20, v21, &v19, &v18, &v17, &v16);
}

unint64_t mlir::tensor::InsertSliceOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v12 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 5);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 12)
  {
    if (*a3 != 0x735F636974617473 || *(a3 + 2) != 1936030313)
    {
      goto LABEL_34;
    }

    a1 = a2[1];
    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 == 0x6F5F636974617473 && *(a3 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x735F636974617473 || *(a3 + 6) != 0x736564697274735FLL)
      {
LABEL_34:
        LOBYTE(a1) = 0;
        v5 = 0;
        return v5 | a1;
      }

      a1 = a2[2];
    }

LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

uint64_t *mlir::tensor::InsertSliceOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = *a2 ^ 0x53646E617265706FLL;
      v9 = a2[1] ^ 0x6953746E656D6765;
      v10 = *(a2 + 11);
      v11 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = *a2 ^ 0x5F646E617265706FLL;
      v9 = a2[1] ^ 0x5F746E656D676573;
      v10 = *(a2 + 13);
      v11 = 1935635566;
    }

    if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 5)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 12)
  {
    if (*a2 == 0x735F636974617473 && *(a2 + 2) == 1936030313)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
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
  }

  else if (a3 == 14)
  {
    if (*a2 == 0x6F5F636974617473 && *(a2 + 6) == 0x7374657366666F5FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v18 = *(a4 + 8), *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v18[2] == 64)
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

      *result = v19;
    }

    else if (*a2 == 0x735F636974617473 && *(a2 + 6) == 0x736564697274735FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = *(a4 + 8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v6[2] == 64)
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

      result[2] = v7;
    }
  }

  return result;
}

void mlir::tensor::InsertSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "static_offsets";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_sizes";
    v20 = 12;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_strides";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::InsertSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "static_offsets", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_sizes", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_strides", 0xE, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::InsertSliceOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 6)
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

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 5uLL) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 24, 5);
    (*(*a2 + 16))(a2, v5);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 5);
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 < 2)
  {
    return 0;
  }

  v12 = 1;
  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return v12;
}

void mlir::tensor::InsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v27 = a4;
  __src = a3;
  v26 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v27, 0, &v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v26, 0, &v26, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a6, 0, a6, a7);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a9, 0, a9, a10);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a11, 0, a11, a12);
  v22 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v22 + 24) = 0x100000001;
  *(v22 + 32) = a7;
  *(v22 + 36) = a10;
  *(v22 + 40) = a12;
  v23 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a13, a14);
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) = v23;
  v24 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a15, a16);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v24;
  v25 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a17, a18);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v25;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v29);
}

uint64_t mlir::tensor::InsertSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v34 = "requires attribute 'static_offsets'";
    goto LABEL_41;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v34 = "requires attribute 'static_sizes'";
    goto LABEL_41;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    v34 = "requires attribute 'static_strides'";
    goto LABEL_41;
  }

  v38[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
  {
    goto LABEL_38;
  }

  v38[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
  {
    goto LABEL_38;
  }

  v38[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
  {
    goto LABEL_38;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_38;
    }
  }

LABEL_12:
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

LABEL_16:
  v18 = mlir::tensor::InsertSliceOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_38;
  }

LABEL_20:
  v22 = mlir::tensor::InsertSliceOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_38;
  }

LABEL_24:
  v26 = mlir::tensor::InsertSliceOp::getODSOperands(this, 4u);
  if (v27)
  {
    v28 = v27;
    v29 = v26 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v29 += 32;
      if (!--v28)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_38;
  }

LABEL_28:
  v30 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v30 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_38:
    v31 = 0;
    return v31 & 1;
  }

  v31 = 1;
  v32 = *(*(mlir::tensor::InsertSliceOp::getODSOperands(this, 1u) + 24) + 8);
  v2 = *this;
  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  if ((*(v33 + 1) ^ v32) >= 8)
  {
    v34 = "failed to verify that expected result type to match dest type";
LABEL_41:
    v36 = v34;
    v37 = 259;
    mlir::Operation::emitOpError(v38, v2, &v36);
    v31 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
  }

  return v31 & 1;
}

BOOL mlir::tensor::InsertSliceOp::parse(uint64_t *a1, uint64_t a2)
{
  v54[16] = *MEMORY[0x277D85DE8];
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v39[0] = v40;
  v39[1] = 1;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36[0] = v37;
  v36[1] = 1;
  v52 = v54;
  v53 = 0x400000000;
  v34 = 0;
  v35 = 0;
  v49 = v51;
  v50 = 0x400000000;
  v46 = v48;
  v47 = 0x400000000;
  v32 = 0;
  v33 = 0;
  v31[0] = &v32;
  v31[1] = 1;
  v29[1] = 1;
  __src = 0;
  v29[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v40, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  v44 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v42) & 1) == 0)
  {
    goto LABEL_33;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v37, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  (*(*a1 + 40))(a1);
  v42 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v52, &v35, &v42, 0))
  {
    goto LABEL_33;
  }

  v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *v6 = v35;
  (*(*a1 + 40))(a1);
  v42 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v49, &v34, &v42, 0))
  {
    goto LABEL_33;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 8) = v34;
  (*(*a1 + 40))(a1);
  v42 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v46, &v33, &v42, 0))
  {
    goto LABEL_33;
  }

  v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v8 + 16) = v33;
  v26[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_33;
  }

  v9 = *(a2 + 8);
  v42 = a1;
  v43[0] = v26;
  v43[1] = a2;
  if (!mlir::tensor::InsertSliceOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v42))
  {
    goto LABEL_33;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_33;
  }

  v42 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v42))
  {
    goto LABEL_33;
  }

  v32 = v42;
  v44 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v42) & 1) == 0)
  {
    goto LABEL_33;
  }

  v42 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v42))
  {
    goto LABEL_33;
  }

  __src = v42;
  v10 = v53;
  v11 = v50;
  v12 = v47;
  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v13 + 24) = 0x100000001;
  *(v13 + 32) = v10;
  *(v13 + 36) = v11;
  *(v13 + 40) = v12;
  v28 = __src;
  if (*(*__src + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = llvm::cast<mlir::ShapedType,mlir::Type>(&v28);
    (*(v17 + 8))(v17, v16);
    v18 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v31);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v39, v31, v4, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v36, v29, v5, a2 + 16))
    {
      if (v53)
      {
        v19 = v52;
        v20 = 32 * v53;
        while (((*(*a1 + 728))(a1, v19, v18, a2 + 16) & 1) != 0)
        {
          v19 += 32;
          v20 -= 32;
          if (!v20)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_24:
        if (v50)
        {
          v21 = v49;
          v22 = 32 * v50;
          while (((*(*a1 + 728))(a1, v21, v18, a2 + 16) & 1) != 0)
          {
            v21 += 32;
            v22 -= 32;
            if (!v22)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          if (!v47)
          {
            v15 = 1;
            goto LABEL_34;
          }

          v23 = v46;
          v24 = 32 * v47;
          while (((*(*a1 + 728))(a1, v23, v18, a2 + 16) & 1) != 0)
          {
            v23 += 32;
            v15 = 1;
            v24 -= 32;
            if (!v24)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

LABEL_33:
    v15 = 0;
    goto LABEL_34;
  }

  v14 = (*(*a1 + 16))(a1);
  v27 = 257;
  (*(*a1 + 24))(&v42, a1, v14, v26);
  if (v42)
  {
    mlir::Diagnostic::operator<<<58ul>(v43, "'dest' must be ranked tensor of any type values, but got ");
    if (v42)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v43, &v28);
    }
  }

  v15 = (v45 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
LABEL_34:
  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v15;
}

void mlir::tensor::InsertSliceOp::print(mlir::tensor::InsertSliceOp *this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
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
  if (*(v8 + 3) - v9 > 3uLL)
  {
    *v9 = 1869901417;
    *(v8 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "into", 4uLL);
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

  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v13 = *this;
  v14 = mlir::tensor::InsertSliceOp::getODSOperands(this, 2u);
  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::printDynamicIndexList(a2, v13, v14, v16, *(v15 + 24), *(v15 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v19 = *this;
  v20 = mlir::tensor::InsertSliceOp::getODSOperands(this, 3u);
  v21 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::printDynamicIndexList(a2, v19, v20, v22, *(v21 + 24), *(v21 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v25 = *this;
  v26 = mlir::tensor::InsertSliceOp::getODSOperands(this, 4u);
  v27 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v25, v26, v28, *(v27 + 24), *(v27 + 32) >> 3, 0, 0, 2, 0, 2);
  v43 = v45;
  v44 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "static_offsets", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "static_sizes", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "static_strides", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v43, v44);
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
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v38 + 3) - v39 > 3uLL)
  {
    *v39 = 1869901417;
    *(v38 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v38, "into", 4uLL);
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

  v42 = mlir::tensor::InsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v42 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v43 != v45)
  {
    free(v43);
  }
}

uint64_t mlir::tensor::detail::PackOpGenericAdaptorBase::PackOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  v4 = *(v2 + 16);
  *(result + 56) = *(v2 + 32);
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 64) = v7;
  *(result + 72) = v6;
  return result;
}

BOOL mlir::tensor::PackOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "inner_dims_pos", 0xEuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        (a3)(&v29, a4);
        if (v29)
        {
          goto LABEL_37;
        }

        goto LABEL_4;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "outer_dims_perm", 0xFuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v11[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        (a3)(&v29, a4);
        if (v29)
        {
          goto LABEL_37;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
        return 0;
      }

      a1[1] = v11;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_inner_tiles", 0x12uLL);
  if (v17)
  {
    v11 = *(v16 + 8);
    if (v11)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v18 = v11[1];
        if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v18[2] == 64)
        {
          a1[2] = v11;
          goto LABEL_25;
        }
      }

      (a3)(&v29, a4);
      if (v29)
      {
LABEL_37:
        if (v29)
        {
          v27 = 0;
          v28 = v11;
          v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
          v25 = v31 + 24 * v32;
          v26 = *v24;
          *(v25 + 16) = *(v24 + 16);
          *v25 = v26;
          ++v32;
        }

        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v20 & 1) == 0 || (v21 = *(v19 + 8)) == 0)
  {
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v23 & 1) == 0)
    {
      return 1;
    }

    v21 = *(v22 + 8);
    if (!v21)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 4, v21, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::tensor::PackOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "inner_dims_pos";
    v21 = 14;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "outer_dims_perm";
    v21 = 15;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "static_inner_tiles";
    v21 = 18;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

unint64_t mlir::tensor::PackOp::computePropertiesHash(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v16 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v14 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = a1[4];
  v11 = __ROR8__(v10 + 16, 16);
  v13 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v10;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
}

unint64_t mlir::tensor::PackOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 <= 17)
  {
    if (a4 == 14)
    {
      if (*a3 != 0x69645F72656E6E69 || *(a3 + 6) != 0x736F705F736D6964)
      {
        goto LABEL_40;
      }

      a1 = *a2;
    }

    else
    {
      v5 = 0;
      if (a4 != 15)
      {
        return v5 | a1;
      }

      if (*a3 != 0x69645F726574756FLL || *(a3 + 7) != 0x6D7265705F736D69)
      {
        goto LABEL_40;
      }

      a1 = a2[1];
    }

LABEL_42:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
    return v5 | a1;
  }

  if (a4 == 18)
  {
    if (*a3 != 0x695F636974617473 || *(a3 + 8) != 0x6C69745F72656E6ELL || *(a3 + 16) != 29541)
    {
      goto LABEL_40;
    }

    a1 = a2[2];
    goto LABEL_42;
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
LABEL_40:
    LOBYTE(a1) = 0;
    v5 = 0;
    return v5 | a1;
  }

  a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 4);
  v5 = a1 & 0xFFFFFFFFFFFFFF00;
  return v5 | a1;
}

uint64_t *mlir::tensor::PackOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 17)
  {
    if (a3 == 14)
    {
      if (*a2 == 0x69645F72656E6E69 && *(a2 + 6) == 0x736F705F736D6964)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v19 = *(a4 + 8), *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v19[2] == 64)
          {
            v20 = a4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        *result = v20;
      }
    }

    else if (a3 == 15 && *a2 == 0x69645F726574756FLL && *(a2 + 7) == 0x6D7265705F736D69)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v9 = *(a4 + 8), *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v9[2] == 64)
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

  else if (a3 == 18)
  {
    if (*a2 == 0x695F636974617473 && *(a2 + 8) == 0x6C69745F72656E6ELL && *(a2 + 16) == 29541)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
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

      result[2] = v14;
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
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 4)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::tensor::PackOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "inner_dims_pos";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "outer_dims_perm";
    v20 = 15;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_inner_tiles";
    v20 = 18;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::PackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "inner_dims_pos", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "outer_dims_perm", 0xF, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_inner_tiles", 0x12, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::PackOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3))
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

    if (*(v8 + 16) >= 5)
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

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4uLL) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2)
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
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v4[2] == 64)
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
  return v5;
}

uint64_t mlir::tensor::PackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 24, 4);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 4);
  }

  return result;
}

uint64_t mlir::tensor::PackOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 < 2)
  {
    return 0;
  }

  v12 = 1;
  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return v12;
}

BOOL mlir::tensor::PackOp::verifyInvariantsImpl(unsigned int **this)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  if (!v6)
  {
    v24 = "requires attribute 'inner_dims_pos'";
LABEL_18:
    v43[0] = v24;
    v44 = 259;
    mlir::Operation::emitOpError(v45, v2, v43);
    v25 = v46;
LABEL_19:
    v26 = (v25 & 1) == 0;
LABEL_20:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v45);
    return v26;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v24 = "requires attribute 'static_inner_tiles'";
    goto LABEL_18;
  }

  v8 = *(v4 + 1);
  v45[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "outer_dims_perm", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45))
  {
    return 0;
  }

  v45[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v5, "inner_dims_pos", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45))
  {
    return 0;
  }

  v45[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_inner_tiles", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45))
  {
    return 0;
  }

  v42 = 0;
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
      do
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v16 = v12 + 1;
        v42 = v12 + 1;
        if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v14, (v15 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
        {
          return 0;
        }

        v13 += 32;
        v12 = v16;
      }

      while (v10 != v16);
    }
  }

  ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 1u);
  if (v18)
  {
    v19 = v18;
    v20 = ODSOperands + 24;
    while (1)
    {
      v21 = *this;
      v22 = *(*v20 + 8);
      v23 = v10 + 1;
      v42 = v10 + 1;
      if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v21, (v22 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
      {
        return 0;
      }

      v20 += 32;
      LODWORD(v10) = v10 + 1;
      if (!--v19)
      {
        goto LABEL_22;
      }
    }
  }

  v23 = v10;
LABEL_22:
  mlir::tensor::PackOp::getODSOperands(this, 2u);
  v28 = v27;
  if (v27 > 1)
  {
    v43[0] = "operand group starting at #";
    v44 = 259;
    mlir::Operation::emitOpError(v45, *this, v43);
    v29 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v45, &v42);
    v30 = v29;
    if (*v29)
    {
      mlir::Diagnostic::operator<<<37ul>((v29 + 1), " requires 0 or 1 element, but found ");
    }

    v41 = v28;
    v25 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v30, &v41) + 200);
    goto LABEL_19;
  }

  v31 = mlir::tensor::PackOp::getODSOperands(this, 3u);
  if (v32)
  {
    v33 = v32;
    v34 = v23 + v28;
    v35 = v31 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v35 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v34))
    {
      ++v34;
      v35 += 32;
      if (!--v33)
      {
        goto LABEL_30;
      }
    }

    return 0;
  }

LABEL_30:
  v36 = (*this)[9] ? *this - 4 : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v36 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v26 = 1;
  v37 = *(*(mlir::tensor::PackOp::getODSOperands(this, 1u) + 24) + 8);
  v38 = *this;
  if ((*this)[9])
  {
    v39 = *this - 4;
  }

  else
  {
    v39 = 0;
  }

  if ((*(v39 + 1) ^ v37) >= 8)
  {
    v43[0] = "failed to verify that result type matches type of dest";
    v44 = 259;
    mlir::Operation::emitOpError(v45, v38, v43);
    v26 = (v46 & 1) == 0;
    goto LABEL_20;
  }

  return v26;
}

uint64_t mlir::tensor::PackOp::getODSOperands(mlir::tensor::PackOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 88);
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

BOOL mlir::tensor::PackOp::parse(uint64_t *a1, uint64_t a2)
{
  v55[16] = *MEMORY[0x277D85DE8];
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  v53 = v55;
  v54 = 0x400000000;
  v51[0] = &v52;
  v51[1] = 0x100000000;
  v38 = 0;
  v39 = 0;
  v48 = v50;
  v49 = 0x400000000;
  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  v32[1] = 1;
  v33 = 0;
  __src = 0;
  v32[0] = &v33;
  v30[0] = &__src;
  v30[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 408))(a1, "padding_value", 13) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v5 = (*(*a1 + 40))(a1);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v6 = (*(*a1 + 712))(a1, &v43, 1);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_48;
    }

    v7 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v53, &v43, 1);
    v8 = &v53[32 * v54];
    v9 = v7[1];
    *v8 = *v7;
    *(v8 + 1) = v9;
    LODWORD(v54) = v54 + 1;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v43 = 0;
  v10 = (*(*a1 + 552))(a1, &v43);
  if ((v10 & 0x100) == 0)
  {
    goto LABEL_11;
  }

  if ((v10 & 1) == 0)
  {
LABEL_48:
    v20 = 0;
    goto LABEL_49;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v51, v43);
LABEL_11:
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_14:
  if ((*(*a1 + 408))(a1, "outer_dims_perm", 15))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v39, 0))
    {
      goto LABEL_48;
    }

    if (v39)
    {
      v11 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
      *(v11 + 8) = v39;
    }
  }

  v46 = 257;
  if (((*(*a1 + 400))(a1, "inner_dims_pos", 14, &v43) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v38, 0))
  {
    goto LABEL_48;
  }

  if (v38)
  {
    v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
    *v12 = v38;
  }

  v46 = 257;
  if (((*(*a1 + 400))(a1, "inner_tiles", 11, &v43) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  (*(*a1 + 40))(a1);
  v43 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v48, &v37, &v43, 0))
  {
    goto LABEL_48;
  }

  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v13 + 16) = v37;
  v46 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v43) & 1) == 0)
  {
    goto LABEL_48;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v27[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = *(a2 + 8);
  v43 = a1;
  v44 = v27;
  v45 = a2;
  if (!mlir::tensor::PackOp::verifyInherentAttrs(v15, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v43))
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v43 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v43))
  {
    goto LABEL_48;
  }

  v33 = v43;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v43 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v43))
  {
    goto LABEL_48;
  }

  __src = v43;
  v16 = v54;
  v17 = v49;
  v18 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v18 + 24) = 0x100000001;
  *(v18 + 32) = v16;
  *(v18 + 36) = v17;
  v29 = __src;
  if (*(*__src + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v29);
    (*(v22 + 8))(v22, v21);
    v23 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v32);
    if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v32, v4, a2 + 16) || !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v30, v14, a2 + 16) || !mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v53, v51, v5, a2 + 16))
    {
      goto LABEL_48;
    }

    if (v49)
    {
      v24 = v48;
      v25 = 32 * v49;
      while (((*(*a1 + 728))(a1, v24, v23, a2 + 16) & 1) != 0)
      {
        v24 += 32;
        v20 = 1;
        v25 -= 32;
        if (!v25)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_48;
    }

    v20 = 1;
  }

  else
  {
    v19 = (*(*a1 + 16))(a1);
    v28 = 257;
    (*(*a1 + 24))(&v43, a1, v19, v27);
    if (v43)
    {
      mlir::Diagnostic::operator<<<58ul>(&v44, "'dest' must be ranked tensor of any type values, but got ");
      if (v43)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(&v44, &v29);
      }
    }

    v20 = (v47 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
  }

LABEL_49:
  if (v48 != v50)
  {
    free(v48);
  }

  if (v51[0] != &v52)
  {
    free(v51[0]);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  return v20;
}

void mlir::tensor::PackOp::print(mlir::tensor::PackOp *this, mlir::OpAsmPrinter *a2)
{
  v86[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 2u);
  if (v7 && *(ODSOperands + 24))
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

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0xCuLL)
    {
      qmemcpy(v11, "padding_value", 13);
      *(v10 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v10, "padding_value", 0xDuLL);
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

    v14 = mlir::tensor::PackOp::getODSOperands(this, 2u);
    if (v15 && *(v14 + 24))
    {
      (*(*a2 + 160))(a2);
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

    v22 = mlir::tensor::PackOp::getODSOperands(this, 2u);
    if (v23 && *(v22 + 24))
    {
      v24 = mlir::tensor::PackOp::getODSOperands(this, 2u);
      (*(*a2 + 32))(a2, *(*(v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  }

  v27 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v27 && v27 != mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
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
    if (*(v30 + 3) - v31 > 0xEuLL)
    {
      qmemcpy(v31, "outer_dims_perm", 15);
      *(v30 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v30, "outer_dims_perm", 0xFuLL);
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

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72));
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
  if (*(v40 + 3) - v41 > 0xDuLL)
  {
    qmemcpy(v41, "inner_dims_pos", 14);
    *(v40 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v40, "inner_dims_pos", 0xEuLL);
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
    llvm::raw_ostream::write(v44, "=", 1uLL);
  }

  else
  {
    *v45 = 61;
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

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64));
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

  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if ((*(v50 + 3) - v51) > 0xA)
  {
    *(v51 + 7) = 1936026729;
    *v51 = *"inner_tiles";
    *(v50 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v50, "inner_tiles", 0xBuLL);
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

  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, "=", 1uLL);
  }

  else
  {
    *v55 = 61;
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
  v59 = mlir::tensor::PackOp::getODSOperands(this, 3u);
  v60 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v58, v59, v61, *(v60 + 24), *(v60 + 32) >> 3, 0, 0, 2, 0, 2);
  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (v63 >= *(v62 + 3))
  {
    llvm::raw_ostream::write(v62, 32);
  }

  else
  {
    *(v62 + 4) = v63 + 1;
    *v63 = 32;
  }

  v64 = (*(*a2 + 16))(a2);
  v65 = *(v64 + 4);
  if (*(v64 + 3) - v65 > 3uLL)
  {
    *v65 = 1869901417;
    *(v64 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v64, "into", 4uLL);
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (v67 >= *(v66 + 3))
  {
    llvm::raw_ostream::write(v66, 32);
  }

  else
  {
    *(v66 + 4) = v67 + 1;
    *v67 = 32;
  }

  v68 = mlir::tensor::PackOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(v68 + 24));
  v84 = v86;
  v85 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v84, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v84, "outer_dims_perm", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v84, "inner_dims_pos", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v84, "static_inner_tiles", 18);
  v69 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v69 && v69 == mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v84, "outer_dims_perm", 15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v84, v85);
  v71 = (*(*a2 + 16))(a2);
  v72 = *(v71 + 4);
  if (v72 >= *(v71 + 3))
  {
    llvm::raw_ostream::write(v71, 32);
  }

  else
  {
    *(v71 + 4) = v72 + 1;
    *v72 = 32;
  }

  v73 = (*(*a2 + 16))(a2);
  v74 = *(v73 + 4);
  if (*(v73 + 3) == v74)
  {
    llvm::raw_ostream::write(v73, ":", 1uLL);
  }

  else
  {
    *v74 = 58;
    ++*(v73 + 4);
  }

  v75 = (*(*a2 + 16))(a2);
  v76 = *(v75 + 4);
  if (v76 >= *(v75 + 3))
  {
    llvm::raw_ostream::write(v75, 32);
  }

  else
  {
    *(v75 + 4) = v76 + 1;
    *v76 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v77 = (*(*a2 + 16))(a2);
  v78 = *(v77 + 4);
  if (v78 >= *(v77 + 3))
  {
    llvm::raw_ostream::write(v77, 32);
  }

  else
  {
    *(v77 + 4) = v78 + 1;
    *v78 = 32;
  }

  v79 = (*(*a2 + 16))(a2);
  v80 = *(v79 + 4);
  if (*(v79 + 3) - v80 > 1uLL)
  {
    *v80 = 15917;
    *(v79 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v79, "->", 2uLL);
  }

  v81 = (*(*a2 + 16))(a2);
  v82 = *(v81 + 4);
  if (v82 >= *(v81 + 3))
  {
    llvm::raw_ostream::write(v81, 32);
  }

  else
  {
    *(v81 + 4) = v82 + 1;
    *v82 = 32;
  }

  v83 = mlir::tensor::PackOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v83 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v84 != v86)
  {
    free(v84);
  }
}

uint64_t mlir::tensor::detail::PadOpGenericAdaptorBase::PadOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  v4 = *(v2 + 16);
  *(result + 56) = *(v2 + 32);
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 64) = v7;
  *(result + 72) = v6;
  return result;
}

BOOL mlir::tensor::PadOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v28, a4);
    if (v28)
    {
      mlir::Diagnostic::operator<<<42ul>(v29, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "nofold", 6uLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        (a3)(&v28, a4);
        if (v28)
        {
          goto LABEL_35;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
        return 0;
      }

      *a1 = v11;
    }
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_high", 0xBuLL);
  if (v13)
  {
    v11 = *(v12 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v14 = v11[1], *(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v14[2] != 64)
      {
        (a3)(&v28, a4);
        if (!v28)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }

      a1[1] = v11;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_low", 0xAuLL);
  if (v16)
  {
    v11 = *(v15 + 8);
    if (v11)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v17 = v11[1];
        if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v17[2] == 64)
        {
          a1[2] = v11;
          goto LABEL_25;
        }
      }

      (a3)(&v28, a4);
      if (!v28)
      {
        goto LABEL_4;
      }

LABEL_35:
      if (v28)
      {
        v26 = 0;
        v27 = v11;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
        v24 = v30 + 24 * v31;
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++v31;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v19 & 1) == 0 || (v20 = *(v18 + 8)) == 0)
  {
    v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v22 & 1) == 0)
    {
      return 1;
    }

    v20 = *(v21 + 8);
    if (!v20)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 3, v20, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::tensor::PadOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "nofold";
    v21 = 6;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "static_high";
    v21 = 11;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "static_low";
    v21 = 10;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 3);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

unint64_t mlir::tensor::PadOp::computePropertiesHash(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v16 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v14 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = *(a1 + 28);
  v11 = __ROR8__(v10 + 12, 12);
  v13 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v10;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
}

unint64_t mlir::tensor::PadOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 <= 10)
  {
    if (a4 == 6)
    {
      if (*a3 != 1868984174 || *(a3 + 4) != 25708)
      {
        goto LABEL_37;
      }

      a1 = *a2;
    }

    else
    {
      v5 = 0;
      if (a4 != 10)
      {
        return v5 | a1;
      }

      if (*a3 != 0x6C5F636974617473 || *(a3 + 8) != 30575)
      {
        goto LABEL_37;
      }

      a1 = a2[2];
    }

LABEL_39:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
    return v5 | a1;
  }

  if (a4 == 11)
  {
    if (*a3 != 0x685F636974617473 || *(a3 + 3) != 0x686769685F636974)
    {
      goto LABEL_37;
    }

    a1 = a2[1];
    goto LABEL_39;
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

  v11 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v11)
  {
LABEL_37:
    LOBYTE(a1) = 0;
    v5 = 0;
    return v5 | a1;
  }

  a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 3);
  v5 = a1 & 0xFFFFFFFFFFFFFF00;
  return v5 | a1;
}

uint64_t *mlir::tensor::PadOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 10)
  {
    if (a3 == 6)
    {
      if (*a2 == 1868984174 && *(a2 + 4) == 25708)
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

        *result = v18;
      }
    }

    else if (a3 == 10 && *a2 == 0x6C5F636974617473 && *(a2 + 8) == 30575)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v9 = *(a4 + 8), *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v9[2] == 64)
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

      result[2] = v10;
    }
  }

  else if (a3 == 11)
  {
    if (*a2 == 0x685F636974617473 && *(a2 + 3) == 0x686769685F636974)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v12 = *(a4 + 8), *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v12[2] == 64)
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

      result[1] = v13;
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
      v14 = 1;
    }

    else
    {
      v14 = a4 == 0;
    }

    if (!v14 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v15 = *(a4 + 8);
      if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v15[2] == 32 && *(a4 + 16) == 3)
      {
        v16 = *(a4 + 32);
        if (v16 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v16 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::tensor::PadOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "nofold";
    v20 = 6;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_high";
    v20 = 11;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_low";
    v20 = 10;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 3);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::PadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v10, "nofold", 6, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_high", 0xB, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_low", 0xA, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::PadOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
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

    if (*(v8 + 16) >= 4)
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

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3uLL) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::PadOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 24, 3);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 16))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 3);
  }

  return result;
}

BOOL mlir::tensor::PadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 9);
  v4 = v3 + 64;
  if (!v6)
  {
    v31 = "requires attribute 'static_high'";
LABEL_32:
    v33 = v31;
    v34 = 259;
    mlir::Operation::emitOpError(v35, v2, &v33);
    v30 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    return v30;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v31 = "requires attribute 'static_low'";
    goto LABEL_32;
  }

  v35[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_low", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
  {
    return 0;
  }

  v35[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v6, "static_high", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
  {
    return 0;
  }

  v35[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v5, "nofold", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
  {
    return 0;
  }

  v8 = *this;
  v9 = *(*this + 11);
  v10 = (v9 >> 23) & 1;
  v11 = *(*this + 4 * v10 + 22);
  if ((v9 & 0x800000) != 0)
  {
    v12 = *(v8 + 9);
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_8:
      v13 = 0;
      v14 = v12 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
      {
        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          v8 = *this;
          v9 = *(*this + 11);
          v10 = (v9 >> 23) & 1;
          goto LABEL_12;
        }
      }

      return 0;
    }
  }

LABEL_12:
  v15 = v9 & 0x800000;
  v16 = v8 + 16 * v10;
  v17 = *(v16 + 23);
  if (v15)
  {
    v18 = *(v8 + 9);
    if (v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    if (v17)
    {
LABEL_14:
      v19 = *(v16 + 22);
      v20 = (v17 + v19) - v19;
      v21 = v18 + 32 * v19 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
      {
        LODWORD(v11) = v11 + 1;
        v21 += 32;
        if (!--v20)
        {
          v8 = *this;
          v22 = *(*this + 11);
          v10 = (v22 >> 23) & 1;
          v15 = v22 & 0x800000;
          goto LABEL_18;
        }
      }

      return 0;
    }
  }

LABEL_18:
  v23 = (v8 + 16 * v10);
  v24 = v23[24];
  if (v15)
  {
    v25 = *(v8 + 9);
    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v25 = 0;
    if (v24)
    {
LABEL_20:
      v26 = (v23[23] + v23[22]);
      v27 = (v24 + v26) - v26;
      v28 = v25 + 32 * v26 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v28 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
      {
        LODWORD(v11) = v11 + 1;
        v28 += 32;
        if (!--v27)
        {
          v8 = *this;
          goto LABEL_24;
        }
      }

      return 0;
    }
  }

LABEL_24:
  v29 = *(v8 + 9) ? v8 - 16 : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v8, (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  return mlir::tensor::__mlir_ods_local_region_constraint_TensorOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "region", 6, 0);
}

void mlir::tensor::PadOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v4 = v6;
  v5 = 1;
  v10[16] = v11;
  v10[17] = 0x400000000;
  v2 = 0;
  v3 = 0;
  v8 = v10;
  v9 = 0x400000000;
  operator new();
}

void mlir::tensor::PadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
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
    if ((*(v8 + 3) - v9) > 5)
    {
      *(v9 + 4) = 25708;
      *v9 = 1868984174;
      *(v8 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v8, "nofold", 6uLL);
    }
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
  if ((*(v12 + 3) - v13) > 2)
  {
    *(v13 + 2) = 119;
    *v13 = 28524;
    *(v12 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, "low", 3uLL);
  }

  v14 = *this;
  v15 = *(*this + 11);
  v16 = *this + 16 * ((v15 >> 23) & 1);
  if ((v15 & 0x800000) != 0)
  {
    v17 = v14[9];
  }

  else
  {
    v17 = 0;
  }

  mlir::printDynamicIndexList(a2, v14, v17 + 32 * *(v16 + 22), (*(v16 + 23) + *(v16 + 22)) - *(v16 + 22), *(*(v16 + 10) + 24), *(*(v16 + 10) + 32) >> 3, 0, 0, 2, 0, 2);
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
  if (*(v20 + 3) - v21 > 3uLL)
  {
    *v21 = 1751607656;
    *(v20 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v20, "high", 4uLL);
  }

  v22 = *this;
  v23 = *(*this + 11);
  v24 = *this + 16 * ((v23 >> 23) & 1) + 64;
  if ((v23 & 0x800000) != 0)
  {
    v26 = v22[9];
  }

  else
  {
    v26 = 0;
  }

  v25 = (*(v24 + 7) + *(v24 + 6));
  mlir::printDynamicIndexList(a2, v22, v26 + 32 * v25, (*(v24 + 8) + v25) - v25, *(*(v24 + 1) + 24), *(*(v24 + 1) + 32) >> 3, 0, 0, 2, 0, 2);
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

  v29 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v33 = *v29 == v29 || ((v30 = v29[1]) != 0 ? (v31 = v30 - 8) : (v31 = 0), (v32 = *(v31 + 32), *(mlir::Operation::getAttrDictionary(v32) + 16)) || (*(v32 + 46) & 0x80) != 0 && *(v32 + 68)) || *(v32 + 36) != 0;
  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, v33, 0);
  v48 = v50;
  v49 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "nofold", 6);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "static_low", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v48, "static_high", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v48, v49);
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

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) == v38)
  {
    llvm::raw_ostream::write(v37, ":", 1uLL);
  }

  else
  {
    *v38 = 58;
    ++*(v37 + 4);
  }

  v39 = (*(*a2 + 16))(a2);
  v40 = *(v39 + 4);
  if (v40 >= *(v39 + 3))
  {
    llvm::raw_ostream::write(v39, 32);
  }

  else
  {
    *(v39 + 4) = v40 + 1;
    *v40 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v41 = (*(*a2 + 16))(a2);
  v42 = *(v41 + 4);
  if (v42 >= *(v41 + 3))
  {
    llvm::raw_ostream::write(v41, 32);
  }

  else
  {
    *(v41 + 4) = v42 + 1;
    *v42 = 32;
  }

  v43 = (*(*a2 + 16))(a2);
  v44 = *(v43 + 4);
  if (*(v43 + 3) - v44 > 1uLL)
  {
    *v44 = 28532;
    *(v43 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v43, "to", 2uLL);
  }

  v45 = (*(*a2 + 16))(a2);
  v46 = *(v45 + 4);
  if (v46 >= *(v45 + 3))
  {
    llvm::raw_ostream::write(v45, 32);
  }

  else
  {
    *(v45 + 4) = v46 + 1;
    *v46 = 32;
  }

  v47 = *this - 16;
  if (!*(*this + 9))
  {
    v47 = 0;
  }

  (*(*a2 + 32))(a2, *(v47 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v48 != v50)
  {
    free(v48);
  }
}

BOOL mlir::tensor::ParallelInsertSliceOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a3)(&v30, a4);
    if (v30)
    {
      mlir::Diagnostic::operator<<<42ul>(v31, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_offsets", 0xEuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        (a3)(&v30, a4);
        if (v30)
        {
LABEL_37:
          mlir::Diagnostic::operator<<<60ul>(v31, v24);
LABEL_38:
          if (v30)
          {
            v28 = 0;
            v29 = v11;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v28, 1);
            v26 = v32 + 24 * v33;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v33;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        return 0;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_sizes", 0xCuLL);
  if (v14)
  {
    v11 = *(v13 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v11[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        (a3)(&v30, a4);
        if (v30)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

      a1[1] = v11;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_strides", 0xEuLL);
  if (v17)
  {
    v11 = *(v16 + 8);
    if (v11)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v18 = v11[1];
        if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v18[2] == 64)
        {
          a1[2] = v11;
          goto LABEL_25;
        }
      }

      (a3)(&v30, a4);
      if (v30)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v20 & 1) == 0 || (v21 = *(v19 + 8)) == 0)
  {
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL);
    if ((v23 & 1) == 0)
    {
      return 1;
    }

    v21 = *(v22 + 8);
    if (!v21)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 5, v21, a3, a4, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v22 = 261;
    v20 = "static_offsets";
    v21 = 14;
    v7 = mlir::StringAttr::get(v6, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v22 = 261;
    v20 = "static_sizes";
    v21 = 12;
    v10 = mlir::StringAttr::get(v9, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v22 = 261;
    v20 = "static_strides";
    v21 = 14;
    v13 = mlir::StringAttr::get(v12, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v15 = *(**v14 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v17 = mlir::StringAttr::get(v15, &v20, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v17, v14);
  if (v24)
  {
    v18 = mlir::DictionaryAttr::get(a1, v23, v24);
  }

  else
  {
    v18 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

unint64_t mlir::tensor::ParallelInsertSliceOp::computePropertiesHash(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v19 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = 0xB492B66FBE98F273 * v6;
  v10 = a1[4];
  v11 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v12 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30);
  v13 = __ROR8__(v9 - v10, 43) - 0x3C5A37A36834CED9 * *(a1 + 28);
  v14 = v9 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v11 + 20;
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) >> 47));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  v22 = 0;
  v23 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v20, 0, v20, v21, &v19, &v18, &v17, &v16);
}

unint64_t mlir::tensor::ParallelInsertSliceOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v12 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 5);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 12)
  {
    if (*a3 != 0x735F636974617473 || *(a3 + 2) != 1936030313)
    {
      goto LABEL_34;
    }

    a1 = a2[1];
    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 == 0x6F5F636974617473 && *(a3 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x735F636974617473 || *(a3 + 6) != 0x736564697274735FLL)
      {
LABEL_34:
        LOBYTE(a1) = 0;
        v5 = 0;
        return v5 | a1;
      }

      a1 = a2[2];
    }

LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

uint64_t *mlir::tensor::ParallelInsertSliceOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = *a2 ^ 0x53646E617265706FLL;
      v9 = a2[1] ^ 0x6953746E656D6765;
      v10 = *(a2 + 11);
      v11 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = *a2 ^ 0x5F646E617265706FLL;
      v9 = a2[1] ^ 0x5F746E656D676573;
      v10 = *(a2 + 13);
      v11 = 1935635566;
    }

    if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 5)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 12)
  {
    if (*a2 == 0x735F636974617473 && *(a2 + 2) == 1936030313)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
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
  }

  else if (a3 == 14)
  {
    if (*a2 == 0x6F5F636974617473 && *(a2 + 6) == 0x7374657366666F5FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v18 = *(a4 + 8), *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v18[2] == 64)
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

      *result = v19;
    }

    else if (*a2 == 0x735F636974617473 && *(a2 + 6) == 0x736564697274735FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = *(a4 + 8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v6[2] == 64)
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

      result[2] = v7;
    }
  }

  return result;
}

void mlir::tensor::ParallelInsertSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "static_offsets";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_sizes";
    v20 = 12;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_strides";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::ParallelInsertSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "static_offsets", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_sizes", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_strides", 0xE, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::ParallelInsertSliceOp::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v8 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v8))
    {
      return 0;
    }

    if (*(v8 + 16) >= 6)
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

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 5uLL) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 24, 5);
    (*(*a2 + 16))(a2, v5);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 5);
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v31 = "requires attribute 'static_offsets'";
LABEL_33:
    v33 = v31;
    v34 = 259;
    mlir::Operation::emitOpError(v35, v2, &v33);
    v30 = v36 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    return v30 & 1;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v31 = "requires attribute 'static_sizes'";
    goto LABEL_33;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    v31 = "requires attribute 'static_strides'";
    goto LABEL_33;
  }

  v35[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) || (v35[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35)) || (v35[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35)))
  {
LABEL_30:
    v30 = 0;
    return v30 & 1;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_12:
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_30;
  }

LABEL_16:
  v18 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  v22 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_30;
  }

LABEL_24:
  v26 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 4u);
  if (v27)
  {
    v28 = v27;
    v29 = v26 + 24;
    do
    {
      v30 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10);
      if ((v30 & 1) == 0)
      {
        break;
      }

      LODWORD(v10) = v10 + 1;
      v29 += 32;
      --v28;
    }

    while (v28);
  }

  else
  {
    v30 = 1;
  }

  return v30 & 1;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::parse(uint64_t a1, void *a2)
{
  v47[16] = *MEMORY[0x277D85DE8];
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  v45 = v47;
  v46 = 0x400000000;
  v29 = 0;
  v30 = 0;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  v27 = 0;
  v28 = 0;
  v26[0] = &v27;
  v26[1] = 1;
  v24[1] = 1;
  v25 = 0;
  v24[0] = &v25;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0 || (v38 = 257, ((*(*a1 + 400))(a1, "into", 4, v37) & 1) == 0) || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v32, 1) & 1) == 0) || ((*(*a1 + 40))(a1), v37[0] = 0, !mlir::parseDynamicIndexList(a1, &v45, &v30, v37, 0)) || (v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2), *v6 = v30, (*(*a1 + 40))(a1), v37[0] = 0, !mlir::parseDynamicIndexList(a1, &v42, &v29, v37, 0)) || (v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2), *(v7 + 8) = v29, (*(*a1 + 40))(a1), v37[0] = 0, !mlir::parseDynamicIndexList(a1, &v39, &v28, v37, 0)) || (v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2), *(v8 + 16) = v28, v23 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14) & 1) == 0) || (v9 = a2[1], v37[0] = a1, v37[1] = &v23, v37[2] = a2, !mlir::tensor::ParallelInsertSliceOp::verifyInherentAttrs(v9, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v37)) || ((*(*a1 + 104))(a1) & 1) == 0 || (v37[0] = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v37)) || (v27 = v37[0], v38 = 257, ((*(*a1 + 400))(a1, "into", 4, v37) & 1) == 0) || (v37[0] = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v37)) || (v25 = v37[0], v10 = v46, v11 = v43, v12 = v40, v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2), *(v13 + 24) = 0x100000001, *(v13 + 32) = v10, *(v13 + 36) = v11, *(v13 + 40) = v12, v14 = *(**(*(*a1 + 32))(a1) + 472), !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v26, v4, (a2 + 2))) || !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v24, v5, (a2 + 2)))
  {
LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  if (v46)
  {
    v15 = v45;
    v16 = 32 * v46;
    while (((*(*a1 + 728))(a1, v15, v14, a2 + 2) & 1) != 0)
    {
      v15 += 32;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_28;
  }

LABEL_19:
  if (v43)
  {
    v17 = v42;
    v18 = 32 * v43;
    while (((*(*a1 + 728))(a1, v17, v14, a2 + 2) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_28;
  }

LABEL_23:
  if (v40)
  {
    v19 = v39;
    v20 = 32 * v40;
    while (((*(*a1 + 728))(a1, v19, v14, a2 + 2) & 1) != 0)
    {
      v19 += 32;
      v21 = 1;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  v21 = 1;
LABEL_29:
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return v21;
}

void mlir::tensor::ParallelInsertSliceOp::print(mlir::tensor::ParallelInsertSliceOp *this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
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
  if (*(v8 + 3) - v9 > 3uLL)
  {
    *v9 = 1869901417;
    *(v8 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "into", 4uLL);
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

  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v13 = *this;
  v14 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 2u);
  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::printDynamicIndexList(a2, v13, v14, v16, *(v15 + 24), *(v15 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v19 = *this;
  v20 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 3u);
  v21 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::printDynamicIndexList(a2, v19, v20, v22, *(v21 + 24), *(v21 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v25 = *this;
  v26 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 4u);
  v27 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v25, v26, v28, *(v27 + 24), *(v27 + 32) >> 3, 0, 0, 2, 0, 2);
  v43 = v45;
  v44 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "static_offsets", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "static_sizes", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "static_strides", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v43, v44);
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
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v38 + 3) - v39 > 3uLL)
  {
    *v39 = 1869901417;
    *(v38 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v38, "into", 4uLL);
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

  v42 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v42 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v43 != v45)
  {
    free(v43);
  }
}

BOOL mlir::tensor::RankOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(*this, *(v4 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::RankOp::parse(uint64_t a1, uint64_t a2)
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v8 = v6;
  v6 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v6, v7);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::RankOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, 0);
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
}

BOOL mlir::tensor::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30[25] = *MEMORY[0x277D85DE8];
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v26 = 1;
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  if (!(*(v6 + 16))(v6, v3))
  {
    goto LABEL_9;
  }

  v7 = *v3;
  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  (*(v9 + 24))(v9, v3);
  if (v10 != 1)
  {
    goto LABEL_9;
  }

  v11 = *v3;
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  v14 = (*(v13 + 8))(v13, v3);
  v15 = *(*v14 + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v15 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (v14[2] >> 30)
  {
LABEL_9:
    v25 = 261;
    v24[0] = "operand";
    v24[1] = 7;
    mlir::Operation::emitOpError(&v29, v2, v24);
    if (v29)
    {
      mlir::Diagnostic::operator<<<3ul>(v30, " #");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v26);
    v17 = v16;
    if (*v16)
    {
      mlir::Diagnostic::operator<<<65ul>((v16 + 1), " must be 1D tensor of signless integer or index values, but got ");
      if (*v17)
      {
        v27 = 4;
        v28 = v3;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v27, 1);
        v19 = v17[3] + 24 * *(v17 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v17 + 8);
      }
    }

    v21 = *(v17 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

LABEL_16:
  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(v23 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::tensor::ReshapeOp::parse(uint64_t a1, uint64_t a2)
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

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

void mlir::tensor::ReshapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
    llvm::raw_ostream::write(v6, "(", 1uLL);
  }

  else
  {
    *v7 = 40;
    ++*(v6 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v24 = v26;
  v25 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v26, 0);
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

  v17 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v18 = *(v17 + 9);
    v19 = *(v17 + 17);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v23[0] = v18;
  v23[1] = 0;
  v23[2] = v18;
  v23[3] = v19;
  v20 = *(v17 + 9);
  v21 = v17 - 16;
  if (!v20)
  {
    v21 = 0;
  }

  v22[0] = v21;
  v22[1] = 0;
  v22[2] = v21;
  v22[3] = v20;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v23, v22);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::tensor::ScatterOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v21, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "scatter_dims", 0xCuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        a3(&v21, a4);
        if (!v21)
        {
          goto LABEL_4;
        }

        if (!v21)
        {
          goto LABEL_4;
        }

        v19 = 0;
        v20 = v11;
LABEL_20:
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
        v17 = v23 + 24 * v24;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v24;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
        return 0;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "unique", 6uLL);
  if (v14)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v21, a4);
        if (!v21)
        {
          goto LABEL_4;
        }

        if (!v21)
        {
          goto LABEL_4;
        }

        v19 = 0;
        v20 = v15;
        goto LABEL_20;
      }

      a1[1] = v15;
    }
  }

  return 1;
}

uint64_t mlir::tensor::ScatterOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "scatter_dims";
    v15 = 12;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v17, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "unique";
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

unint64_t mlir::tensor::ScatterOp::computePropertiesHash(void *a1)
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

unint64_t mlir::tensor::ScatterOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1902734965 || *(a3 + 4) != 25973)
    {
      goto LABEL_13;
    }

    v5 = a2[1];
LABEL_15:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  if (a4 == 12 && *a3 == 0x5F72657474616373 && *(a3 + 8) == 1936550244)
  {
    v5 = *a2;
    goto LABEL_15;
  }

LABEL_13:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

void *mlir::tensor::ScatterOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  else if (a3 == 12 && *a2 == 0x5F72657474616373 && *(a2 + 8) == 1936550244)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = a4[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v7[2] == 64)
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

void mlir::tensor::ScatterOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "scatter_dims";
    v12 = 12;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "unique";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::tensor::ScatterOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "scatter_dims", 0xC, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v13, "unique", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::ScatterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 1);
    v13[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "scatter_dims", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13) && (v13[0] = *this, mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13)) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps11(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v8 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = "requires attribute 'scatter_dims'";
    v12 = 259;
    mlir::Operation::emitOpError(v13, v2, &v11);
    v9 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v9;
}

BOOL mlir::tensor::ScatterOp::parse(uint64_t *a1, uint64_t a2)
{
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v23) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "scatter_dims", 12, &v23) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2);
    *v4 = v13;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "unique", 6))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2) + 8) = v5;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v23 = a1;
  v24 = &v10;
  v25 = a2;
  if (!mlir::tensor::ScatterOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v23))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10))
  {
    return 0;
  }

  v7 = *(v10 + 8);
  v11 = *(v10 + 16);
  v12 = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v11 + 8 * v7), (v11 + 8 * v7 + 8 * *(v10 + 12)));
  v23 = v20;
  v24 = v17;
  v25 = v14;
  v8 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v23, &v11, v8, a2 + 16);
}

void mlir::tensor::ScatterOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (*(v8 + 3) - v9 > 3uLL)
  {
    *v9 = 1869901417;
    *(v8 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "into", 4uLL);
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
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, "[", 1uLL);
  }

  else
  {
    *v13 = 91;
    ++*(v12 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "]", 1uLL);
  }

  else
  {
    *v15 = 93;
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
  if ((*(v18 + 3) - v19) > 0xB)
  {
    *(v19 + 8) = 1936550244;
    *v19 = *"scatter_dims";
    *(v18 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v18, "scatter_dims", 0xCuLL);
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

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
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
    if ((*(v26 + 3) - v27) > 5)
    {
      *(v27 + 4) = 25973;
      *v27 = 1902734965;
      *(v26 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v26, "unique", 6uLL);
    }
  }

  v42 = v44;
  v43 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v42, "scatter_dims", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v42, "unique", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v42, v43);
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
    llvm::raw_ostream::write(v31, ":", 1uLL);
  }

  else
  {
    *v32 = 58;
    ++*(v31 + 4);
  }

  v33 = (*(*a2 + 16))(a2);
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

  v35 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v36 = *(v35 + 9);
    v37 = *(v35 + 17);
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v41[0] = v36;
  v41[1] = 0;
  v41[2] = v36;
  v41[3] = v37;
  v38 = *(v35 + 9);
  v39 = v35 - 16;
  if (!v38)
  {
    v39 = 0;
  }

  v40[0] = v39;
  v40[1] = 0;
  v40[2] = v39;
  v40[3] = v38;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v41, v40);
  if (v42 != v44)
  {
    free(v42);
  }
}

unint64_t mlir::tensor::SplatOp::getODSOperandIndexAndLength(mlir::tensor::SplatOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor7SplatOp27getODSOperandIndexAndLengthEj_isVariadic;
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
  if (__const__ZN4mlir6tensor7SplatOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

BOOL mlir::tensor::SplatOp::verifyInvariantsImpl(mlir::tensor::SplatOp *this)
{
  v37 = *MEMORY[0x277D85DE8];
  ODSOperands = mlir::tensor::SplatOp::getODSOperands(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = ODSOperands + 24;
    do
    {
      v7 = *this;
      v8 = (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      v32 = v5;
      v9 = *v8;
      v10 = *(*v8 + 136);
      if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        if (!(v8[2] >> 30))
        {
          goto LABEL_14;
        }
      }

      else if (v10 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_14;
      }

      v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v9 + 8, v11))
      {
        v31 = 261;
        v30[0] = "operand";
        v30[1] = 7;
        mlir::Operation::emitOpError(&v35, v7, v30);
        if (v35)
        {
          mlir::Diagnostic::operator<<<3ul>(v36, " #");
        }

        v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v35, &v32);
        v13 = v12;
        if (*v12)
        {
          mlir::Diagnostic::operator<<<44ul>((v12 + 1), " must be integer/index/float type, but got ");
          if (*v13)
          {
            v33 = 4;
            v34 = v8;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v33, 1);
            v15 = v13[3] + 24 * *(v13 + 8);
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++*(v13 + 8);
          }
        }

        v17 = *(v13 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
        if (v17)
        {
          return 0;
        }
      }

LABEL_14:
      ++v5;
      v6 += 32;
    }

    while (v4 != v5);
  }

  v18 = mlir::tensor::SplatOp::getODSOperands(this, 1u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      LODWORD(v4) = v4 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

LABEL_19:
  if (*(*this + 36))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v23 = *this - 16;
  if (!*(*this + 36))
  {
    v23 = 0;
  }

  v24 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(*v24 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v29 = 24;
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v26 = 0;
      goto LABEL_33;
    }

    v29 = 8;
  }

  v26 = *(v24 + v29);
LABEL_33:
  v27 = 1;
  if (v26 != (*(*(mlir::tensor::SplatOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v30[0] = "failed to verify that operand type matches element type of result";
    v31 = 259;
    mlir::Operation::emitOpError(&v35, *this, v30);
    v27 = (v36[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  }

  return v27;
}

uint64_t mlir::tensor::SplatOp::getODSOperands(mlir::tensor::SplatOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::SplatOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::tensor::SplatOp::parse(uint64_t a1, uint64_t a2)
{
  v26[16] = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v24 = v26;
  v25 = 0x400000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((*(*a1 + 320))(a1))
  {
    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  v22 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v22))
  {
    goto LABEL_25;
  }

  v4 = v22;
  v18 = v22;
  __src = v22;
  v5 = *v22;
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v5 + 8, v8);
    (*(v9 + 8))(v9, v4);
    v10 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v20);
    v11 = *(*__src + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 24;
    }

    else
    {
      if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v12 = 0;
        goto LABEL_19;
      }

      v13 = 8;
    }

    v12 = *(__src + v13);
LABEL_19:
    if ((*(*a1 + 728))(a1, v20, v12, a2 + 16))
    {
      if (!v25)
      {
        v7 = 1;
        goto LABEL_26;
      }

      v14 = v24;
      v15 = 32 * v25;
      while (((*(*a1 + 728))(a1, v14, v10, a2 + 16) & 1) != 0)
      {
        v14 += 32;
        v7 = 1;
        v15 -= 32;
        if (!v15)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  v6 = (*(*a1 + 16))(a1);
  v17[16] = 257;
  (*(*a1 + 24))(&v22, a1, v6, v17);
  if (v22)
  {
    mlir::Diagnostic::operator<<<63ul>(v23, "'aggregate' must be ranked tensor of any type values, but got ");
    if (v22)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v23, &v18);
    }
  }

  v7 = (v23[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
LABEL_26:
  if (v24 != v26)
  {
    free(v24);
  }

  return v7;
}

void mlir::tensor::SplatOp::print(mlir::tensor::SplatOp *this, mlir::OpAsmPrinter *a2)
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

  ODSOperands = mlir::tensor::SplatOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  mlir::tensor::SplatOp::getODSOperands(this, 1u);
  if (v7)
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, "[", 1uLL);
    }

    else
    {
      *v9 = 91;
      ++*(v8 + 4);
    }

    v10 = mlir::tensor::SplatOp::getODSOperands(this, 1u);
    v12 = v11;
    v13 = (*(*a2 + 16))(a2);
    if (v12)
    {
      v14 = v13;
      (*(*a2 + 160))(a2, *(v10 + 24));
      v15 = v12 - 1;
      if (v15)
      {
        v16 = (v10 + 56);
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
      llvm::raw_ostream::write(v19, "]", 1uLL);
    }

    else
    {
      *v20 = 93;
      ++*(v19 + 4);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v29, 0);
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

  v28 = *this - 16;
  if (!*(*this + 36))
  {
    v28 = 0;
  }

  (*(*a2 + 32))(a2, *(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::tensor::detail::UnPackOpGenericAdaptorBase::UnPackOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

unint64_t mlir::tensor::UnPackOp::getODSOperandIndexAndLength(mlir::tensor::UnPackOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor8UnPackOp27getODSOperandIndexAndLengthEj_isVariadic;
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

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir6tensor8UnPackOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::tensor::UnPackOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "inner_dims_pos", 0xEuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        a3(&v25, a4);
        if (!v25)
        {
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "outer_dims_perm", 0xFuLL);
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(v13 + 8);
  if (!v11)
  {
    goto LABEL_18;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v15 = v11[1];
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v15[2] == 64)
    {
      a1[1] = v11;
LABEL_18:
      v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_inner_tiles", 0x12uLL);
      if ((v17 & 1) == 0)
      {
        return 1;
      }

      v18 = *(v16 + 8);
      if (!v18)
      {
        return 1;
      }

      if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v19 = v18[1];
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 64)
        {
          a1[2] = v18;
          return 1;
        }
      }

      a3(&v25, a4);
      if (!v25)
      {
        goto LABEL_4;
      }

      if (!v25)
      {
        goto LABEL_4;
      }

      v23 = 0;
      v24 = v18;
      goto LABEL_34;
    }
  }

  a3(&v25, a4);
  if (v25)
  {
LABEL_29:
    if (v25)
    {
      v23 = 0;
      v24 = v11;
LABEL_34:
      v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
      v21 = v27 + 24 * v28;
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++v28;
    }
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  return 0;
}

uint64_t mlir::tensor::UnPackOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "inner_dims_pos";
    v18 = 14;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "outer_dims_perm";
    v18 = 15;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "static_inner_tiles";
    v18 = 18;
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

unint64_t mlir::tensor::UnPackOp::computePropertiesHash(void *a1)
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

unint64_t mlir::tensor::UnPackOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 18)
  {
    if (*a3 != 0x695F636974617473 || *(a3 + 8) != 0x6C69745F72656E6ELL || *(a3 + 16) != 29541)
    {
      goto LABEL_23;
    }

    v5 = a2[2];
    goto LABEL_25;
  }

  if (a4 == 15)
  {
    if (*a3 != 0x69645F726574756FLL || *(a3 + 7) != 0x6D7265705F736D69)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
LABEL_25:
    v9 = v5 & 0xFFFFFFFFFFFFFF00;
    return v9 | v5;
  }

  if (a4 == 14 && *a3 == 0x69645F72656E6E69 && *(a3 + 6) == 0x736F705F736D6964)
  {
    v5 = *a2;
    goto LABEL_25;
  }

LABEL_23:
  LOBYTE(v5) = 0;
  v9 = 0;
  return v9 | v5;
}

void *mlir::tensor::UnPackOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 18)
  {
    if (*a2 == 0x695F636974617473 && *(a2 + 8) == 0x6C69745F72656E6ELL && *(a2 + 16) == 29541)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v10 = a4[1], *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v10[2] == 64)
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

  else if (a3 == 15)
  {
    if (*a2 == 0x69645F726574756FLL && *(a2 + 7) == 0x6D7265705F736D69)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = a4[1], *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v6[2] == 64)
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

  else if (a3 == 14 && *a2 == 0x69645F72656E6E69 && *(a2 + 6) == 0x736F705F736D6964)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v12 = a4[1], *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v12[2] == 64)
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

    *result = v13;
  }

  return result;
}

void mlir::tensor::UnPackOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "inner_dims_pos";
    v15 = 14;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "outer_dims_perm";
    v15 = 15;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "static_inner_tiles";
    v15 = 18;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::tensor::UnPackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "inner_dims_pos", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "outer_dims_perm", 0xF, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_inner_tiles", 0x12, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::tensor::UnPackOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 < 2)
  {
    return 0;
  }

  v12 = 1;
  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return v12;
}

uint64_t mlir::tensor::UnPackOp::verifyInvariantsImpl(unsigned int **this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  if (!v6)
  {
    v26 = "requires attribute 'inner_dims_pos'";
    goto LABEL_30;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v26 = "requires attribute 'static_inner_tiles'";
    goto LABEL_30;
  }

  v8 = *(v4 + 1);
  v30[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "outer_dims_perm", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    goto LABEL_27;
  }

  v30[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v5, "inner_dims_pos", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    goto LABEL_27;
  }

  v30[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_inner_tiles", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    goto LABEL_27;
  }

  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(this, 0);
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
    {
      ++v12;
      v13 += 32;
      if (v11 == v12)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_27;
  }

LABEL_10:
  v14 = mlir::tensor::UnPackOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = v14 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v11))
    {
      LODWORD(v11) = v11 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_27;
  }

LABEL_14:
  v18 = mlir::tensor::UnPackOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
    {
      LODWORD(v11) = v11 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

LABEL_18:
  v22 = (*this)[9] ? *this - 4 : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v22 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_27:
    v23 = 0;
    return v23 & 1;
  }

  v23 = 1;
  v24 = *(*(mlir::tensor::UnPackOp::getODSOperands(this, 1u) + 24) + 8);
  v2 = *this;
  if ((*this)[9])
  {
    v25 = *this - 4;
  }

  else
  {
    v25 = 0;
  }

  if ((*(v25 + 1) ^ v24) >= 8)
  {
    v26 = "failed to verify that result type matches type of dest";
LABEL_30:
    v28 = v26;
    v29 = 259;
    mlir::Operation::emitOpError(v30, v2, &v28);
    v23 = v31 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
  }

  return v23 & 1;
}

uint64_t mlir::tensor::UnPackOp::getODSOperands(mlir::tensor::UnPackOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::UnPackOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::tensor::UnPackOp::parse(uint64_t *a1, uint64_t a2)
{
  v40[16] = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  v29 = 0;
  v30 = 0;
  v38 = v40;
  v39 = 0x400000000;
  v28 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v23[1] = 1;
  v24 = 0;
  __src = 0;
  v23[0] = &v24;
  v21[0] = &__src;
  v21[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v32, 1) & 1) == 0)
  {
    goto LABEL_35;
  }

  if ((*(*a1 + 408))(a1, "outer_dims_perm", 15))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v30, 0))
    {
      goto LABEL_35;
    }

    if (v30)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
      *(v5 + 8) = v30;
    }
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "inner_dims_pos", 14, &v34) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v29, 0))
  {
    goto LABEL_35;
  }

  if (v29)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
    *v6 = v29;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "inner_tiles", 11, &v34) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  (*(*a1 + 40))(a1);
  v34 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v38, &v28, &v34, 0))
  {
    goto LABEL_35;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 16) = v28;
  v36 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v34) & 1) == 0)
  {
    goto LABEL_35;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v18[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_35;
  }

  v9 = *(a2 + 8);
  v34 = a1;
  v35[0] = v18;
  v35[1] = a2;
  if (!mlir::tensor::UnPackOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v34))
  {
    goto LABEL_35;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v34 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v34))
  {
    goto LABEL_35;
  }

  v24 = v34;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v34 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v34))
  {
    goto LABEL_35;
  }

  __src = v34;
  v20 = v34;
  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v12 = llvm::cast<mlir::ShapedType,mlir::Type>(&v20);
    (*(v13 + 8))(v13, v12);
    v14 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v23);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v23, v4, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v21, v8, a2 + 16))
    {
      if (!v39)
      {
        v11 = 1;
        goto LABEL_36;
      }

      v15 = v38;
      v16 = 32 * v39;
      while (((*(*a1 + 728))(a1, v15, v14, a2 + 16) & 1) != 0)
      {
        v15 += 32;
        v11 = 1;
        v16 -= 32;
        if (!v16)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    v11 = 0;
    goto LABEL_36;
  }

  v10 = (*(*a1 + 16))(a1);
  v19 = 257;
  (*(*a1 + 24))(&v34, a1, v10, v18);
  if (v34)
  {
    mlir::Diagnostic::operator<<<58ul>(v35, "'dest' must be ranked tensor of any type values, but got ");
    if (v34)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v35, &v20);
    }
  }

  v11 = (v37 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
LABEL_36:
  if (v38 != v40)
  {
    free(v38);
  }

  return v11;
}

void mlir::tensor::UnPackOp::print(mlir::tensor::UnPackOp *this, mlir::OpAsmPrinter *a2)
{
  v67[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v7 && v7 != mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
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

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0xEuLL)
    {
      qmemcpy(v11, "outer_dims_perm", 15);
      *(v10 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v10, "outer_dims_perm", 0xFuLL);
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

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72));
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
  if (*(v20 + 3) - v21 > 0xDuLL)
  {
    qmemcpy(v21, "inner_dims_pos", 14);
    *(v20 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v20, "inner_dims_pos", 0xEuLL);
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

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64));
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
  if ((*(v30 + 3) - v31) > 0xA)
  {
    *(v31 + 7) = 1936026729;
    *v31 = *"inner_tiles";
    *(v30 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v30, "inner_tiles", 0xBuLL);
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

  v38 = *this;
  v39 = mlir::tensor::UnPackOp::getODSOperands(this, 2u);
  v40 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v38, v39, v41, *(v40 + 24), *(v40 + 32) >> 3, 0, 0, 2, 0, 2);
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
  if (*(v44 + 3) - v45 > 3uLL)
  {
    *v45 = 1869901417;
    *(v44 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v44, "into", 4uLL);
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

  v48 = mlir::tensor::UnPackOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(v48 + 24));
  v65 = v67;
  v66 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "outer_dims_perm", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "inner_dims_pos", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "static_inner_tiles", 18);
  v49 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v49 && v49 == mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "outer_dims_perm", 15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v65, v66);
  v51 = (*(*a2 + 16))(a2);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  v53 = (*(*a2 + 16))(a2);
  v54 = *(v53 + 4);
  if (*(v53 + 3) == v54)
  {
    llvm::raw_ostream::write(v53, ":", 1uLL);
  }

  else
  {
    *v54 = 58;
    ++*(v53 + 4);
  }

  v55 = (*(*a2 + 16))(a2);
  v56 = *(v55 + 4);
  if (v56 >= *(v55 + 3))
  {
    llvm::raw_ostream::write(v55, 32);
  }

  else
  {
    *(v55 + 4) = v56 + 1;
    *v56 = 32;
  }

  v57 = mlir::tensor::UnPackOp::getODSOperands(this, 0);
  (*(*a2 + 32))(a2, *(*(v57 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (v59 >= *(v58 + 3))
  {
    llvm::raw_ostream::write(v58, 32);
  }

  else
  {
    *(v58 + 4) = v59 + 1;
    *v59 = 32;
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (*(v60 + 3) - v61 > 1uLL)
  {
    *v61 = 15917;
    *(v60 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v60, "->", 2uLL);
  }

  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (v63 >= *(v62 + 3))
  {
    llvm::raw_ostream::write(v62, 32);
  }

  else
  {
    *(v62 + 4) = v63 + 1;
    *v63 = 32;
  }

  v64 = mlir::tensor::UnPackOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v64 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v65 != v67)
  {
    free(v65);
  }
}

BOOL mlir::tensor::YieldOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::tensor::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, 0);
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
}

uint64_t mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

BOOL llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::contains(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    v2 = *a1;
    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = (v3 - 1) & (37 * a2);
      v5 = *(v2 + 8 * v4);
      if (v5 == a2)
      {
LABEL_4:
        v6 = v2 + 8 * v4;
        goto LABEL_16;
      }

      v12 = 1;
      while (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v4 + v12++;
        v4 = v13 & (v3 - 1);
        v5 = *(v2 + 8 * v4);
        if (v5 == a2)
        {
          goto LABEL_4;
        }
      }
    }

    v6 = 0;
LABEL_16:
    v14 = v2 + 8 * v3;
    if (v6)
    {
      v11 = v6 == v14;
    }

    else
    {
      v11 = 1;
    }

    return !v11;
  }

  v7 = a1[3];
  v8 = *(a1 + 8);
  v9 = &v7[v8];
  if (v8)
  {
    v10 = 8 * v8;
    while (*v7 != a2)
    {
      ++v7;
      v10 -= 8;
      if (!v10)
      {
        v7 = v9;
        break;
      }
    }
  }

  v11 = v7 == v9;
  return !v11;
}

void llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(uint64_t result, uint64_t *a2)
{
  if (*(result + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(result, a2, v12);
    if (v12[16] == 1)
    {
      llvm::SmallVectorTemplateBase<long long,true>::push_back(result + 24, *a2);
    }
  }

  else
  {
    v4 = (result + 24);
    v5 = *(result + 32);
    if (v5)
    {
      v6 = *a2;
      v7 = 8 * v5;
      v8 = *(result + 24);
      while (*v8 != v6)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v8 = *(result + 24);
    }

    if (v8 == (*(result + 24) + 8 * v5))
    {
      v6 = *a2;
LABEL_12:
      llvm::SmallVectorTemplateBase<long long,true>::push_back(result + 24, v6);
      v9 = *(result + 32);
      if (v9 >= 5)
      {
        v10 = *v4;
        v11 = 8 * v9;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(result, v10++, v12);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::complex::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "complex.constant";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(char ***a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::OperationState **a5)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(**a3 + 32));
  v24[0] = a3;
  v24[1] = v10;
  v24[2] = v25;
  v24[3] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[4] = v27;
  v26[5] = 0x400000000;
  v27[8] = 4;
  v27[9] = v28;
  v27[10] = 0x100000000;
  v28[1] = v29;
  v28[2] = 0x100000000;
  v29[1] = 0;
  v29[2] = 0;
  v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v29[4] = 0;
  v29[6] = 0;
  v11 = *a4;
  v23 = *a5;
  v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a3, &v23);
  mlir::tensor::DimOp::build(a1, v24, v11, v12 - 16);
  v13 = mlir::Operation::create(v24);
  v14 = v13;
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    *(v13 + 2) = v15;
    *(v13 + 8) = -1;
    v17 = *v16;
    *v13 = *v16;
    *(v13 + 1) = v16;
    *(v17 + 1) = v13;
    *v16 = v13;
  }

  if ((mlir::OpBuilder::tryFold(a1, v13, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v14 + 2))
    {
      *(v14 + 2) = 0;
      v19 = *v14;
      v18 = *(v14 + 1);
      *v18 = *v14;
      *(v19 + 8) = v18;
      *v14 = 0;
      *(v14 + 1) = 0;
    }

    mlir::Operation::destroy(v14);
  }

  else
  {
    v20 = *(v14 + 9);
    if (v20)
    {
      v21 = (v14 - 16);
    }

    else
    {
      v21 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v21, 0, v21, v20);
    if (a1[2])
    {
      v22 = a1[1];
      if (v22)
      {
        (*(*v22 + 2))(v22, v14, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v24);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.dim";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::EmptyOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.empty";
    v5[3] = 12;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void anonymous namespace::ChainedTensorBitcast::~ChainedTensorBitcast(_anonymous_namespace_::ChainedTensorBitcast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ChainedTensorBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
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

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
  {
    return 0;
  }

  v10 = *(a2 - 8);
  v11 = *(*(v7 + 72) + 24);
  v12 = *(a2 + 24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id, *(**v12 + 32));
  if ((v14 & 1) == 0)
  {
    v24 = 1283;
    v22 = "tensor.bitcast";
    v23 = 14;
    v19 = 259;
    llvm::operator+(&__src, v18, v25);
    llvm::report_fatal_error(v25, 1);
  }

  v25[0] = v12;
  v25[1] = v13;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28[0] = v29;
  v28[1] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  __src = (v10 & 0xFFFFFFFFFFFFFFF8);
  v18[0] = v11;
  v8 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, v18, 0, v18, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v28, &__src, v21);
  v15 = mlir::Operation::create(v25);
  mlir::OpBuilder::insert((a3 + 8), v15);
  v16 = *(*(v15 + 6) + 16);
  mlir::OperationState::~OperationState(v25);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  (*(*a3 + 8))(a3, a2, v17);
  return v8;
}