llvm::raw_ostream *mlir::LLVM::DIDerivedTypeAttr::print(mlir::LLVM::DIDerivedTypeAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = *this;
  if (!*(*this + 8))
  {
    if (!*(v6 + 16))
    {
      if (!*(v6 + 24))
      {
        if (!*(v6 + 32))
        {
          if (!*(v6 + 40))
          {
            if (!*(v6 + 48))
            {
              if (!*(v6 + 60))
              {
                if (!*(v6 + 64))
                {
                  goto LABEL_84;
                }

                goto LABEL_79;
              }

              goto LABEL_67;
            }

            goto LABEL_58;
          }

          goto LABEL_49;
        }

        goto LABEL_40;
      }

      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if ((*(v7 + 3) - v8) > 5)
  {
    *(v8 + 4) = 8253;
    *v8 = 543646068;
    *(v7 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v7, "tag = ", 6uLL);
  }

  v9 = *this;
  v10 = *(*this + 8);
  if (v10)
  {
    v11 = llvm::dwarf::TagString(v10);
    v13 = v12;
    v14 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v14, v11, v13);
    v9 = *this;
  }

  if (*(v9 + 16))
  {
    v15 = (*(*a2 + 16))(a2);
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

LABEL_22:
    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 6uLL)
    {
      *(v18 + 3) = 540876901;
      *v18 = 1701667182;
      *(v17 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v17, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (*(v9 + 24))
  {
    v19 = (*(*a2 + 16))(a2);
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 > 1uLL)
    {
      *v20 = 8236;
      *(v19 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v19, ", ", 2uLL);
    }

LABEL_31:
    v21 = (*(*a2 + 16))(a2);
    v22 = *(v21 + 4);
    if ((*(v21 + 3) - v22) > 0xA)
    {
      *(v22 + 7) = 540876901;
      *v22 = *"baseType = ";
      *(v21 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v21, "baseType = ", 0xBuLL);
    }

    v9 = *this;
    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 32))
  {
    goto LABEL_45;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) - v24 > 1uLL)
  {
    *v24 = 8236;
    *(v23 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v23, ", ", 2uLL);
  }

LABEL_40:
  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) - v26 > 0xCuLL)
  {
    qmemcpy(v26, "sizeInBits = ", 13);
    *(v25 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v25, "sizeInBits = ", 0xDuLL);
  }

  v9 = *this;
  v27 = *(*this + 32);
  if (v27)
  {
    v28 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v28, v27, 0, 0, 0);
    v9 = *this;
  }

LABEL_45:
  if (*(v9 + 40))
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

LABEL_49:
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 0xDuLL)
    {
      qmemcpy(v32, "alignInBits = ", 14);
      *(v31 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v31, "alignInBits = ", 0xEuLL);
    }

    v9 = *this;
    v33 = *(*this + 40);
    if (v33)
    {
      v34 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v34, v33, 0, 0, 0);
      v9 = *this;
    }
  }

  if (!*(v9 + 48))
  {
    goto LABEL_63;
  }

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

LABEL_58:
  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 0xEuLL)
  {
    qmemcpy(v38, "offsetInBits = ", 15);
    *(v37 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v37, "offsetInBits = ", 0xFuLL);
  }

  v9 = *this;
  v39 = *(*this + 48);
  if (v39)
  {
    v40 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v40, v39, 0, 0, 0);
    v9 = *this;
  }

LABEL_63:
  if (*(v9 + 60))
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

LABEL_67:
    v43 = (*(*a2 + 16))(a2);
    v44 = *(v43 + 4);
    if ((*(v43 + 3) - v44) > 0x13)
    {
      *(v44 + 16) = 540876901;
      *v44 = *"dwarfAddressSpace = ";
      *(v43 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v43, "dwarfAddressSpace = ", 0x14uLL);
    }

    v9 = *this;
    v45 = *(*this + 56);
    if ((v45 & 0xFF00000000) != 0)
    {
      v46 = (*(*a2 + 16))(a2);
      if ((v45 & 0x100000000) != 0)
      {
        write_unsigned<unsigned long long>(v46, v45, 0, 0, 0);
      }

      else
      {
        llvm::operator<<(v46);
      }

      v9 = *this;
    }
  }

  if (!*(v9 + 64))
  {
    goto LABEL_84;
  }

  v47 = (*(*a2 + 16))(a2);
  v48 = *(v47 + 4);
  if (*(v47 + 3) - v48 > 1uLL)
  {
    *v48 = 8236;
    *(v47 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v47, ", ", 2uLL);
  }

LABEL_79:
  v49 = (*(*a2 + 16))(a2);
  v50 = *(v49 + 4);
  if ((*(v49 + 3) - v50) > 0xB)
  {
    *(v50 + 8) = 540876897;
    *v50 = *"extraData = ";
    *(v49 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v49, "extraData = ", 0xCuLL);
  }

  if (*(*this + 64))
  {
    (*(*a2 + 40))(a2);
  }

LABEL_84:
  result = (*(*a2 + 16))(a2);
  v52 = *(result + 4);
  if (*(result + 3) == v52)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v52 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIFileAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id;
  v6[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17DIFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10DIFileAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v10[1] = v6;
  v8 = a2;
  v9 = a3;
  memset(v12, 0, sizeof(v12));
  memset(__dst, 0, sizeof(__dst));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::StringAttr>(__dst, __dst, v12, a2, &v9);
  v7 = &v8;
  *&__dst[0] = &v8;
  *(&__dst[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIFileAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIFileAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIFileAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIFileAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::DIFileAttr::parse(uint64_t *a1)
{
  v17[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  if ((v3 & 1) == 0)
  {
    v11 = (*(*a1 + 40))(a1);
    v15 = 259;
    (*(*a1 + 24))(v17, a1, v11, v14);
    v12 = v17;
LABEL_8:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    return 0;
  }

  v4 = v2;
  v15 = 257;
  if (((*(*a1 + 400))(a1, "in", 2, v14) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  v6 = *a1;
  if ((v7 & 1) == 0)
  {
    v13 = (*(v6 + 40))(a1);
    v15 = 259;
    (*(*a1 + 24))(v16, a1, v13, v14);
    v12 = v16;
    goto LABEL_8;
  }

  v8 = v5;
  if ((*(v6 + 168))(a1))
  {
    v9 = (*(*a1 + 32))(a1);
    return mlir::LLVM::DIFileAttr::get(*v9, v4, v8);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::DIFileAttr::print(mlir::LLVM::DIFileAttr *this, mlir::AsmPrinter *a2)
{
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

  (*(*a2 + 40))(a2, *(*this + 8));
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
    *v9 = 28265;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "in", 2uLL);
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

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIGlobalVariableExpressionAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail37DIGlobalVariableExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_30DIGlobalVariableExpressionAttrEJNS2_20DIGlobalVariableAttrENS2_16DIExpressionAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v9[1] = v6;
  v8[0] = a2;
  v8[1] = a3;
  memset(v11, 0, sizeof(v11));
  v12 = 0xFF51AFD7ED558CCDLL;
  v10 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIExpressionAttr>(&v10, 0, v11, &v11[3] + 8, a3);
  v7 = v8;
  v10 = v8;
  *&v11[0] = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v10);
}

uint64_t mlir::LLVM::DIGlobalVariableExpressionAttr::parse(mlir::AsmParser *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v22 = 0;
    v23 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v22))
    {
      v16 = (*(*a1 + 40))(a1);
      v34 = "expected a parameter name in struct";
      v35[12] = 259;
      (*(*a1 + 24))(v28, a1, v16, &v34);
      v17 = v28;
      goto LABEL_34;
    }

    v7 = v22;
    v6 = v23;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v4 & 1 | (v6 != 3))
    {
      if (v3 & 1 | (v6 != 4))
      {
        goto LABEL_27;
      }

      if (*v7 != 1919973477)
      {
        v6 = 4;
LABEL_27:
        v19 = (*(*a1 + 40))(a1);
        v24 = "duplicate or unknown struct parameter name: ";
        v25 = 259;
        (*(*a1 + 24))(&v29, a1, v19, &v24);
        if (v29)
        {
          v27 = 261;
          v26[0] = v7;
          v26[1] = v6;
          mlir::Diagnostic::operator<<(&v30, v26);
        }

        v17 = &v29;
        goto LABEL_34;
      }

      v8 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(a1);
      if ((v9 & 1) == 0)
      {
        v20 = (*(*a1 + 40))(a1);
        v31 = 259;
        (*(*a1 + 24))(v32, a1, v20, &v29);
        v17 = v32;
        goto LABEL_34;
      }

      v5 = v8;
      v3 = 1;
    }

    else
    {
      if (*v7 != 24950 || *(v7 + 2) != 114)
      {
        v6 = 3;
        goto LABEL_27;
      }

      v11 = mlir::FieldParser<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIGlobalVariableAttr>::parse(a1);
      if ((v12 & 1) == 0)
      {
        v18 = (*(*a1 + 40))(a1);
        v31 = 259;
        (*(*a1 + 24))(&v34, a1, v18, &v29);
        goto LABEL_33;
      }

      v2 = v11;
      v4 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v21 = (*(*a1 + 40))(a1);
    v32[0] = "struct is missing required parameter: ";
    v33 = 259;
    (*(*a1 + 24))(&v34, a1, v21, v32);
    if (v34)
    {
      mlir::Diagnostic::operator<<<4ul>(v35, "var");
    }

LABEL_33:
    v17 = &v34;
LABEL_34:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    return 0;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(*a1 + 32))(a1);
  if (v3)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return mlir::LLVM::DIGlobalVariableExpressionAttr::get(v13, v2, v14);
}

llvm::raw_ostream *mlir::LLVM::DIGlobalVariableExpressionAttr::print(mlir::LLVM::DIGlobalVariableExpressionAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 5)
  {
    *(v7 + 4) = 8253;
    *v7 = 544366966;
    *(v6 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "var = ", 6uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIGlobalVariableAttr,(void *)0>(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 6uLL)
    {
      *(v11 + 3) = 540876914;
      *v11 = 1919973477;
      *(v10 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v10, "expr = ", 7uLL);
    }

    v12 = *(*this + 16);
    if (v12)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v12);
    }
  }

  result = (*(*a2 + 16))(a2);
  v14 = *(result + 4);
  if (*(result + 3) == v14)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v14 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIGlobalVariableAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIGlobalVariableAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DIGlobalVariableAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, char a9, int a10)
{
  v11 = a7;
  v35[13] = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v20[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id;
  v20[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIGlobalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIGlobalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrESE_NS2_10DIFileAttrEjNS2_10DITypeAttrEbbjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v27[1] = v20;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25[0] = a9;
  v26 = a10;
  memset(v35, 0, 96);
  v32 = ((a2 >> 4) ^ (a2 >> 9));
  v33 = ((a3 >> 4) ^ (a3 >> 9));
  v35[12] = 0xFF51AFD7ED558CCDLL;
  v34 = (a4 >> 4) ^ (a4 >> 9);
  v28 = 0;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v32, &v28, v35, &v35[5], (a5 >> 4) ^ (a5 >> 9));
  v29 = v28;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v32, &v29, v14, &v35[5], a6);
  v30 = v29;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v32, &v30, v15, &v35[5], (v11 >> 4) ^ (v11 >> 9));
  v31 = v30;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v32, &v31, v16, &v35[5], a8);
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine<BOOL,unsigned int>(&v32, v31, v17, &v35[5], v25, &v26);
  v31 = v21;
  v32 = v21;
  v33 = v27;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v32);
}

uint64_t mlir::LLVM::DIGlobalVariableAttr::parse(mlir::AsmParser *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v52 = 0;
  v2 = 0;
  v3 = 0;
  v49 = 0;
  v50 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v48 = 0;
  v54 = 0;
  v7 = 0;
  v46 = 0;
  v47 = 0;
  v51 = 0;
  v8 = 0;
  v53 = 0;
  do
  {
    v55 = 0;
    v56 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v55))
    {
      v30 = (*(*a1 + 40))(a1);
      v74 = "expected a parameter name in struct";
      v75[12] = 259;
      (*(*a1 + 24))(v61, a1, v30, &v74);
      v31 = v61;
      goto LABEL_92;
    }

    v10 = v55;
    v9 = v56;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v7 & 1 | (v9 != 5))
    {
      v11 = v9 != 4;
      if (v3 & 1 | v11)
      {
        v12 = v9 != 11;
        if (!(v2 & 1 | v12))
        {
          if (*v10 == 0x4E6567616B6E696CLL && *(v10 + 3) == 0x656D614E6567616BLL)
          {
            v22 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            if ((v23 & 1) == 0)
            {
              v41 = (*(*a1 + 40))(a1);
              v64 = 259;
              (*(*a1 + 24))(v71, a1, v41, &v62);
              v31 = v71;
              goto LABEL_92;
            }

            v49 = v22;
            v2 = 1;
            continue;
          }

          v12 = 0;
LABEL_43:
          if ((v8 | v12))
          {
            goto LABEL_79;
          }

          if (*v10 != 0x426E496E67696C61 || *(v10 + 3) != 0x737469426E496E67)
          {
            goto LABEL_79;
          }

          LODWORD(v62) = 0;
          if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v62) & 1) == 0)
          {
            v37 = (*(*a1 + 40))(a1);
            v64 = 259;
            (*(*a1 + 24))(v65, a1, v37, &v62);
            v31 = v65;
            goto LABEL_92;
          }

          v53 = v62;
          v8 = 1;
          continue;
        }
      }

      else
      {
        if (*v10 == 1701667182)
        {
          v16 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v17 & 1) == 0)
          {
            v39 = (*(*a1 + 40))(a1);
            v64 = 259;
            (*(*a1 + 24))(v72, a1, v39, &v62);
            v31 = v72;
            goto LABEL_92;
          }

          v52 = v16;
          v3 = 1;
          continue;
        }

        v11 = 0;
        v12 = 1;
      }

      if (((v4 | v11) & 1) == 0 && *v10 == 1701603686)
      {
        v20 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v21 & 1) == 0)
        {
          v40 = (*(*a1 + 40))(a1);
          v64 = 259;
          (*(*a1 + 24))(v70, a1, v40, &v62);
          v31 = v70;
          goto LABEL_92;
        }

        v50 = v20;
        v4 = 1;
        continue;
      }

      if (((v5 | v11) & 1) == 0 && *v10 == 1701734764)
      {
        LODWORD(v62) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v62) & 1) == 0)
        {
          v42 = (*(*a1 + 40))(a1);
          v64 = 259;
          (*(*a1 + 24))(v69, a1, v42, &v62);
          v31 = v69;
          goto LABEL_92;
        }

        v48 = v62;
        v5 = 1;
        continue;
      }

      if (((HIDWORD(v54) | v11) & 1) == 0 && *v10 == 1701869940)
      {
        v62 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(a1, &v62))
        {
          v43 = (*(*a1 + 40))(a1);
          v64 = 259;
          (*(*a1 + 24))(v68, a1, v43, &v62);
          v31 = v68;
          goto LABEL_92;
        }

        v47 = v62;
        HIDWORD(v54) = 1;
        continue;
      }

      if (v54 & 1 | (v9 != 13))
      {
        if (!(v51 & 1 | (v9 != 9)) && *v10 == 0x656E696665447369 && *(v10 + 8) == 100)
        {
          LOBYTE(v62) = 0;
          if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v62) & 1) == 0)
          {
            v45 = (*(*a1 + 40))(a1);
            v64 = 259;
            (*(*a1 + 24))(v66, a1, v45, &v62);
            v31 = v66;
            goto LABEL_92;
          }

          LOBYTE(v46) = v62;
          v51 = 1;
          continue;
        }
      }

      else if (*v10 == 0x546C61636F4C7369 && *(v10 + 5) == 0x74696E556F546C61)
      {
        LOBYTE(v62) = 0;
        if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v62) & 1) == 0)
        {
          v44 = (*(*a1 + 40))(a1);
          v64 = 259;
          (*(*a1 + 24))(v67, a1, v44, &v62);
          v31 = v67;
          goto LABEL_92;
        }

        BYTE4(v46) = v62;
        LOBYTE(v54) = 1;
        continue;
      }

      goto LABEL_43;
    }

    if (*v10 != 1886348147 || *(v10 + 4) != 101)
    {
      v9 = 5;
LABEL_79:
      v32 = (*(*a1 + 40))(a1);
      v57 = "duplicate or unknown struct parameter name: ";
      v58 = 259;
      (*(*a1 + 24))(&v62, a1, v32, &v57);
      if (v62)
      {
        v60 = 261;
        v59[0] = v10;
        v59[1] = v9;
        mlir::Diagnostic::operator<<(&v63, v59);
      }

      v31 = &v62;
LABEL_92:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
      return 0;
    }

    v62 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v62))
    {
      v33 = (*(*a1 + 40))(a1);
      v64 = 259;
      (*(*a1 + 24))(&v74, a1, v33, &v62);
LABEL_91:
      v31 = &v74;
      goto LABEL_92;
    }

    v6 = v62;
    v7 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v34 = (*(*a1 + 40))(a1);
    v72[0] = "struct is missing required parameter: ";
    v73 = 259;
    (*(*a1 + 24))(&v74, a1, v34, v72);
    if (!v74)
    {
      goto LABEL_91;
    }

    v35 = "file";
LABEL_90:
    mlir::Diagnostic::operator<<<5ul>(v75, v35);
    goto LABEL_91;
  }

  if ((v5 & 1) == 0)
  {
    v36 = (*(*a1 + 40))(a1);
    v72[0] = "struct is missing required parameter: ";
    v73 = 259;
    (*(*a1 + 24))(&v74, a1, v36, v72);
    if (!v74)
    {
      goto LABEL_91;
    }

    v35 = "line";
    goto LABEL_90;
  }

  if ((v54 & 0x100000000) == 0)
  {
    v38 = (*(*a1 + 40))(a1);
    v72[0] = "struct is missing required parameter: ";
    v73 = 259;
    (*(*a1 + 24))(&v74, a1, v38, v72);
    if (!v74)
    {
      goto LABEL_91;
    }

    v35 = "type";
    goto LABEL_90;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v24 = *(*(*a1 + 32))(a1);
  if (v7)
  {
    v25 = v6;
  }

  else
  {
    v25 = 0;
  }

  if (v3)
  {
    v26 = v52;
  }

  else
  {
    v26 = 0;
  }

  if (v2)
  {
    v27 = v49;
  }

  else
  {
    v27 = 0;
  }

  v28 = v53;
  if ((v8 & 1) == 0)
  {
    v28 = 0;
  }

  return mlir::LLVM::DIGlobalVariableAttr::get(v24, v25, v26, v27, v50, v48, v47, v54 & BYTE4(v46) & 1, v51 & v46 & 1, v28);
}

llvm::raw_ostream *mlir::LLVM::DIGlobalVariableAttr::print(mlir::LLVM::DIGlobalVariableAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 7uLL)
    {
      *v8 = 0x203D2065706F6373;
      *(v7 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "scope = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!*(v9 + 16))
    {
      goto LABEL_22;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }

LABEL_17:
    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 6uLL)
    {
      *(v13 + 3) = 540876901;
      *v13 = 1701667182;
      *(v12 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v12, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

LABEL_22:
    if (!*(v9 + 24))
    {
LABEL_31:
      v18 = (*(*a2 + 16))(a2);
      v19 = *(v18 + 4);
      if (*(v18 + 3) - v19 > 1uLL)
      {
        *v19 = 8236;
        *(v18 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      goto LABEL_34;
    }

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

LABEL_26:
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 0xDuLL)
    {
      qmemcpy(v17, "linkageName = ", 14);
      *(v16 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v16, "linkageName = ", 0xEuLL);
    }

    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
    }

    goto LABEL_31;
  }

  if (*(v6 + 16))
  {
    goto LABEL_17;
  }

  if (*(v6 + 24))
  {
    goto LABEL_26;
  }

LABEL_34:
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 6uLL)
  {
    *(v21 + 3) = 540876901;
    *v21 = 1701603686;
    *(v20 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v20, "file = ", 7uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, *(*this + 32));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 6uLL)
  {
    *(v25 + 3) = 540876901;
    *v25 = 1701734764;
    *(v24 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v24, "line = ", 7uLL);
  }

  v26 = *(*this + 40);
  v27 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v27, v26, 0, 0, 0);
  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) - v29 > 1uLL)
  {
    *v29 = 8236;
    *(v28 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, ", ", 2uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) - v31 > 6uLL)
  {
    *(v31 + 3) = 540876901;
    *v31 = 1701869940;
    *(v30 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v30, "type = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 48));
  v32 = *this;
  if (*(*this + 56) == 1)
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

    v35 = (*(*a2 + 16))(a2);
    v36 = *(v35 + 4);
    if (*(v35 + 3) - v36 > 0xFuLL)
    {
      *v36 = *"isLocalToUnit = ";
      *(v35 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v35, "isLocalToUnit = ", 0x10uLL);
    }

    v32 = *this;
    if (*(*this + 56) == 1)
    {
      v37 = (*(*a2 + 16))(a2);
      v38 = *(v37 + 4);
      if (*(v37 + 3) - v38 > 3uLL)
      {
        *v38 = 1702195828;
        *(v37 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v37, "true", 4uLL);
      }

      v32 = *this;
    }
  }

  if (*(v32 + 57) == 1)
  {
    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 > 1uLL)
    {
      *v40 = 8236;
      *(v39 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", ", 2uLL);
    }

    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if ((*(v41 + 3) - v42) > 0xB)
    {
      *(v42 + 8) = 540876900;
      *v42 = *"isDefined = ";
      *(v41 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v41, "isDefined = ", 0xCuLL);
    }

    v32 = *this;
    if (*(*this + 57) == 1)
    {
      v43 = (*(*a2 + 16))(a2);
      v44 = *(v43 + 4);
      if (*(v43 + 3) - v44 > 3uLL)
      {
        *v44 = 1702195828;
        *(v43 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v43, "true", 4uLL);
      }

      v32 = *this;
    }
  }

  if (*(v32 + 60))
  {
    v45 = (*(*a2 + 16))(a2);
    v46 = *(v45 + 4);
    if (*(v45 + 3) - v46 > 1uLL)
    {
      *v46 = 8236;
      *(v45 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v45, ", ", 2uLL);
    }

    v47 = (*(*a2 + 16))(a2);
    v48 = *(v47 + 4);
    if (*(v47 + 3) - v48 > 0xDuLL)
    {
      qmemcpy(v48, "alignInBits = ", 14);
      *(v47 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v47, "alignInBits = ", 0xEuLL);
    }

    v49 = *(*this + 60);
    if (v49)
    {
      v50 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v50, v49, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v52 = *(result + 4);
  if (*(result + 3) == v52)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v52 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILexicalBlockAttr::parse(mlir::AsmParser *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v31 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v32 = 0;
    v33 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v32))
    {
      v16 = (*(*a1 + 40))(a1);
      *&__dst[0] = "expected a parameter name in struct";
      LOWORD(v50) = 259;
      (*(*a1 + 24))(v38, a1, v16, __dst);
      v17 = v38;
      goto LABEL_54;
    }

    v9 = v32;
    v10 = v33;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v7 & 1 | (v10 != 5))
    {
      v11 = v10 != 4;
      if (!(v2 & 1 | v11))
      {
        if (*v9 == 1701603686)
        {
          v14 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
          if ((v15 & 1) == 0)
          {
            v29 = (*(*a1 + 40))(a1);
            v41 = 259;
            (*(*a1 + 24))(&v44, a1, v29, &v39);
            v17 = &v44;
            goto LABEL_54;
          }

          v4 = v14;
          v2 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v5 | v11) & 1) == 0 && *v9 == 1701734764)
      {
        LODWORD(v39) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v39) & 1) == 0)
        {
          v30 = (*(*a1 + 40))(a1);
          v41 = 259;
          (*(*a1 + 24))(v43, a1, v30, &v39);
          v17 = v43;
          goto LABEL_54;
        }

        v31 = v39;
        v5 = 1;
      }

      else
      {
        if (v6 & 1 | (v10 != 6))
        {
          goto LABEL_48;
        }

        if (*v9 != 1970040675 || *(v9 + 4) != 28269)
        {
          v10 = 6;
          goto LABEL_48;
        }

        LODWORD(v39) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v39) & 1) == 0)
        {
          v28 = (*(*a1 + 40))(a1);
          v41 = 259;
          (*(*a1 + 24))(v42, a1, v28, &v39);
          v17 = v42;
          goto LABEL_54;
        }

        v8 = v39;
        v6 = 1;
      }
    }

    else
    {
      if (*v9 != 1886348147 || *(v9 + 4) != 101)
      {
        v10 = 5;
LABEL_48:
        v27 = (*(*a1 + 40))(a1);
        v34 = "duplicate or unknown struct parameter name: ";
        v35 = 259;
        (*(*a1 + 24))(&v39, a1, v27, &v34);
        if (v39)
        {
          v37 = 261;
          v36[0] = v9;
          v36[1] = v10;
          mlir::Diagnostic::operator<<(&v40, v36);
        }

        v17 = &v39;
LABEL_54:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
        return 0;
      }

      v39 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v39))
      {
        v25 = (*(*a1 + 40))(a1);
        v41 = 259;
        (*(*a1 + 24))(__dst, a1, v25, &v39);
LABEL_47:
        v17 = __dst;
        goto LABEL_54;
      }

      v3 = v39;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v26 = (*(*a1 + 40))(a1);
    v44 = "struct is missing required parameter: ";
    v48 = 259;
    (*(*a1 + 24))(__dst, a1, v26, &v44);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<6ul>(__dst + 8, "scope");
    }

    goto LABEL_47;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v18 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0;
  }

  v20 = *v18;
  v21 = v31;
  if ((v5 & 1) == 0)
  {
    v21 = 0;
  }

  v42[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id;
  v42[1] = v18;
  v43[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v43[1] = v42;
  if (v6)
  {
    v22 = v8;
  }

  else
  {
    v22 = 0;
  }

  v44 = v3;
  v45 = v19;
  v46 = v21;
  v47[0] = v22;
  memset(v52, 0, sizeof(v52));
  v51 = 0u;
  v50 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v53 = 0;
  v54 = 0xFF51AFD7ED558CCDLL;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(__dst, __dst, v52, v3, &v45, &v46, v47);
  v39 = &v44;
  *&__dst[0] = &v44;
  *(&__dst[0] + 1) = v43;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v20 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, v23, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

llvm::raw_ostream *mlir::LLVM::DILexicalBlockAttr::print(mlir::LLVM::DILexicalBlockAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = *this;
  if (*(*this + 16))
  {
    v9 = (*(*a2 + 16))(a2);
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

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 540876901;
      *v12 = 1701603686;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "file = ", 7uLL);
    }

    v8 = *this;
    v13 = *(*this + 16);
    if (v13)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v13);
      v8 = *this;
    }
  }

  if (*(v8 + 24))
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

    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 6uLL)
    {
      *(v17 + 3) = 540876901;
      *v17 = 1701734764;
      *(v16 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v16, "line = ", 7uLL);
    }

    v8 = *this;
    v18 = *(*this + 24);
    if (v18)
    {
      v19 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v19, v18, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 28))
  {
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 1uLL)
    {
      *v21 = 8236;
      *(v20 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v20, ", ", 2uLL);
    }

    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if ((*(v22 + 3) - v23) > 8)
    {
      *(v23 + 8) = 32;
      *v23 = *"column = ";
      *(v22 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v22, "column = ", 9uLL);
    }

    v24 = *(*this + 28);
    if (v24)
    {
      v25 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v25, v24, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v27 = *(result + 4);
  if (*(result + 3) == v27)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v27 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILexicalBlockFileAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id;
  v7[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v12[1] = v7;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  memset(v14, 0, sizeof(v14));
  memset(__dst, 0, sizeof(__dst));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v14, a2, &v10, &v11);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::DILexicalBlockFileAttr::parse(mlir::AsmParser *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v25 = 0;
    v26 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v25))
    {
      v17 = (*(*a1 + 40))(a1);
      v38 = "expected a parameter name in struct";
      v39[12] = 259;
      (*(*a1 + 24))(v31, a1, v17, &v38);
      v18 = v31;
LABEL_46:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
      return 0;
    }

    v8 = v25;
    v9 = v26;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v6 & 1 | (v9 != 5))
    {
      if (v3 & 1 | (v9 != 4))
      {
        if (v5 & 1 | (v9 != 13))
        {
          goto LABEL_38;
        }

        if (*v8 != 0x696D697263736964 || *(v8 + 5) != 0x726F74616E696D69)
        {
          v9 = 13;
          goto LABEL_38;
        }

        LODWORD(v32) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v32) & 1) == 0)
        {
          v23 = (*(*a1 + 40))(a1);
          v34 = 259;
          (*(*a1 + 24))(v35, a1, v23, &v32);
          v18 = v35;
          goto LABEL_46;
        }

        v7 = v32;
        v5 = 1;
      }

      else
      {
        if (*v8 != 1701603686)
        {
          v9 = 4;
          goto LABEL_38;
        }

        v12 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v13 & 1) == 0)
        {
          v22 = (*(*a1 + 40))(a1);
          v34 = 259;
          (*(*a1 + 24))(v36, a1, v22, &v32);
          v18 = v36;
          goto LABEL_46;
        }

        v4 = v12;
        v3 = 1;
      }
    }

    else
    {
      if (*v8 != 1886348147 || *(v8 + 4) != 101)
      {
        v9 = 5;
LABEL_38:
        v21 = (*(*a1 + 40))(a1);
        v27 = "duplicate or unknown struct parameter name: ";
        v28 = 259;
        (*(*a1 + 24))(&v32, a1, v21, &v27);
        if (v32)
        {
          v30 = 261;
          v29[0] = v8;
          v29[1] = v9;
          mlir::Diagnostic::operator<<(&v33, v29);
        }

        v18 = &v32;
        goto LABEL_46;
      }

      v32 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v32))
      {
        v19 = (*(*a1 + 40))(a1);
        v34 = 259;
        (*(*a1 + 24))(&v38, a1, v19, &v32);
LABEL_45:
        v18 = &v38;
        goto LABEL_46;
      }

      v2 = v32;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v20 = (*(*a1 + 40))(a1);
    v36[0] = "struct is missing required parameter: ";
    v37 = 259;
    (*(*a1 + 24))(&v38, a1, v20, v36);
    if (v38)
    {
      mlir::Diagnostic::operator<<<6ul>(v39, "scope");
    }

    goto LABEL_45;
  }

  if ((v5 & 1) == 0)
  {
    v24 = (*(*a1 + 40))(a1);
    v36[0] = "struct is missing required parameter: ";
    v37 = 259;
    (*(*a1 + 24))(&v38, a1, v24, v36);
    if (v38)
    {
      mlir::Diagnostic::operator<<<14ul>(v39, "discriminator");
    }

    goto LABEL_45;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = *(*(*a1 + 32))(a1);
  if (v3)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  return mlir::LLVM::DILexicalBlockFileAttr::get(v14, v2, v15, v7);
}

llvm::raw_ostream *mlir::LLVM::DILexicalBlockFileAttr::print(mlir::LLVM::DILexicalBlockFileAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 6uLL)
    {
      *(v11 + 3) = 540876901;
      *v11 = 1701603686;
      *(v10 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v10, "file = ", 7uLL);
    }

    v12 = *(*this + 16);
    if (v12)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v12);
    }
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) - v14 > 1uLL)
  {
    *v14 = 8236;
    *(v13 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v13, ", ", 2uLL);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 0xFuLL)
  {
    *v16 = *"discriminator = ";
    *(v15 + 4) += 16;
  }

  else
  {
    llvm::raw_ostream::write(v15, "discriminator = ", 0x10uLL);
  }

  v17 = *(*this + 24);
  v18 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v18, v17, 0, 0, 0);
  result = (*(*a2 + 16))(a2);
  v20 = *(result + 4);
  if (*(result + 3) == v20)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v20 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILocalVariableAttr::parse(mlir::AsmParser *a1)
{
  v82 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v47 = 0;
  v48 = 0;
  v3 = 0;
  v4 = 0;
  v45 = 0;
  v46 = 0;
  *v50 = 0;
  v51 = 0;
  v49 = 0;
  v44 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  do
  {
    v52 = 0;
    v53 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v52))
    {
      v21 = (*(*a1 + 40))(a1);
      *&__dst[0] = "expected a parameter name in struct";
      LOWORD(v77) = 259;
      (*(*a1 + 24))(v58, a1, v21, __dst);
      v22 = v58;
      goto LABEL_82;
    }

    v9 = v52;
    v10 = v53;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v6 & 1 | (v10 != 5))
    {
      v11 = v10 != 4;
      if (!(v4 & 1 | v11))
      {
        if (*v9 == 1701667182)
        {
          v17 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v18 & 1) == 0)
          {
            v38 = (*(*a1 + 40))(a1);
            v61 = 259;
            (*(*a1 + 24))(&v68, a1, v38, &v59);
            v22 = &v68;
            goto LABEL_82;
          }

          v48 = v17;
          v4 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v2 | v11) & 1) == 0 && *v9 == 1701603686)
      {
        v19 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v20 & 1) == 0)
        {
          v39 = (*(*a1 + 40))(a1);
          v61 = 259;
          (*(*a1 + 24))(v67, a1, v39, &v59);
          v22 = v67;
          goto LABEL_82;
        }

        v47 = v19;
        v2 = 1;
        continue;
      }

      if (((v3 | v11) & 1) == 0 && *v9 == 1701734764)
      {
        LODWORD(v59) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v59) & 1) == 0)
        {
          v40 = (*(*a1 + 40))(a1);
          v61 = 259;
          (*(*a1 + 24))(v66, a1, v40, &v59);
          v22 = v66;
          goto LABEL_82;
        }

        HIDWORD(v46) = v59;
        v3 = 1;
        continue;
      }

      if (BYTE4(v51) & 1 | (v10 != 3))
      {
        if (!(v49 & 1 | (v10 != 11)) && *v9 == 0x426E496E67696C61 && *(v9 + 3) == 0x737469426E496E67)
        {
          LODWORD(v59) = 0;
          if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v59) & 1) == 0)
          {
            v43 = (*(*a1 + 40))(a1);
            v61 = 259;
            (*(*a1 + 24))(v64, a1, v43, &v59);
            v22 = v64;
            goto LABEL_82;
          }

          v44 = v59;
          v49 = 1;
          continue;
        }
      }

      else if (*v9 == 29281 && *(v9 + 2) == 103)
      {
        LODWORD(v59) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v59) & 1) == 0)
        {
          v41 = (*(*a1 + 40))(a1);
          v61 = 259;
          (*(*a1 + 24))(v65, a1, v41, &v59);
          v22 = v65;
          goto LABEL_82;
        }

        LODWORD(v46) = v59;
        BYTE4(v51) = 1;
        continue;
      }

      if (((v51 | v11) & 1) == 0 && *v9 == 1701869940)
      {
        v59 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(a1, &v59))
        {
          v42 = (*(*a1 + 40))(a1);
          v61 = 259;
          (*(*a1 + 24))(v63, a1, v42, &v59);
          v22 = v63;
          goto LABEL_82;
        }

        v45 = v59;
        LODWORD(v51) = 1;
        continue;
      }

LABEL_35:
      if (v5 & 1 | (v10 != 5))
      {
        goto LABEL_76;
      }

      if (*v9 != 1734437990 || *(v9 + 4) != 115)
      {
        v10 = 5;
LABEL_76:
        v35 = (*(*a1 + 40))(a1);
        v54 = "duplicate or unknown struct parameter name: ";
        v55 = 259;
        (*(*a1 + 24))(&v59, a1, v35, &v54);
        if (v59)
        {
          v57 = 261;
          v56[0] = v9;
          v56[1] = v10;
          mlir::Diagnostic::operator<<(&v60, v56);
        }

        v22 = &v59;
LABEL_82:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
        return 0;
      }

      v16 = mlir::FieldParser<mlir::LLVM::DIFlags,mlir::LLVM::DIFlags>::parse<mlir::AsmParser>(a1);
      if ((v16 & 0x100000000) == 0)
      {
        v36 = (*(*a1 + 40))(a1);
        v61 = 259;
        (*(*a1 + 24))(v62, a1, v36, &v59);
        v22 = v62;
        goto LABEL_82;
      }

      v7 = v16;
      v8 = HIDWORD(v16) & 1;
      v5 = 1;
      continue;
    }

    if (*v9 != 1886348147 || *(v9 + 4) != 101)
    {
      goto LABEL_35;
    }

    v59 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v59))
    {
      v37 = (*(*a1 + 40))(a1);
      v61 = 259;
      (*(*a1 + 24))(__dst, a1, v37, &v59);
LABEL_81:
      v22 = __dst;
      goto LABEL_82;
    }

    *v50 = v59;
    v6 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v34 = (*(*a1 + 40))(a1);
    v68 = "struct is missing required parameter: ";
    LOWORD(v73) = 259;
    (*(*a1 + 24))(__dst, a1, v34, &v68);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<6ul>(__dst + 8, "scope");
    }

    goto LABEL_81;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = *(*(*a1 + 32))(a1);
  v25 = v47;
  v24 = v48;
  if ((v4 & 1) == 0)
  {
    v24 = 0;
  }

  v26 = *v23;
  if ((v2 & 1) == 0)
  {
    v25 = 0;
  }

  v66[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id;
  v66[1] = v23;
  v67[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjjjNS2_10DITypeAttrENS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v67[1] = v66;
  v27 = HIDWORD(v46);
  if ((v3 & 1) == 0)
  {
    v27 = 0;
  }

  v28 = v46;
  if ((v51 & 0x100000000) == 0)
  {
    v28 = 0;
  }

  v68 = *v50;
  v69 = v24;
  v29 = v44;
  if ((v49 & 1) == 0)
  {
    v29 = 0;
  }

  v70 = v25;
  v30 = v45;
  if ((v51 & 1) == 0)
  {
    v30 = 0;
  }

  if (v8)
  {
    v31 = v7;
  }

  else
  {
    v31 = 0;
  }

  v71 = v27;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75[0] = v31;
  memset(v79, 0, sizeof(v79));
  v78 = 0u;
  v77 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v80 = 0;
  v81 = 0xFF51AFD7ED558CCDLL;
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(__dst, __dst, v79, v50[0], &v69, &v70, &v71, &v72, &v73, &v74, v75);
  v65[0] = &v68;
  *&__dst[0] = &v68;
  *(&__dst[0] + 1) = v67;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v26 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, v32, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

llvm::raw_ostream *mlir::LLVM::DILocalVariableAttr::print(mlir::LLVM::DILocalVariableAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = *this;
  if (*(*this + 16))
  {
    v9 = (*(*a2 + 16))(a2);
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

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 540876901;
      *v12 = 1701667182;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "name = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }
  }

  if (*(v8 + 24))
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 6uLL)
    {
      *(v16 + 3) = 540876901;
      *v16 = 1701603686;
      *(v15 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v15, "file = ", 7uLL);
    }

    v8 = *this;
    v17 = *(*this + 24);
    if (v17)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v17);
      v8 = *this;
    }
  }

  if (*(v8 + 32))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876901;
      *v21 = 1701734764;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "line = ", 7uLL);
    }

    v8 = *this;
    v22 = *(*this + 32);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 36))
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 1uLL)
    {
      *v25 = 8236;
      *(v24 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v24, ", ", 2uLL);
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if ((*(v26 + 3) - v27) > 5)
    {
      *(v27 + 4) = 8253;
      *v27 = 543650401;
      *(v26 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v26, "arg = ", 6uLL);
    }

    v8 = *this;
    v28 = *(*this + 36);
    if (v28)
    {
      v29 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v29, v28, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 40))
  {
    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) - v31 > 1uLL)
    {
      *v31 = 8236;
      *(v30 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v30, ", ", 2uLL);
    }

    v32 = (*(*a2 + 16))(a2);
    v33 = *(v32 + 4);
    if (*(v32 + 3) - v33 > 0xDuLL)
    {
      qmemcpy(v33, "alignInBits = ", 14);
      *(v32 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v32, "alignInBits = ", 0xEuLL);
    }

    v8 = *this;
    v34 = *(*this + 40);
    if (v34)
    {
      v35 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v35, v34, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 48))
  {
    v36 = (*(*a2 + 16))(a2);
    v37 = *(v36 + 4);
    if (*(v36 + 3) - v37 > 1uLL)
    {
      *v37 = 8236;
      *(v36 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v36, ", ", 2uLL);
    }

    v38 = (*(*a2 + 16))(a2);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 6uLL)
    {
      *(v39 + 3) = 540876901;
      *v39 = 1701869940;
      *(v38 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v38, "type = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }
  }

  if (*(v8 + 56))
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

    v42 = (*(*a2 + 16))(a2);
    v43 = *(v42 + 4);
    if (*(v42 + 3) - v43 > 7uLL)
    {
      *v43 = 0x203D207367616C66;
      *(v42 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v42, "flags = ", 8uLL);
    }

    v44 = *(*this + 56);
    if (v44)
    {
      v45 = (*(*a2 + 16))(a2);
      llvm::operator<<(v45, v44);
    }
  }

  result = (*(*a2 + 16))(a2);
  v47 = *(result + 4);
  if (*(result + 3) == v47)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v47 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DISubprogramAttr::get(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, __int128 a14, unsigned int *a15, uint64_t a16)
{
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v76 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v40[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id;
  v40[1] = a1;
  v56[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DISubprogramAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DISubprogramAttrEJNS1_12DistinctAttrEbSD_NS2_17DICompileUnitAttrENS2_11DIScopeAttrENS1_10StringAttrESG_NS2_10DIFileAttrEjjNS2_17DISubprogramFlagsENS2_20DISubroutineTypeAttrENS_8ArrayRefINS2_10DINodeAttrEEESM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_;
  v56[1] = v40;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  *&v68[8] = 0u;
  v69 = 0u;
  v74 = 0;
  v75 = 0xFF51AFD7ED558CCDLL;
  __dst = ((a2 >> 4) ^ (a2 >> 9));
  v68[0] = a3;
  *&v68[1] = (a4 >> 4) ^ (a4 >> 9);
  v57 = 0;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v57, &v68[9], &v71, (a5 >> 4) ^ (a5 >> 9));
  v58 = v57;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v58, v20, &v71, (v18 >> 4) ^ (v18 >> 9));
  v59 = v58;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v59, v21, &v71, (v17 >> 4) ^ (v17 >> 9));
  v60 = v59;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v60, v22, &v71, (v16 >> 4) ^ (v16 >> 9));
  v61 = v60;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v61, v23, &v71, (a9 >> 4) ^ (a9 >> 9));
  v62 = v61;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&__dst, &v62, v24, &v71, a10);
  v63 = v62;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&__dst, &v63, v25, &v71, a11);
  v27 = v63;
  LODWORD(__src) = a12;
  p_dst = (v26 + 1);
  if (v26 + 1 <= &v71)
  {
    *v26 = a12;
  }

  else
  {
    v29 = (&v71 - v26);
    memcpy(v26, &__src, &v71 - v26);
    if (v27)
    {
      llvm::hashing::detail::hash_state::mix(&v71, &__dst, v30, v31);
      v27 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(v64, &__dst, v75, v30, v31);
      v71 = v64[0];
      v72 = v64[1];
      v73 = v64[2];
      v74 = v65;
      v27 = 64;
    }

    v32 = 4 - v29;
    p_dst = &__dst;
    if (4 - v29 <= 64)
    {
      p_dst = &v68[v32 - 8];
      memcpy(&__dst, &__src + v29, v32);
    }
  }

  __src = v27;
  v33 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &__src, p_dst, &v71, (a13 >> 4) ^ (a13 >> 9));
  *&v64[0] = __src;
  v36 = llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(v53, (v53 + 8 * *(&v53 + 1)), v34, v35);
  v37 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, v64, v33, &v71, v36);
  v38 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(&__dst, *&v64[0], v37, &v71, v54, v55);
  *&v64[0] = &v41;
  __dst = &v41;
  *v68 = v56;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v19 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, v38, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
}

uint64_t mlir::LLVM::DISubprogramAttr::parse(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v55) = 0;
  v56 = 0;
  v54 = 0;
  LOBYTE(v52) = 0;
  v53 = 0;
  LOBYTE(v50) = 0;
  v51 = 0;
  LOBYTE(v48) = 0;
  v49 = 0;
  LOBYTE(v46) = 0;
  v47 = 0;
  LOBYTE(v44) = 0;
  v45 = 0;
  LOBYTE(v42) = 0;
  v43 = 0;
  LOBYTE(v40) = 0;
  v41 = 0;
  LOBYTE(v38) = 0;
  v39 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v72[0]) = 0;
  v74 = 0;
  LOBYTE(v69[0]) = 0;
  v71 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    v4 = 0;
    goto LABEL_56;
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v66 = a1;
  v67 = &v33 + 3;
  v68[0] = &v55;
  v68[1] = &v33 + 2;
  v68[2] = &v54;
  v68[3] = &v33 + 1;
  v68[4] = &v52;
  v68[5] = &v33;
  v68[6] = &v50;
  v68[7] = &v32 + 3;
  v68[8] = &v48;
  v68[9] = &v32 + 2;
  v68[10] = &v46;
  v68[11] = &v32 + 1;
  v68[12] = &v44;
  v68[13] = &v32;
  v68[14] = &v42;
  v68[15] = &v31 + 3;
  v68[16] = &v40;
  v68[17] = &v31 + 2;
  v68[18] = &v38;
  v68[19] = &v31 + 1;
  v68[20] = &v36;
  v68[21] = &v31;
  v68[22] = &v34;
  v68[23] = &v30 + 1;
  v68[24] = v72;
  v68[25] = &v30;
  v68[26] = v69;
  v60 = 0;
  v61 = 0;
  if ((*(*a1 + 416))(a1, &v60))
  {
    v2 = v60;
    for (i = v61; mlir::LLVM::DISubprogramAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v66, v2, i); i = v58)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v57 = 0;
      v58 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v57))
      {
        v19 = (*(*a1 + 40))(a1);
        v63[0] = "expected a parameter name in struct";
        v64[8] = 259;
        (*(*a1 + 24))(v65, a1, v19, v63);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v65);
        break;
      }

      v2 = v57;
    }
  }

  else
  {
LABEL_9:
    if ((*(*a1 + 168))(a1))
    {
      v5 = *(*(*a1 + 32))(a1);
      if (v56)
      {
        v6 = v55;
      }

      else
      {
        v6 = 0;
      }

      v28 = v6;
      v29 = v5;
      v26 = HIBYTE(v54) & v54;
      if (v53)
      {
        v7 = v52;
      }

      else
      {
        v7 = 0;
      }

      v27 = v7;
      if (v51)
      {
        v8 = v50;
      }

      else
      {
        v8 = 0;
      }

      if (v49)
      {
        v9 = v48;
      }

      else
      {
        v9 = 0;
      }

      v24 = v9;
      v25 = v8;
      if (v47)
      {
        v10 = v46;
      }

      else
      {
        v10 = 0;
      }

      if (v45)
      {
        v11 = v44;
      }

      else
      {
        v11 = 0;
      }

      v22 = v11;
      v23 = v10;
      if (v43)
      {
        v12 = v42;
      }

      else
      {
        v12 = 0;
      }

      if (v41)
      {
        v13 = v40;
      }

      else
      {
        v13 = 0;
      }

      if (v39)
      {
        v14 = v38;
      }

      else
      {
        v14 = 0;
      }

      if (v37)
      {
        v15 = v36;
      }

      else
      {
        v15 = 0;
      }

      if (v35)
      {
        v16 = v34;
      }

      else
      {
        v16 = 0;
      }

      v63[0] = v64;
      v63[1] = 0x600000000;
      std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v66, v72, v63);
      v17 = v66;
      v18 = v67;
      v57 = v59;
      v58 = 0x600000000;
      std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v60, v69, &v57);
      *&v21 = v17;
      *(&v21 + 1) = v18;
      v4 = mlir::LLVM::DISubprogramAttr::get(v29, v28, v26 & 1, v27, v25, v24, v23, v22, v12, v13, v14, v15, v16, v21, v60, v61);
      if (v60 != &v62)
      {
        free(v60);
      }

      if (v57 != v59)
      {
        free(v57);
      }

      if (v66 != v68)
      {
        free(v66);
      }

      if (v63[0] != v64)
      {
        free(v63[0]);
      }

      goto LABEL_53;
    }
  }

  v4 = 0;
LABEL_53:
  if ((v71 & 1) != 0 && v69[0] != &v70)
  {
    free(v69[0]);
  }

LABEL_56:
  if (v74 == 1 && v72[0] != &v73)
  {
    free(v72[0]);
  }

  return v4;
}

uint64_t mlir::LLVM::DISubprogramAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v126[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 5)
  {
    v20 = a1[3];
    v9 = a3 != 9;
    if ((*v20 & 1) == 0 && a3 == 9)
    {
      v21 = *a2 == 0x6C65536365527369 && *(a2 + 8) == 102;
      v8 = 1;
      if (v21)
      {
        *v20 = 1;
        v54 = *a1;
        LOBYTE(v108) = 0;
        v55 = mlir::AsmParser::parseInteger<BOOL>(v54, &v108);
        v56 = v108;
        if ((v55 & 1) == 0)
        {
          v56 = 0;
        }

        *a1[4] = v56 | ((v55 & 1) << 8);
        if ((*(a1[4] + 1) & 1) == 0)
        {
          v57 = *a1;
          v58 = (*(*v57 + 40))(v57);
          v111 = 259;
          (*(*v57 + 24))(v125, v57, v58, &v108);
          v19 = v125;
          goto LABEL_87;
        }

        return v8;
      }

      v9 = 0;
      v12 = 1;
      goto LABEL_59;
    }

    v22 = a1[5];
    if ((*v22 & 1) == 0 && a3 == 2)
    {
      if (*a2 != 25705)
      {
        goto LABEL_84;
      }

      v8 = 1;
      *v22 = 1;
      v23 = *a1;
      v108 = 0;
      v24 = mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(v23, &v108);
      v25 = v108;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = a1[6];
      *v26 = v25;
      *(v26 + 8) = v24;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v27 = *a1;
        v28 = (*(*v27 + 40))(v27);
        v111 = 259;
        (*(*v27 + 24))(v124, v27, v28, &v108);
        v19 = v124;
        goto LABEL_87;
      }

      return v8;
    }

    v36 = a1[7];
    LODWORD(v8) = a3 != 11;
    if ((*v36 & 1) == 0 && a3 == 11)
    {
      v37 = *a2 == 0x55656C69706D6F63 && *(a2 + 3) == 0x74696E55656C6970;
      v8 = 1;
      if (v37)
      {
        *v36 = 1;
        v97 = mlir::FieldParser<mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DICompileUnitAttr>::parse(*a1);
        v98 = a1[8];
        *v98 = v97;
        *(v98 + 8) = v99;
        if (*(a1[8] + 8))
        {
          return v8;
        }

        v100 = *a1;
        v101 = (*(*v100 + 40))(v100);
        v111 = 259;
        (*(*v100 + 24))(v123, v100, v101, &v108);
        v19 = v123;
        goto LABEL_87;
      }

      LODWORD(v8) = 0;
      v12 = 1;
      v9 = 1;
LABEL_48:
      v38 = a1[13];
      if ((*v38 & 1) == 0 && (v8 & 1) == 0)
      {
        if (*a2 == 0x4E6567616B6E696CLL && *(a2 + 3) == 0x656D614E6567616BLL)
        {
          v8 = 1;
          *v38 = 1;
          v65 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v66 = a1[14];
          *v66 = v65;
          *(v66 + 8) = v67;
          if (*(a1[14] + 8))
          {
            return v8;
          }

          v68 = *a1;
          v69 = (*(*v68 + 40))(v68);
          v111 = 259;
          (*(*v68 + 24))(v120, v68, v69, &v108);
          v19 = v120;
          goto LABEL_87;
        }

        LODWORD(v8) = 0;
      }

      v40 = a1[15];
      if (((*v40 | v12) & 1) == 0 && *a2 == 1701603686)
      {
        v8 = 1;
        *v40 = 1;
        v74 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(*a1);
        v75 = a1[16];
        *v75 = v74;
        *(v75 + 8) = v76;
        if (*(a1[16] + 8))
        {
          return v8;
        }

        v77 = *a1;
        v78 = (*(*v77 + 40))(v77);
        v111 = 259;
        (*(*v77 + 24))(v119, v77, v78, &v108);
        v19 = v119;
        goto LABEL_87;
      }

      v41 = a1[17];
      if (((*v41 | v12) & 1) == 0 && *a2 == 1701734764)
      {
        v8 = 1;
        *v41 = 1;
        v84 = *a1;
        LODWORD(v108) = 0;
        v85 = mlir::AsmParser::parseInteger<unsigned int>(v84, &v108);
        v86 = v108;
        if ((v85 & 1) == 0)
        {
          v86 = 0;
        }

        v87 = a1[18];
        *(v87 + 4) = v85 & 1;
        *v87 = v86;
        if ((*(a1[18] + 4) & 1) == 0)
        {
          v88 = *a1;
          v89 = (*(*v88 + 40))(v88);
          v111 = 259;
          (*(*v88 + 24))(v118, v88, v89, &v108);
          v19 = v118;
          goto LABEL_87;
        }

        return v8;
      }

LABEL_59:
      v42 = a1[19];
      if ((*v42 & 1) != 0 || v9 || (*a2 == 0x6E694C65706F6373 ? (v43 = *(a2 + 8) == 101) : (v43 = 0), !v43))
      {
        v44 = a1[21];
        if ((*v44 & 1) == 0 && a3 == 15 && *a2 == 0x72676F7270627573 && *(a2 + 7) == 0x7367616C466D6172)
        {
          v8 = 1;
          *v44 = 1;
          v70 = mlir::FieldParser<mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubprogramFlags>::parse<mlir::AsmParser>(*a1);
          v71 = a1[22];
          *v71 = v70;
          *(v71 + 4) = BYTE4(v70);
          if (*(a1[22] + 4))
          {
            return v8;
          }

          v72 = *a1;
          v73 = (*(*v72 + 40))(v72);
          v111 = 259;
          (*(*v72 + 24))(v116, v72, v73, &v108);
          v19 = v116;
          goto LABEL_87;
        }

        v46 = a1[23];
        if (((*v46 | v12) & 1) == 0 && *a2 == 1701869940)
        {
          v8 = 1;
          *v46 = 1;
          v79 = mlir::FieldParser<mlir::LLVM::DISubroutineTypeAttr,mlir::LLVM::DISubroutineTypeAttr>::parse(*a1);
          v80 = a1[24];
          *v80 = v79;
          *(v80 + 8) = v81;
          if (*(a1[24] + 8))
          {
            return v8;
          }

          v82 = *a1;
          v83 = (*(*v82 + 40))(v82);
          v111 = 259;
          (*(*v82 + 24))(v115, v82, v83, &v108);
          v19 = v115;
          goto LABEL_87;
        }

        v47 = a1[25];
        if ((*v47 & 1) == 0 && a3 == 13 && (*a2 == 0x64656E6961746572 ? (v48 = *(a2 + 5) == 0x7365646F4E64656ELL) : (v48 = 0), v48))
        {
          *v47 = 1;
          mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v108, *a1);
          std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(a1[26], &v108);
          if (v112 == 1 && v108 != v110)
          {
            free(v108);
          }

          if (*(a1[26] + 64))
          {
            return 1;
          }

          v95 = *a1;
          v96 = (*(*v95 + 40))(v95);
          v111 = 259;
          (*(*v95 + 24))(v114, v95, v96, &v108);
          v19 = v114;
        }

        else
        {
          v49 = a1[27];
          if (((*v49 | v8) & 1) != 0 || (*a2 == 0x697461746F6E6E61 ? (v50 = *(a2 + 3) == 0x736E6F697461746FLL) : (v50 = 0), !v50))
          {
LABEL_84:
            v51 = *a1;
            v52 = (*(*v51 + 40))(v51);
            v104 = "duplicate or unknown struct parameter name: ";
            v105 = 259;
            (*(*v51 + 24))(&v108, v51, v52, &v104);
            if (v108)
            {
              v107 = 261;
              v106[0] = a2;
              v106[1] = a3;
              mlir::Diagnostic::operator<<(&v109, v106);
            }

            v19 = &v108;
            goto LABEL_87;
          }

          *v49 = 1;
          mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v108, *a1);
          std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(a1[28], &v108);
          if (v112 == 1 && v108 != v110)
          {
            free(v108);
          }

          if (*(a1[28] + 64))
          {
            return 1;
          }

          v102 = *a1;
          v103 = (*(*v102 + 40))(v102);
          v111 = 259;
          (*(*v102 + 24))(v113, v102, v103, &v108);
          v19 = v113;
        }

LABEL_87:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
        return 0;
      }

      v8 = 1;
      *v42 = 1;
      v59 = *a1;
      LODWORD(v108) = 0;
      v60 = mlir::AsmParser::parseInteger<unsigned int>(v59, &v108);
      v61 = v108;
      if ((v60 & 1) == 0)
      {
        v61 = 0;
      }

      v62 = a1[20];
      *(v62 + 4) = v60 & 1;
      *v62 = v61;
      if ((*(a1[20] + 4) & 1) == 0)
      {
        v63 = *a1;
        v64 = (*(*v63 + 40))(v63);
        v111 = 259;
        (*(*v63 + 24))(v117, v63, v64, &v108);
        v19 = v117;
        goto LABEL_87;
      }

      return v8;
    }
  }

  else
  {
    v7 = *a2 == 1231250802 && *(a2 + 4) == 100;
    v8 = 1;
    v9 = 1;
    if (v7)
    {
      *v6 = 1;
      v30 = *a1;
      v108 = 0;
      v31 = mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(v30, &v108);
      v32 = v108;
      if (!v31)
      {
        v32 = 0;
      }

      v33 = a1[2];
      *v33 = v32;
      *(v33 + 8) = v31;
      if ((*(a1[2] + 8) & 1) == 0)
      {
        v34 = *a1;
        v35 = (*(*v34 + 40))(v34);
        v111 = 259;
        (*(*v34 + 24))(v126, v34, v35, &v108);
        v19 = v126;
        goto LABEL_87;
      }

      return v8;
    }
  }

  v10 = a1[9];
  if ((*v10 & 1) != 0 || a3 != 5)
  {
    v29 = a1[11];
    v12 = a3 != 4;
    if ((*v29 & 1) == 0 && a3 == 4)
    {
      if (*a2 == 1701667182)
      {
        v8 = 1;
        *v29 = 1;
        v90 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
        v91 = a1[12];
        *v91 = v90;
        *(v91 + 8) = v92;
        if (*(a1[12] + 8))
        {
          return v8;
        }

        v93 = *a1;
        v94 = (*(*v93 + 40))(v93);
        v111 = 259;
        (*(*v93 + 24))(v121, v93, v94, &v108);
        v19 = v121;
        goto LABEL_87;
      }

      v12 = 0;
    }

    goto LABEL_48;
  }

  v11 = *a2 == 1886348147 && *(a2 + 4) == 101;
  v12 = 1;
  if (!v11)
  {
    goto LABEL_48;
  }

  *v10 = 1;
  v13 = *a1;
  v108 = 0;
  v14 = mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(v13, &v108);
  v15 = v108;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = a1[10];
  *v16 = v15;
  *(v16 + 8) = v14;
  v8 = 1;
  if ((*(a1[10] + 8) & 1) == 0)
  {
    v17 = *a1;
    v18 = (*(*v17 + 40))(v17);
    v111 = 259;
    (*(*v17 + 24))(v122, v17, v18, &v108);
    v19 = v122;
    goto LABEL_87;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::DISubprogramAttr::print(mlir::LLVM::DISubprogramAttr *this, mlir::AsmPrinter *a2)
{
  v100[4] = *MEMORY[0x277D85DE8];
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

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 7uLL)
    {
      *v8 = 0x203D206449636572;
      *(v7 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "recId = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if ((*(v9 + 16) & 1) == 0)
    {
      goto LABEL_36;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if ((*(v6 + 16) & 1) == 0)
  {
    if (!*(v6 + 24))
    {
      if (!*(v6 + 32))
      {
        if (!*(v6 + 40))
        {
          if (!*(v6 + 48))
          {
            if (!*(v6 + 56))
            {
              if (!*(v6 + 64))
              {
                if (!*(v6 + 72))
                {
                  if (!*(v6 + 76))
                  {
                    if (!*(v6 + 80))
                    {
                      if (!*(v6 + 88))
                      {
                        if (!*(v6 + 104))
                        {
                          if (!*(v6 + 120))
                          {
                            goto LABEL_203;
                          }

                          goto LABEL_198;
                        }

                        goto LABEL_189;
                      }

                      goto LABEL_177;
                    }

                    goto LABEL_115;
                  }

                  goto LABEL_106;
                }

                goto LABEL_97;
              }

              goto LABEL_88;
            }

            goto LABEL_79;
          }

          goto LABEL_70;
        }

        goto LABEL_61;
      }

      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0xB)
  {
    *(v13 + 8) = 540876902;
    *v13 = *"isRecSelf = ";
    *(v12 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v12, "isRecSelf = ", 0xCuLL);
  }

  v9 = *this;
  if (*(*this + 16) == 1)
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 3uLL)
    {
      *v15 = 1702195828;
      *(v14 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v14, "true", 4uLL);
    }

    v9 = *this;
  }

LABEL_36:
  if (!*(v9 + 24))
  {
    goto LABEL_45;
  }

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

LABEL_40:
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) > 4)
  {
    *(v19 + 4) = 32;
    *v19 = 1025533033;
    *(v18 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v18, "id = ", 5uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_45:
  if (*(v9 + 32))
  {
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 1uLL)
    {
      *v21 = 8236;
      *(v20 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v20, ", ", 2uLL);
    }

LABEL_49:
    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 0xDuLL)
    {
      qmemcpy(v23, "compileUnit = ", 14);
      *(v22 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v22, "compileUnit = ", 0xEuLL);
    }

    v9 = *this;
    v24 = *(*this + 32);
    if (v24)
    {
      v98 = *(*this + 32);
      if (((*(*a2 + 56))(a2, v24) & 1) == 0)
      {
        v25 = (*(*a2 + 16))(a2);
        v26 = (*(*v25 + 80))(v25) + v25[4] - v25[2];
        mlir::LLVM::DICompileUnitAttr::print(&v98, a2);
        if (v26 == (*(*v25 + 80))(v25) + v25[4] - v25[2])
        {
          (*(*a2 + 40))(a2, v24);
        }
      }

      v9 = *this;
    }
  }

  if (!*(v9 + 40))
  {
    goto LABEL_66;
  }

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

LABEL_61:
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 7uLL)
  {
    *v30 = 0x203D2065706F6373;
    *(v29 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v29, "scope = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 40))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_66:
  if (*(v9 + 48))
  {
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 1uLL)
    {
      *v32 = 8236;
      *(v31 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v31, ", ", 2uLL);
    }

LABEL_70:
    v33 = (*(*a2 + 16))(a2);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 6uLL)
    {
      *(v34 + 3) = 540876901;
      *v34 = 1701667182;
      *(v33 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v33, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 56))
  {
    goto LABEL_84;
  }

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

LABEL_79:
  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 0xDuLL)
  {
    qmemcpy(v38, "linkageName = ", 14);
    *(v37 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v37, "linkageName = ", 0xEuLL);
  }

  v9 = *this;
  if (*(*this + 56))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_84:
  if (*(v9 + 64))
  {
    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 > 1uLL)
    {
      *v40 = 8236;
      *(v39 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", ", 2uLL);
    }

LABEL_88:
    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if (*(v41 + 3) - v42 > 6uLL)
    {
      *(v42 + 3) = 540876901;
      *v42 = 1701603686;
      *(v41 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v41, "file = ", 7uLL);
    }

    v9 = *this;
    v43 = *(*this + 64);
    if (v43)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v43);
      v9 = *this;
    }
  }

  if (!*(v9 + 72))
  {
    goto LABEL_102;
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (*(v44 + 3) - v45 > 1uLL)
  {
    *v45 = 8236;
    *(v44 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v44, ", ", 2uLL);
  }

LABEL_97:
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) - v47 > 6uLL)
  {
    *(v47 + 3) = 540876901;
    *v47 = 1701734764;
    *(v46 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v46, "line = ", 7uLL);
  }

  v9 = *this;
  v48 = *(*this + 72);
  if (v48)
  {
    v49 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v49, v48, 0, 0, 0);
    v9 = *this;
  }

LABEL_102:
  if (*(v9 + 76))
  {
    v50 = (*(*a2 + 16))(a2);
    v51 = *(v50 + 4);
    if (*(v50 + 3) - v51 > 1uLL)
    {
      *v51 = 8236;
      *(v50 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v50, ", ", 2uLL);
    }

LABEL_106:
    v52 = (*(*a2 + 16))(a2);
    v53 = *(v52 + 4);
    if ((*(v52 + 3) - v53) > 0xB)
    {
      *(v53 + 8) = 540876901;
      *v53 = *"scopeLine = ";
      *(v52 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v52, "scopeLine = ", 0xCuLL);
    }

    v9 = *this;
    v54 = *(*this + 76);
    if (v54)
    {
      v55 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v55, v54, 0, 0, 0);
      v9 = *this;
    }
  }

  if (!*(v9 + 80))
  {
    goto LABEL_173;
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (*(v56 + 3) - v57 > 1uLL)
  {
    *v57 = 8236;
    *(v56 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v56, ", ", 2uLL);
  }

LABEL_115:
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if ((*(v58 + 3) - v59) > 0x11)
  {
    *(v59 + 16) = 8253;
    *v59 = *"subprogramFlags = ";
    *(v58 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v58, "subprogramFlags = ", 0x12uLL);
  }

  v9 = *this;
  v60 = *(*this + 80);
  if (v60)
  {
    v61 = (*(*a2 + 16))(a2);
    v98 = v100;
    v99 = 0x200000000;
    if (v60)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Virtual", 7);
      if ((v60 & 2) == 0)
      {
LABEL_121:
        if ((v60 & 4) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_149;
      }
    }

    else if ((v60 & 2) == 0)
    {
      goto LABEL_121;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "PureVirtual", 11);
    if ((v60 & 4) == 0)
    {
LABEL_122:
      if ((v60 & 8) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_150;
    }

LABEL_149:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "LocalToUnit", 11);
    if ((v60 & 8) == 0)
    {
LABEL_123:
      if ((v60 & 0x10) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_151;
    }

LABEL_150:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Definition", 10);
    if ((v60 & 0x10) == 0)
    {
LABEL_124:
      if ((v60 & 0x20) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_152;
    }

LABEL_151:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Optimized", 9);
    if ((v60 & 0x20) == 0)
    {
LABEL_125:
      if ((v60 & 0x40) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_153;
    }

LABEL_152:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Pure", 4);
    if ((v60 & 0x40) == 0)
    {
LABEL_126:
      if ((v60 & 0x80) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_154;
    }

LABEL_153:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Elemental", 9);
    if ((v60 & 0x80) == 0)
    {
LABEL_127:
      if ((v60 & 0x100) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_155;
    }

LABEL_154:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Recursive", 9);
    if ((v60 & 0x100) == 0)
    {
LABEL_128:
      if ((v60 & 0x200) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_156;
    }

LABEL_155:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "MainSubprogram", 14);
    if ((v60 & 0x200) == 0)
    {
LABEL_129:
      if ((v60 & 0x800) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

LABEL_156:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "Deleted", 7);
    if ((v60 & 0x800) == 0)
    {
LABEL_131:
      v62 = v98;
      v63 = v99;
      memset(&__p, 0, sizeof(__p));
      if (v99)
      {
        v64 = 16 * v99;
        v65 = v99 - 1;
        v66 = 8;
        v67 = v98 + v64;
        do
        {
          v65 += *(v98 + v66);
          v66 += 16;
          v64 -= 16;
        }

        while (v64);
        std::string::reserve(&__p, v65);
        std::string::append(&__p, *v62, *(v62 + 1));
        if (v63 != 1)
        {
          v68 = v62 + 16;
          do
          {
            std::string::append(&__p, "|", 1uLL);
            v69 = *v68;
            v70 = *(v68 + 1);
            v68 += 16;
            std::string::append(&__p, v69, v70);
          }

          while (v68 != v67);
        }
      }

      if (v98 != v100)
      {
        free(v98);
      }

      if ((v60 & (v60 - 1)) != 0)
      {
        v73 = *(v61 + 4);
        if (v73 >= *(v61 + 3))
        {
          llvm::raw_ostream::write(v61, 34);
        }

        else
        {
          *(v61 + 4) = v73 + 1;
          *v73 = 34;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v76 = llvm::raw_ostream::write(v61, p_p, size);
        v77 = *(v76 + 4);
        if (v77 >= *(v76 + 3))
        {
          llvm::raw_ostream::write(v76, 34);
        }

        else
        {
          *(v76 + 4) = v77 + 1;
          *v77 = 34;
        }
      }

      else
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &__p;
        }

        else
        {
          v71 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v72 = __p.__r_.__value_.__l.__size_;
        }

        llvm::raw_ostream::write(v61, v71, v72);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 = *this;
      goto LABEL_173;
    }

LABEL_130:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v98, "ObjCDirect", 10);
    goto LABEL_131;
  }

LABEL_173:
  if (!*(v9 + 88))
  {
    goto LABEL_185;
  }

  v78 = (*(*a2 + 16))(a2);
  v79 = *(v78 + 4);
  if (*(v78 + 3) - v79 > 1uLL)
  {
    *v79 = 8236;
    *(v78 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v78, ", ", 2uLL);
  }

LABEL_177:
  v80 = (*(*a2 + 16))(a2);
  v81 = *(v80 + 4);
  if (*(v80 + 3) - v81 > 6uLL)
  {
    *(v81 + 3) = 540876901;
    *v81 = 1701869940;
    *(v80 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v80, "type = ", 7uLL);
  }

  v9 = *this;
  v82 = *(*this + 88);
  if (v82)
  {
    v98 = *(*this + 88);
    if (((*(*a2 + 56))(a2, v82) & 1) == 0)
    {
      v83 = (*(*a2 + 16))(a2);
      v84 = (*(*v83 + 80))(v83) + v83[4] - v83[2];
      mlir::LLVM::DISubroutineTypeAttr::print(&v98, a2);
      if (v84 == (*(*v83 + 80))(v83) + v83[4] - v83[2])
      {
        (*(*a2 + 40))(a2, v82);
      }
    }

    v9 = *this;
  }

LABEL_185:
  if (*(v9 + 104))
  {
    v85 = (*(*a2 + 16))(a2);
    v86 = *(v85 + 4);
    if (*(v85 + 3) - v86 > 1uLL)
    {
      *v86 = 8236;
      *(v85 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v85, ", ", 2uLL);
    }

LABEL_189:
    v87 = (*(*a2 + 16))(a2);
    v88 = *(v87 + 4);
    if (*(v87 + 3) - v88 > 0xFuLL)
    {
      *v88 = *"retainedNodes = ";
      *(v87 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v87, "retainedNodes = ", 0x10uLL);
    }

    v9 = *this;
    v89 = *(*this + 104);
    if (v89)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(v9 + 96), v89);
      v9 = *this;
    }
  }

  if (!*(v9 + 120))
  {
    goto LABEL_203;
  }

  v90 = (*(*a2 + 16))(a2);
  v91 = *(v90 + 4);
  if (*(v90 + 3) - v91 > 1uLL)
  {
    *v91 = 8236;
    *(v90 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v90, ", ", 2uLL);
  }

LABEL_198:
  v92 = (*(*a2 + 16))(a2);
  v93 = *(v92 + 4);
  if (*(v92 + 3) - v93 > 0xDuLL)
  {
    qmemcpy(v93, "annotations = ", 14);
    *(v92 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v92, "annotations = ", 0xEuLL);
  }

  v94 = *(*this + 120);
  if (v94)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(*this + 112), v94);
  }

LABEL_203:
  result = (*(*a2 + 16))(a2);
  v96 = *(result + 4);
  if (*(result + 3) == v96)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v96 = 62;
  ++*(result + 4);
  return result;
}

uint64_t mlir::LLVM::DIModuleAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v22[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id;
  v22[1] = a1;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19DIModuleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12DIModuleAttrEJNS2_10DIFileAttrENS2_11DIScopeAttrENS1_10StringAttrESF_SF_SF_jbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v26[1] = v22;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v24 = a8;
  v25 = a9;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  v37 = 0;
  v38 = 0xFF51AFD7ED558CCDLL;
  v33 = ((a2 >> 4) ^ (a2 >> 9));
  v34 = ((a3 >> 4) ^ (a3 >> 9));
  v27 = 0;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v33, &v27, v35, v36, (a4 >> 4) ^ (a4 >> 9));
  v28 = v27;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v33, &v28, v14, v36, (v12 >> 4) ^ (v12 >> 9));
  v29 = v28;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v33, &v29, v15, v36, (v11 >> 4) ^ (v11 >> 9));
  v30 = v29;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v33, &v30, v16, v36, (v10 >> 4) ^ (v10 >> 9));
  v31 = v30;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v33, &v31, v17, v36, a8);
  v32 = v31;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v33, &v32, v18, v36, a9);
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v33, v32, v19, v36);
  v32 = v23;
  v33 = v23;
  v34 = v26;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, v20, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIModuleAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIModuleAttrStorage,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DIModuleAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIModuleAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIModuleAttrStorage,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DIModuleAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v33);
}

uint64_t mlir::LLVM::DIModuleAttr::parse(mlir::AsmParser *a1)
{
  v39[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  v24 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20[0] = a1;
  v20[1] = &v23 + 1;
  v20[2] = &v37;
  v20[3] = &v23;
  v20[4] = &v35;
  v20[5] = &v22 + 3;
  v20[6] = &v33;
  v20[7] = &v22 + 2;
  v20[8] = &v31;
  v20[9] = &v22 + 1;
  v20[10] = &v29;
  v20[11] = &v22;
  v20[12] = &v27;
  v20[13] = &v21 + 1;
  v20[14] = &v25;
  v20[15] = &v21;
  v20[16] = &v24;
  v18 = 0;
  v19 = 0;
  if ((*(*a1 + 416))(a1, &v18))
  {
    v2 = v18;
    for (i = v19; mlir::LLVM::DIModuleAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v20, v2, i); i = v17)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v16 = 0;
      v17 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v16))
      {
        v13 = (*(*a1 + 40))(a1);
        v14 = "expected a parameter name in struct";
        v15 = 259;
        (*(*a1 + 24))(v39, a1, v13, &v14);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
        return 0;
      }

      v2 = v16;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v38)
  {
    v5 = v37;
  }

  else
  {
    v5 = 0;
  }

  if (v36)
  {
    v6 = v35;
  }

  else
  {
    v6 = 0;
  }

  if (v34)
  {
    v7 = v33;
  }

  else
  {
    v7 = 0;
  }

  if (v32)
  {
    v8 = v31;
  }

  else
  {
    v8 = 0;
  }

  if (v30)
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  if (v28)
  {
    v10 = v27;
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    v11 = v25;
  }

  else
  {
    v11 = 0;
  }

  return mlir::LLVM::DIModuleAttr::get(v4, v5, v6, v7, v8, v9, v10, v11, HIBYTE(v24) & v24);
}

uint64_t mlir::LLVM::DIModuleAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v79[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 4)
  {
    if (*a2 == 1701603686)
    {
      v7 = 1;
      *v6 = 1;
      v8 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(*a1);
      v9 = a1[2];
      *v9 = v8;
      *(v9 + 8) = v10;
      if ((*(a1[2] + 8) & 1) == 0)
      {
        v11 = *a1;
        v12 = (*(*v11 + 40))(v11);
        v71 = 259;
        (*(*v11 + 24))(v79, v11, v12, &v69);
        v13 = v79;
LABEL_65:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
        return 0;
      }

      return v7;
    }

LABEL_18:
    v22 = a1[5];
    if ((*v22 & 1) != 0 || a3 != 4)
    {
      v30 = a1[7];
      if ((*v30 & 1) == 0 && a3 == 12)
      {
        if (*a2 == 0x614D6769666E6F63 && *(a2 + 8) == 1936683619)
        {
          v7 = 1;
          *v30 = 1;
          v32 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v33 = a1[8];
          *v33 = v32;
          *(v33 + 8) = v34;
          if ((*(a1[8] + 8) & 1) == 0)
          {
            v35 = *a1;
            v36 = (*(*v35 + 40))(v35);
            v71 = 259;
            (*(*v35 + 24))(v76, v35, v36, &v69);
            v13 = v76;
            goto LABEL_65;
          }

          return v7;
        }

        goto LABEL_62;
      }

      v37 = a1[9];
      if ((*v37 & 1) == 0 && a3 == 11)
      {
        if (*a2 == 0x506564756C636E69 && *(a2 + 3) == 0x687461506564756CLL)
        {
          v7 = 1;
          *v37 = 1;
          v39 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v40 = a1[10];
          *v40 = v39;
          *(v40 + 8) = v41;
          if ((*(a1[10] + 8) & 1) == 0)
          {
            v42 = *a1;
            v43 = (*(*v42 + 40))(v42);
            v71 = 259;
            (*(*v42 + 24))(v75, v42, v43, &v69);
            v13 = v75;
            goto LABEL_65;
          }

          return v7;
        }

        goto LABEL_62;
      }

      v56 = a1[11];
      if ((*v56 & 1) == 0 && a3 == 8)
      {
        if (*a2 == 0x7365746F6E697061)
        {
          v7 = 1;
          *v56 = 1;
          v60 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v61 = a1[12];
          *v61 = v60;
          *(v61 + 8) = v62;
          if (*(a1[12] + 8))
          {
            return v7;
          }

          v63 = *a1;
          v64 = (*(*v63 + 40))(v63);
          v71 = 259;
          (*(*v63 + 24))(v74, v63, v64, &v69);
          v13 = v74;
          goto LABEL_65;
        }

        goto LABEL_62;
      }
    }

    else if (*a2 == 1701667182)
    {
      v7 = 1;
      *v22 = 1;
      v51 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
      v52 = a1[6];
      *v52 = v51;
      *(v52 + 8) = v53;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v54 = *a1;
        v55 = (*(*v54 + 40))(v54);
        v71 = 259;
        (*(*v54 + 24))(v77, v54, v55, &v69);
        v13 = v77;
        goto LABEL_65;
      }

      return v7;
    }

    v23 = a1[13];
    if ((*v23 & 1) != 0 || a3 != 4)
    {
      v44 = a1[15];
      if ((*v44 & 1) == 0 && a3 == 6 && *a2 == 1698984809 && *(a2 + 4) == 27747)
      {
        v7 = 1;
        *v44 = 1;
        v46 = *a1;
        LOBYTE(v69) = 0;
        v47 = mlir::AsmParser::parseInteger<BOOL>(v46, &v69);
        v48 = v69;
        if ((v47 & 1) == 0)
        {
          v48 = 0;
        }

        *a1[16] = v48 | ((v47 & 1) << 8);
        if ((*(a1[16] + 1) & 1) == 0)
        {
          v49 = *a1;
          v50 = (*(*v49 + 40))(v49);
          v71 = 259;
          (*(*v49 + 24))(v72, v49, v50, &v69);
          v13 = v72;
          goto LABEL_65;
        }

        return v7;
      }
    }

    else if (*a2 == 1701734764)
    {
      v7 = 1;
      *v23 = 1;
      v24 = *a1;
      LODWORD(v69) = 0;
      v25 = mlir::AsmParser::parseInteger<unsigned int>(v24, &v69);
      v26 = v69;
      if ((v25 & 1) == 0)
      {
        v26 = 0;
      }

      v27 = a1[14];
      *(v27 + 4) = v25 & 1;
      *v27 = v26;
      if ((*(a1[14] + 4) & 1) == 0)
      {
        v28 = *a1;
        v29 = (*(*v28 + 40))(v28);
        v71 = 259;
        (*(*v28 + 24))(v73, v28, v29, &v69);
        v13 = v73;
        goto LABEL_65;
      }

      return v7;
    }

LABEL_62:
    v57 = *a1;
    v58 = (*(*v57 + 40))(v57);
    v65 = "duplicate or unknown struct parameter name: ";
    v66 = 259;
    (*(*v57 + 24))(&v69, v57, v58, &v65);
    if (v69)
    {
      v68 = 261;
      v67[0] = a2;
      v67[1] = a3;
      mlir::Diagnostic::operator<<(&v70, v67);
    }

    v13 = &v69;
    goto LABEL_65;
  }

  v14 = a1[3];
  if ((*v14 & 1) != 0 || a3 != 5)
  {
    goto LABEL_18;
  }

  if (*a2 != 1886348147 || *(a2 + 4) != 101)
  {
    goto LABEL_62;
  }

  v7 = 1;
  *v14 = 1;
  v16 = *a1;
  v69 = 0;
  v17 = mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(v16, &v69);
  v18 = v69;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = a1[4];
  *v19 = v18;
  *(v19 + 8) = v17;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v20 = *a1;
    v21 = (*(*v20 + 40))(v20);
    v71 = 259;
    (*(*v20 + 24))(v78, v20, v21, &v69);
    v13 = v78;
    goto LABEL_65;
  }

  return v7;
}

llvm::raw_ostream *mlir::LLVM::DIModuleAttr::print(mlir::LLVM::DIModuleAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = *this;
  if (!*(*this + 8))
  {
    if (!*(v6 + 16))
    {
      if (!*(v6 + 24))
      {
        if (!*(v6 + 32))
        {
          if (!*(v6 + 40))
          {
            if (!*(v6 + 48))
            {
              if (!*(v6 + 56))
              {
                if ((*(v6 + 60) & 1) == 0)
                {
                  goto LABEL_83;
                }

                goto LABEL_76;
              }

              goto LABEL_67;
            }

            goto LABEL_58;
          }

          goto LABEL_49;
        }

        goto LABEL_40;
      }

      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 6uLL)
  {
    *(v8 + 3) = 540876901;
    *v8 = 1701603686;
    *(v7 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v7, "file = ", 7uLL);
  }

  v9 = *this;
  v10 = *(*this + 8);
  if (v10)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v10);
    v9 = *this;
  }

  if (*(v9 + 16))
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 1uLL)
    {
      *v12 = 8236;
      *(v11 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v11, ", ", 2uLL);
    }

LABEL_22:
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x203D2065706F6373;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "scope = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (*(v9 + 24))
  {
    v15 = (*(*a2 + 16))(a2);
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

LABEL_31:
    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 6uLL)
    {
      *(v18 + 3) = 540876901;
      *v18 = 1701667182;
      *(v17 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v17, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 32))
  {
    goto LABEL_45;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 1uLL)
  {
    *v20 = 8236;
    *(v19 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v19, ", ", 2uLL);
  }

LABEL_40:
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 0xEuLL)
  {
    qmemcpy(v22, "configMacros = ", 15);
    *(v21 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v21, "configMacros = ", 0xFuLL);
  }

  v9 = *this;
  if (*(*this + 32))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_45:
  if (*(v9 + 40))
  {
    v23 = (*(*a2 + 16))(a2);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 1uLL)
    {
      *v24 = 8236;
      *(v23 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v23, ", ", 2uLL);
    }

LABEL_49:
    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 0xDuLL)
    {
      qmemcpy(v26, "includePath = ", 14);
      *(v25 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v25, "includePath = ", 0xEuLL);
    }

    v9 = *this;
    if (*(*this + 40))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 48))
  {
    goto LABEL_63;
  }

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

LABEL_58:
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if ((*(v29 + 3) - v30) > 0xA)
  {
    *(v30 + 7) = 540876915;
    *v30 = *"apinotes = ";
    *(v29 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v29, "apinotes = ", 0xBuLL);
  }

  v9 = *this;
  if (*(*this + 48))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_63:
  if (*(v9 + 56))
  {
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 1uLL)
    {
      *v32 = 8236;
      *(v31 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v31, ", ", 2uLL);
    }

LABEL_67:
    v33 = (*(*a2 + 16))(a2);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 6uLL)
    {
      *(v34 + 3) = 540876901;
      *v34 = 1701734764;
      *(v33 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v33, "line = ", 7uLL);
    }

    v9 = *this;
    v35 = *(*this + 56);
    if (v35)
    {
      v36 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v36, v35, 0, 0, 0);
      v9 = *this;
    }
  }

  if ((*(v9 + 60) & 1) == 0)
  {
    goto LABEL_83;
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 1uLL)
  {
    *v38 = 8236;
    *(v37 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v37, ", ", 2uLL);
  }

LABEL_76:
  v39 = (*(*a2 + 16))(a2);
  v40 = *(v39 + 4);
  if ((*(v39 + 3) - v40) > 8)
  {
    *(v40 + 8) = 32;
    *v40 = *"isDecl = ";
    *(v39 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v39, "isDecl = ", 9uLL);
  }

  if (*(*this + 60) == 1)
  {
    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if (*(v41 + 3) - v42 > 3uLL)
    {
      *v42 = 1702195828;
      *(v41 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v41, "true", 4uLL);
    }
  }

LABEL_83:
  result = (*(*a2 + 16))(a2);
  v44 = *(result + 4);
  if (*(result + 3) == v44)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v44 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DINamespaceAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id;
  v8[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DINamespaceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DINamespaceAttrEJNS1_10StringAttrENS2_11DIScopeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v8;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  memset(v15, 0, sizeof(v15));
  v13 = ((a2 >> 4) ^ (a2 >> 9));
  v14 = ((a3 >> 4) ^ (a3 >> 9));
  v12 = 0;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v13, &v12, v15, v16, a4);
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, v12, v5, v16);
  v12 = v9;
  v13 = v9;
  v14 = v11;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DINamespaceAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DINamespaceAttrStorage,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DINamespaceAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DINamespaceAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DINamespaceAttrStorage,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DINamespaceAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
}

uint64_t mlir::LLVM::DINamespaceAttr::parse(mlir::AsmParser *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v25 = 0;
    v26 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v25))
    {
      v18 = (*(*a1 + 40))(a1);
      v38 = "expected a parameter name in struct";
      v39[12] = 259;
      (*(*a1 + 24))(v31, a1, v18, &v38);
      v19 = v31;
      goto LABEL_44;
    }

    v9 = v25;
    v8 = v26;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v2 & 1 | (v8 != 4))
    {
      if (v4 & 1 | (v8 != 5))
      {
        if (v6 & 1 | (v8 != 13))
        {
          goto LABEL_41;
        }

        if (*v9 != 0x795374726F707865 || *(v9 + 5) != 0x736C6F626D795374)
        {
          v8 = 13;
          goto LABEL_41;
        }

        LOBYTE(v32) = 0;
        if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v32) & 1) == 0)
        {
          v24 = (*(*a1 + 40))(a1);
          v34 = 259;
          (*(*a1 + 24))(v35, a1, v24, &v32);
          v19 = v35;
          goto LABEL_44;
        }

        v7 = v32;
        v6 = 1;
      }

      else
      {
        if (*v9 != 1886348147 || *(v9 + 4) != 101)
        {
          v8 = 5;
LABEL_41:
          v22 = (*(*a1 + 40))(a1);
          v27 = "duplicate or unknown struct parameter name: ";
          v28 = 259;
          (*(*a1 + 24))(&v32, a1, v22, &v27);
          if (v32)
          {
            v30 = 261;
            v29[0] = v9;
            v29[1] = v8;
            mlir::Diagnostic::operator<<(&v33, v29);
          }

          v19 = &v32;
          goto LABEL_44;
        }

        v32 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v32))
        {
          v23 = (*(*a1 + 40))(a1);
          v34 = 259;
          (*(*a1 + 24))(v36, a1, v23, &v32);
          v19 = v36;
          goto LABEL_44;
        }

        v5 = v32;
        v4 = 1;
      }
    }

    else
    {
      if (*v9 != 1701667182)
      {
        v8 = 4;
        goto LABEL_41;
      }

      v11 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v12 & 1) == 0)
      {
        v20 = (*(*a1 + 40))(a1);
        v34 = 259;
        (*(*a1 + 24))(&v38, a1, v20, &v32);
        goto LABEL_40;
      }

      v3 = v11;
      v2 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v21 = (*(*a1 + 40))(a1);
    v36[0] = "struct is missing required parameter: ";
    v37 = 259;
    (*(*a1 + 24))(&v38, a1, v21, v36);
    if (v38)
    {
      mlir::Diagnostic::operator<<<14ul>(v39, "exportSymbols");
    }

LABEL_40:
    v19 = &v38;
LABEL_44:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return 0;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  if (v4)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  return mlir::LLVM::DINamespaceAttr::get(v14, v15, v16, v7 & 1);
}

llvm::raw_ostream *mlir::LLVM::DINamespaceAttr::print(mlir::LLVM::DINamespaceAttr *this, mlir::AsmPrinter *a2)
{
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

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 6uLL)
    {
      *(v7 + 3) = 540876901;
      *v7 = 1701667182;
      *(v6 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v6, "name = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }

    if (!*(v8 + 16))
    {
      goto LABEL_21;
    }

    v9 = (*(*a2 + 16))(a2);
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

LABEL_16:
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 7uLL)
    {
      *v12 = 0x203D2065706F6373;
      *(v11 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v11, "scope = ", 8uLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }

LABEL_21:
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }

    goto LABEL_24;
  }

  if (*(*this + 16))
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 0xFuLL)
  {
    *v16 = *"exportSymbols = ";
    *(v15 + 4) += 16;
  }

  else
  {
    llvm::raw_ostream::write(v15, "exportSymbols = ", 0x10uLL);
  }

  v17 = *(*this + 24);
  v18 = (*(*a2 + 16))(a2);
  if (v17)
  {
    v19 = 4;
  }

  else
  {
    v19 = 5;
  }

  if (v17)
  {
    v20 = "true";
  }

  else
  {
    v20 = "false";
  }

  llvm::raw_ostream::operator<<(v18, v20, v19);
  result = (*(*a2 + 16))(a2);
  v22 = *(result + 4);
  if (*(result + 3) == v22)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v22 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIImportedEntityAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10)
{
  v10 = a7;
  v34[8] = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v18[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id;
  v18[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIImportedEntityAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIImportedEntityAttrEJjNS2_11DIScopeAttrENS2_10DINodeAttrENS2_10DIFileAttrEjNS1_10StringAttrENS_8ArrayRefISE_EEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v27[1] = v18;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a9;
  v26 = a10;
  v33 = 0u;
  memset(v34, 0, 56);
  *&v31[16] = 0u;
  v32 = 0u;
  v34[7] = 0xFF51AFD7ED558CCDLL;
  *v31 = a2;
  *&v31[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v31[12] = (a4 >> 4) ^ (a4 >> 9);
  v28 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v31, &v28, &v31[20], v34, (a5 >> 4) ^ (a5 >> 9));
  v29 = v28;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v31, &v29, v13, v34, a6);
  v30 = v29;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v31, &v30, v14, v34, (v10 >> 4) ^ (v10 >> 9));
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(v31, v30, v15, v34, a9, a10);
  v30 = &v19;
  *v31 = &v19;
  *&v31[8] = v27;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v31);
}

uint64_t mlir::LLVM::DIImportedEntityAttr::parse(mlir::AsmParser *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v55[0]) = 0;
  v57 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_87:
    v26 = 0;
    goto LABEL_88;
  }

  v2 = 0;
  v3 = 0;
  v42 = 0;
  v44 = 0;
  v4 = 0;
  v43 = 0;
  v5 = 0;
  v6 = 0;
  v39 = 0;
  v41 = 0;
  v38 = 0;
  v40 = 0;
  do
  {
    v45 = 0;
    v46 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v45))
    {
      v19 = (*(*a1 + 40))(a1);
      v67 = "expected a parameter name in struct";
      v70 = 259;
      (*(*a1 + 24))(v54, a1, v19, &v67);
      v20 = v54;
      goto LABEL_86;
    }

    v8 = v45;
    v7 = v46;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v6 & 1 | (v7 != 3))
    {
      if (v4 & 1 | (v7 != 5))
      {
        if (v3 & 1 | (v7 != 6))
        {
          v9 = v7 != 4;
          if (!(BYTE4(v44) & 1 | v9))
          {
            if (*v8 == 1701603686)
            {
              v15 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
              if ((v16 & 1) == 0)
              {
                v35 = (*(*a1 + 40))(a1);
                v70 = 259;
                (*(*a1 + 24))(v61, a1, v35, &v67);
                v20 = v61;
                goto LABEL_86;
              }

              v40 = v15;
              BYTE4(v44) = 1;
              continue;
            }

            v9 = 0;
          }

          if (((v43 | v9) & 1) == 0 && *v8 == 1701734764)
          {
            LODWORD(v67) = 0;
            if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v67) & 1) == 0)
            {
              v36 = (*(*a1 + 40))(a1);
              v70 = 259;
              (*(*a1 + 24))(v60, a1, v36, &v67);
              v20 = v60;
              goto LABEL_86;
            }

            v39 = v67;
            v43 = 1;
          }

          else if (((v41 | v9) & 1) == 0 && *v8 == 1701667182)
          {
            v17 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            if ((v18 & 1) == 0)
            {
              v37 = (*(*a1 + 40))(a1);
              v70 = 259;
              (*(*a1 + 24))(v59, a1, v37, &v67);
              v20 = v59;
              goto LABEL_86;
            }

            v38 = v17;
            v41 = 1;
          }

          else
          {
            if (v44 & 1 | (v7 != 8))
            {
              goto LABEL_83;
            }

            if (*v8 != 0x73746E656D656C65)
            {
              v7 = 8;
              goto LABEL_83;
            }

            mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v67, a1);
            std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(v55, &v67);
            if (v71 == 1 && v67 != v69)
            {
              free(v67);
            }

            if ((v57 & 1) == 0)
            {
              v34 = (*(*a1 + 40))(a1);
              v70 = 259;
              (*(*a1 + 24))(v58, a1, v34, &v67);
              v20 = v58;
              goto LABEL_86;
            }

            LOBYTE(v44) = 1;
          }
        }

        else
        {
          if (*v8 != 1769238117 || *(v8 + 4) != 31092)
          {
            v7 = 6;
            goto LABEL_83;
          }

          v67 = 0;
          if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(a1, &v67))
          {
            v31 = (*(*a1 + 40))(a1);
            v70 = 259;
            (*(*a1 + 24))(v62, a1, v31, &v67);
            v20 = v62;
            goto LABEL_86;
          }

          v42 = v67;
          v3 = 1;
        }
      }

      else
      {
        if (*v8 != 1886348147 || *(v8 + 4) != 101)
        {
          v7 = 5;
          goto LABEL_83;
        }

        v67 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v67))
        {
          v29 = (*(*a1 + 40))(a1);
          v70 = 259;
          (*(*a1 + 24))(v63, a1, v29, &v67);
          v20 = v63;
          goto LABEL_86;
        }

        v2 = v67;
        v4 = 1;
      }
    }

    else
    {
      if (*v8 != 24948 || *(v8 + 2) != 103)
      {
        v7 = 3;
LABEL_83:
        v32 = (*(*a1 + 40))(a1);
        v47[0] = "duplicate or unknown struct parameter name: ";
        v48 = 259;
        (*(*a1 + 24))(&v67, a1, v32, v47);
        if (v67)
        {
          v53 = 261;
          v51 = v8;
          v52 = v7;
          mlir::Diagnostic::operator<<(&v68, &v51);
        }

LABEL_85:
        v20 = &v67;
        goto LABEL_86;
      }

      v11 = (*(*a1 + 40))(a1);
      v49 = 0;
      v50 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v49))
      {
        goto LABEL_75;
      }

      Tag = llvm::dwarf::getTag(v49, v50);
      if (Tag == -1)
      {
        v48 = 257;
        (*(*a1 + 24))(&v67, a1, v11, v47);
        if (v67)
        {
          mlir::Diagnostic::operator<<<41ul>(&v68, "invalid debug info debug info tag name: ");
          if (v67)
          {
            v53 = 261;
            v51 = v49;
            v52 = v50;
            mlir::Diagnostic::operator<<(&v68, &v51);
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
LABEL_75:
        v27 = (*(*a1 + 40))(a1);
        v70 = 259;
        (*(*a1 + 24))(v64, a1, v27, &v67);
        v20 = v64;
LABEL_86:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
        goto LABEL_87;
      }

      v5 = Tag;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v64[0] = "struct is missing required parameter: ";
    v66 = 259;
    (*(*a1 + 24))(&v67, a1, v28, v64);
    if (v67)
    {
      mlir::Diagnostic::operator<<<6ul>(&v68, "scope");
    }

    goto LABEL_85;
  }

  if ((v3 & 1) == 0)
  {
    v30 = (*(*a1 + 40))(a1);
    v64[0] = "struct is missing required parameter: ";
    v66 = 259;
    (*(*a1 + 24))(&v67, a1, v30, v64);
    if (v67)
    {
      mlir::Diagnostic::operator<<<7ul>(&v68, "entity");
    }

    goto LABEL_85;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_87;
  }

  v21 = *(*(*a1 + 32))(a1);
  if ((v6 & 1) == 0)
  {
    v5 = 0;
  }

  if ((v44 & 0x100000000) != 0)
  {
    v22 = v40;
  }

  else
  {
    v22 = 0;
  }

  if (v43)
  {
    v23 = v39;
  }

  else
  {
    v23 = 0;
  }

  if (v41)
  {
    v24 = v38;
  }

  else
  {
    v24 = 0;
  }

  v64[0] = v65;
  v64[1] = 0x600000000;
  std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v67, v55, v64);
  v26 = mlir::LLVM::DIImportedEntityAttr::get(v21, v5, v2, v42, v22, v23, v24, v25, v67, v68);
  if (v67 != v69)
  {
    free(v67);
  }

  if (v64[0] != v65)
  {
    free(v64[0]);
  }

LABEL_88:
  if (v57 == 1 && v55[0] != &v56)
  {
    free(v55[0]);
  }

  return v26;
}

llvm::raw_ostream *mlir::LLVM::DIImportedEntityAttr::print(mlir::LLVM::DIImportedEntityAttr *this, mlir::AsmPrinter *a2)
{
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

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 5)
    {
      *(v7 + 4) = 8253;
      *v7 = 543646068;
      *(v6 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tag = ", 6uLL);
    }

    v8 = *(*this + 8);
    if (v8)
    {
      v9 = llvm::dwarf::TagString(v8);
      v11 = v10;
      v12 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v12, v9, v11);
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 7uLL)
  {
    *v16 = 0x203D2065706F6373;
    *(v15 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v15, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 1uLL)
  {
    *v18 = 8236;
    *(v17 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ", ", 2uLL);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 8)
  {
    *(v20 + 8) = 32;
    *v20 = *"entity = ";
    *(v19 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v19, "entity = ", 9uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  v21 = *this;
  if (*(*this + 32))
  {
    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 1uLL)
    {
      *v23 = 8236;
      *(v22 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v22, ", ", 2uLL);
    }

    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 6uLL)
    {
      *(v25 + 3) = 540876901;
      *v25 = 1701603686;
      *(v24 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v24, "file = ", 7uLL);
    }

    v21 = *this;
    v26 = *(*this + 32);
    if (v26)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v26);
      v21 = *this;
    }
  }

  if (*(v21 + 40))
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

    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if (*(v29 + 3) - v30 > 6uLL)
    {
      *(v30 + 3) = 540876901;
      *v30 = 1701734764;
      *(v29 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v29, "line = ", 7uLL);
    }

    v21 = *this;
    v31 = *(*this + 40);
    if (v31)
    {
      v32 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v32, v31, 0, 0, 0);
      v21 = *this;
    }
  }

  if (*(v21 + 48))
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

    v35 = (*(*a2 + 16))(a2);
    v36 = *(v35 + 4);
    if (*(v35 + 3) - v36 > 6uLL)
    {
      *(v36 + 3) = 540876901;
      *v36 = 1701667182;
      *(v35 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v35, "name = ", 7uLL);
    }

    v21 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v21 = *this;
    }
  }

  if (*(v21 + 64))
  {
    v37 = (*(*a2 + 16))(a2);
    v38 = *(v37 + 4);
    if (*(v37 + 3) - v38 > 1uLL)
    {
      *v38 = 8236;
      *(v37 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v37, ", ", 2uLL);
    }

    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if ((*(v39 + 3) - v40) > 0xA)
    {
      *(v40 + 7) = 540876915;
      *v40 = *"elements = ";
      *(v39 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v39, "elements = ", 0xBuLL);
    }

    v41 = *(*this + 64);
    if (v41)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(*this + 56), v41);
    }
  }

  result = (*(*a2 + 16))(a2);
  v43 = *(result + 4);
  if (*(result + 3) == v43)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v43 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIAnnotationAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id;
  v6[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIAnnotationAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v10[1] = v6;
  v8 = a2;
  v9 = a3;
  memset(v12, 0, sizeof(v12));
  memset(__dst, 0, sizeof(__dst));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::StringAttr>(__dst, __dst, v12, a2, &v9);
  v7 = &v8;
  *&__dst[0] = &v8;
  *(&__dst[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIAnnotationAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIAnnotationAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::DIAnnotationAttr::parse(mlir::AsmParser *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v21 = 0;
  v22 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v21))
  {
LABEL_20:
    v14 = (*(*a1 + 40))(a1);
    v32[0] = "expected a parameter name in struct";
    v33 = 259;
    (*(*a1 + 24))(v27, a1, v14, v32);
    v15 = v27;
LABEL_21:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = v21;
    v8 = v22;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v4 & 1 | (v8 != 4))
    {
      if (v3 & 1 | (v8 != 5))
      {
        goto LABEL_28;
      }

      if (*v7 != 1970037110 || *(v7 + 4) != 101)
      {
        v8 = 5;
LABEL_28:
        v19 = (*(*a1 + 40))(a1);
        v23 = "duplicate or unknown struct parameter name: ";
        v24 = 259;
        (*(*a1 + 24))(&v28, a1, v19, &v23);
        if (v28)
        {
          v26 = 261;
          v25[0] = v7;
          v25[1] = v8;
          mlir::Diagnostic::operator<<(&v29, v25);
        }

        v15 = &v28;
        goto LABEL_21;
      }

      v10 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v11 & 1) == 0)
      {
        v20 = (*(*a1 + 40))(a1);
        v30 = 259;
        (*(*a1 + 24))(v31, a1, v20, &v28);
        v15 = v31;
        goto LABEL_21;
      }

      v5 = v10;
      v3 = 1;
    }

    else
    {
      if (*v7 != 1701667182)
      {
        v8 = 4;
        goto LABEL_28;
      }

      v12 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v13 & 1) == 0)
      {
        v18 = (*(*a1 + 40))(a1);
        v30 = 259;
        (*(*a1 + 24))(v32, a1, v18, &v28);
        v15 = v32;
        goto LABEL_21;
      }

      v2 = v12;
      v4 = 1;
    }

    if (v6)
    {
      break;
    }

    if (((*(*a1 + 120))(a1) & 1) == 0)
    {
      return 0;
    }

    v21 = 0;
    v22 = 0;
    v6 = 1;
    if (!mlir::AsmParser::parseKeyword(a1, &v21))
    {
      goto LABEL_20;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = (*(*a1 + 32))(a1);
  return mlir::LLVM::DIAnnotationAttr::get(*v17, v2, v5);
}

llvm::raw_ostream *mlir::LLVM::DIAnnotationAttr::print(mlir::LLVM::DIAnnotationAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540876901;
    *v7 = 1701667182;
    *(v6 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v6, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 7uLL)
  {
    *v11 = 0x203D2065756C6176;
    *(v10 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v10, "value = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DISubrangeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id;
  v8[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21DISubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14DISubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v14[1] = v8;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(__dst, __dst, v16, a2, &v11, &v12, &v13);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::DISubrangeAttr::parse(mlir::AsmParser *a1)
{
  v27[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v25) = 0;
  v26 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v18 = 0;
  v17[0] = a1;
  v17[1] = &v18 + 3;
  v17[2] = &v25;
  v17[3] = &v18 + 2;
  v17[4] = &v23;
  v17[5] = &v18 + 1;
  v17[6] = &v21;
  v17[7] = &v18;
  v17[8] = &v19;
  v15 = 0;
  v16 = 0;
  if ((*(*a1 + 416))(a1, &v15))
  {
    v2 = v15;
    for (i = v16; mlir::LLVM::DISubrangeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v17, v2, i); i = v14)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v13 = 0;
      v14 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v13))
      {
        v10 = (*(*a1 + 40))(a1);
        v11 = "expected a parameter name in struct";
        v12 = 259;
        (*(*a1 + 24))(v27, a1, v10, &v11);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
        return 0;
      }

      v2 = v13;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v26)
  {
    v5 = v25;
  }

  else
  {
    v5 = 0;
  }

  if (v24)
  {
    v6 = v23;
  }

  else
  {
    v6 = 0;
  }

  if (v22)
  {
    v7 = v21;
  }

  else
  {
    v7 = 0;
  }

  if (v20)
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  return mlir::LLVM::DISubrangeAttr::get(v4, v5, v6, v7, v8);
}

uint64_t mlir::LLVM::DISubrangeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(void *a1, uint64_t a2, const char *a3)
{
  v54[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 5)
  {
    if (*a2 != 1853189987 || *(a2 + 4) != 116)
    {
      goto LABEL_32;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v48 = 0;
    v10 = (*(*v9 + 440))(v9, &v48, 0);
    v11 = v48;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10 & 1;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v50 = 259;
      (*(*v13 + 24))(v54, v13, v14, &v48);
      v15 = v54;
LABEL_35:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }

    return v8;
  }

  v16 = a1[3];
  v17 = a3 != 10;
  if ((*v16 & 1) != 0 || a3 != 10)
  {
LABEL_20:
    v19 = a1[5];
    if ((*v19 & 1) != 0 || v17 || (*a2 == 0x756F427265707075 ? (v20 = *(a2 + 8) == 25710) : (v20 = 0), !v20))
    {
      v21 = a1[7];
      if ((*v21 & 1) != 0 || a3 != 6 || (*a2 == 1769108595 ? (v22 = *(a2 + 4) == 25956) : (v22 = 0), !v22))
      {
LABEL_32:
        v23 = *a1;
        v24 = (*(*v23 + 40))(v23);
        v44 = "duplicate or unknown struct parameter name: ";
        v45 = 259;
        (*(*v23 + 24))(&v48, v23, v24, &v44);
        if (v48)
        {
          v47 = 261;
          v46[0] = a2;
          v46[1] = a3;
          mlir::Diagnostic::operator<<(&v49, v46);
        }

        v15 = &v48;
        goto LABEL_35;
      }

      v8 = 1;
      *v21 = 1;
      v38 = *a1;
      v48 = 0;
      v39 = (*(*v38 + 440))(v38, &v48, 0);
      v40 = v48;
      if ((v39 & 1) == 0)
      {
        v40 = 0;
      }

      v41 = a1[8];
      *v41 = v40;
      *(v41 + 8) = v39 & 1;
      if ((*(a1[8] + 8) & 1) == 0)
      {
        v42 = *a1;
        v43 = (*(*v42 + 40))(v42);
        v50 = 259;
        (*(*v42 + 24))(v51, v42, v43, &v48);
        v15 = v51;
        goto LABEL_35;
      }
    }

    else
    {
      v8 = 1;
      *v19 = 1;
      v32 = *a1;
      v48 = 0;
      v33 = (*(*v32 + 440))(v32, &v48, 0);
      v34 = v48;
      if ((v33 & 1) == 0)
      {
        v34 = 0;
      }

      v35 = a1[6];
      *v35 = v34;
      *(v35 + 8) = v33 & 1;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v36 = *a1;
        v37 = (*(*v36 + 40))(v36);
        v50 = 259;
        (*(*v36 + 24))(v52, v36, v37, &v48);
        v15 = v52;
        goto LABEL_35;
      }
    }

    return v8;
  }

  if (*a2 != 0x756F427265776F6CLL || *(a2 + 8) != 25710)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v8 = 1;
  *v16 = 1;
  v26 = *a1;
  v48 = 0;
  v27 = (*(*v26 + 440))(v26, &v48, 0);
  v28 = v48;
  if ((v27 & 1) == 0)
  {
    v28 = 0;
  }

  v29 = a1[4];
  *v29 = v28;
  *(v29 + 8) = v27 & 1;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v30 = *a1;
    v31 = (*(*v30 + 40))(v30);
    v50 = 259;
    (*(*v30 + 24))(v53, v30, v31, &v48);
    v15 = v53;
    goto LABEL_35;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::DISubrangeAttr::print(mlir::LLVM::DISubrangeAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = *this;
  if (!*(*this + 8))
  {
    if (!v6[2])
    {
      if (!v6[3])
      {
        if (!v6[4])
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 7uLL)
  {
    *v8 = 0x203D20746E756F63;
    *(v7 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v7, "count = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

  if (v9[2])
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }

LABEL_18:
    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 0xCuLL)
    {
      qmemcpy(v13, "lowerBound = ", 13);
      *(v12 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v12, "lowerBound = ", 0xDuLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (v9[3])
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

LABEL_27:
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 0xCuLL)
    {
      qmemcpy(v17, "upperBound = ", 13);
      *(v16 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v16, "upperBound = ", 0xDuLL);
    }

    v9 = *this;
    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[4])
  {
    goto LABEL_41;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 8236;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

LABEL_36:
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if ((*(v20 + 3) - v21) > 8)
  {
    *(v21 + 8) = 32;
    *v21 = *"stride = ";
    *(v20 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v20, "stride = ", 9uLL);
  }

  if (*(*this + 32))
  {
    (*(*a2 + 40))(a2);
  }

LABEL_41:
  result = (*(*a2 + 16))(a2);
  v23 = *(result + 4);
  if (*(result + 3) == v23)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v23 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DICommonBlockAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id;
  v9[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICommonBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICommonBlockAttrEJNS2_11DIScopeAttrENS2_20DIGlobalVariableAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v14[1] = v9;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v12 = a5;
  v13 = a6;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  v15 = ((a2 >> 4) ^ (a2 >> 9));
  v16 = ((a3 >> 4) ^ (a3 >> 9));
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(&v15, 0, v17, v18, a4, &v12, &v13);
  v10 = v11;
  v15 = v11;
  v16 = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICommonBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DICommonBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICommonBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DICommonBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v15);
}

uint64_t mlir::LLVM::DICommonBlockAttr::parse(mlir::AsmParser *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v34 = 0;
  v35 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v36 = 0;
  do
  {
    v37 = 0;
    v38 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v37))
    {
      v19 = (*(*a1 + 40))(a1);
      v52 = "expected a parameter name in struct";
      v53[12] = 259;
      (*(*a1 + 24))(v43, a1, v19, &v52);
      v20 = v43;
      goto LABEL_56;
    }

    v9 = v37;
    v10 = v38;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v8 & 1 | (v10 != 5))
    {
      v11 = v10 != 4;
      if (!(v2 & 1 | v11))
      {
        if (*v9 == 1818453348)
        {
          v13 = mlir::FieldParser<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIGlobalVariableAttr>::parse(a1);
          if ((v14 & 1) == 0)
          {
            v31 = (*(*a1 + 40))(a1);
            v46 = 259;
            (*(*a1 + 24))(v50, a1, v31, &v44);
            v20 = v50;
            goto LABEL_56;
          }

          v3 = v13;
          v2 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v4 | v11) & 1) == 0 && *v9 == 1701667182)
      {
        v15 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
        if ((v16 & 1) == 0)
        {
          v32 = (*(*a1 + 40))(a1);
          v46 = 259;
          (*(*a1 + 24))(v49, a1, v32, &v44);
          v20 = v49;
          goto LABEL_56;
        }

        v35 = v15;
        v4 = 1;
      }

      else if (((v6 | v11) & 1) == 0 && *v9 == 1701603686)
      {
        v17 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v18 & 1) == 0)
        {
          v33 = (*(*a1 + 40))(a1);
          v46 = 259;
          (*(*a1 + 24))(v48, a1, v33, &v44);
          v20 = v48;
          goto LABEL_56;
        }

        v34 = v17;
        v6 = 1;
      }

      else
      {
        if (((v7 | v11) & 1) != 0 || *v9 != 1701734764)
        {
          goto LABEL_46;
        }

        LODWORD(v44) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v44) & 1) == 0)
        {
          v29 = (*(*a1 + 40))(a1);
          v46 = 259;
          (*(*a1 + 24))(v47, a1, v29, &v44);
          v20 = v47;
          goto LABEL_56;
        }

        v36 = v44;
        v7 = 1;
      }
    }

    else
    {
      if (*v9 != 1886348147 || *(v9 + 4) != 101)
      {
        v10 = 5;
LABEL_46:
        v26 = (*(*a1 + 40))(a1);
        v39 = "duplicate or unknown struct parameter name: ";
        v40 = 259;
        (*(*a1 + 24))(&v44, a1, v26, &v39);
        if (v44)
        {
          v42 = 261;
          v41[0] = v9;
          v41[1] = v10;
          mlir::Diagnostic::operator<<(&v45, v41);
        }

        v20 = &v44;
LABEL_56:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
        return 0;
      }

      v44 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v44))
      {
        v27 = (*(*a1 + 40))(a1);
        v46 = 259;
        (*(*a1 + 24))(&v52, a1, v27, &v44);
LABEL_55:
        v20 = &v52;
        goto LABEL_56;
      }

      v5 = v44;
      v8 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v8 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v50[0] = "struct is missing required parameter: ";
    v51 = 259;
    (*(*a1 + 24))(&v52, a1, v28, v50);
    if (v52)
    {
      mlir::Diagnostic::operator<<<6ul>(v53, "scope");
    }

    goto LABEL_55;
  }

  if ((v4 & 1) == 0)
  {
    v30 = (*(*a1 + 40))(a1);
    v50[0] = "struct is missing required parameter: ";
    v51 = 259;
    (*(*a1 + 24))(&v52, a1, v30, v50);
    if (v52)
    {
      mlir::Diagnostic::operator<<<5ul>(v53, "name");
    }

    goto LABEL_55;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v21 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v22 = v3;
  }

  else
  {
    v22 = 0;
  }

  if (v6)
  {
    v23 = v34;
  }

  else
  {
    v23 = 0;
  }

  if (v7)
  {
    v24 = v36;
  }

  else
  {
    v24 = 0;
  }

  return mlir::LLVM::DICommonBlockAttr::get(v21, v5, v22, v35, v23, v24);
}

llvm::raw_ostream *mlir::LLVM::DICommonBlockAttr::print(mlir::LLVM::DICommonBlockAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 6uLL)
    {
      *(v11 + 3) = 540876908;
      *v11 = 1818453348;
      *(v10 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v10, "decl = ", 7uLL);
    }

    v12 = *(*this + 16);
    if (v12)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIGlobalVariableAttr,(void *)0>(a2, v12);
    }
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) - v14 > 1uLL)
  {
    *v14 = 8236;
    *(v13 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v13, ", ", 2uLL);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 6uLL)
  {
    *(v16 + 3) = 540876901;
    *v16 = 1701667182;
    *(v15 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v15, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  v17 = *this;
  if (*(*this + 32))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876901;
      *v21 = 1701603686;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "file = ", 7uLL);
    }

    v17 = *this;
    v22 = *(*this + 32);
    if (v22)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v22);
      v17 = *this;
    }
  }

  if (*(v17 + 40))
  {
    v23 = (*(*a2 + 16))(a2);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 1uLL)
    {
      *v24 = 8236;
      *(v23 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v23, ", ", 2uLL);
    }

    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 6uLL)
    {
      *(v26 + 3) = 540876901;
      *v26 = 1701734764;
      *(v25 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v25, "line = ", 7uLL);
    }

    v27 = *(*this + 40);
    if (v27)
    {
      v28 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v28, v27, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v30 = *(result + 4);
  if (*(result + 3) == v30)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v30 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIGenericSubrangeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id;
  v8[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail28DIGenericSubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_21DIGenericSubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v14[1] = v8;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(__dst, __dst, v16, a2, &v11, &v12, &v13);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIGenericSubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGenericSubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGenericSubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGenericSubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::DIGenericSubrangeAttr::parse(mlir::AsmParser *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v29 = 0;
  v30 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v31 = 0;
    v32 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v31))
    {
      v15 = (*(*a1 + 40))(a1);
      v45 = "expected a parameter name in struct";
      v46[12] = 259;
      (*(*a1 + 24))(v37, a1, v15, &v45);
      v16 = v37;
LABEL_60:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
      return 0;
    }

    v9 = v31;
    v8 = v32;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v5 & 1 | (v8 != 5))
    {
      v10 = v8 != 10;
      if (!(v2 & 1 | v10))
      {
        if (*v9 == 0x756F427265776F6CLL && *(v9 + 8) == 25710)
        {
          v38 = 0;
          if (((*(*a1 + 440))(a1, &v38, 0) & 1) == 0)
          {
            v27 = (*(*a1 + 40))(a1);
            v40 = 259;
            (*(*a1 + 24))(v43, a1, v27, &v38);
            v16 = v43;
            goto LABEL_60;
          }

          v30 = v38;
          v2 = 1;
          continue;
        }

        v10 = 0;
      }

      if (((v4 | v10) & 1) == 0 && (*v9 == 0x756F427265707075 ? (v12 = *(v9 + 8) == 25710) : (v12 = 0), v12))
      {
        v38 = 0;
        if (((*(*a1 + 440))(a1, &v38, 0) & 1) == 0)
        {
          v28 = (*(*a1 + 40))(a1);
          v40 = 259;
          (*(*a1 + 24))(v42, a1, v28, &v38);
          v16 = v42;
          goto LABEL_60;
        }

        v29 = v38;
        v4 = 1;
      }

      else
      {
        if (v6 & 1 | (v8 != 6))
        {
          v23 = v8;
          goto LABEL_53;
        }

        if (*v9 != 1769108595 || *(v9 + 4) != 25956)
        {
          v23 = 6;
          goto LABEL_53;
        }

        v38 = 0;
        if (((*(*a1 + 440))(a1, &v38, 0) & 1) == 0)
        {
          v25 = (*(*a1 + 40))(a1);
          v40 = 259;
          (*(*a1 + 24))(v41, a1, v25, &v38);
          v16 = v41;
          goto LABEL_60;
        }

        v7 = v38;
        v6 = 1;
      }
    }

    else
    {
      if (*v9 != 1853189987 || *(v9 + 4) != 116)
      {
        v23 = 5;
LABEL_53:
        v24 = (*(*a1 + 40))(a1);
        v33 = "duplicate or unknown struct parameter name: ";
        v34 = 259;
        (*(*a1 + 24))(&v38, a1, v24, &v33);
        if (v38)
        {
          v36 = 261;
          v35[0] = v9;
          v35[1] = v23;
          mlir::Diagnostic::operator<<(&v39, v35);
        }

        v16 = &v38;
        goto LABEL_60;
      }

      v38 = 0;
      if (((*(*a1 + 440))(a1, &v38, 0) & 1) == 0)
      {
        v21 = (*(*a1 + 40))(a1);
        v40 = 259;
        (*(*a1 + 24))(&v45, a1, v21, &v38);
LABEL_59:
        v16 = &v45;
        goto LABEL_60;
      }

      v3 = v38;
      v5 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v2 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v43[0] = "struct is missing required parameter: ";
    v44 = 259;
    (*(*a1 + 24))(&v45, a1, v22, v43);
    if (v45)
    {
      mlir::Diagnostic::operator<<<11ul>(v46, "lowerBound");
    }

    goto LABEL_59;
  }

  if ((v6 & 1) == 0)
  {
    v26 = (*(*a1 + 40))(a1);
    v43[0] = "struct is missing required parameter: ";
    v44 = 259;
    (*(*a1 + 24))(&v45, a1, v26, v43);
    if (v45)
    {
      mlir::Diagnostic::operator<<<7ul>(v46, "stride");
    }

    goto LABEL_59;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = *(*(*a1 + 32))(a1);
  if (v5)
  {
    v18 = v3;
  }

  else
  {
    v18 = 0;
  }

  if (v4)
  {
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

  return mlir::LLVM::DIGenericSubrangeAttr::get(v17, v18, v30, v19, v7);
}

llvm::raw_ostream *mlir::LLVM::DIGenericSubrangeAttr::print(mlir::LLVM::DIGenericSubrangeAttr *this, mlir::AsmPrinter *a2)
{
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

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x203D20746E756F63;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, "count = ", 8uLL);
    }

    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
    }

    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 0xCuLL)
  {
    qmemcpy(v11, "lowerBound = ", 13);
    *(v10 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v10, "lowerBound = ", 0xDuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  if (*(*this + 24))
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

    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 0xCuLL)
    {
      qmemcpy(v15, "upperBound = ", 13);
      *(v14 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v14, "upperBound = ", 0xDuLL);
    }

    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
    }
  }

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

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) > 8)
  {
    *(v19 + 8) = 32;
    *v19 = *"stride = ";
    *(v18 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v18, "stride = ", 9uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 32));
  result = (*(*a2 + 16))(a2);
  v21 = *(result + 4);
  if (*(result + 3) == v21)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v21 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DISubroutineTypeAttr::get(uint64_t *a1, unsigned int a2, unsigned int *a3, unint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v22[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id;
  v22[1] = a1;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DISubroutineTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DISubroutineTypeAttrEJjNS_8ArrayRefINS2_10DITypeAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v26[1] = v22;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  *&v29[8] = 0;
  *v29 = a2;
  if (a4)
  {
    v6 = a3;
    v7 = 0;
    v8 = &a3[2 * a4];
    while (v7 <= 0x38)
    {
      v9 = v7 + 8;
      v10 = *v6;
      v6 += 2;
      *(__src + v7) = (v10 >> 4) ^ (v10 >> 9);
      v7 = v9;
      if (8 * a4 == v9)
      {
        goto LABEL_7;
      }
    }

    v27[0] = xmmword_25D0A0610;
    v27[1] = xmmword_25D0A0620;
    v27[2] = xmmword_25D0A0630;
    v28 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v27, __src, a3, a4);
    if (v7 == 8 * a4)
    {
      v12 = 64;
    }

    else
    {
      v12 = 64;
      do
      {
        v13 = 0;
        do
        {
          v14 = *v6;
          v6 += 2;
          v15 = v13 + 8;
          __src[v13 / 8] = (v14 >> 4) ^ (v14 >> 9);
          if (v6 == v8)
          {
            break;
          }

          v16 = v13 >= 0x31;
          v13 += 8;
        }

        while (!v16);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, __src + v15, &v31);
        llvm::hashing::detail::hash_state::mix(v27, __src, v17, v18);
        v12 += v15;
      }

      while (v6 != v8);
    }

    v11 = llvm::hashing::detail::hash_state::finalize(v27, v12);
  }

  else
  {
    v9 = 0;
LABEL_7:
    v11 = llvm::hashing::detail::hash_short(__src, v9, 0xFF51AFD7ED558CCDLL);
  }

  *&v29[4] = v11;
  v19 = __ROR8__(v11 + 12, 12);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (*v29 ^ v19 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (*v29 ^ v19 ^ 0xFF51AFD7ED558CCDLL)));
  *&v27[0] = &v23;
  __src[0] = &v23;
  __src[1] = v26;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, (-348639895 * ((v20 >> 47) ^ v20)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
}

uint64_t mlir::LLVM::DISubroutineTypeAttr::parse(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v18) = 0;
  v19 = 0;
  LOBYTE(v26) = 0;
  v29 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = 0;
  v22 = a1;
  v23 = &v17 + 1;
  v24[0] = &v18;
  v24[1] = &v17;
  v24[2] = &v26;
  v15 = 0;
  v16 = 0;
  if ((*(*a1 + 416))(a1, &v15))
  {
    v2 = v15;
    for (i = v16; mlir::LLVM::DISubroutineTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v22, v2, i); i = v14)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v13 = 0;
      v14 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v13))
      {
        v11 = (*(*a1 + 40))(a1);
        v20[0] = "expected a parameter name in struct";
        v21[8] = 259;
        (*(*a1 + 24))(v25, a1, v11, v20);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        goto LABEL_27;
      }

      v2 = v13;
    }

    goto LABEL_27;
  }

LABEL_9:
  if ((*(*a1 + 168))(a1))
  {
    v5 = *(*(*a1 + 32))(a1);
    if (v19)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    v20[0] = v21;
    v20[1] = 0x600000000;
    v22 = v24;
    v23 = 0x600000000;
    if (v29 != 1 || (v7 = v27, !v27))
    {
      v7 = 0;
      v10 = v24;
LABEL_22:
      v4 = mlir::LLVM::DISubroutineTypeAttr::get(v5, v6, v10, v7);
      if (v22 != v24)
      {
        free(v22);
      }

      if (v20[0] != v21)
      {
        free(v20[0]);
      }

      goto LABEL_28;
    }

    if (v27 < 7)
    {
      v9 = v24;
      v8 = v27;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v27, 8);
      v8 = v27;
      if (!v27)
      {
LABEL_21:
        LODWORD(v23) = v7;
        v10 = v22;
        goto LABEL_22;
      }

      v9 = v22;
    }

    memcpy(v9, v26, 8 * v8);
    goto LABEL_21;
  }

LABEL_27:
  v4 = 0;
LABEL_28:
  if ((v29 & 1) != 0 && v26 != &v28)
  {
    free(v26);
  }

  return v4;
}

uint64_t mlir::LLVM::DISubroutineTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(mlir::AsmParser **a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 17)
  {
    if (*a2 != 0x43676E696C6C6163 || *(a2 + 1) != 0x6F69746E65766E6FLL || a2[16] != 110)
    {
LABEL_21:
      v17 = *a1;
      v18 = (*(*v17 + 40))(v17);
      v30[0] = "duplicate or unknown struct parameter name: ";
      v31 = 259;
      (*(*v17 + 24))(&v36, v17, v18, v30);
      if (v36)
      {
        v44 = 261;
        v41 = a2;
        v42 = a3;
        mlir::Diagnostic::operator<<(&v37, &v41);
      }

      v19 = &v36;
      goto LABEL_24;
    }

    *v6 = 1;
    v9 = *a1;
    v10 = (*(**a1 + 40))(*a1);
    v32 = 0;
    v33 = 0;
    if (mlir::AsmParser::parseKeyword(v9, &v32))
    {
      CallingConvention = llvm::dwarf::getCallingConvention(v32, v33);
      if (CallingConvention)
      {
        v12 = CallingConvention & 0xFFFFFF00;
        v13 = CallingConvention;
        v14 = 0x100000000;
        goto LABEL_45;
      }

      v31 = 257;
      (*(*v9 + 24))(&v36, v9, v10, v30);
      if (v36)
      {
        mlir::Diagnostic::operator<<<56ul>(&v37, "invalid debug info debug info calling convention name: ");
        if (v36)
        {
          v44 = 261;
          v41 = v32;
          v42 = v33;
          mlir::Diagnostic::operator<<(&v37, &v41);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    }

    v14 = 0;
    v13 = 0;
    v12 = 0;
LABEL_45:
    v24 = v14 | v12 | v13;
    v25 = a1[2];
    *(v25 + 4) = BYTE4(v14);
    *v25 = v24;
    if ((*(a1[2] + 4) & 1) == 0)
    {
      v26 = *a1;
      v27 = (*(*v26 + 40))(v26);
      v39 = 259;
      (*(*v26 + 24))(v35, v26, v27, &v36);
      v19 = v35;
LABEL_24:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
      return 0;
    }

    return 1;
  }

  v15 = a1[3];
  if ((*v15 & 1) != 0 || a3 != 5)
  {
    goto LABEL_21;
  }

  if (*a2 != 1701869940 || a2[4] != 115)
  {
    goto LABEL_21;
  }

  *v15 = 1;
  v21 = *a1;
  v41 = v43;
  v42 = 0x600000000;
  v30[0] = v21;
  v30[1] = &v41;
  if ((*(*v21 + 392))(v21, 0))
  {
    v36 = v38;
    v37 = 0x600000000;
    if (v42)
    {
      llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(&v36, &v41);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
    LOBYTE(v36) = 0;
  }

  v40 = v22;
  if (v41 != v43)
  {
    free(v41);
    v22 = v40;
  }

  v23 = a1[4];
  if (*(v23 + 64) == v22)
  {
    if (*(v23 + 64))
    {
      llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(a1[4], &v36);
    }
  }

  else if (*(v23 + 64))
  {
    if (*v23 != (v23 + 16))
    {
      free(*v23);
    }

    *(v23 + 64) = 0;
  }

  else
  {
    *v23 = v23 + 16;
    *(v23 + 1) = 0x600000000;
    if (v37)
    {
      llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(v23, &v36);
    }

    *(v23 + 64) = 1;
  }

  if (v40 == 1 && v36 != v38)
  {
    free(v36);
  }

  if ((*(a1[4] + 64) & 1) == 0)
  {
    v28 = *a1;
    v29 = (*(*v28 + 40))(v28);
    v39 = 259;
    (*(*v28 + 24))(v34, v28, v29, &v36);
    v19 = v34;
    goto LABEL_24;
  }

  return 1;
}

llvm::raw_ostream *mlir::LLVM::DISubroutineTypeAttr::print(mlir::LLVM::DISubroutineTypeAttr *this, mlir::AsmPrinter *a2)
{
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

  if (!*(*this + 8))
  {
    if (!*(*this + 24))
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 0x13)
  {
    *(v7 + 16) = 540876910;
    *v7 = *"callingConvention = ";
    *(v6 + 4) += 20;
  }

  else
  {
    llvm::raw_ostream::write(v6, "callingConvention = ", 0x14uLL);
  }

  v8 = *this;
  v9 = *(*this + 8);
  if (v9)
  {
    v10 = llvm::dwarf::ConventionString(v9);
    v12 = v11;
    v13 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v13, v10, v12);
    v8 = *this;
  }

  if (*(v8 + 24))
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

LABEL_16:
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 7uLL)
    {
      *v17 = 0x203D207365707974;
      *(v16 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v16, "types = ", 8uLL);
    }

    v18 = *this;
    v19 = *(*this + 24);
    if (v19)
    {
      v20 = *(v18 + 16);
      (*(*a2 + 40))(a2, *v20);
      if (v19 != 1)
      {
        v21 = v20 + 1;
        v22 = 8 * v19 - 8;
        do
        {
          v23 = (*(*a2 + 16))(a2);
          v24 = *(v23 + 4);
          if (*(v23 + 3) - v24 > 1uLL)
          {
            *v24 = 8236;
            *(v23 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v23, ", ", 2uLL);
          }

          v25 = *v21++;
          (*(*a2 + 40))(a2, v25);
          v22 -= 8;
        }

        while (v22);
      }
    }
  }

LABEL_26:
  result = (*(*a2 + 16))(a2);
  v27 = *(result + 4);
  if (*(result + 3) == v27)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v27 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILabelAttr::parse(mlir::AsmParser *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v32 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v33 = 0;
    v34 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v33))
    {
      v17 = (*(*a1 + 40))(a1);
      *&__dst[0] = "expected a parameter name in struct";
      LOWORD(v51) = 259;
      (*(*a1 + 24))(v39, a1, v17, __dst);
      v18 = v39;
      goto LABEL_50;
    }

    v10 = v33;
    v9 = v34;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v7 & 1 | (v9 != 5))
    {
      v11 = v9 != 4;
      if (!(v2 & 1 | v11))
      {
        if (*v10 == 1701667182)
        {
          v13 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v14 & 1) == 0)
          {
            v30 = (*(*a1 + 40))(a1);
            v42 = 259;
            (*(*a1 + 24))(&v45, a1, v30, &v40);
            v18 = &v45;
            goto LABEL_50;
          }

          v4 = v13;
          v2 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v5 | v11) & 1) == 0 && *v10 == 1701603686)
      {
        v15 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v16 & 1) == 0)
        {
          v31 = (*(*a1 + 40))(a1);
          v42 = 259;
          (*(*a1 + 24))(v44, a1, v31, &v40);
          v18 = v44;
          goto LABEL_50;
        }

        v32 = v15;
        v5 = 1;
      }

      else
      {
        if (((v6 | v11) & 1) != 0 || *v10 != 1701734764)
        {
          goto LABEL_40;
        }

        LODWORD(v40) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v40) & 1) == 0)
        {
          v29 = (*(*a1 + 40))(a1);
          v42 = 259;
          (*(*a1 + 24))(v43, a1, v29, &v40);
          v18 = v43;
          goto LABEL_50;
        }

        v8 = v40;
        v6 = 1;
      }
    }

    else
    {
      if (*v10 != 1886348147 || *(v10 + 4) != 101)
      {
        v9 = 5;
LABEL_40:
        v26 = (*(*a1 + 40))(a1);
        v35 = "duplicate or unknown struct parameter name: ";
        v36 = 259;
        (*(*a1 + 24))(&v40, a1, v26, &v35);
        if (v40)
        {
          v38 = 261;
          v37[0] = v10;
          v37[1] = v9;
          mlir::Diagnostic::operator<<(&v41, v37);
        }

        v18 = &v40;
LABEL_50:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        return 0;
      }

      v40 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v40))
      {
        v27 = (*(*a1 + 40))(a1);
        v42 = 259;
        (*(*a1 + 24))(__dst, a1, v27, &v40);
LABEL_46:
        v18 = __dst;
        goto LABEL_50;
      }

      v3 = v40;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v45 = "struct is missing required parameter: ";
    v49 = 259;
    (*(*a1 + 24))(__dst, a1, v28, &v45);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<6ul>(__dst + 8, "scope");
    }

    goto LABEL_46;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v19 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  v21 = *v19;
  v22 = v32;
  if ((v5 & 1) == 0)
  {
    v22 = 0;
  }

  v43[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id;
  v43[1] = v19;
  v44[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v44[1] = v43;
  if (v6)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  v45 = v3;
  v46 = v20;
  v47 = v22;
  v48 = v23;
  memset(v53, 0, sizeof(v53));
  v52 = 0u;
  v51 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v54 = 0;
  v55 = 0xFF51AFD7ED558CCDLL;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v53, v3, &v46, &v47, &v48);
  v40 = &v45;
  *&__dst[0] = &v45;
  *(&__dst[0] + 1) = v44;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v21 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, v24, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

llvm::raw_ostream *mlir::LLVM::DILabelAttr::print(mlir::LLVM::DILabelAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = *this;
  if (*(*this + 16))
  {
    v9 = (*(*a2 + 16))(a2);
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

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 540876901;
      *v12 = 1701667182;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "name = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }
  }

  if (*(v8 + 24))
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 6uLL)
    {
      *(v16 + 3) = 540876901;
      *v16 = 1701603686;
      *(v15 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v15, "file = ", 7uLL);
    }

    v8 = *this;
    v17 = *(*this + 24);
    if (v17)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v17);
      v8 = *this;
    }
  }

  if (*(v8 + 32))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876901;
      *v21 = 1701734764;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "line = ", 7uLL);
    }

    v22 = *(*this + 32);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v25 = *(result + 4);
  if (*(result + 3) == v25)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v25 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIStringTypeAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a8;
  v10 = a7;
  v34[13] = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v18[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id;
  v18[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIStringTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIStringTypeAttrEJjNS1_10StringAttrEyjNS2_14DIVariableAttrENS2_16DIExpressionAttrESF_jEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v27[1] = v18;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  memset(v34, 0, 96);
  v34[12] = 0xFF51AFD7ED558CCDLL;
  *&v32[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v32[12] = a4;
  *v32 = a2;
  v33 = a5;
  v28 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v28, v34, &v34[5], (a6 >> 4) ^ (a6 >> 9));
  v29 = v28;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v29, v12, &v34[5], (v10 >> 4) ^ (v10 >> 9));
  v30 = v29;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v30, v13, &v34[5], (v9 >> 4) ^ (v9 >> 9));
  v31 = v30;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v32, &v31, v14, &v34[5], a9);
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v32, v31, v15, &v34[5]);
  v31 = &v19;
  *v32 = &v19;
  *&v32[8] = v27;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v11 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIStringTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIStringTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIStringTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIStringTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIStringTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIStringTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
}

uint64_t mlir::LLVM::DIStringTypeAttr::parse(mlir::AsmParser *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v3 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v4 = 0;
  v52 = 0;
  v53 = 0;
  v5 = 0;
  v6 = 0;
  v51 = 0;
  do
  {
    v60 = 0;
    v61 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v60))
    {
      v39 = (*(*a1 + 40))(a1);
      v79 = "expected a parameter name in struct";
      v81 = 259;
      (*(*a1 + 24))(v69, a1, v39, &v79);
      v40 = v69;
      goto LABEL_116;
    }

    v8 = v60;
    v7 = v61;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v6 & 1 | (v7 != 3))
    {
      if (v4 & 1 | (v7 != 4))
      {
        if (v2 & 1 | (v7 != 10))
        {
          if (v59 & 1 | (v7 != 11))
          {
            if (BYTE4(v57) & 1 | (v7 != 12))
            {
              if (v56 & 1 | (v7 != 15))
              {
                if (BYTE4(v54) & 1 | (v7 != 17))
                {
                  if (v54 & 1 | (v7 != 8))
                  {
                    goto LABEL_113;
                  }

                  if (*v8 != 0x676E69646F636E65)
                  {
                    v7 = 8;
                    goto LABEL_113;
                  }

                  v9 = (*(*a1 + 40))(a1);
                  v64 = 0;
                  v65 = 0;
                  if (!mlir::AsmParser::parseKeyword(a1, &v64))
                  {
                    goto LABEL_123;
                  }

                  AttributeEncoding = llvm::dwarf::getAttributeEncoding(v64, v65);
                  if (!AttributeEncoding)
                  {
                    v63 = 257;
                    (*(*a1 + 24))(&v79, a1, v9, v62);
                    if (v79)
                    {
                      mlir::Diagnostic::operator<<<46ul>(v80, "invalid debug info debug info encoding name: ");
                      if (v79)
                      {
                        v68 = 261;
                        v66 = v64;
                        v67 = v65;
                        mlir::Diagnostic::operator<<(v80, &v66);
                      }
                    }

                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
LABEL_123:
                    v50 = (*(*a1 + 40))(a1);
                    v81 = 259;
                    (*(*a1 + 24))(v70, a1, v50, &v79);
                    v40 = v70;
                    goto LABEL_116;
                  }

                  v51 = AttributeEncoding;
                  LOBYTE(v54) = 1;
                }

                else
                {
                  if (*v8 != 0x6F4C676E69727473 || *(v8 + 8) != 0x78456E6F69746163 || *(v8 + 16) != 112)
                  {
                    v7 = 17;
                    goto LABEL_113;
                  }

                  v28 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(a1);
                  if ((v29 & 1) == 0)
                  {
                    v49 = (*(*a1 + 40))(a1);
                    v81 = 259;
                    (*(*a1 + 24))(v71, a1, v49, &v79);
                    v40 = v71;
                    goto LABEL_116;
                  }

                  v52 = v28;
                  BYTE4(v54) = 1;
                }
              }

              else
              {
                if (*v8 != 0x654C676E69727473 || *(v8 + 7) != 0x7078456874676E65)
                {
                  v7 = 15;
                  goto LABEL_113;
                }

                v23 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(a1);
                if ((v24 & 1) == 0)
                {
                  v47 = (*(*a1 + 40))(a1);
                  v81 = 259;
                  (*(*a1 + 24))(v72, a1, v47, &v79);
                  v40 = v72;
                  goto LABEL_116;
                }

                v53 = v23;
                v56 = 1;
              }
            }

            else
            {
              if (*v8 != 0x654C676E69727473 || *(v8 + 8) != 1752459118)
              {
                v7 = 12;
                goto LABEL_113;
              }

              v19 = (*(*a1 + 40))(a1);
              v62[0] = 0;
              if (((*(*a1 + 440))(a1, v62, 0) & 1) == 0)
              {
                goto LABEL_110;
              }

              v20 = *(*v62[0] + 136);
              if (v20 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id)
              {
                v55 = v62[0];
              }

              else
              {
                v66 = "invalid kind of attribute specified";
                v68 = 259;
                (*(*a1 + 24))(&v79, a1, v19, &v66);
                v25 = v82;
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
                if (v25 == 1)
                {
LABEL_110:
                  v46 = (*(*a1 + 40))(a1);
                  v81 = 259;
                  (*(*a1 + 24))(v73, a1, v46, &v79);
                  v40 = v73;
                  goto LABEL_116;
                }

                v55 = 0;
              }

              BYTE4(v57) = 1;
            }
          }

          else
          {
            if (*v8 != 0x426E496E67696C61 || *(v8 + 3) != 0x737469426E496E67)
            {
              v7 = 11;
              goto LABEL_113;
            }

            LODWORD(v79) = 0;
            if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v79) & 1) == 0)
            {
              v45 = (*(*a1 + 40))(a1);
              v81 = 259;
              (*(*a1 + 24))(v74, a1, v45, &v79);
              v40 = v74;
              goto LABEL_116;
            }

            LODWORD(v57) = v79;
            v59 = 1;
          }
        }

        else
        {
          if (*v8 != 0x69426E49657A6973 || *(v8 + 8) != 29556)
          {
            v7 = 10;
            goto LABEL_113;
          }

          v79 = 0;
          if ((mlir::AsmParser::parseInteger<unsigned long long>(a1, &v79) & 1) == 0)
          {
            v44 = (*(*a1 + 40))(a1);
            v81 = 259;
            (*(*a1 + 24))(v75, a1, v44, &v79);
            v40 = v75;
            goto LABEL_116;
          }

          v58 = v79;
          v2 = 1;
        }
      }

      else
      {
        if (*v8 != 1701667182)
        {
          v7 = 4;
          goto LABEL_113;
        }

        v14 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
        if ((v15 & 1) == 0)
        {
          v43 = (*(*a1 + 40))(a1);
          v81 = 259;
          (*(*a1 + 24))(v76, a1, v43, &v79);
          v40 = v76;
          goto LABEL_116;
        }

        v3 = v14;
        v4 = 1;
      }
    }

    else
    {
      if (*v8 != 24948 || *(v8 + 2) != 103)
      {
        v7 = 3;
LABEL_113:
        v48 = (*(*a1 + 40))(a1);
        v62[0] = "duplicate or unknown struct parameter name: ";
        v63 = 259;
        (*(*a1 + 24))(&v79, a1, v48, v62);
        if (v79)
        {
          v68 = 261;
          v66 = v8;
          v67 = v7;
          mlir::Diagnostic::operator<<(v80, &v66);
        }

LABEL_115:
        v40 = &v79;
        goto LABEL_116;
      }

      v12 = (*(*a1 + 40))(a1);
      v64 = 0;
      v65 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v64))
      {
        goto LABEL_103;
      }

      Tag = llvm::dwarf::getTag(v64, v65);
      if (Tag == -1)
      {
        v63 = 257;
        (*(*a1 + 24))(&v79, a1, v12, v62);
        if (v79)
        {
          mlir::Diagnostic::operator<<<41ul>(v80, "invalid debug info debug info tag name: ");
          if (v79)
          {
            v68 = 261;
            v66 = v64;
            v67 = v65;
            mlir::Diagnostic::operator<<(v80, &v66);
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
LABEL_103:
        v41 = (*(*a1 + 40))(a1);
        v81 = 259;
        (*(*a1 + 24))(v77, a1, v41, &v79);
        v40 = v77;
LABEL_116:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
        return 0;
      }

      v5 = Tag;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v42 = (*(*a1 + 40))(a1);
    v77[0] = "struct is missing required parameter: ";
    v78 = 259;
    (*(*a1 + 24))(&v79, a1, v42, v77);
    if (v79)
    {
      mlir::Diagnostic::operator<<<5ul>(v80, "name");
    }

    goto LABEL_115;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v30 = *(*(*a1 + 32))(a1);
  if (v6)
  {
    v31 = v5;
  }

  else
  {
    v31 = 0;
  }

  if (v2)
  {
    v32 = v58;
  }

  else
  {
    v32 = 0;
  }

  if (v59)
  {
    v33 = v57;
  }

  else
  {
    v33 = 0;
  }

  if ((v57 & 0x100000000) != 0)
  {
    v34 = v55;
  }

  else
  {
    v34 = 0;
  }

  if (v56)
  {
    v35 = v53;
  }

  else
  {
    v35 = 0;
  }

  if ((v54 & 0x100000000) != 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = 0;
  }

  v37 = v51;
  if ((v54 & 1) == 0)
  {
    v37 = 0;
  }

  return mlir::LLVM::DIStringTypeAttr::get(v30, v31, v3, v32, v33, v34, v35, v36, v37);
}

llvm::raw_ostream *mlir::LLVM::DIStringTypeAttr::print(mlir::LLVM::DIStringTypeAttr *this, mlir::AsmPrinter *a2)
{
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

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 5)
    {
      *(v7 + 4) = 8253;
      *v7 = 543646068;
      *(v6 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tag = ", 6uLL);
    }

    v8 = *(*this + 8);
    if (v8)
    {
      v9 = llvm::dwarf::TagString(v8);
      v11 = v10;
      v12 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v12, v9, v11);
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 6uLL)
  {
    *(v16 + 3) = 540876901;
    *v16 = 1701667182;
    *(v15 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v15, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v17 = *this;
  if (*(*this + 24))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xCuLL)
    {
      qmemcpy(v21, "sizeInBits = ", 13);
      *(v20 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v20, "sizeInBits = ", 0xDuLL);
    }

    v17 = *this;
    v22 = *(*this + 24);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
      v17 = *this;
    }
  }

  if (*(v17 + 32))
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 1uLL)
    {
      *v25 = 8236;
      *(v24 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v24, ", ", 2uLL);
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if (*(v26 + 3) - v27 > 0xDuLL)
    {
      qmemcpy(v27, "alignInBits = ", 14);
      *(v26 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v26, "alignInBits = ", 0xEuLL);
    }

    v17 = *this;
    v28 = *(*this + 32);
    if (v28)
    {
      v29 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v29, v28, 0, 0, 0);
      v17 = *this;
    }
  }

  if (*(v17 + 40))
  {
    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) - v31 > 1uLL)
    {
      *v31 = 8236;
      *(v30 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v30, ", ", 2uLL);
    }

    v32 = (*(*a2 + 16))(a2);
    v33 = *(v32 + 4);
    if (*(v32 + 3) - v33 > 0xEuLL)
    {
      qmemcpy(v33, "stringLength = ", 15);
      *(v32 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v32, "stringLength = ", 0xFuLL);
    }

    v17 = *this;
    if (*(*this + 40))
    {
      (*(*a2 + 40))(a2);
      v17 = *this;
    }
  }

  if (*(v17 + 48))
  {
    v34 = (*(*a2 + 16))(a2);
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 > 1uLL)
    {
      *v35 = 8236;
      *(v34 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v34, ", ", 2uLL);
    }

    v36 = (*(*a2 + 16))(a2);
    v37 = *(v36 + 4);
    if ((*(v36 + 3) - v37) > 0x11)
    {
      *(v37 + 16) = 8253;
      *v37 = *"stringLengthExp = ";
      *(v36 + 4) += 18;
    }

    else
    {
      llvm::raw_ostream::write(v36, "stringLengthExp = ", 0x12uLL);
    }

    v17 = *this;
    v38 = *(*this + 48);
    if (v38)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v38);
      v17 = *this;
    }
  }

  if (*(v17 + 56))
  {
    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 > 1uLL)
    {
      *v40 = 8236;
      *(v39 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", ", 2uLL);
    }

    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if ((*(v41 + 3) - v42) > 0x13)
    {
      *(v42 + 16) = 540876912;
      *v42 = *"stringLocationExp = ";
      *(v41 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v41, "stringLocationExp = ", 0x14uLL);
    }

    v17 = *this;
    v43 = *(*this + 56);
    if (v43)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v43);
      v17 = *this;
    }
  }

  if (*(v17 + 64))
  {
    v44 = (*(*a2 + 16))(a2);
    v45 = *(v44 + 4);
    if (*(v44 + 3) - v45 > 1uLL)
    {
      *v45 = 8236;
      *(v44 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v44, ", ", 2uLL);
    }

    v46 = (*(*a2 + 16))(a2);
    v47 = *(v46 + 4);
    if ((*(v46 + 3) - v47) > 0xA)
    {
      *(v47 + 7) = 540876903;
      *v47 = *"encoding = ";
      *(v46 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v46, "encoding = ", 0xBuLL);
    }

    v48 = *(*this + 64);
    if (v48)
    {
      v49 = llvm::dwarf::AttributeEncodingString(v48);
      v51 = v50;
      v52 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v52, v49, v51);
    }
  }

  result = (*(*a2 + 16))(a2);
  v54 = *(result + 4);
  if (*(result + 3) == v54)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v54 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::MemoryEffectsAttr::get(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24MemoryEffectsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17MemoryEffectsAttrEJNS2_10ModRefInfoESD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  memset(v14, 0, sizeof(v14));
  v15 = 0xFF51AFD7ED558CCDLL;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v11, 0, v14, &v14[2] + 8);
  v8 = v9;
  v11 = v9;
  v12 = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::MemoryEffectsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>(llvm::function_ref<void ()(mlir::LLVM::detail::MemoryEffectsAttrStorage *)>,mlir::TypeID,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::MemoryEffectsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>(llvm::function_ref<void ()(mlir::LLVM::detail::MemoryEffectsAttrStorage *)>,mlir::TypeID,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
}

uint64_t mlir::LLVM::MemoryEffectsAttr::parse(mlir::AsmParser *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v28))
  {
LABEL_32:
    v20 = (*(*a1 + 40))(a1);
    v40[0] = "expected a parameter name in struct";
    v41 = 259;
    (*(*a1 + 24))(v34, a1, v20, v40);
    v21 = v34;
LABEL_33:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 3;
  while (1)
  {
    v9 = v28;
    v10 = v29;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v6 & 1 | (v10 != 5))
    {
      if (v3 & 1 | (v10 != 6))
      {
        if (v5 & 1 | (v10 != 15))
        {
          goto LABEL_40;
        }

        if (*v9 != 0x7373656363616E69 || *(v9 + 7) != 0x6D654D656C626973)
        {
          v10 = 15;
LABEL_40:
          v26 = (*(*a1 + 40))(a1);
          v30 = "duplicate or unknown struct parameter name: ";
          v31 = 259;
          (*(*a1 + 24))(&v35, a1, v26, &v30);
          if (v35)
          {
            v33 = 261;
            v32[0] = v9;
            v32[1] = v10;
            mlir::Diagnostic::operator<<(&v36, v32);
          }

          v21 = &v35;
          goto LABEL_33;
        }

        v12 = mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(a1);
        if ((v13 & 1) == 0)
        {
          v27 = (*(*a1 + 40))(a1);
          v37 = 259;
          (*(*a1 + 24))(v38, a1, v27, &v35);
          v21 = v38;
          goto LABEL_33;
        }

        v7 = v12;
        v5 = 1;
      }

      else
      {
        if (*v9 != 1298625121 || *(v9 + 4) != 28005)
        {
          v10 = 6;
          goto LABEL_40;
        }

        v18 = mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(a1);
        if ((v19 & 1) == 0)
        {
          v25 = (*(*a1 + 40))(a1);
          v37 = 259;
          (*(*a1 + 24))(v39, a1, v25, &v35);
          v21 = v39;
          goto LABEL_33;
        }

        v4 = v18;
        v3 = 1;
      }
    }

    else
    {
      if (*v9 != 1701344367 || *(v9 + 4) != 114)
      {
        v10 = 5;
        goto LABEL_40;
      }

      v15 = mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(a1);
      if ((v16 & 1) == 0)
      {
        v24 = (*(*a1 + 40))(a1);
        v37 = 259;
        (*(*a1 + 24))(v40, a1, v24, &v35);
        v21 = v40;
        goto LABEL_33;
      }

      v2 = v15;
      v6 = 1;
    }

    if (!--v8)
    {
      break;
    }

    if (((*(*a1 + 120))(a1) & 1) == 0)
    {
      return 0;
    }

    v28 = 0;
    v29 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v28))
    {
      goto LABEL_32;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = (*(*a1 + 32))(a1);
  return mlir::LLVM::MemoryEffectsAttr::get(*v23, v2, v4, v7);
}

llvm::raw_ostream *mlir::LLVM::MemoryEffectsAttr::print(mlir::LLVM::MemoryEffectsAttr *this, mlir::AsmPrinter *a2)
{
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D20726568746FLL;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "other = ", 8uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"argMem = ";
    *(v10 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v10, "argMem = ", 9uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(a2, *(*this + 16));
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 0x11)
  {
    *(v15 + 16) = 8253;
    *v15 = *"inaccessibleMem = ";
    *(v14 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v14, "inaccessibleMem = ", 0x12uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++*(result + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(uint64_t a1, unint64_t a2)
{
  v3 = (*(*a1 + 16))(a1);
  if (a2 > 3)
  {
    v4 = 0;
    v5 = &str_2_25;
  }

  else
  {
    v4 = qword_25D0A0158[a2];
    v5 = off_2799BE8D8[a2];
  }

  return llvm::raw_ostream::operator<<(v3, v5, v4);
}