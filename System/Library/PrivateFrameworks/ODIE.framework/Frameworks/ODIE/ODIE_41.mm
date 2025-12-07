void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 8) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, void *), uint64_t a6)
{
  v17[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v16, a6, a2, a3);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if (v12 & 1) != 0 && (v13 = *(v11 + 8)) != 0 || (v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v15) && (v13 = *(v14 + 8)) != 0)
  {
    if ((convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3, 3, v13, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v12 = v14;
  v13 = 0x300000000;
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(v2, v3 + 64, 3);
  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "operandSegmentSizes";
  v10[1] = 19;
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = *(a2 + 4);
  v3 = 0x9DDFEA08EB382D69 * (*a2 ^ __ROR8__(v2 + 12, 12) ^ 0xFF51AFD7ED558CCDLL);
  v4 = __ROR8__(v2 + 12, 12) ^ (v3 >> 47);
  v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ v3)) >> 47))) ^ v2;
  v6 = 8 * v5 + 8;
  v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(a2);
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
      memmove(v3, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3uLL) & 1) != 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 3);
    (*(*a3 + 16))(a3, v6);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[7] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64[4] = *MEMORY[0x277D85DE8];
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
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 3uLL)
  {
    *v12 = 1752459639;
    *(v11 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v11, "with", 4uLL);
  }

  v13 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8))
  {
    v14 = (*(*a3 + 16))(a3);
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

    v16 = *(a2 + 44);
    v17 = (v13 + 16 * ((v16 >> 23) & 1));
    v18 = v17[2];
    if ((v16 & 0x800000) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    v20 = *v17;
    v21 = v17[1];
    v22 = (*(*a3 + 16))(a3);
    if (v18)
    {
      v23 = v22;
      v24 = (v21 + v20);
      v25 = (v18 + v24);
      v26 = v19 + 32 * v24;
      (*(*a3 + 160))(a3, *(v26 + 24));
      if (v25 - v24 != 1)
      {
        v27 = ~v24 + v25;
        v28 = (v26 + 56);
        do
        {
          v29 = *(v23 + 4);
          if (*(v23 + 3) - v29 > 1uLL)
          {
            *v29 = 8236;
            *(v23 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v23, ", ", 2uLL);
          }

          v30 = *v28;
          v28 += 4;
          (*(*a3 + 160))(a3, v30);
          --v27;
        }

        while (v27);
      }
    }

    v31 = (*(*a3 + 16))(a3);
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

    v33 = (*(*a3 + 16))(a3);
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

    v35 = (*(*a3 + 16))(a3);
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

    v37 = *(a2 + 44);
    v38 = (v13 + 16 * ((v37 >> 23) & 1));
    v39 = v38[2];
    if ((v37 & 0x800000) != 0)
    {
      v40 = *(a2 + 72);
      if (v39)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v40 = 0;
      if (v39)
      {
LABEL_34:
        v41 = (v38[1] + *v38);
        v42 = (v39 + v41);
        v43 = v40 + 32 * v41;
        (*(*a3 + 32))(a3, *(*(v43 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v42 - v41 != 1)
        {
          v44 = ~v41 + v42;
          v45 = (v43 + 56);
          do
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

            v48 = *v45;
            v45 += 4;
            (*(*a3 + 32))(a3, *(v48 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v44;
          }

          while (v44);
        }
      }
    }

    v49 = (*(*a3 + 16))(a3);
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

  v51 = *(a2 + 44);
  v52 = (v13 + 16 * ((v51 >> 23) & 1));
  v53 = v52[1];
  if ((v51 & 0x800000) != 0)
  {
    v54 = *(a2 + 72);
    if (!v53)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v54 = 0;
    if (!v53)
    {
      goto LABEL_53;
    }
  }

  if (!*(v54 + 32 * *v52 + 24))
  {
    goto LABEL_53;
  }

  v55 = (*(*a3 + 16))(a3);
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

  v57 = *(a2 + 44);
  v58 = (v13 + 16 * ((v57 >> 23) & 1));
  v59 = v58[1];
  if ((v57 & 0x800000) != 0)
  {
    v60 = *(a2 + 72);
    if (!v59)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v60 = 0;
    if (!v59)
    {
      goto LABEL_53;
    }
  }

  if (*(v60 + 32 * *v58 + 24))
  {
    (*(*a3 + 160))(a3);
  }

LABEL_53:
  v62 = v64;
  v63 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v62, "operandSegmentSizes", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v62, v63);
  if (v62 != v64)
  {
    free(v62);
  }
}

uint64_t mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5))
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    v24 = 257;
    mlir::Operation::emitOpError(&v26, a1, v23);
    if (v26)
    {
      mlir::Diagnostic::operator<<<19ul>(v27, "expects parent op ");
    }

    v22 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v26, &v22);
    v25[0] = "pdl.rewrite";
    v25[1] = 11;
    v21[0] = v25;
    v21[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v21);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
    if (v12)
    {
      goto LABEL_25;
    }
  }

  v26 = a1;
  if ((mlir::pdl::ReplaceOp::verifyInvariantsImpl(&v26) & 1) == 0)
  {
LABEL_25:
    v19 = 0;
    return v19 & 1;
  }

  v13 = *(a1 + 44);
  v14 = a1 + 16 * ((v13 >> 23) & 1);
  v16 = *(v14 + 64);
  v17 = *(v14 + 68);
  v15 = v14 + 64;
  if ((v13 & 0x800000) == 0)
  {
    v18 = 0;
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_29:
    v19 = 1;
    return v19 & 1;
  }

  v18 = *(a1 + 72);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (!*(v18 + 32 * v16 + 24) || !*(v15 + 8))
  {
    goto LABEL_29;
  }

  v24 = 257;
  mlir::Operation::emitOpError(&v26, a1, v23);
  if (v26)
  {
    mlir::Diagnostic::operator<<<88ul>(v27, "expected no replacement values to be provided when the replacement operation is present");
  }

  v19 = v27[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  return v19 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::pdl::ResultOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "pdl.result", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E81EF0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1701080681 && v6 == 120)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "index", 5uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "index";
  v10[1] = 5;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::pdl::ResultOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[9] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v9 = (*(*a3 + 16))(a3);
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

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 1uLL)
  {
    *v12 = 26223;
    *(v11 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "of", 2uLL);
  }

  v13 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v16 = v18;
  v17 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v16, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, v17);
  if (v16 != v18)
  {
    free(v16);
  }
}

uint64_t mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    v10 = "requires attribute 'index'";
    v11 = 259;
    mlir::Operation::emitOpError(v12, a1, &v10);
    v8 = v13 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    return v8 & 1;
  }

  v12[0] = a1;
  if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v7 = a1 - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(a1, *(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  return v8 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultsOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultsOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::pdl::ResultsOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultsOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultsOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultsOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultsOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultsOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "pdl.results", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E81FB8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1701080681 && v6 == 120)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "index", 5uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "index";
  v10[1] = 5;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultsOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultsOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::pdl::ResultsOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultsOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultsOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultsOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultsOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[9] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[377];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>();
    unk_27FC18BE0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<Empty>]";
  v6 = 124;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
    v8 = (*(*a3 + 16))(a3);
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

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1)));
  }

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
  if (*(v12 + 3) - v13 > 1uLL)
  {
    *v13 = 26223;
    *(v12 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "of", 2uLL);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
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

  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  if (*(v7 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
    v19 = *(v18 + 8);
    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 3uLL)
    {
      *v21 = 540945696;
      *(v20 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v20, " -> ", 4uLL);
    }

    (*(*a3 + 32))(a3, v19 & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = v25;
  v24 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_19;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  v27 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v27) || !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 36) ? a1 - 16 : 0;
  v8 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v22) = 0;
  v9 = (*v8)[17];
  if (v9 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*v8[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    goto LABEL_21;
  }

  v24 = 261;
  v23[0] = "result";
  v23[1] = 6;
  mlir::Operation::emitOpError(&v27, a1, v23);
  if (v27)
  {
    mlir::Diagnostic::operator<<<3ul>(v28, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v22);
  v11 = v10;
  if (*v10)
  {
    if (*v11)
    {
      v25 = 4;
      v26 = v8;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v25, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
    }
  }

  v15 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  if (v15 != 1)
  {
LABEL_21:
    v22 = a1;
    if (!(mlir::pdl::ResultsOp::getIndex(&v22) >> 32) && *(*(*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      v24 = 257;
      mlir::Operation::emitOpError(&v27, a1, v23);
      if (v27)
      {
        if (v27)
        {
          v18 = *(a1 - 8) & 0xFFFFFFFFFFFFFFF8;
          v25 = 4;
          v26 = v18;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
          v20 = v29 + 24 * v30;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v30;
        }
      }

      v16 = v31 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
LABEL_19:
    v16 = 0;
  }

  return v16 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(v5);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "pdl.rewrite", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E82080;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 21)
  {
    v7 = *(a3 + 13);
    v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v9 = 1935635566;
LABEL_14:
    v10 = v9 | 0x73657A6900000000;
    if (v8 && v7 == v10)
    {
      v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72, 2);
      v6 = v5 & 0xFFFFFFFFFFFFFF00;
      return v6 | v5;
    }

    goto LABEL_18;
  }

  if (a4 == 19)
  {
    v7 = *(a3 + 11);
    v8 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v9 = 1400139365;
    goto LABEL_14;
  }

  if (a4 != 4 || *a3 != 1701667182)
  {
LABEL_18:
    LOBYTE(v5) = 0;
    v6 = 0;
    return v6 | v5;
  }

  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF00;
  return v6 | v5;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 21)
  {
    v7 = *v4 ^ 0x5F646E617265706FLL;
    v8 = v4[1] ^ 0x5F746E656D676573;
    v9 = *(v4 + 13);
    v10 = 1935635566;
  }

  else
  {
    if (v5 != 19)
    {
      if (v5 == 4 && *v4 == 1701667182)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v6;
      }

      return result;
    }

    v7 = *v4 ^ 0x53646E617265706FLL;
    v8 = v4[1] ^ 0x6953746E656D6765;
    v9 = *(v4 + 11);
    v10 = 1400139365;
  }

  if (v7 | v8 | v9 ^ (v10 | 0x73657A6900000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = a4 == 0;
  }

  if (!v11 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v12 = *(a4 + 8);
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12[2] == 32 && *(a4 + 16) == 2)
    {
      v13 = *(a4 + 32);
      if (v13 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72), *(a4 + 24), v13 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v17 = 261;
    v15 = "name";
    v16 = 4;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 8, 2);
  v12 = *(**v11 + 32);
  v17 = 261;
  v15 = "operandSegmentSizes";
  v16 = 19;
  v14 = mlir::StringAttr::get(v12, &v15, v13);
  mlir::NamedAttrList::push_back(a3, v14, v11);
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v24, a6, a2, a3);
    if (v24)
    {
      mlir::Diagnostic::operator<<<42ul>(v25, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    return 0;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "name", 4uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a5(&v24, a6);
        if (v24)
        {
          if (v24)
          {
            v22 = 0;
            v23 = v13;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
            v15 = v26 + 24 * v27;
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++v27;
          }
        }

        goto LABEL_4;
      }

      *a3 = v13;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if (v18 & 1) != 0 && (v19 = *(v17 + 8)) != 0 || (v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v21) && (v19 = *(v20 + 8)) != 0)
  {
    if ((convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 1, 2, v19, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v19 = v21;
  v20 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v18 = 261;
    v16 = "name";
    v17 = 4;
    v9 = mlir::StringAttr::get(v8, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v9, v5);
  }

  v10 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 8, 2);
  v11 = *(**v10 + 32);
  v18 = 261;
  v16 = "operandSegmentSizes";
  v17 = 19;
  v13 = mlir::StringAttr::get(v11, &v16, v12);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v13, v10);
  if (v20)
  {
    v14 = mlir::DictionaryAttr::get(v3, v19, v20);
  }

  else
  {
    v14 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = *(a2 + 12) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * *(a2 + 8) + 8));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v9, 0, v9, v10, &v8, &v7);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3))
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
      memmove(v3 + 1, *(v8 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 2, 2uLL) & 1) != 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 8, 2);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 8), 2);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[12] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v58[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v55 = v6;
  v7 = *(v6 + 11);
  v8 = (v7 >> 23) & 1;
  v9 = *(v6 + 4 * v8 + 18);
  if ((v7 & 0x800000) != 0)
  {
    v10 = *(v6 + 9);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (*(v10 + 24))
  {
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
      v6 = v55;
    }

    v13 = *(v6 + 11);
    v8 = (v13 >> 23) & 1;
    v14 = *(v6 + 4 * v8 + 18);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(v6 + 9);
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    if (*(v15 + 24))
    {
      (*(*a3 + 160))(a3);
      v8 = (*(v6 + 11) >> 23) & 1;
    }
  }

LABEL_11:
  if (*(v6 + 2 * v8 + 8))
  {
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
    if (*(v18 + 3) - v19 > 3uLL)
    {
      *v19 = 1752459639;
      *(v18 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v18, "with", 4uLL);
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

    (*(*a3 + 48))(a3, *(v55 + 2 * ((*(v55 + 11) >> 23) & 1) + 8));
    mlir::pdl::RewriteOp::getODSOperands(&v55, 1u);
    if (v22)
    {
      v23 = (*(*a3 + 16))(a3);
      v24 = *(v23 + 4);
      if (*(v23 + 3) == v24)
      {
        llvm::raw_ostream::write(v23, "(", 1uLL);
      }

      else
      {
        *v24 = 40;
        ++*(v23 + 4);
      }

      ODSOperands = mlir::pdl::RewriteOp::getODSOperands(&v55, 1u);
      v27 = v26;
      v28 = (*(*a3 + 16))(a3);
      if (v27)
      {
        v29 = v28;
        (*(*a3 + 160))(a3, *(ODSOperands + 24));
        v30 = v27 - 1;
        if (v30)
        {
          v31 = (ODSOperands + 56);
          do
          {
            v32 = *(v29 + 4);
            if (*(v29 + 3) - v32 > 1uLL)
            {
              *v32 = 8236;
              *(v29 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v29, ", ", 2uLL);
            }

            v33 = *v31;
            v31 += 4;
            (*(*a3 + 160))(a3, v33);
            --v30;
          }

          while (v30);
        }
      }

      v34 = (*(*a3 + 16))(a3);
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

      v36 = (*(*a3 + 16))(a3);
      v37 = *(v36 + 4);
      if (*(v36 + 3) == v37)
      {
        llvm::raw_ostream::write(v36, ":", 1uLL);
      }

      else
      {
        *v37 = 58;
        ++*(v36 + 4);
      }

      v38 = (*(*a3 + 16))(a3);
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

      v40 = mlir::pdl::RewriteOp::getODSOperands(&v55, 1u);
      if (v41)
      {
        v42 = v40;
        v43 = v41;
        (*(*a3 + 32))(a3, *(*(v40 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v44 = v43 - 1;
        if (v44)
        {
          v45 = (v42 + 56);
          do
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

            v48 = *v45;
            v45 += 4;
            (*(*a3 + 32))(a3, *(v48 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v44;
          }

          while (v44);
        }
      }

      v49 = (*(*a3 + 16))(a3);
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
  }

  v51 = (((v55 + 16 * ((*(v55 + 11) >> 23) & 1) + ((*(v55 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v55 + 10));
  if (*v51 != v51)
  {
    v52 = (*(*a3 + 16))(a3);
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

    (*(*a3 + 224))(a3, ((v55 + 16 * ((*(v55 + 11) >> 23) & 1) + ((*(v55 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v55 + 10), 1, 1, 0);
  }

  v56 = v58;
  v57 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v56, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v56, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(v55);
  (*(*a3 + 200))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v56, v57);
  if (v56 != v58)
  {
    free(v56);
  }
}

uint64_t mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v30[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_30;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id)
  {
    v27 = 257;
    mlir::Operation::emitOpError(&v29, a1, v26);
    if (v29)
    {
      mlir::Diagnostic::operator<<<19ul>(v30, "expects parent op ");
    }

    v25 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v29, &v25);
    v28[0] = "pdl.pattern";
    v28[1] = 11;
    v24[0] = v28;
    v24[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v24);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    if (v12)
    {
      goto LABEL_30;
    }
  }

  if ((mlir::OpTrait::impl::verifyNoRegionArguments(a1, v5) & 1) == 0)
  {
    goto LABEL_30;
  }

  v13 = *(a1 + 44);
  if ((v13 & 0x7FFFFF) != 0)
  {
    v14 = 0;
    v15 = (((a1 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    while (1)
    {
      if (v15 != *v15)
      {
        v16 = v15[1];
        if (v15 == v16 || v15 != *(v16 + 8))
        {
          break;
        }
      }

      ++v14;
      v15 += 3;
      if ((v13 & 0x7FFFFF) == v14)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v24[0]) = v14;
    v26[0] = "expects region #";
    v27 = 259;
    mlir::Operation::emitOpError(&v29, a1, v26);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, v24);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<23ul>((v17 + 1), " to have 0 or 1 blocks");
    }

    v19 = *(v18 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    if (v19)
    {
      goto LABEL_30;
    }

    LODWORD(v13) = *(a1 + 44);
  }

LABEL_25:
  v20 = (v13 & 0x800000) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v20) || (v29 = a1, (mlir::pdl::RewriteOp::verifyInvariantsImpl(&v29) & 1) == 0))
  {
LABEL_30:
    IsTerminator = 0;
    return IsTerminator & 1;
  }

  IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v21);
  return IsTerminator & 1;
}

uint64_t mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants(mlir::Operation *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 10);
  v1 = *(a1 + 11);
  v3 = (a1 + 16 * ((v1 >> 23) & 1));
  v4 = *(v3 + 8);
  v9 = a1;
  v5 = (((v3 + ((v1 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v2);
  if (v4)
  {
    if (*v5 != v5)
    {
      v11 = 257;
      mlir::Operation::emitOpError(&v12, a1, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<61ul>(v13, "expected rewrite region to be empty when rewrite is external");
      }

LABEL_12:
      v6 = v13[192] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
      return v6 & 1;
    }

    v6 = 1;
  }

  else
  {
    if (*v5 == v5)
    {
      v11 = 257;
      mlir::Operation::emitOpError(&v12, a1, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<74ul>(v13, "expected rewrite region to be non-empty if external name is not specified");
      }

      goto LABEL_12;
    }

    v6 = 1;
    mlir::pdl::RewriteOp::getODSOperands(&v9, 1u);
    if (v7)
    {
      v11 = 257;
      mlir::Operation::emitOpError(&v12, v9, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<68ul>(v13, "expected no external arguments when the rewrite is specified inline");
      }

      goto LABEL_12;
    }
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "pdl.type", 8, a2, &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E82148;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x746E6174736E6F63 ? (v4 = *(a3 + 8) == 1701869908) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 12)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 0x746E6174736E6F63 && v6 == 1701869908)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "constantType";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constantType", 0xCuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "constantType";
  v10[1] = 12;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[388];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>();
    *algn_27FC18C38 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v14 = v16;
  v15 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v14, "constantType", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, v15);
  if (*(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8))
  {
    v8 = (*(*a3 + 16))(a3);
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

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, ":", 1uLL);
    }

    else
    {
      *v11 = 58;
      ++*(v10 + 4);
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

    (*(*a3 + 48))(a3, *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8));
  }

  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8), v10 = a1, mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && (*(a1 + 9) ? (v7 = a1 - 16) : (v7 = 0), mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(a1, *(v7 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
  {
    if (*(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8))
    {
      HasBindingUse = 1;
    }

    else
    {
      HasBindingUse = verifyHasBindingUse(a1);
    }
  }

  else
  {
    HasBindingUse = 0;
  }

  return HasBindingUse & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "pdl.types", 9, a2, &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E82210;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x746E6174736E6F63 ? (v4 = *(a3 + 5) == 0x7365707954746E61) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 13)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 5);
    if (v5 == 0x746E6174736E6F63 && v6 == 0x7365707954746E61)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "constantTypes";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constantTypes", 0xDuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "constantTypes";
  v10[1] = 13;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v14 = v16;
  v15 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v14, "constantTypes", 13);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, v15);
  if (*(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8))
  {
    v8 = (*(*a3 + 16))(a3);
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

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, ":", 1uLL);
    }

    else
    {
      *v11 = 58;
      ++*(v10 + 4);
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

    (*(*a3 + 48))(a3, *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8));
  }

  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8), v10 = a1, mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && (*(a1 + 9) ? (v7 = a1 - 16) : (v7 = 0), mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(a1, (*(v7 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    if (*(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8))
    {
      HasBindingUse = 1;
    }

    else
    {
      HasBindingUse = verifyHasBindingUse(a1);
    }
  }

  else
  {
    HasBindingUse = 0;
  }

  return HasBindingUse & 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>(mlir::Operation ***a1, uint64_t a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v3 + 8) + 32);
  }

  else
  {
    v4 = (v3 + 24);
  }

  v5 = *a1;
  v6 = *v4;
  if (!v6 || *(v6 + 24) != &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    v9 = 259;
    mlir::Operation::emitOpError(&v10, *v5, &v8);
    mlir::Diagnostic::attachNote(v11, *(a2 + 24), 1);
  }

  return 1;
}

uint64_t mlir::Diagnostic::operator<<<78ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<74ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E808))
  {
    qword_27FC1E7F8 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>();
    unk_27FC1E800 = v1;
    __cxa_guard_release(&qword_27FC1E808);
  }

  return qword_27FC1E7F8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::BoolAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BoolAttr]";
  v6 = 76;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E830))
  {
    qword_27FC1E820 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>();
    *algn_27FC1E828 = v1;
    __cxa_guard_release(&qword_27FC1E830);
  }

  return qword_27FC1E820;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E858))
  {
    qword_27FC1E848 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1E850 = v1;
    __cxa_guard_release(&qword_27FC1E858);
  }

  return qword_27FC1E848;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E880))
  {
    qword_27FC1E870 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>();
    *algn_27FC1E878 = v1;
    __cxa_guard_release(&qword_27FC1E880);
  }

  return qword_27FC1E870;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

const char *llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<int>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int32_t>]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E8A8))
  {
    qword_27FC1E898 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>();
    unk_27FC1E8A0 = v1;
    __cxa_guard_release(&qword_27FC1E8A8);
  }

  return qword_27FC1E898;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::PatternOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E8D0))
  {
    qword_27FC1E8C0 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>();
    *algn_27FC1E8C8 = v1;
    __cxa_guard_release(&qword_27FC1E8D0);
  }

  return qword_27FC1E8C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E8F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E8F8))
  {
    qword_27FC1E8E8 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>();
    unk_27FC1E8F0 = v1;
    __cxa_guard_release(&qword_27FC1E8F8);
  }

  return qword_27FC1E8E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E920))
  {
    qword_27FC1E910 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>();
    *algn_27FC1E918 = v1;
    __cxa_guard_release(&qword_27FC1E920);
  }

  return qword_27FC1E910;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E948))
  {
    qword_27FC1E938 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>();
    unk_27FC1E940 = v1;
    __cxa_guard_release(&qword_27FC1E948);
  }

  return qword_27FC1E938;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::RewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E970))
  {
    qword_27FC1E960 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>();
    *algn_27FC1E968 = v1;
    __cxa_guard_release(&qword_27FC1E970);
  }

  return qword_27FC1E960;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseAttribute<mlir::TypeAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v12 = 0;
  if (((*(*a1 + 440))(a1, &v12, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v12;
  if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = 1;
  if (!v7)
  {
    v10 = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v6, &v10);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v8;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E998))
  {
    qword_27FC1E988 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>();
    unk_27FC1E990 = v1;
    __cxa_guard_release(&qword_27FC1E998);
  }

  return qword_27FC1E988;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t mlir::pdl::PDLDialect::parseType(uint64_t a1, mlir::AsmParser *a2)
{
  v16[25] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if ((generatedTypeParser(a2, &v10, &v9) & 0x100) != 0)
  {
    return v9;
  }

  v8[16] = 257;
  (*(*a2 + 24))(&v15, a2, v4, v8);
  if (v15)
  {
    if (v15)
    {
      v14 = 261;
      v12 = v10;
      v13 = v11;
      mlir::Diagnostic::operator<<(v16, &v12);
      if (v15)
      {
        if (v15)
        {
          v5 = *(a1 + 8);
          v6 = *(a1 + 16);
          v14 = 261;
          v12 = v5;
          v13 = v6;
          mlir::Diagnostic::operator<<(v16, &v12);
          if (v15)
          {
          }
        }
      }
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return 0;
}

uint64_t generatedTypeParser(mlir::AsmParser *a1, llvm::StringRef *a2, mlir::Type *a3)
{
  v37[25] = *MEMORY[0x277D85DE8];
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v23, a1, 0);
  v36 = "attribute";
  v37[0] = 9;
  if (v26[2])
  {
    return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
  }

  v6 = v25;
  if (v25 == 9)
  {
    if (*v24 == 0x7475626972747461 && *(v24 + 8) == 101)
    {
      v11 = *(**(*(*a1 + 32))(a1) + 384);
      v12 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
      goto LABEL_52;
    }

    goto LABEL_16;
  }

  if (v25)
  {
LABEL_16:
    v36 = "operation";
    v37[0] = 9;
    goto LABEL_17;
  }

  (*(*v23[0] + 648))(v23[0], &v36, 1);
  v36 = "operation";
  v37[0] = 9;
  if (v26[2])
  {
    return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
  }

  v6 = v25;
  if (v25)
  {
LABEL_17:
    if (v6 == 9 && *v24 == 0x6F6974617265706FLL && *(v24 + 8) == 110)
    {
      v11 = *(**(*(*a1 + 32))(a1) + 384);
      v12 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
      goto LABEL_52;
    }

    v27 = "range";
    v28 = 5;
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  (*(*v23[0] + 648))(v23[0], &v36, 1);
  v27 = "range";
  v28 = 5;
  if (v26[2])
  {
    return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
  }

  v6 = v25;
  if (!v25)
  {
LABEL_8:
    (*(*v23[0] + 648))(v23[0], &v27, 1);
    v36 = "type";
    v37[0] = 4;
    if (v26[2])
    {
      return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
    }

    v6 = v25;
    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (v6 == 5 && *v24 == 1735287154 && *(v24 + 4) == 101)
  {
    if ((*(*a1 + 152))(a1))
    {
      v13 = (*(*a1 + 40))(a1);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      if ((generatedTypeParser(a1, &v31, &v33) & 0x100) != 0)
      {
        v20 = v33;
        v29[0] = v33;
        if (!v33 || ((*(*a1 + 168))(a1) & 1) == 0)
        {
          goto LABEL_62;
        }

        v21 = *v20;
        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          v36 = v20;
          v22 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(*v21 + 32), &v36);
LABEL_63:
          *a3 = v22;
          v17 = v22 == 0;
          goto LABEL_53;
        }

        v35 = 257;
        (*(*a1 + 24))(&v36, a1, v13, v34);
        if (v36)
        {
          mlir::Diagnostic::operator<<<54ul>(v37, "element of pdl.range cannot be another range, but got");
          if (v36)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v37, v29);
          }
        }
      }

      else
      {
        v14 = (*(*a1 + 16))(a1);
        v30 = 259;
        (*(*a1 + 24))(&v36, a1, v14, v29);
        if (v36)
        {
          v35 = 261;
          v34[0] = v31;
          v34[1] = v32;
          mlir::Diagnostic::operator<<(v37, v34);
          if (v36)
          {
            mlir::Diagnostic::operator<<<2ul>(v37, "'");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    }

LABEL_62:
    v22 = 0;
    goto LABEL_63;
  }

  v36 = "type";
  v37[0] = 4;
  if (v6)
  {
LABEL_29:
    if (v6 != 4 || *v24 != 1701869940)
    {
      v36 = "value";
      v37[0] = 5;
      goto LABEL_32;
    }

    v11 = *(**(*(*a1 + 32))(a1) + 384);
    v12 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
LABEL_52:
    v34[0] = v12;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v34);
    v16 = *v15;
    *a3 = *v15;
    v17 = v16 == 0;
LABEL_53:
    v18 = !v17;
    v26[0] = v18;
    *&v26[1] = 257;
    return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
  }

LABEL_10:
  (*(*v23[0] + 648))(v23[0], &v36, 1);
  v36 = "value";
  v37[0] = 5;
  if (v26[2])
  {
    return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
  }

  v6 = v25;
LABEL_32:
  if (v6)
  {
    if (v6 != 5)
    {
      goto LABEL_44;
    }

    if (*v24 != 1970037110 || *(v24 + 4) != 101)
    {
      goto LABEL_44;
    }

    v11 = *(**(*(*a1 + 32))(a1) + 384);
    v12 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
    goto LABEL_52;
  }

  (*(*v23[0] + 648))(v23[0], &v36, 1);
  if ((v26[2] & 1) == 0)
  {
    v6 = v25;
LABEL_44:
    *a2 = v24;
    *(a2 + 1) = v6;
    *v26 = 0;
    v26[2] = 1;
  }

  return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v23);
}

llvm::raw_ostream *generatedTypePrinter(llvm::raw_ostream *result, uint64_t a2)
{
  v3 = *(*result + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = *(result + 4);
    if ((*(result + 3) - v7) <= 8)
    {
      v8 = "attribute";
LABEL_11:
      v9 = 9;
      goto LABEL_12;
    }

    v11 = 101;
    v12 = "attribute";
LABEL_21:
    *(v7 + 8) = v11;
    *v7 = *v12;
    v13 = *(result + 4) + 9;
LABEL_33:
    *(result + 4) = v13;
    return result;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = *(result + 4);
    if ((*(result + 3) - v7) <= 8)
    {
      v8 = "operation";
      goto LABEL_11;
    }

    v11 = 110;
    v12 = "operation";
    goto LABEL_21;
  }

  v4 = result;
  if (result && v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if ((*(v5 + 3) - v6) > 4)
    {
      *(v6 + 4) = 101;
      *v6 = 1735287154;
      *(v5 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v5, "range", 5uLL);
    }

    v14 = (*(*a2 + 16))(a2);
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

    generatedTypePrinter(*(v4 + 1), a2);
    result = (*(*a2 + 16))(a2);
    v17 = *(result + 4);
    if (*(result + 3) != v17)
    {
      *v17 = 62;
      v13 = *(result + 4) + 1;
      goto LABEL_33;
    }

    v8 = ">";
    v9 = 1;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v16 = *(result + 4);
    if (*(result + 3) - v16 > 3uLL)
    {
      *v16 = 1701869940;
      v13 = *(result + 4) + 4;
      goto LABEL_33;
    }

    v8 = "type";
    v9 = 4;
  }

  else
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return result;
    }

    result = (*(*a2 + 16))(a2);
    v10 = *(result + 4);
    if ((*(result + 3) - v10) > 4)
    {
      *(v10 + 4) = 101;
      *v10 = 1970037110;
      v13 = *(result + 4) + 5;
      goto LABEL_33;
    }

    v8 = "value";
    v9 = 5;
  }

LABEL_12:

  return llvm::raw_ostream::write(result, v8, v9);
}

void mlir::Dialect::addTypes<mlir::pdl::AttributeType,mlir::pdl::OperationType,mlir::pdl::RangeType,mlir::pdl::TypeType,mlir::pdl::ValueType>(uint64_t a1)
{
  mlir::Dialect::addType<mlir::pdl::AttributeType>(a1);
  mlir::Dialect::addType<mlir::pdl::OperationType>(a1);
  mlir::Dialect::addType<mlir::pdl::RangeType>(a1);
}

uint64_t mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v3 = *a2;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
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
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::Dialect::addType<mlir::pdl::AttributeType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::AttributeType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::pdl::AttributeType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
}

uint64_t mlir::Dialect::addType<mlir::pdl::OperationType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::OperationType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::pdl::OperationType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
}

void mlir::Dialect::addType<mlir::pdl::RangeType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::RangeType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, 0, v2);
}

uint64_t mlir::Dialect::addType<mlir::pdl::TypeType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::TypeType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::pdl::TypeType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
}

uint64_t mlir::Dialect::addType<mlir::pdl::ValueType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::ValueType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::pdl::ValueType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
}

void mlir::AbstractType::get<mlir::pdl::AttributeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::pdl::AttributeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, "pdl.attribute", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::AttributeType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::pdl::OperationType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::pdl::OperationType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, "pdl.operation", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::OperationType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::pdl::RangeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::pdl::RangeType,mlir::pdl::PDLType,mlir::pdl::detail::RangeTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSC_7PDLTypeENSC_6detail16RangeTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, "pdl.range", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

void mlir::AbstractType::get<mlir::pdl::TypeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::pdl::TypeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, "pdl.type", 8);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::TypeType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::pdl::ValueType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::pdl::ValueType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, "pdl.value", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::ValueType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<109ul>(uint64_t a1, char *__s)
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

void mlir::pdl_interp::PDLInterpDialect::PDLInterpDialect(mlir::pdl_interp::PDLInterpDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "pdl_interp";
  *(this + 2) = 10;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E822D8;
  mlir::MLIRContext::loadDialect<mlir::pdl::PDLDialect>(a2, a2, a3, a4);
  mlir::Dialect::addOperations<mlir::pdl_interp::ApplyConstraintOp,mlir::pdl_interp::ApplyRewriteOp,mlir::pdl_interp::AreEqualOp,mlir::pdl_interp::BranchOp,mlir::pdl_interp::CheckAttributeOp,mlir::pdl_interp::CheckOperandCountOp,mlir::pdl_interp::CheckOperationNameOp,mlir::pdl_interp::CheckResultCountOp,mlir::pdl_interp::CheckTypeOp,mlir::pdl_interp::CheckTypesOp,mlir::pdl_interp::ContinueOp,mlir::pdl_interp::CreateAttributeOp,mlir::pdl_interp::CreateOperationOp,mlir::pdl_interp::CreateRangeOp,mlir::pdl_interp::CreateTypeOp,mlir::pdl_interp::CreateTypesOp,mlir::pdl_interp::EraseOp,mlir::pdl_interp::ExtractOp,mlir::pdl_interp::FinalizeOp,mlir::pdl_interp::ForEachOp,mlir::pdl_interp::FuncOp,mlir::pdl_interp::GetAttributeOp,mlir::pdl_interp::GetAttributeTypeOp,mlir::pdl_interp::GetDefiningOpOp,mlir::pdl_interp::GetOperandOp,mlir::pdl_interp::GetOperandsOp,mlir::pdl_interp::GetResultOp,mlir::pdl_interp::GetResultsOp,mlir::pdl_interp::GetUsersOp,mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::IsNotNullOp,mlir::pdl_interp::RecordMatchOp,mlir::pdl_interp::ReplaceOp,mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_interp::SwitchTypeOp,mlir::pdl_interp::SwitchTypesOp>(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::pdl::PDLDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "pdl", 3, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "pdl", 3uLL, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::pdl::PDLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::pdl::PDLDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::pdl_interp::PDLInterpDialect::~PDLInterpDialect(mlir::pdl_interp::PDLInterpDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

void mlir::pdl_interp::ForEachOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v5, 0, &v5, 1);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::pdl_interp::ForEachOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  memset(&v8[4], 0, 24);
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, 24);
  if ((*(*a1 + 752))())
  {
    v6[0] = " after loop variable";
    v7 = 259;
    if ((*(*a1 + 400))(a1, "in", 2, v6) & 1) != 0 && ((*(*a1 + 704))(a1, v8, 1))
    {
      v6[0] = v9;
      v4 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v9 + 32), v6);
      if ((*(*a1 + 728))(a1, v8, v4, a2 + 16))
      {
        mlir::OperationState::addRegion(a2);
      }
    }
  }

  return 0;
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, const char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  v14 = mlir::StringAttr::get(*a1, v17, a3);
  mlir::OperationState::addAttribute(a2, "sym_name", 8, v14);
  v15 = *(*(*(a2 + 8) + 96) + 8);
  v16 = mlir::TypeAttr::get(a5);
  mlir::NamedAttrList::push_back(a2 + 112, v15, v16);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a6, &a6[16 * a7]);
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::pdl_interp::ApplyConstraintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v13, "name", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = a1[1];
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 1)
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
      v6[0] = "isNegated";
      v6[1] = 9;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<47ul>(v9, "' failed to satisfy constraint: BOOL attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::getIsNegated(mlir::pdl_interp::ApplyConstraintOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v2 = *(v1 + 24);
  if (v2 > 0x40)
  {
    v3 = llvm::APInt::countLeadingZerosSlowCase((v1 + 16)) == v2;
  }

  else
  {
    v3 = *(v1 + 16) == 0;
  }

  v4 = v3;
  return v4 ^ 1u;
}

void mlir::pdl_interp::ApplyConstraintOp::build(mlir::StringAttr **a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a7, 0, a7, a8);
  v22 = 261;
  v21[0] = a5;
  v21[1] = a6;
  v18 = mlir::StringAttr::get(*a1, v21, v17);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(a2) + 8) = v18;
  v19 = 592;
  if (a9)
  {
    v19 = 600;
  }

  v20 = *(**a1 + v19);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(a2) = v20;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a10);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a11);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a2 + 8), a3, 0, a3, a4);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(**a2 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
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
    mlir::Diagnostic::operator<<<40ul>((v6 + 1), " must be variadic of pdl type, but got ");
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

BOOL mlir::pdl_interp::ApplyConstraintOp::parse(uint64_t a1, uint64_t a2)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  __src = &v22;
  v21 = 0x100000000;
  v16 = 0;
  v17 = v19;
  v18 = 0x200000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v14);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v16, v5))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 8) = v16;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v23) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 112))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0)
  {
    goto LABEL_24;
  }

  v15 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = *(a2 + 8);
  v14[0] = a1;
  v14[1] = &v15;
  v14[2] = a2;
  if (!mlir::pdl_interp::ApplyConstraintOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14) || ((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v14[0] = 0;
  v10 = (*(*a1 + 808))(a1, v14);
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      do
      {
        llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v17, v14[0]);
        if (((*(*a1 + 128))(a1) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      while (((*(*a1 + 800))(a1, v14) & 1) != 0);
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

LABEL_17:
  if (v18)
  {
    v11 = v17 | 4;
  }

  else
  {
    v11 = 0;
  }

  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v11, 0, v11, v18);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v21);
  v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v25, v23, v8, a2 + 16);
LABEL_25:
  if (v17 != v19)
  {
    free(v17);
  }

  if (__src != &v22)
  {
    free(__src);
  }

  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  return v12;
}

void llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(result, a2);
  }

  else
  {
    *(*result + 8 * v2) = a2;
    *(result + 8) = v2 + 1;
  }
}

BOOL mlir::pdl_interp::ApplyRewriteOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::ApplyRewriteOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a6, 0, a6, a7);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(a2) = a5;

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a2 + 8), a3, 0, a3, a4);
}

BOOL mlir::pdl_interp::ApplyRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v21[16] = *MEMORY[0x277D85DE8];
  v20[0] = v21;
  v20[1] = 0x400000000;
  v18[0] = &v19;
  v18[1] = 0x100000000;
  v14 = 0;
  __src = &v17;
  v16 = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v12);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v14, v5))
  {
    goto LABEL_18;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v18) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    v13 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v9 = *(a2 + 8);
      v12[0] = a1;
      v12[1] = &v13;
      v12[2] = a2;
      if (mlir::pdl_interp::ApplyRewriteOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12))
      {
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v16);
        v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v20, v18, v8, a2 + 16);
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v10 = 0;
LABEL_19:
  if (__src != &v17)
  {
    free(__src);
  }

  if (v18[0] != &v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return v10;
}

void mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(**a2 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
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
    mlir::Diagnostic::operator<<<28ul>((v6 + 1), " must be pdl type, but got ");
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

BOOL mlir::pdl_interp::AreEqualOp::parse(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v43 = v45;
  v44 = 0x400000000;
  v35 = 0;
  v40 = v42;
  v41 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v43, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_41;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_41;
  }

  v46 = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v46))
  {
    goto LABEL_41;
  }

  v35 = v46;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_41;
  }

  v46 = 0;
  v5 = (*(*a1 + 808))(a1, &v46);
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if ((v5 & 1) == 0)
  {
LABEL_41:
    v27 = 0;
    goto LABEL_42;
  }

  while (1)
  {
    llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v40, v46);
    if (((*(*a1 + 128))(a1) & 1) == 0)
    {
      break;
    }

    if (((*(*a1 + 800))(a1, &v46) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_7:
  if (v41)
  {
    v6 = v40 | 4;
  }

  else
  {
    v6 = 0;
  }

  v34 = a2;
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v6, 0, v6, v41);
  v7 = 0;
  v33 = v44;
  v39 = v44;
  v8 = &v35;
  v46 = &v35;
  v47 = &v35;
  v48 = v36;
  v49 = v36;
  v9 = &v35;
  while (v9 != v36 || v8 != v36 || v48 != v36 || v49 != v36)
  {
    v11 = &unk_286E841C8;
    v12 = 16;
    do
    {
      v13 = v12;
      v14 = *(v11 - 1);
      v15 = (&v46 + (*v11 >> 1));
      if (*v11)
      {
        v14 = *(*v15 + v14);
      }

      if (v14(v15))
      {
        break;
      }

      v11 += 2;
      v12 = v13 - 16;
    }

    while (v13);
    ++v7;
    v9 = v46;
    v8 = v47;
  }

  v38 = v7;
  if (v7 == v33)
  {
    v16 = v43;
    v46 = v43;
    v47 = &v35;
    v48 = &v35;
    v49 = v36;
    v50 = v36;
    if (!v44)
    {
LABEL_37:
      v27 = 1;
      goto LABEL_42;
    }

    v17 = (v43 + 32 * v44);
    while (1)
    {
      v18 = &unk_286E841E8;
      do
      {
        v19 = *(v18 - 1);
        v20 = (&v47 + (*v18 >> 1));
        if (*v18)
        {
          v19 = *(*v20 + v19);
        }

        v18 += 2;
        v21 = v19(v20);
      }

      while (!v21);
      if (((*(*a1 + 728))(a1, v16, *v21, v34 + 16) & 1) == 0)
      {
        goto LABEL_41;
      }

      v46 += 4;
      v22 = &unk_286E841C8;
      v23 = 16;
      do
      {
        v24 = v23;
        v25 = *(v22 - 1);
        v26 = (&v47 + (*v22 >> 1));
        if (*v22)
        {
          v25 = *(*v26 + v25);
        }

        if (v25(v26))
        {
          break;
        }

        v22 += 2;
        v23 = v24 - 16;
      }

      while (v24);
      v16 = v46;
      if (v46 == v17)
      {
        goto LABEL_37;
      }
    }
  }

  v37 = 257;
  (*(*a1 + 24))(&v46, a1, v4, v36);
  if (v46)
  {
    mlir::Diagnostic::operator<<<48ul>(&v47, "number of operands and types do not match: got ");
  }

  v29 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v46, &v39);
  v30 = v29;
  if (*v29)
  {
    mlir::Diagnostic::operator<<<15ul>((v29 + 1), " operands and ");
  }

  v31 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v30, &v38);
  v32 = v31;
  if (*v31)
  {
    mlir::Diagnostic::operator<<<7ul>((v31 + 1), " types");
  }

  v27 = (v32[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
LABEL_42:
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v27;
}

uint64_t mlir::pdl_interp::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (((*(*a1 + 800))(a1, &v5) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v5);
  return 1;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v10, 0, &v10, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
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

uint64_t mlir::pdl_interp::CheckAttributeOp::parse(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  v16 = v18;
  v17 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1))
  {
    v15 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, v14) & 1) != 0 && ((*(*a1 + 440))(a1, &v11, 0))
    {
      if (v11)
      {
        v4 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(a2);
        *v4 = v11;
      }

      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>((a2 + 14), **(a2[1] + 96));
        if ((*(*a1 + 56))(a1))
        {
          v14[0] = 0;
          v5 = (*(*a1 + 808))(a1, v14);
          if ((v5 & 0x100) == 0)
          {
LABEL_9:
            if (v17)
            {
              v6 = v16 | 4;
            }

            else
            {
              v6 = 0;
            }

            llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v6, 0, v6, v17);
            v7 = *(**(*(*a1 + 32))(a1) + 384);
            v14[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
            v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v14);
            v9 = (*(*a1 + 728))(a1, v12, v8, a2 + 2) & 1;
            goto LABEL_17;
          }

          if (v5)
          {
            do
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v16, v14[0]);
              if (((*(*a1 + 128))(a1) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

            while (((*(*a1 + 800))(a1, v14) & 1) != 0);
          }
        }
      }
    }
  }

  v9 = 0;
LABEL_17:
  if (v16 != v18)
  {
    free(v16);
  }

  return v9;
}

BOOL mlir::pdl_interp::CheckOperandCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(v10, "compareAtLeast", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v13, "count", 5, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 8);
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7[2] != 32)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 24);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  if (((*(a1 + 16) >> (v8 - 1)) & 1) == 0)
  {
    return 1;
  }

LABEL_9:
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
        mlir::Diagnostic::operator<<<94ul>(v14, "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative");
      }
    }
  }

  v9 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::getCount(mlir::pdl_interp::CheckOperandCountOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::CheckOperandCountOp::build(void **a1, void *a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  v13 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v13, a4);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2) + 8) = IntegerAttr;
  if (a5)
  {
    v15 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2) = v15;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a6);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a7);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
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

uint64_t mlir::pdl_interp::CheckOperandCountOp::parse(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v20 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v17, 1))
    {
      v20 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, v19))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = *(**(*(*a1 + 32))(a1) + 608);
          *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2) = v4;
        }

        v5 = (*(*a1 + 32))(a1);
        v6 = mlir::IntegerType::get(*v5, 32, 0);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v16, v6))
        {
          if (v16)
          {
            v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2);
            *(v7 + 8) = v16;
          }

          v15 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v8 = a2[1];
            v19[0] = a1;
            v19[1] = &v15;
            v19[2] = a2;
            if (mlir::pdl_interp::CheckOperandCountOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) && ((*(*a1 + 56))(a1) & 1) != 0)
            {
              v19[0] = 0;
              v9 = (*(*a1 + 808))(a1, v19);
              if ((v9 & 0x100) == 0)
              {
LABEL_13:
                if (v22)
                {
                  v10 = v21 | 4;
                }

                else
                {
                  v10 = 0;
                }

                llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v10, 0, v10, v22);
                v11 = *(**(*(*a1 + 32))(a1) + 384);
                v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
                v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
                v13 = (*(*a1 + 728))(a1, v17, v12, a2 + 2) & 1;
                goto LABEL_21;
              }

              if (v9)
              {
                do
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, v19[0]);
                  if (((*(*a1 + 128))(a1) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                while (((*(*a1 + 800))(a1, v19) & 1) != 0);
              }
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_21:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

BOOL mlir::pdl_interp::CheckOperationNameOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckOperationNameOp::build(mlir::StringAttr **a1, void *a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  v16 = 261;
  v15[0] = a4;
  v15[1] = a5;
  v14 = mlir::StringAttr::get(*a1, v15, v13);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(a2) = v14;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a6);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a7);
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::parse(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v20 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v17, 1))
    {
      v20 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, v19))
      {
        v4 = **(*(*a1 + 32))(a1);
        v5 = *(v4 + 528);
        if (!v5)
        {
          v6 = *(v4 + 384);
          v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
          v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v19);
        }

        if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v16, v5))
        {
          if (v16)
          {
            v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(a2);
            *v7 = v16;
          }

          v15 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v8 = a2[1];
            v19[0] = a1;
            v19[1] = &v15;
            v19[2] = a2;
            if (mlir::pdl_interp::CheckOperationNameOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) && ((*(*a1 + 56))(a1) & 1) != 0)
            {
              v19[0] = 0;
              v9 = (*(*a1 + 808))(a1, v19);
              if ((v9 & 0x100) == 0)
              {
LABEL_13:
                if (v22)
                {
                  v10 = v21 | 4;
                }

                else
                {
                  v10 = 0;
                }

                llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v10, 0, v10, v22);
                v11 = *(**(*(*a1 + 32))(a1) + 384);
                v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
                v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
                v13 = (*(*a1 + 728))(a1, v17, v12, a2 + 2) & 1;
                goto LABEL_21;
              }

              if (v9)
              {
                do
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, v19[0]);
                  if (((*(*a1 + 128))(a1) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                while (((*(*a1 + 800))(a1, v19) & 1) != 0);
              }
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_21:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

BOOL mlir::pdl_interp::CheckResultCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(v10, "compareAtLeast", 0xE, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v13, "count", 5, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::getCount(mlir::pdl_interp::CheckResultCountOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::CheckResultCountOp::build(void **a1, void *a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  v13 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v13, a4);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2) + 8) = IntegerAttr;
  if (a5)
  {
    v15 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2) = v15;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a6);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a7);
}

uint64_t mlir::pdl_interp::CheckResultCountOp::parse(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v20 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v17, 1))
    {
      v20 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, v19))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = *(**(*(*a1 + 32))(a1) + 608);
          *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2) = v4;
        }

        v5 = (*(*a1 + 32))(a1);
        v6 = mlir::IntegerType::get(*v5, 32, 0);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v16, v6))
        {
          if (v16)
          {
            v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2);
            *(v7 + 8) = v16;
          }

          v15 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v8 = a2[1];
            v19[0] = a1;
            v19[1] = &v15;
            v19[2] = a2;
            if (mlir::pdl_interp::CheckResultCountOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) && ((*(*a1 + 56))(a1) & 1) != 0)
            {
              v19[0] = 0;
              v9 = (*(*a1 + 808))(a1, v19);
              if ((v9 & 0x100) == 0)
              {
LABEL_13:
                if (v22)
                {
                  v10 = v21 | 4;
                }

                else
                {
                  v10 = 0;
                }

                llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v10, 0, v10, v22);
                v11 = *(**(*(*a1 + 32))(a1) + 384);
                v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
                v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
                v13 = (*(*a1 + 728))(a1, v17, v12, a2 + 2) & 1;
                goto LABEL_21;
              }

              if (v9)
              {
                do
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, v19[0]);
                  if (((*(*a1 + 128))(a1) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                while (((*(*a1 + 800))(a1, v19) & 1) != 0);
              }
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_21:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

BOOL mlir::pdl_interp::CheckTypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(v8, "type", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v10, 0, &v10, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
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

uint64_t mlir::pdl_interp::CheckTypeOp::parse(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16 = 0;
  v21 = v23;
  v22 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1))
  {
    v20 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, v19))
    {
      v4 = **(*(*a1 + 32))(a1);
      v5 = *(v4 + 528);
      if (!v5)
      {
        v6 = *(v4 + 384);
        v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v19);
      }

      if (mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v16, v5))
      {
        if (v16)
        {
          v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(a2);
          *v7 = v16;
        }

        v15 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v8 = a2[1];
          v19[0] = a1;
          v19[1] = &v15;
          v19[2] = a2;
          if (mlir::pdl_interp::CheckTypeOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) && ((*(*a1 + 56))(a1) & 1) != 0)
          {
            v19[0] = 0;
            v9 = (*(*a1 + 808))(a1, v19);
            if ((v9 & 0x100) == 0)
            {
LABEL_12:
              if (v22)
              {
                v10 = v21 | 4;
              }

              else
              {
                v10 = 0;
              }

              llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v10, 0, v10, v22);
              v11 = *(**(*(*a1 + 32))(a1) + 384);
              v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
              v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
              v13 = (*(*a1 + 728))(a1, v17, v12, a2 + 2) & 1;
              goto LABEL_20;
            }

            if (v9)
            {
              do
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, v19[0]);
                if (((*(*a1 + 128))(a1) & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              while (((*(*a1 + 800))(a1, v19) & 1) != 0);
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_20:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

BOOL mlir::pdl_interp::CheckTypesOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v8, "types", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (!v8)
    {
      return 1;
    }

    v9 = a1[1];
    v10 = 8 * v8;
    while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v9 += 8;
      v10 -= 8;
      if (!v10)
      {
        return 1;
      }
    }
  }

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
        mlir::Diagnostic::operator<<<53ul>(v15, "' failed to satisfy constraint: type array attribute");
      }
    }
  }

  v7 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v10, 0, &v10, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(mlir::Operation *a1, void **a2, const char *a3, const char *a4)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*a2)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
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

uint64_t mlir::pdl_interp::CheckTypesOp::parse(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16 = 0;
  v21 = v23;
  v22 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1))
  {
    v20 = 257;
    if ((*(*a1 + 400))(a1, "are", 3, v19))
    {
      v4 = **(*(*a1 + 32))(a1);
      v5 = *(v4 + 528);
      if (!v5)
      {
        v6 = *(v4 + 384);
        v19[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v19);
      }

      if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v16, v5))
      {
        if (v16)
        {
          v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(a2);
          *v7 = v16;
        }

        v15 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v8 = a2[1];
          v19[0] = a1;
          v19[1] = &v15;
          v19[2] = a2;
          if (mlir::pdl_interp::CheckTypesOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) && ((*(*a1 + 56))(a1) & 1) != 0)
          {
            v19[0] = 0;
            v9 = (*(*a1 + 808))(a1, v19);
            if ((v9 & 0x100) == 0)
            {
LABEL_12:
              if (v22)
              {
                v10 = v21 | 4;
              }

              else
              {
                v10 = 0;
              }

              llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v10, 0, v10, v22);
              v11 = *(**(*(*a1 + 32))(a1) + 384);
              v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
              v19[0] = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
              v12 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v19[0] + 32), v19);
              v13 = (*(*a1 + 728))(a1, v17, v12, a2 + 2) & 1;
              goto LABEL_20;
            }

            if (v9)
            {
              do
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, v19[0]);
                if (((*(*a1 + 128))(a1) & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              while (((*(*a1 + 800))(a1, v19) & 1) != 0);
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_20:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(a2) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

uint64_t mlir::pdl_interp::CreateAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (((*(*a1 + 440))(a1, &v7, 0) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(a2);
    *v4 = v7;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2 + 112, **(*(a2 + 8) + 96));
  v5 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
  return 1;
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(v10, "inferredResultTypes", 0x13, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v13, "inputAttributeNames", 0x13, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v16, "name", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
        mlir::Diagnostic::operator<<<55ul>(v15, "' failed to satisfy constraint: string array attribute");
      }
    }
  }

  v7 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = a7;
  v20 = *(**a1 + 384);
  v24 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v20 + 232), &v24);
  mlir::pdl_interp::CreateOperationOp::build(a1, a2, *v21, a3, a4, a9, a10, v22, a11, a12, a13, a5, a6, v13);
  return result;
}

void mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v14 = a7;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a6, 0, a6, a7);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a9, 0, a9, a10);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a12, 0, a12, a13);
  v19 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
  v19[6] = v14;
  v19[7] = a10;
  v19[8] = a13;
  v24 = 261;
  v23[0] = a4;
  v23[1] = a5;
  v21 = mlir::StringAttr::get(*a1, v23, v20);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) + 16) = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) + 8) = a11;
  if (a14)
  {
    v22 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) = v22;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v26);
}

uint64_t mlir::pdl_interp::CreateOperationOp::getODSOperands(mlir::pdl_interp::CreateOperationOp *this, unsigned int a2)
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

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(mlir::Operation *a1, void **a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v3 = (*a2)[17];
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
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

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
  v6 = v5;
  if (*v5)
  {
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

BOOL mlir::pdl_interp::CreateOperationOp::parse(void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v41 = v43;
  v42 = 0x400000000;
  v39[0] = &v40;
  v39[1] = 0x100000000;
  v36 = v38;
  v37 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v31[0] = &v32;
  v31[1] = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v44 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v44);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v28, v5))
  {
    goto LABEL_39;
  }

  if (v28)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 16) = v28;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v41, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v39) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0;
  }

  v27 = v8;
  (*(*a1 + 40))(a1);
  v9 = (*(*a1 + 32))(a1);
  v44 = v46;
  p_src = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (__src = a1, v30[0] = &v44, v30[1] = &v36, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseCreateOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, &__src, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    v10 = mlir::ArrayAttr::get(*v9, v44, p_src);
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v11)
  {
    goto LABEL_39;
  }

  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) + 8) = v10;
  v12 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 64))(a1))
  {
    if ((*(*a1 + 160))(a1))
    {
      v47 = 257;
      if (((*(*a1 + 400))(a1, "inferred", 8, &v44) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
      {
        goto LABEL_39;
      }

      v13 = *(**(*(*a1 + 32))(a1) + 608);
      if (v13)
      {
        *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) = v13;
      }
    }

    else if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 720))(a1, &v33, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, v31) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  __src = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v14 = *(a2 + 8);
    v44 = a1;
    p_src = &__src;
    v46[0] = a2;
    if (mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(v14, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v44))
    {
      v26 = v12;
      v15 = v42;
      v16 = v37;
      v17 = v34;
      v18 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
      v18[6] = v15;
      v18[7] = v16;
      v18[8] = v17;
      v19 = *(**(*(*a1 + 32))(a1) + 384);
      v44 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
      __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v19 + 232), &v44);
      v20 = *(**(*(*a1 + 32))(a1) + 384);
      v44 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
      v21 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v20 + 232), &v44);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v30);
      if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v41, v39, v27, a2 + 16))
      {
        if (!v37)
        {
LABEL_38:
          v24 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v33, v31, v26, a2 + 16);
          goto LABEL_40;
        }

        v22 = v36;
        v23 = 32 * v37;
        while (((*(*a1 + 728))(a1, v22, v21, a2 + 16) & 1) != 0)
        {
          v22 += 32;
          v23 -= 32;
          if (!v23)
          {
            goto LABEL_38;
          }
        }
      }
    }
  }

LABEL_39:
  v24 = 0;
LABEL_40:
  if (v31[0] != &v32)
  {
    free(v31[0]);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return v24;
}

BOOL mlir::pdl_interp::CreateRangeOp::parse(uint64_t a1, uint64_t a2)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x400000000;
  v11 = &v13;
  v12 = 0x100000000;
  v9 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v14, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v15 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v11) & 1) == 0))
  {
    goto LABEL_13;
  }

  if (v12)
  {
    v5 = mlir::TypeRange::dereference_iterator(v11 & 0xFFFFFFFFFFFFFFF9 | 2, 0);
    v6 = *v5;
    if (v5 && v6[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v5 = *(v5 + 8);
      v6 = *v5;
    }

    v10 = v5;
    v9 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(*v6 + 4), &v10);
  }

  else if (((*(*a1 + 576))(a1, &v9) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v9, &v10);
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v14, &v11, v4, a2 + 16);
    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
LABEL_14:
  if (v11 != &v13)
  {
    free(v11);
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return v7;
}

BOOL mlir::pdl_interp::CreateTypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CreateTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(a2) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

uint64_t mlir::pdl_interp::CreateTypeOp::parse(void *a1, uint64_t a2)
{
  v14 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v14, v5))
  {
    return 0;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  __src = a1;
  v12[0] = &v13;
  v12[1] = a2;
  if (!mlir::pdl_interp::CreateTypeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v12);
  return 1;
}

BOOL mlir::pdl_interp::CreateTypesOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CreateTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(a2) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

uint64_t mlir::pdl_interp::CreateTypesOp::parse(void *a1, uint64_t a2)
{
  v14 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v14, v5))
  {
    return 0;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  __src = a1;
  v12[0] = &v13;
  v12[1] = a2;
  if (!mlir::pdl_interp::CreateTypesOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &__src);
  __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v12);
  return 1;
}

uint64_t mlir::pdl_interp::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v7, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  v9 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), &v9);
  return (*(*a1 + 728))(a1, v7, v5, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::ExtractOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::ExtractOp::getIndex(mlir::pdl_interp::ExtractOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::ExtractOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  v8 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v8, a5);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps11(mlir::Operation *a1, void ***a2)
{
  v16[25] = *MEMORY[0x277D85DE8];
  v12 = 0;
  if ((*a2)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(**a2[1] + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
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

  v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v15, &v12);
  v4 = v3;
  if (*v3)
  {
    mlir::Diagnostic::operator<<<44ul>((v3 + 1), " must be range of pdl type values, but got ");
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

BOOL mlir::pdl_interp::ExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v19, v5))
  {
    return 0;
  }

  if (v19)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(a2);
    *v6 = v19;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, &v20) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v20 = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v20))
  {
    return 0;
  }

  v7 = v20;
  __src = v20;
  v13[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v20 = a1;
  v21[0] = v13;
  v21[1] = a2;
  if (!mlir::pdl_interp::ExtractOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v20))
  {
    return 0;
  }

  v15 = v7;
  if (*(**v7 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v17);
    v20 = __src;
    v12 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &v20);
    return (*(*a1 + 728))(a1, v17, v12, a2 + 16) & 1;
  }

  else
  {
    v9 = (*(*a1 + 16))(a1);
    v14 = 257;
    (*(*a1 + 24))(&v20, a1, v9, v13);
    if (v20)
    {
      mlir::Diagnostic::operator<<<36ul>(v21, "'result' must be pdl type, but got ");
      if (v20)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(v21, &v15);
      }
    }

    v10 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  return v10;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps10(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps9(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
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
      v5[0] = "function_type";
      v5[1] = 13;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<64ul>(v8, "' failed to satisfy constraint: type attribute of function type");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::pdl_interp::GetAttributeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::GetAttributeOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  __src = a3;
  v14 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  v13 = 261;
  v12[0] = a5;
  v12[1] = a6;
  v11 = mlir::StringAttr::get(*a1, v12, v10);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(a2) = v11;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v16);
}

uint64_t mlir::pdl_interp::GetAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v17);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v16, v5))
  {
    return 0;
  }

  if (v16)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v16;
  }

  v18 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v17) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
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
  if (!mlir::pdl_interp::GetAttributeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
  {
    return 0;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
  v10 = *(**(*(*a1 + 32))(a1) + 384);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v10 + 232), v17);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14);
  return (*(*a1 + 728))(a1, v14, v11, a2 + 16) & 1;
}

void mlir::pdl_interp::GetAttributeTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  v7 = a3;
  __src = v6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::pdl_interp::GetAttributeTypeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v12 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), v11);
  v5 = *(**(*(*a1 + 32))(a1) + 384);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v11);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v8, v9);
  return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
}

void mlir::pdl_interp::GetDefiningOpOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(mlir::Operation *a1, void **a2, const char *a3, const char *a4)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = (*a2)[17];
  if (v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
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

BOOL mlir::pdl_interp::GetDefiningOpOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v20 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, &__src, a5, a6, a7, a8, &v14) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v19);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v13, v10, a2 + 16);
}

BOOL mlir::pdl_interp::GetOperandOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetOperandOp::getIndex(mlir::pdl_interp::GetOperandOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::GetOperandOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  v8 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v8, a5);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps13(mlir::Operation *a1, uint64_t a2)
{
  v16[25] = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
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

uint64_t mlir::pdl_interp::GetOperandOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v15, v5))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v16) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &__src;
  v16[2] = a2;
  if (!mlir::pdl_interp::GetOperandOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
  {
    return 0;
  }

  v8 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v16);
  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v16);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return (*(*a1 + 728))(a1, v13, v10, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::GetOperandsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetOperandsOp::getIndex(mlir::pdl_interp::GetOperandsOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) | 0x100000000;
}

void mlir::pdl_interp::GetOperandsOp::build(mlir::Builder *I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    v8 = I32IntegerAttr;
  }

  else
  {
    v8 = 0;
  }

  mlir::pdl_interp::GetOperandsOp::build(I32IntegerAttr, a2, a3, a4, v8);
}

void mlir::pdl_interp::GetOperandsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::pdl_interp::GetOperandsOp::parse(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  v6 = (*(*a1 + 456))(a1, &v16, v5);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v16)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(a2);
      *v7 = v16;
    }
  }

  v18 = 257;
  if ((*(*a1 + 400))(a1, "of", 2, v17))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v17[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v17))
      {
        __src = v17[0];
        v12 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v17[0] = a1;
          v17[1] = &v12;
          v17[2] = a2;
          if (mlir::pdl_interp::GetOperandsOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
          {
            v9 = *(**(*(*a1 + 32))(a1) + 384);
            v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
            v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14);
            return (*(*a1 + 728))(a1, v14, v10, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::pdl_interp::GetResultOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetResultOp::getIndex(mlir::pdl_interp::GetResultOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::GetResultOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  v8 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v8, a5);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v12);
}

uint64_t mlir::pdl_interp::GetResultOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v15, v5))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v16) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &__src;
  v16[2] = a2;
  if (!mlir::pdl_interp::GetResultOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
  {
    return 0;
  }

  v8 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v16);
  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v16);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return (*(*a1 + 728))(a1, v13, v10, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::GetResultsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetResultsOp::getIndex(mlir::pdl_interp::GetResultsOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) | 0x100000000;
}

void mlir::pdl_interp::GetResultsOp::build(mlir::Builder *I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    v8 = I32IntegerAttr;
  }

  else
  {
    v8 = 0;
  }

  mlir::pdl_interp::GetResultsOp::build(I32IntegerAttr, a2, a3, a4, v8);
}

void mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

void mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  v6 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  v7 = a3;
  __src = v6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::pdl_interp::GetResultsOp::parse(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  v6 = (*(*a1 + 456))(a1, &v16, v5);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v16)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(a2);
      *v7 = v16;
    }
  }

  v18 = 257;
  if ((*(*a1 + 400))(a1, "of", 2, v17))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v17[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v17))
      {
        __src = v17[0];
        v12 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v17[0] = a1;
          v17[1] = &v12;
          v17[2] = a2;
          if (mlir::pdl_interp::GetResultsOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
          {
            v9 = *(**(*(*a1 + 32))(a1) + 384);
            v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
            v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14);
            return (*(*a1 + 728))(a1, v14, v10, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

void mlir::pdl_interp::GetUsersOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  v6 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  v7 = a3;
  __src = v6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

BOOL mlir::pdl_interp::GetUsersOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v20 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, &__src, a5, a6, a7, a8, &v14) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), &__src);
  __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v19);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v13, v10, a2 + 16);
}

void mlir::pdl_interp::GetValueTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &__src);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    __src = v7;
    v7 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v7 + 32), &__src);
  }

  v8 = a3;
  __src = v7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v10);
}

void *getGetValueTypeOpValueType(uint64_t a1)
{
  v2 = *(**(**a1 + 32) + 384);
  v4 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v2 + 232), &v4);
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v4 = result;
    return mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**result + 32), &v4);
  }

  return result;
}

BOOL mlir::pdl_interp::GetValueTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v16[12] = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v15 = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v15))
  {
    return 0;
  }

  v4 = v15;
  __src = v15;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = v4;
  v5 = (*v4)[17];
  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*v4[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
    ValueTypeOpValueType = getGetValueTypeOpValueType(__src);
    return (*(*a1 + 728))(a1, v13, ValueTypeOpValueType, a2 + 16) & 1;
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    v10[16] = 257;
    (*(*a1 + 24))(&v15, a1, v6, v10);
    if (v15)
    {
      if (v15)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(v16, &v11);
      }
    }

    v7 = (v17 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  }

  return v7;
}

void mlir::pdl_interp::IsNotNullOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a4);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
}

BOOL mlir::pdl_interp::IsNotNullOp::parse(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v15 = v17;
  v16 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v13, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v9 = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v9))
    {
      v11 = v9;
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v9 = 0;
        v5 = (*(*a1 + 808))(a1, &v9);
        if ((v5 & 0x100) == 0)
        {
LABEL_7:
          if (v16)
          {
            v6 = v15 | 4;
          }

          else
          {
            v6 = 0;
          }

          llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v6, 0, v6, v16);
          v7 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v4, a2 + 16);
          goto LABEL_15;
        }

        if (v5)
        {
          do
          {
            llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v15, v9);
            if (((*(*a1 + 128))(a1) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          while (((*(*a1 + 800))(a1, &v9) & 1) != 0);
        }
      }
    }
  }

  v7 = 0;
LABEL_15:
  if (v15 != v17)
  {
    free(v15);
  }

  return v7;
}

BOOL mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v13, "generatedOps", 0xC, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(v16, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v19, "rootKind", 8, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 16)
  {
    goto LABEL_8;
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

LABEL_8:
  a2(&v9, a3);
  if (v9)
  {
    mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
    if (v9)
    {
      v8 = 261;
      v7[0] = "benefit";
      v7[1] = 7;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<94ul>(v10, "' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative");
      }
    }
  }

  v5 = (v10[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  return v5;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
      v5[0] = "rewriter";
      v5[1] = 8;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getBenefit(mlir::pdl_interp::RecordMatchOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::RecordMatchOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 32) = v15 | (a6 << 32);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 16) = a7;
  if (a8)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 24) = a8;
  }

  if (a9)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 8) = a9;
  }

  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) = a10;

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a11);
}

uint64_t mlir::pdl_interp::RecordMatchOp::getODSOperands(mlir::pdl_interp::RecordMatchOp *this, unsigned int a2)
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

uint64_t mlir::pdl_interp::RecordMatchOp::parse(uint64_t a1, void *a2)
{
  v44[16] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = &v41;
  v40[1] = 0x100000000;
  v31 = 0;
  v32 = 0;
  v37 = v39;
  v38 = 0x400000000;
  v30 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v35[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v35);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v34, v5))
  {
    goto LABEL_51;
  }

  if (v34)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 16) = v34;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v42, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v40) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
LABEL_51:
      v27 = 0;
      goto LABEL_52;
    }
  }

  else
  {
    v8 = 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "benefit", 7, v35) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v9 = (*(*a1 + 32))(a1);
  v10 = mlir::IntegerType::get(*v9, 16, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v33, v10))
  {
    goto LABEL_51;
  }

  if (v33)
  {
    v11 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
    *v11 = v33;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*a1 + 408))(a1, "generatedOps", 12))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v12 = (*(*a1 + 32))(a1);
    v14 = mlir::NoneType::get(*v12, v13);
    if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v32, v14))
    {
      goto LABEL_51;
    }

    if (v32)
    {
      v15 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v15 + 8) = v32;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "loc", 3, v35) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v37, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*a1 + 128))(a1))
  {
    v36 = 257;
    if (((*(*a1 + 400))(a1, "root", 4, v35) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v16 = (*(*a1 + 32))(a1);
    v18 = mlir::NoneType::get(*v16, v17);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v31, v18))
    {
      goto LABEL_51;
    }

    if (v31)
    {
      v19 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v19 + 24) = v31;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v29 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_51;
  }

  v20 = a2[1];
  v35[0] = a1;
  v35[1] = &v29;
  v35[2] = a2;
  if (!mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(v20, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v35))
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 800))(a1, &v30) & 1) == 0)
  {
    goto LABEL_51;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v30);
  v21 = v43;
  v22 = v38;
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 32) = v21 | (v22 << 32);
  v23 = *(**(*(*a1 + 32))(a1) + 384);
  v35[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v24 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v23 + 232), v35);
  if (!mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v42, v40, v8, (a2 + 2)))
  {
    goto LABEL_51;
  }

  if (v38)
  {
    v25 = v37;
    v26 = 32 * v38;
    while (((*(*a1 + 728))(a1, v25, v24, a2 + 2) & 1) != 0)
    {
      v25 += 32;
      v27 = 1;
      v26 -= 32;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v27 = 1;
LABEL_52:
  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != &v41)
  {
    free(v40[0]);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return v27;
}

unint64_t mlir::pdl_interp::ReplaceOp::getODSOperandIndexAndLength(mlir::pdl_interp::ReplaceOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir10pdl_interp9ReplaceOp27getODSOperandIndexAndLengthEj_isVariadic;
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
  if (__const__ZN4mlir10pdl_interp9ReplaceOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::pdl_interp::ReplaceOp::getODSOperands(mlir::pdl_interp::ReplaceOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::pdl_interp::ReplaceOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::pdl_interp::ReplaceOp::parse(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v7 = ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && (v12 = 257, ((*(*a1 + 400))(a1, "with", 4, v11) & 1) != 0) && ((*(*a1 + 280))(a1) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v15, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v16 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v13) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (v5 = *(**(*(*a1 + 32))(a1) + 384), v11[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v11), ((*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, v13, v4, a2 + 16);
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v7;
}

BOOL mlir::pdl_interp::SwitchAttributeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
      v5[0] = "caseValues";
      v5[1] = 10;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchAttributeOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v12, 0, &v12, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a5);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), a6, 0, a6, a7);
}

uint64_t mlir::pdl_interp::SwitchAttributeOp::parse(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v22 = v24;
  v23 = 0x200000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v21 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v20) & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v20[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v20);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v17, v5))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v17;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v20[0] = 0;
  v8 = (*(*a1 + 808))(a1, v20);
  if ((v8 & 0x100) != 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, v20[0]);
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 800))(a1, v20) & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  if ((*(*a1 + 296))(a1))
  {
    v15 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 14))
    {
      v9 = a2[1];
      v20[0] = a1;
      v20[1] = &v15;
      v20[2] = a2;
      if (mlir::pdl_interp::SwitchAttributeOp::verifyInherentAttrs(v9, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v16) & 1) != 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v16);
        if (v23)
        {
          v10 = v22 | 4;
        }

        else
        {
          v10 = 0;
        }

        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v10, 0, v10, v23);
        v11 = *(**(*(*a1 + 32))(a1) + 384);
        v20[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
        v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v20);
        v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 2) & 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v13 = 0;
LABEL_23:
  if (v22 != v24)
  {
    free(v22);
  }

  return v13;
}

BOOL mlir::pdl_interp::SwitchOperandCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v6 = (*(a1[2] + 8))();
    if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v6[2] == 32)
    {
      return 1;
    }
  }

  a2(&v11, a3);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = "caseValues";
      v9[1] = 10;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<75ul>(v12, "' failed to satisfy constraint: 32-bit signless integer elements attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchOperandCountOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v12, 0, &v12, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), a5);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), a6, 0, a6, a7);
}

uint64_t mlir::pdl_interp::SwitchOperandCountOp::parse(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v19 = v21;
  v20 = 0x200000000;
  v18 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v18 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v17) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(a1, &v14))
  {
    goto LABEL_21;
  }

  v4 = v14;
  if (v14)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v17[0] = 0;
  v5 = (*(*a1 + 808))(a1, v17);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v19, v17[0]);
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 800))(a1, v17) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  if ((*(*a1 + 296))(a1))
  {
    v12 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 14))
    {
      v6 = a2[1];
      v17[0] = a1;
      v17[1] = &v12;
      v17[2] = a2;
      if (mlir::pdl_interp::SwitchOperandCountOp::verifyInherentAttrs(v6, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v13) & 1) != 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((a2 + 25), v13);
        if (v20)
        {
          v7 = v19 | 4;
        }

        else
        {
          v7 = 0;
        }

        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>((a2 + 25), v7, 0, v7, v20);
        v8 = *(**(*(*a1 + 32))(a1) + 384);
        v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
        v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v17);
        v10 = (*(*a1 + 728))(a1, v15, v9, a2 + 2) & 1;
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (v19 != v21)
  {
    free(v19);
  }

  return v10;
}

BOOL mlir::pdl_interp::SwitchOperationNameOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v8, "caseValues", 0xA, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchOperationNameOp::build(mlir::StringAttr **a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v26[16] = *MEMORY[0x277D85DE8];
  v16 = &a4[a5];
  v24 = v26;
  v25 = 0x800000000;
  v17 = (8 * a5) >> 3;
  if (v17 < 9)
  {
    v18 = 0;
    v19 = v26;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v17, 16);
    v18 = v25;
    v19 = v24;
  }

  if (v12 != v16)
  {
    v20 = &v19[2 * v18];
    v21 = 8 * a5;
    do
    {
      v22 = *v12++;
      *v20 = *(*(v22 + 8) + 16);
      v20 += 2;
      v21 -= 8;
    }

    while (v21);
    v18 = v25;
    v19 = v24;
  }

  LODWORD(v25) = v18 + a5;
  StrArrayAttr = mlir::Builder::getStrArrayAttr(a1, v19, (v18 + a5));
  mlir::pdl_interp::SwitchOperationNameOp::build(StrArrayAttr, a2, a3, StrArrayAttr, a6, a7, a8);
  if (v24 != v26)
  {
    free(v24);
  }
}