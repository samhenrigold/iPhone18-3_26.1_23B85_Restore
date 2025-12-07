uint64_t mlir::LLVM::AliasScopeDomainAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id;
  v6[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_9AttributeENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v10[1] = v6;
  v8 = a2;
  v9 = a3;
  memset(v12, 0, sizeof(v12));
  memset(__dst, 0, sizeof(__dst));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::StringAttr>(__dst, __dst, v12, a2, &v9);
  v7 = &v8;
  *&__dst[0] = &v8;
  *(&__dst[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::Attribute,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::Attribute,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::AliasScopeDomainAttr::get(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *&__dst[0] = *(*a1 + 608);
  v4 = mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(*(***&__dst[0] + 32), __dst);
  v5 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_12DistinctAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v12[1] = v8;
  v10 = v4;
  v11 = a2;
  memset(v14, 0, sizeof(v14));
  memset(__dst, 0, sizeof(__dst));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::StringAttr>(__dst, __dst, v14, v4, &v11);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::DistinctAttr,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::DistinctAttr,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::AliasScopeDomainAttr::parse(mlir::AsmParser *a1)
{
  v34 = *MEMORY[0x277D85DE8];
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
    v20 = 0;
    v21 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v20))
    {
      v14 = (*(*a1 + 40))(a1);
      v32 = "expected a parameter name in struct";
      v33[12] = 259;
      (*(*a1 + 24))(v26, a1, v14, &v32);
      v15 = v26;
      goto LABEL_34;
    }

    v7 = v20;
    v6 = v21;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v4 & 1 | (v6 != 2))
    {
      if (v3 & 1 | (v6 != 11))
      {
        goto LABEL_27;
      }

      if (*v7 != 0x7470697263736564 || *(v7 + 3) != 0x6E6F697470697263)
      {
        v6 = 11;
        goto LABEL_27;
      }

      v9 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v10 & 1) == 0)
      {
        v18 = (*(*a1 + 40))(a1);
        v29 = 259;
        (*(*a1 + 24))(v30, a1, v18, &v27);
        v15 = v30;
        goto LABEL_34;
      }

      v5 = v9;
      v3 = 1;
      continue;
    }

    if (*v7 != 25705)
    {
      v6 = 2;
LABEL_27:
      v17 = (*(*a1 + 40))(a1);
      v22 = "duplicate or unknown struct parameter name: ";
      v23 = 259;
      (*(*a1 + 24))(&v27, a1, v17, &v22);
      if (v27)
      {
        v25 = 261;
        v24[0] = v7;
        v24[1] = v6;
        mlir::Diagnostic::operator<<(&v28, v24);
      }

      v15 = &v27;
LABEL_34:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }

    v27 = 0;
    if (((*(*a1 + 440))(a1, &v27, 0) & 1) == 0)
    {
      v16 = (*(*a1 + 40))(a1);
      v29 = 259;
      (*(*a1 + 24))(&v32, a1, v16, &v27);
LABEL_33:
      v15 = &v32;
      goto LABEL_34;
    }

    v2 = v27;
    v4 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v19 = (*(*a1 + 40))(a1);
    v30[0] = "struct is missing required parameter: ";
    v31 = 259;
    (*(*a1 + 24))(&v32, a1, v19, v30);
    if (v32)
    {
      mlir::Diagnostic::operator<<<3ul>(v33, "id");
    }

    goto LABEL_33;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(*a1 + 32))(a1);
  if (v3)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return mlir::LLVM::AliasScopeDomainAttr::get(v11, v2, v12);
}

llvm::raw_ostream *mlir::LLVM::AliasScopeDomainAttr::print(mlir::LLVM::AliasScopeDomainAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
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
    if (*(v10 + 3) - v11 > 0xDuLL)
    {
      qmemcpy(v11, "description = ", 14);
      *(v10 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v10, "description = ", 0xEuLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }
  }

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

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *(*a4 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && v10 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID())
  {
    a1(__dst, a2);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<61ul>(__dst + 8, "id of an alias scope must be a StringAttr or a DistrinctAttr");
    }

    v13 = v27;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
    if (v13)
    {
      return 0;
    }
  }

  v15 = *a3;
  v17[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id;
  v17[1] = a3;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJRNS1_9AttributeERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v22[1] = v17;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  memset(v24, 0, sizeof(v24));
  memset(__dst, 0, sizeof(__dst));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(__dst, __dst, v24, a4, &v20, &v21);
  v18 = &v19;
  *&__dst[0] = &v19;
  *(&__dst[0] + 1) = v22;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v15 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::AliasScopeAttr::get(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  *&__dst[0] = *(*v4 + 608);
  v5 = mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(*(***&__dst[0] + 32), __dst);
  v6 = *v4;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id;
  v9[1] = v4;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_12DistinctAttrERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v14[1] = v9;
  v11 = v5;
  v12 = a1;
  v13 = a2;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(__dst, __dst, v16, v5, &v12, &v13);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::AliasScopeAttr::parse(mlir::AsmParser *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v30 = v2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v31 = 0;
    v32 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v31))
    {
      v22 = (*(*a1 + 40))(a1);
      v42 = "expected a parameter name in struct";
      v44 = 259;
      (*(*a1 + 24))(v37, a1, v22, &v42);
      v23 = v37;
LABEL_45:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
      return 0;
    }

    v9 = v31;
    v10 = v32;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v7 & 1 | (v10 != 2))
    {
      if (v4 & 1 | (v10 != 6))
      {
        if (v6 & 1 | (v10 != 11))
        {
          goto LABEL_42;
        }

        if (*v9 != 0x7470697263736564 || *(v9 + 3) != 0x6E6F697470697263)
        {
          v10 = 11;
LABEL_42:
          v27 = (*(*a1 + 40))(a1);
          v33[0] = "duplicate or unknown struct parameter name: ";
          v34 = 259;
          (*(*a1 + 24))(&v42, a1, v27, v33);
          if (v42)
          {
            v36 = 261;
            v35[0] = v9;
            v35[1] = v10;
            mlir::Diagnostic::operator<<(v43, v35);
          }

LABEL_44:
          v23 = &v42;
          goto LABEL_45;
        }

        v12 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
        if ((v13 & 1) == 0)
        {
          v28 = (*(*a1 + 40))(a1);
          v44 = 259;
          (*(*a1 + 24))(v38, a1, v28, &v42);
          v23 = v38;
          goto LABEL_45;
        }

        v8 = v12;
        v6 = 1;
      }

      else
      {
        if (*v9 != 1634561892 || *(v9 + 4) != 28265)
        {
          v10 = 6;
          goto LABEL_42;
        }

        v15 = (*(*a1 + 32))(a1);
        mlir::MLIRContext::getOrLoadDialect(*v15, "llvm", 4uLL, v16);
        v17 = (*(*a1 + 40))(a1);
        v33[0] = 0;
        v42 = a1;
        if (((*(*a1 + 448))(a1, v33, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20AliasScopeDomainAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v42) & 1) == 0)
        {
          goto LABEL_41;
        }

        v5 = v33[0];
        if (*(*v33[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id)
        {
          v35[0] = "invalid kind of attribute specified";
          v36 = 259;
          (*(*a1 + 24))(&v42, a1, v17, v35);
          v18 = v45;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
          if (v18 == 1)
          {
LABEL_41:
            v26 = (*(*a1 + 40))(a1);
            v44 = 259;
            (*(*a1 + 24))(v39, a1, v26, &v42);
            v23 = v39;
            goto LABEL_45;
          }

          v5 = 0;
        }

        v4 = 1;
      }
    }

    else
    {
      if (*v9 != 25705)
      {
        v10 = 2;
        goto LABEL_42;
      }

      v42 = 0;
      if (((*(*a1 + 440))(a1, &v42, 0) & 1) == 0)
      {
        v24 = (*(*a1 + 40))(a1);
        v44 = 259;
        (*(*a1 + 24))(v40, a1, v24, &v42);
        v23 = v40;
        goto LABEL_45;
      }

      v3 = v42;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v25 = (*(*a1 + 40))(a1);
    v40[0] = "struct is missing required parameter: ";
    v41 = 259;
    (*(*a1 + 24))(&v42, a1, v25, v40);
    if (v42)
    {
      mlir::Diagnostic::operator<<<3ul>(v43, "id");
    }

    goto LABEL_44;
  }

  if ((v4 & 1) == 0)
  {
    v29 = (*(*a1 + 40))(a1);
    v40[0] = "struct is missing required parameter: ";
    v41 = 259;
    (*(*a1 + 24))(&v42, a1, v29, v40);
    if (v42)
    {
      mlir::Diagnostic::operator<<<7ul>(v43, "domain");
    }

    goto LABEL_44;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v19 = *(*(*a1 + 32))(a1);
  if (v6)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  v40[0] = v30;
  v42 = a1;
  v43[0] = v40;
  return mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM14AliasScopeAttrEJPNS1_11MLIRContextENS1_9AttributeENS8_20AliasScopeDomainAttrENS1_10StringAttrEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v42, v19, v3, v5, v20);
}

llvm::raw_ostream *mlir::LLVM::AliasScopeAttr::print(mlir::LLVM::AliasScopeAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
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
  if ((*(v10 + 3) - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"domain = ";
    *(v10 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v10, "domain = ", 9uLL);
  }

  v12 = *(*this + 16);
  v21 = v12;
  if (((*(*a2 + 56))(a2, v12) & 1) == 0)
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
    mlir::LLVM::AliasScopeDomainAttr::print(&v21, a2);
    if (v14 == (*(*v13 + 80))(v13) + v13[4] - v13[2])
    {
      (*(*a2 + 40))(a2, v12);
    }
  }

  if (*(*this + 24))
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

    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 0xDuLL)
    {
      qmemcpy(v18, "description = ", 14);
      *(v17 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v17, "description = ", 0xEuLL);
    }

    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
    }
  }

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

uint64_t mlir::LLVM::AccessGroupAttr::get(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id;
  v5[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22AccessGroupAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15AccessGroupAttrEJNS1_12DistinctAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v5;
  v8 = a2;
  v3 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v6[0] = &v8;
  v6[1] = v9;
  v7 = &v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v3 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AccessGroupAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AccessGroupAttrStorage,mlir::DistinctAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AccessGroupAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AccessGroupAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AccessGroupAttrStorage,mlir::DistinctAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AccessGroupAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v6);
}

uint64_t mlir::LLVM::AccessGroupAttr::parse(mlir::AsmParser *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v11))
  {
    v6 = (*(*a1 + 40))(a1);
    v20[0] = "expected a parameter name in struct";
    v21 = 259;
    (*(*a1 + 24))(v17, a1, v6, v20);
    v5 = v17;
LABEL_10:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
    return 0;
  }

  v2 = v11;
  v3 = v12;
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (v3 != 2 || *v2 != 25705)
  {
    v4 = (*(*a1 + 40))(a1);
    v13 = "duplicate or unknown struct parameter name: ";
    v14 = 259;
    (*(*a1 + 24))(&v18, a1, v4, &v13);
    if (v18)
    {
      v16 = 261;
      v15[0] = v2;
      v15[1] = v3;
      mlir::Diagnostic::operator<<(v19, v15);
    }

    v5 = &v18;
    goto LABEL_10;
  }

  v18 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(a1, &v18))
  {
    v10 = (*(*a1 + 40))(a1);
    v19[12] = 259;
    (*(*a1 + 24))(v20, a1, v10, &v18);
    v5 = v20;
    goto LABEL_10;
  }

  v8 = v18;
  if ((*(*a1 + 168))(a1))
  {
    v9 = (*(*a1 + 32))(a1);
    return mlir::LLVM::AccessGroupAttr::get(*v9, v8);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::AccessGroupAttr::print(mlir::LLVM::AccessGroupAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TBAARootAttr::get(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id;
  v5[1] = a1;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19TBAARootAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12TBAARootAttrEJNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v8[1] = v5;
  v7 = a2;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(v9, 0, v9, v10, &v7);
  v6 = &v7;
  *&v9[0] = &v7;
  *(&v9[0] + 1) = v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAARootAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAARootAttrStorage,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAARootAttrStorage *)>,mlir::TypeID,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v6, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAARootAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAARootAttrStorage,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAARootAttrStorage *)>,mlir::TypeID,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::LLVM::TBAARootAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, const char *a2, const char *a3)
{
  v23[26] = *MEMORY[0x277D85DE8];
  if ((*(**a1 + 136))(*a1))
  {
    v6 = a1[1];
    if ((*v6 & 1) == 0 && a3 == 2 && *a2 == 25705)
    {
      v10 = 1;
      *v6 = 1;
      v12 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
      v13 = a1[2];
      *v13 = v12;
      *(v13 + 8) = v14;
      if (*(a1[2] + 8))
      {
        return v10;
      }

      v15 = *a1;
      v16 = (*(**a1 + 40))(*a1);
      v22[12] = 259;
      (*(*v15 + 24))(v23, v15, v16, &v21);
      v9 = v23;
    }

    else
    {
      v7 = *a1;
      v8 = (*(*v7 + 40))(v7);
      v17 = "duplicate or unknown struct parameter name: ";
      v18 = 259;
      (*(*v7 + 24))(&v21, v7, v8, &v17);
      if (v21)
      {
        v20 = 261;
        v19[0] = a2;
        v19[1] = a3;
        mlir::Diagnostic::operator<<(v22, v19);
      }

      v9 = &v21;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::TBAARootAttr::print(llvm::raw_ostream *this, mlir::AsmPrinter *a2)
{
  if (*(*this + 8))
  {
    v3 = this;
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

    if (*(*v3 + 8))
    {
      v6 = (*(*a2 + 16))(a2);
      v7 = *(v6 + 4);
      if ((*(v6 + 3) - v7) > 4)
      {
        *(v7 + 4) = 32;
        *v7 = 1025533033;
        *(v6 + 4) += 5;
      }

      else
      {
        llvm::raw_ostream::write(v6, "id = ", 5uLL);
      }

      if (*(*v3 + 8))
      {
        (*(*a2 + 40))(a2);
      }
    }

    this = (*(*a2 + 16))(a2);
    v8 = *(this + 4);
    if (*(this + 3) == v8)
    {

      return llvm::raw_ostream::write(this, ">", 1uLL);
    }

    else
    {
      *v8 = 62;
      ++*(this + 4);
    }
  }

  return this;
}

uint64_t mlir::LLVM::TBAAMemberAttr::parse(uint64_t *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v24 = 0;
  if (((*(*a1 + 440))(a1, &v24, 0) & 1) == 0)
  {
    v7 = *a1;
    goto LABEL_12;
  }

  v3 = v24;
  v4 = *(*v24 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id)
  {
    v6 = v24;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *a1;
    goto LABEL_16;
  }

  v20[0] = "invalid kind of attribute specified";
  v21 = 259;
  (*(*a1 + 24))(__dst, a1, v2, v20);
  v10 = v34;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  v7 = *a1;
  if (v10 == 1)
  {
LABEL_12:
    v8 = (*(v7 + 40))(a1);
    LOWORD(v29) = 259;
    (*(*a1 + 24))(v27, a1, v8, __dst);
    v9 = v27;
LABEL_13:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
    return 0;
  }

  v3 = 0;
LABEL_16:
  if (((*(v7 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  *&__dst[0] = 0;
  v11 = mlir::AsmParser::parseInteger<long long>(a1, __dst);
  v12 = *a1;
  if ((v11 & 1) == 0)
  {
    v19 = (*(v12 + 40))(a1);
    LOWORD(v29) = 259;
    (*(*a1 + 24))(v26, a1, v19, __dst);
    v9 = v26;
    goto LABEL_13;
  }

  v13 = *&__dst[0];
  if ((*(v12 + 168))(a1))
  {
    v14 = (*(*a1 + 32))(a1);
    v15 = *v14;
    v16 = **v14;
    v22[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id;
    v22[1] = v15;
    v20[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJNS2_12TBAANodeAttrExEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v20[1] = v22;
    v24 = v6;
    v25 = v13;
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    memset(__dst, 0, sizeof(__dst));
    v32 = 0;
    v33 = 0xFF51AFD7ED558CCDLL;
    v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::TBAANodeAttr,long long>(__dst, __dst, v31, v3, &v25);
    v23 = &v24;
    *&__dst[0] = &v24;
    *(&__dst[0] + 1) = v20;
    return mlir::detail::StorageUniquerImpl::getOrCreate(*(v16 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr,long long>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr,long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr,long long>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::TBAAMemberAttr::print(mlir::LLVM::TBAAMemberAttr *this, mlir::AsmPrinter *a2)
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
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8236;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  v8 = *(*this + 16);
  v9 = (*(*a2 + 16))(a2);
  llvm::write_integer(v9, v8, 0, 0);
  result = (*(*a2 + 16))(a2);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TBAATypeDescriptorAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v24[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id;
  v24[1] = a1;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29TBAATypeDescriptorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22TBAATypeDescriptorAttrEJNS_9StringRefENS_8ArrayRefINS2_14TBAAMemberAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v26[1] = v24;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  memset(&v29[1], 0, 112);
  v29[15] = 0xFF51AFD7ED558CCDLL;
  v29[0] = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3, a3, a4);
  if (a5)
  {
    v10 = 0;
    v11 = &v6[a5];
    while (v10 <= 0x38)
    {
      v12 = v10 + 8;
      v13 = *v6++;
      *&__src[v10] = (v13 >> 4) ^ (v13 >> 9);
      v10 = v12;
      if (8 * a5 == v12)
      {
        goto LABEL_7;
      }
    }

    v27[0] = xmmword_25D0A0610;
    v27[1] = xmmword_25D0A0620;
    v27[2] = xmmword_25D0A0630;
    v28 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v27, __src, v8, v9);
    if (v10 == 8 * a5)
    {
      v15 = 64;
    }

    else
    {
      v15 = 64;
      do
      {
        v16 = 0;
        do
        {
          v17 = *v6++;
          v18 = v16 + 8;
          *&__src[v16] = (v17 >> 4) ^ (v17 >> 9);
          if (v6 == v11)
          {
            break;
          }

          v19 = v16 >= 0x31;
          v16 += 8;
        }

        while (!v19);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v18], &v31);
        llvm::hashing::detail::hash_state::mix(v27, __src, v20, v21);
        v15 += v18;
      }

      while (v6 != v11);
    }

    v14 = llvm::hashing::detail::hash_state::finalize(v27, v15);
  }

  else
  {
    v12 = 0;
LABEL_7:
    v14 = llvm::hashing::detail::hash_short(__src, v12, 0xFF51AFD7ED558CCDLL);
  }

  v29[1] = v14;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v29, 0, &v29[2], &v29[8]);
  *__src = v25;
  v29[0] = v25;
  v29[1] = v26;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, v22, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, __src, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
}

uint64_t mlir::LLVM::TBAATypeDescriptorAttr::parse(mlir::AsmParser *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v24[0]) = 0;
  v26 = 0;
  LOBYTE(v29) = 0;
  v32 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_59:
    v14 = 0;
    goto LABEL_60;
  }

  v22 = 0;
  v23 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v22))
  {
LABEL_57:
    v12 = (*(*a1 + 40))(a1);
    v42[0] = "expected a parameter name in struct";
    v43 = 259;
    (*(*a1 + 24))(v28, a1, v12, v42);
    p_p = v28;
LABEL_58:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(p_p);
    goto LABEL_59;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v6 = v22;
    v5 = v23;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_59;
    }

    if (v2 & 1 | (v5 != 2))
    {
      break;
    }

    if (*v6 != 25705)
    {
      v5 = 2;
      goto LABEL_77;
    }

    mlir::FieldParser<std::string,std::string>::parse(a1, &__p);
    v8 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v24, &__p);
    if (v34[8] == 1 && (v34[7] & 0x80000000) != 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    if ((v26 & 1) == 0)
    {
      v19 = (*(*a1 + 40))(a1, v8);
      v35 = 259;
      (*(*a1 + 24))(v42, a1, v19, &__p);
      p_p = v42;
      goto LABEL_58;
    }

    v2 = 1;
    if (v4)
    {
      goto LABEL_67;
    }

LABEL_55:
    if (((*(*a1 + 120))(a1, v8) & 1) == 0)
    {
      goto LABEL_59;
    }

    v22 = 0;
    v23 = 0;
    v4 = 1;
    if (!mlir::AsmParser::parseKeyword(a1, &v22))
    {
      goto LABEL_57;
    }
  }

  if (v3 & 1 | (v5 != 7))
  {
    goto LABEL_77;
  }

  if (*v6 != 1651336557 || *(v6 + 3) != 1936876898)
  {
    v5 = 7;
LABEL_77:
    v20 = (*(*a1 + 40))(a1);
    v44 = "duplicate or unknown struct parameter name: ";
    v46[8] = 259;
    (*(*a1 + 24))(&__p, a1, v20, &v44);
    if (__p.n128_u64[0])
    {
      v40[8] = 261;
      v38 = v6;
      v39 = v5;
      mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v38);
    }

    p_p = &__p;
    goto LABEL_58;
  }

  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    v10 = 0;
    LOBYTE(v38) = 0;
    v41 = 0;
    goto LABEL_40;
  }

  v44 = v46;
  v45 = 0x600000000;
  v27[0] = a1;
  v27[1] = &v44;
  if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>,llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v27, 0, 0))
  {
    __p.n128_u64[0] = v34;
    __p.n128_u64[1] = 0x600000000;
    if (v45)
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&__p, &v44);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
    __p.n128_u8[0] = 0;
  }

  v36 = v9;
  if (v44 != v46)
  {
    free(v44);
    v9 = v36;
  }

  if (v9)
  {
    v11 = (*(*a1 + 88))(a1);
    LOBYTE(v38) = 0;
    v41 = 0;
    if ((v11 & 1) == 0 || v36 != 1)
    {
      v10 = 0;
      goto LABEL_37;
    }

    v38 = v40;
    v39 = 0x600000000;
    if (__p.n128_u32[2])
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&v38, &__p);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
    LOBYTE(v38) = 0;
  }

  v41 = v10;
LABEL_37:
  if (v36 == 1 && __p.n128_u64[0] != v34)
  {
    free(__p.n128_u64[0]);
    v10 = v41;
  }

LABEL_40:
  if (v32 == v10)
  {
    if (v32)
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&v29, &v38);
    }
  }

  else if (v32)
  {
    if (v29 != v31)
    {
      free(v29);
    }

    v32 = 0;
  }

  else
  {
    v29 = v31;
    v30 = 0x600000000;
    if (v39)
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&v29, &v38);
    }

    v32 = 1;
  }

  if (v41 == 1 && v38 != v40)
  {
    free(v38);
  }

  if ((v32 & 1) == 0)
  {
    v21 = (*(*a1 + 40))(a1);
    v35 = 259;
    (*(*a1 + 24))(v37, a1, v21, &__p);
    p_p = v37;
    goto LABEL_58;
  }

  v3 = 1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_67:
  if (((*(*a1 + 168))(a1, v8) & 1) == 0)
  {
    goto LABEL_59;
  }

  v16 = *(*(*a1 + 32))(a1);
  if (v25 >= 0)
  {
    v17 = v24;
  }

  else
  {
    v17 = v24[0];
  }

  if (v25 >= 0)
  {
    v18 = v25;
  }

  else
  {
    v18 = v24[1];
  }

  v14 = mlir::LLVM::TBAATypeDescriptorAttr::get(v16, v17, v18, v29, v30);
LABEL_60:
  if (v32 == 1 && v29 != v31)
  {
    free(v29);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24[0]);
  }

  return v14;
}

llvm::raw_ostream *mlir::LLVM::TBAATypeDescriptorAttr::print(mlir::LLVM::TBAATypeDescriptorAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
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
  if ((*(v10 + 3) - v11) > 9)
  {
    *(v11 + 8) = 8253;
    *v11 = *"members = ";
    *(v10 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v10, "members = ", 0xAuLL);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 123);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 123;
  }

  v14 = *this;
  v15 = *(*this + 32);
  if (v15)
  {
    v16 = *(v14 + 24);
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAAMemberAttr,(void *)0>(a2, *v16);
    if (v15 != 1)
    {
      v17 = v16 + 1;
      v18 = 8 * v15 - 8;
      do
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

        v21 = *v17++;
        mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAAMemberAttr,(void *)0>(a2, v21);
        v18 -= 8;
      }

      while (v18);
    }
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 125);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 125;
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

uint64_t mlir::LLVM::TBAATagAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id;
  v11[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18TBAATagAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11TBAATagAttrEJNS2_22TBAATypeDescriptorAttrESD_xbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v14[1] = v11;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v13 = a5;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  memset(v19, 0, sizeof(v19));
  v17 = ((a2 >> 4) ^ (a2 >> 9));
  v18 = ((a3 >> 4) ^ (a3 >> 9));
  v15 = 0;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(&v17, &v15, v19, v20, a4);
  v16 = v15;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v17, &v16, v7, v20, a5);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v17, v16, v8, v20);
  v16 = v12;
  v17 = v12;
  v18 = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAATagAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATagAttrStorage,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATagAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATagAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATagAttrStorage,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATagAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
}

uint64_t mlir::LLVM::TBAATagAttr::parse(mlir::AsmParser *a1)
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
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v30 = 0;
  v7 = 0;
  v29 = 0;
  do
  {
    v31 = 0;
    v32 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v31))
    {
      v19 = (*(*a1 + 40))(a1);
      v45 = "expected a parameter name in struct";
      v46[12] = 259;
      (*(*a1 + 24))(v37, a1, v19, &v45);
      v20 = v37;
LABEL_55:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
      return 0;
    }

    v8 = v31;
    v9 = v32;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v6 & 1 | (v9 != 9))
    {
      if (v3 & 1 | (v9 != 11))
      {
        if (v5 & 1 | (v9 != 6))
        {
          if (v7 & 1 | (v9 != 8))
          {
            goto LABEL_47;
          }

          if (*v8 != 0x746E6174736E6F63)
          {
            v9 = 8;
            goto LABEL_47;
          }

          LOBYTE(v38) = 0;
          if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v38) & 1) == 0)
          {
            v27 = (*(*a1 + 40))(a1);
            v40 = 259;
            (*(*a1 + 24))(v41, a1, v27, &v38);
            v20 = v41;
            goto LABEL_55;
          }

          v29 = v38;
          v7 = 1;
        }

        else
        {
          if (*v8 != 1936090735 || *(v8 + 4) != 29797)
          {
            v9 = 6;
LABEL_47:
            v25 = (*(*a1 + 40))(a1);
            v33 = "duplicate or unknown struct parameter name: ";
            v34 = 259;
            (*(*a1 + 24))(&v38, a1, v25, &v33);
            if (v38)
            {
              v36 = 261;
              v35[0] = v8;
              v35[1] = v9;
              mlir::Diagnostic::operator<<(&v39, v35);
            }

            v20 = &v38;
            goto LABEL_55;
          }

          v38 = 0;
          if ((mlir::AsmParser::parseInteger<long long>(a1, &v38) & 1) == 0)
          {
            v26 = (*(*a1 + 40))(a1);
            v40 = 259;
            (*(*a1 + 24))(v42, a1, v26, &v38);
            v20 = v42;
            goto LABEL_55;
          }

          v30 = v38;
          v5 = 1;
        }
      }

      else
      {
        if (*v8 != 0x745F737365636361 || *(v8 + 3) != 0x657079745F737365)
        {
          v9 = 11;
          goto LABEL_47;
        }

        v14 = mlir::FieldParser<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr>::parse(a1);
        if ((v15 & 1) == 0)
        {
          v23 = (*(*a1 + 40))(a1);
          v40 = 259;
          (*(*a1 + 24))(v43, a1, v23, &v38);
          v20 = v43;
          goto LABEL_55;
        }

        v4 = v14;
        v3 = 1;
      }
    }

    else
    {
      if (*v8 != 0x7079745F65736162 || *(v8 + 8) != 101)
      {
        v9 = 9;
        goto LABEL_47;
      }

      v11 = mlir::FieldParser<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr>::parse(a1);
      if ((v12 & 1) == 0)
      {
        v21 = (*(*a1 + 40))(a1);
        v40 = 259;
        (*(*a1 + 24))(&v45, a1, v21, &v38);
        goto LABEL_54;
      }

      v2 = v11;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v43[0] = "struct is missing required parameter: ";
    v44 = 259;
    (*(*a1 + 24))(&v45, a1, v22, v43);
    if (v45)
    {
      mlir::Diagnostic::operator<<<10ul>(v46, "base_type");
    }

    goto LABEL_54;
  }

  if ((v3 & 1) == 0)
  {
    v24 = (*(*a1 + 40))(a1);
    v43[0] = "struct is missing required parameter: ";
    v44 = 259;
    (*(*a1 + 24))(&v45, a1, v24, v43);
    if (v45)
    {
      mlir::Diagnostic::operator<<<12ul>(v46, "access_type");
    }

    goto LABEL_54;
  }

  if ((v5 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v43[0] = "struct is missing required parameter: ";
    v44 = 259;
    (*(*a1 + 24))(&v45, a1, v28, v43);
    if (v45)
    {
      mlir::Diagnostic::operator<<<7ul>(v46, "offset");
    }

LABEL_54:
    v20 = &v45;
    goto LABEL_55;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = (*(*a1 + 32))(a1);
  return mlir::LLVM::TBAATagAttr::get(*v17, v2, v4, v30, v7 & v29 & 1);
}

llvm::raw_ostream *mlir::LLVM::TBAATagAttr::print(mlir::LLVM::TBAATagAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 0xB)
  {
    *(v7 + 8) = 540876901;
    *v7 = *"base_type = ";
    *(v6 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v6, "base_type = ", 0xCuLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAATypeDescriptorAttr,(void *)0>(a2, *(*this + 8));
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
  if (*(v10 + 3) - v11 > 0xDuLL)
  {
    qmemcpy(v11, "access_type = ", 14);
    *(v10 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v10, "access_type = ", 0xEuLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAATypeDescriptorAttr,(void *)0>(a2, *(*this + 16));
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
  if ((*(v14 + 3) - v15) > 8)
  {
    *(v15 + 8) = 32;
    *v15 = *"offset = ";
    *(v14 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v14, "offset = ", 9uLL);
  }

  v16 = *(*this + 24);
  v17 = (*(*a2 + 16))(a2);
  llvm::write_integer(v17, v16, 0, 0);
  if (*(*this + 32) == 1)
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
    if ((*(v20 + 3) - v21) > 0xA)
    {
      *(v21 + 7) = 540876916;
      *v21 = *"constant = ";
      *(v20 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v20, "constant = ", 0xBuLL);
    }

    if (*(*this + 32) == 1)
    {
      v22 = (*(*a2 + 16))(a2);
      v23 = *(v22 + 4);
      if (*(v22 + 3) - v23 > 3uLL)
      {
        *v23 = 1702195828;
        *(v22 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v22, "true", 4uLL);
      }
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

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAATypeDescriptorAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::TBAATypeDescriptorAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::VScaleRangeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id;
  v6[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VScaleRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VScaleRangeAttrEJNS1_11IntegerAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v10[1] = v6;
  v8 = a2;
  v9 = a3;
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(&v11, 0, v12, &v12[3] + 8, &v9);
  v7 = &v8;
  v11 = &v8;
  *&v12[0] = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::VScaleRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::IntegerAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::VScaleRangeAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VScaleRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::IntegerAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::VScaleRangeAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
}

uint64_t mlir::LLVM::VScaleRangeAttr::parse(mlir::AsmParser *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v20 = 0;
    v21 = 0;
    if (mlir::AsmParser::parseKeyword(a1, &v20))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = v20;
        v8 = v21;
        if (((*(*a1 + 136))(a1) & 1) == 0)
        {
          break;
        }

        if (!(v4 & 1 | (v8 != 8)) && *v7 == 0x65676E61526E696DLL)
        {
          v11 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
          if ((v12 & 1) == 0)
          {
            v19 = (*(*a1 + 40))(a1);
            v29 = 259;
            (*(*a1 + 24))(v31, a1, v19, &v27);
            v16 = v31;
            goto LABEL_19;
          }

          v2 = v11;
          v4 = 1;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 & 1 | (v8 != 8))
          {
            goto LABEL_23;
          }

          if (*v7 != 0x65676E615278616DLL)
          {
            v8 = 8;
LABEL_23:
            v17 = (*(*a1 + 40))(a1);
            v22 = "duplicate or unknown struct parameter name: ";
            v23 = 259;
            (*(*a1 + 24))(&v27, a1, v17, &v22);
            if (v27)
            {
              v25 = 261;
              v24[0] = v7;
              v24[1] = v8;
              mlir::Diagnostic::operator<<(&v28, v24);
            }

            v16 = &v27;
            goto LABEL_19;
          }

          v9 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
          if ((v10 & 1) == 0)
          {
            v18 = (*(*a1 + 40))(a1);
            v29 = 259;
            (*(*a1 + 24))(v30, a1, v18, &v27);
            v16 = v30;
            goto LABEL_19;
          }

          v5 = v9;
          v3 = 1;
          if (v6)
          {
LABEL_16:
            if (((*(*a1 + 168))(a1) & 1) == 0)
            {
              return 0;
            }

            v13 = (*(*a1 + 32))(a1);
            return mlir::LLVM::VScaleRangeAttr::get(*v13, v2, v5);
          }
        }

        if (((*(*a1 + 120))(a1) & 1) == 0)
        {
          return 0;
        }

        v20 = 0;
        v21 = 0;
        v6 = 1;
        if (!mlir::AsmParser::parseKeyword(a1, &v20))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v15 = (*(*a1 + 40))(a1);
      v31[0] = "expected a parameter name in struct";
      v32 = 259;
      (*(*a1 + 24))(v26, a1, v15, v31);
      v16 = v26;
LABEL_19:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
    }
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::VScaleRangeAttr::print(mlir::LLVM::VScaleRangeAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 0xA)
  {
    *(v7 + 7) = 540876901;
    *v7 = *"minRange = ";
    *(v6 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v6, "minRange = ", 0xBuLL);
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
  if ((*(v10 + 3) - v11) > 0xA)
  {
    *(v11 + 7) = 540876901;
    *v11 = *"maxRange = ";
    *(v10 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v10, "maxRange = ", 0xBuLL);
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

uint64_t mlir::LLVM::TargetFeaturesAttr::parse(uint64_t *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(__src) = 0;
  v37 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(a1, &v38);
    std::__optional_storage_base<llvm::SmallVector<mlir::StringAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::StringAttr,6u>,false>>(&__src, &v38);
    if (v42[0] == 1 && v38 != &v39)
    {
      free(v38);
    }

    v7 = *a1;
    if ((v37 & 1) == 0)
    {
      v8 = (*(v7 + 40))(a1);
      LOWORD(v40) = 259;
      (*(*a1 + 24))(v33, a1, v8, &v38);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
      goto LABEL_17;
    }

    if (((*(v7 + 328))(a1) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v3 = *(*(*a1 + 32))(a1);
  v27 = v29;
  v28 = 0x600000000;
  v30 = v32;
  v31 = 0x600000000;
  if (v37 != 1 || (v4 = v35, !v35))
  {
    v4 = 0;
    v11 = v32;
    goto LABEL_23;
  }

  if (v35 < 7)
  {
    v5 = v35;
    v6 = v32;
    goto LABEL_29;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v35, 8);
  v5 = v35;
  if (v35)
  {
    v6 = v30;
LABEL_29:
    memcpy(v6, __src, 8 * v5);
  }

  v14 = 0;
  LODWORD(v31) = v4;
  v11 = v30;
  while (1)
  {
    v15 = *&v11[v14];
    if (!v15)
    {
      break;
    }

    v16 = *(v15 + 24);
    if (!v16)
    {
      break;
    }

    v17 = *(v15 + 16);
    v18 = *v17;
    if (v18 != 43 && v18 != 45)
    {
      v26 = 257;
      (*(*a1 + 24))(&v38, a1, v2, v25);
      if (v38)
      {
        mlir::Diagnostic::operator<<<43ul>(&v38 + 8, "target features must start with '+' or '-'");
      }

      goto LABEL_48;
    }

    v19 = memchr(v17, 44, v16);
    if (v19)
    {
      v20 = v19 - v17 == -1;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v26 = 257;
      (*(*a1 + 24))(&v38, a1, v2, v25);
      if (v38)
      {
        mlir::Diagnostic::operator<<<36ul>(&v38 + 8, "target features can not contain ','");
      }

      goto LABEL_48;
    }

    v14 += 2;
    if (2 * v4 == v14)
    {
      goto LABEL_23;
    }
  }

  v26 = 257;
  (*(*a1 + 24))(&v38, a1, v2, v25);
  if (v38)
  {
    mlir::Diagnostic::operator<<<41ul>(&v38 + 8, "target features can not be null or empty");
  }

LABEL_48:
  v21 = v45;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  if (v21)
  {
    v9 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v12 = *v3;
  v22[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id;
  v22[1] = v3;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v25[1] = v22;
  v24[0] = v11;
  v24[1] = v4;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v43 = 0;
  v44 = 0xFF51AFD7ED558CCDLL;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::StringAttr>>(&v38, 0, &v38, v42, v24);
  v23 = v24;
  *&v38 = v24;
  *(&v38 + 1) = v25;
  v9 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
LABEL_24:
  if (v30 != v32)
  {
    free(v30);
  }

  if (v27 != v29)
  {
    free(v27);
  }

LABEL_18:
  if (v37 == 1 && __src != &v36)
  {
    free(__src);
  }

  return v9;
}

llvm::raw_ostream *mlir::LLVM::TargetFeaturesAttr::print(mlir::LLVM::TargetFeaturesAttr *this, mlir::AsmPrinter *a2)
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  v8 = *this;
  v9 = *(*this + 16);
  if (v9)
  {
    v10 = *(v8 + 8);
    (*(*a2 + 40))(a2, *v10);
    if (v9 != 1)
    {
      v11 = v10 + 1;
      v12 = 8 * v9 - 8;
      do
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

        v15 = *v11++;
        (*(*a2 + 40))(a2, v15);
        v12 -= 8;
      }

      while (v12);
    }
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "]", 1uLL);
  }

  else
  {
    *v17 = 93;
    ++*(v16 + 4);
  }

  result = (*(*a2 + 16))(a2);
  v19 = *(result + 4);
  if (*(result + 3) == v19)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v19 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::VecTypeHintAttr::get(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VecTypeHintAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VecTypeHintAttrEJNS1_8TypeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v6;
  v8[0] = a2;
  v8[1] = a3;
  memset(&v10[1], 0, 112);
  v10[15] = 0xFF51AFD7ED558CCDLL;
  v10[0] = (a2 >> 4) ^ (a2 >> 9);
  LOBYTE(v10[1]) = a3;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v10, 0, &v10[1] + 1, &v10[8]);
  v7 = v8;
  v10[0] = v8;
  v10[1] = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::VecTypeHintAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::TypeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::VecTypeHintAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VecTypeHintAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::TypeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::VecTypeHintAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::LLVM::VecTypeHintAttr::parse(mlir::AsmParser *a1)
{
  v33 = *MEMORY[0x277D85DE8];
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
    v19 = 0;
    v20 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v19))
    {
      v13 = (*(*a1 + 40))(a1);
      v31 = "expected a parameter name in struct";
      v32[12] = 259;
      (*(*a1 + 24))(v25, a1, v13, &v31);
      v14 = v25;
      goto LABEL_31;
    }

    v7 = v19;
    v6 = v20;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v2 & 1 | (v6 != 4))
    {
      if (v4 & 1 | (v6 != 9))
      {
        goto LABEL_24;
      }

      if (*v7 != 0x656E6769735F7369 || *(v7 + 8) != 100)
      {
        v6 = 9;
        goto LABEL_24;
      }

      LOBYTE(v26) = 0;
      if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v26) & 1) == 0)
      {
        v17 = (*(*a1 + 40))(a1);
        v28 = 259;
        (*(*a1 + 24))(v29, a1, v17, &v26);
        v14 = v29;
        goto LABEL_31;
      }

      v5 = v26;
      v4 = 1;
      continue;
    }

    if (*v7 != 1953393000)
    {
      v6 = 4;
LABEL_24:
      v16 = (*(*a1 + 40))(a1);
      v21 = "duplicate or unknown struct parameter name: ";
      v22 = 259;
      (*(*a1 + 24))(&v26, a1, v16, &v21);
      if (v26)
      {
        v24 = 261;
        v23[0] = v7;
        v23[1] = v6;
        mlir::Diagnostic::operator<<(&v27, v23);
      }

      v14 = &v26;
LABEL_31:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
      return 0;
    }

    v9 = mlir::FieldParser<mlir::TypeAttr,mlir::TypeAttr>::parse(a1);
    if ((v10 & 1) == 0)
    {
      v15 = (*(*a1 + 40))(a1);
      v28 = 259;
      (*(*a1 + 24))(&v31, a1, v15, &v26);
LABEL_30:
      v14 = &v31;
      goto LABEL_31;
    }

    v3 = v9;
    v2 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v2 & 1) == 0)
  {
    v18 = (*(*a1 + 40))(a1);
    v29[0] = "struct is missing required parameter: ";
    v30 = 259;
    (*(*a1 + 24))(&v31, a1, v18, v29);
    if (v31)
    {
      mlir::Diagnostic::operator<<<5ul>(v32, "hint");
    }

    goto LABEL_30;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v11 = (*(*a1 + 32))(a1);
  return mlir::LLVM::VecTypeHintAttr::get(*v11, v3, v4 & v5 & 1);
}

llvm::raw_ostream *mlir::LLVM::VecTypeHintAttr::print(mlir::LLVM::VecTypeHintAttr *this, mlir::AsmPrinter *a2)
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
    *(v7 + 3) = 540876916;
    *v7 = 1953393000;
    *(v6 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v6, "hint = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16) == 1)
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
    if ((*(v10 + 3) - v11) > 0xB)
    {
      *(v11 + 8) = 540876900;
      *v11 = *"is_signed = ";
      *(v10 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v10, "is_signed = ", 0xCuLL);
    }

    if (*(*this + 16) == 1)
    {
      v12 = (*(*a2 + 16))(a2);
      v13 = *(v12 + 4);
      if (*(v12 + 3) - v13 > 3uLL)
      {
        *v13 = 1702195828;
        *(v12 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v12, "true", 4uLL);
      }
    }
  }

  result = (*(*a2 + 16))(a2);
  v15 = *(result + 4);
  if (*(result + 3) == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TailCallKindAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23TailCallKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16TailCallKindAttrEJNS2_12tailcallkind12TailCallKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TailCallKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TailCallKindAttrStorage,mlir::LLVM::tailcallkind::TailCallKind>(llvm::function_ref<void ()(mlir::LLVM::detail::TailCallKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::tailcallkind::TailCallKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TailCallKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TailCallKindAttrStorage,mlir::LLVM::tailcallkind::TailCallKind>(llvm::function_ref<void ()(mlir::LLVM::detail::TailCallKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::tailcallkind::TailCallKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::TailCallKindAttr::parse(uint64_t *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    v19[0] = "expected keyword for Tail Call Kind";
    v20 = 259;
    (*(*a1 + 24))(&v22, a1, v2, v19);
LABEL_23:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    v5 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v3 = SHIBYTE(v18);
  p_p = __p;
  if (v18 >= 0)
  {
    p_p = &__p;
  }

  if (v18 < 0)
  {
    v3 = v17;
  }

  if (v3 == 8)
  {
    if (*p_p == 0x6C6961747473756DLL)
    {
      v9 = 1;
      v5 = 2;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v3 == 6)
  {
    v6 = *p_p;
    v7 = p_p[2];
    if (v6 == 1635020654 && v7 == 27753)
    {
      v9 = 1;
      v5 = 3;
      goto LABEL_24;
    }

LABEL_21:
    v14 = "invalid Tail Call Kind specification: ";
    v15 = 259;
    (*(*a1 + 24))(&v22, a1, v2, &v14);
    if (v22)
    {
      v20 = 260;
      v19[0] = &__p;
      mlir::Diagnostic::operator<<(v23, v19);
    }

    goto LABEL_23;
  }

  if (v3 != 4)
  {
    goto LABEL_21;
  }

  if (*p_p == 1701736302)
  {
    v5 = 0;
    goto LABEL_35;
  }

  if (*p_p != 1818845556)
  {
    goto LABEL_21;
  }

  v5 = 1;
LABEL_35:
  v9 = 1;
LABEL_24:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  v10 = *a1;
  if ((v9 & 1) == 0)
  {
    v13 = (*(v10 + 40))(a1);
    v23[12] = 259;
    (*(*a1 + 24))(v21, a1, v13, &v22);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    return 0;
  }

  if (((*(v10 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(*a1 + 32))(a1);

  return mlir::LLVM::TailCallKindAttr::get(v11, v5);
}

llvm::raw_ostream *mlir::LLVM::TailCallKindAttr::print(mlir::LLVM::TailCallKindAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 8);
  v7 = (*(*a2 + 16))(a2);
  if (v6 > 3)
  {
    v8 = 0;
    v9 = &str_2_25;
  }

  else
  {
    v8 = qword_25D0A0178[v6];
    v9 = off_2799BE8F8[v6];
  }

  llvm::raw_ostream::operator<<(v7, v9, v8);
  result = (*(*a2 + 16))(a2);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::WorkgroupAttributionAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31WorkgroupAttributionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24WorkgroupAttributionAttrEJNS1_11IntegerAttrENS1_8TypeAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v9[1] = v6;
  v8[0] = a2;
  v8[1] = a3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v10 = ((a2 >> 4) ^ (a2 >> 9));
  v11 = ((a3 >> 4) ^ (a3 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, v12, v13);
  v7 = v8;
  v10 = v8;
  v11 = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::WorkgroupAttributionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::IntegerAttr,mlir::TypeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::WorkgroupAttributionAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::TypeAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::WorkgroupAttributionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::IntegerAttr,mlir::TypeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::WorkgroupAttributionAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::TypeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v10);
}

uint64_t mlir::LLVM::WorkgroupAttributionAttr::parse(uint64_t *a1)
{
  v18[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
  v3 = *a1;
  if ((v4 & 1) == 0)
  {
    v12 = (*(v3 + 40))(a1);
    v16 = 259;
    (*(*a1 + 24))(v18, a1, v12, v15);
    v13 = v18;
LABEL_10:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    return 0;
  }

  v5 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = mlir::FieldParser<mlir::TypeAttr,mlir::TypeAttr>::parse(a1);
  v7 = *a1;
  if ((v8 & 1) == 0)
  {
    v14 = (*(v7 + 40))(a1);
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v14, v15);
    v13 = v17;
    goto LABEL_10;
  }

  v9 = v6;
  if (((*(v7 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(*a1 + 32))(a1);

  return mlir::LLVM::WorkgroupAttributionAttr::get(v10, v5, v9);
}

uint64_t mlir::FieldParser<mlir::TypeAttr,mlir::TypeAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

llvm::raw_ostream *mlir::LLVM::WorkgroupAttributionAttr::print(mlir::LLVM::WorkgroupAttributionAttr *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::IntegerOverflowFlagsAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::LLVM::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::LLVM::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::IntegerOverflowFlagsAttr::parse(mlir::AsmParser *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v3 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v9))
    {
      goto LABEL_18;
    }

    v4 = mlir::LLVM::symbolizeIntegerOverflowFlags(v9, v10);
    if (!HIDWORD(v4))
    {
      v8[16] = 257;
      (*(*a1 + 24))(&v12, a1, v2, v8);
      if (v12)
      {
        mlir::Diagnostic::operator<<<10ul>(v13, "expected ");
        if (v12)
        {
          mlir::Diagnostic::operator<<<35ul>(v13, "::mlir::LLVM::IntegerOverflowFlags");
          if (v12)
          {
            mlir::Diagnostic::operator<<<16ul>(v13, " to be one of: ");
            if (v12)
            {
              mlir::Diagnostic::operator<<<5ul>(v13, "none");
              if (v12)
              {
                mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                if (v12)
                {
                  mlir::Diagnostic::operator<<<4ul>(v13, "nsw");
                  if (v12)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                    if (v12)
                    {
                      mlir::Diagnostic::operator<<<4ul>(v13, "nuw");
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
LABEL_18:
      v7 = (*(*a1 + 40))(a1);
      v13[12] = 259;
      (*(*a1 + 24))(v11, a1, v7, &v12);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      return 0;
    }

    v3 |= v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  return mlir::LLVM::IntegerOverflowFlagsAttr::get(*v5, v3);
}

llvm::raw_ostream *mlir::LLVM::IntegerOverflowFlagsAttr::print(mlir::LLVM::IntegerOverflowFlagsAttr *this, mlir::AsmPrinter *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
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

  v6 = *(*this + 8);
  if (v6)
  {
    v22 = v24;
    v23 = 0x200000000;
    if (v6)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "nsw", 3);
    }

    if ((v6 & 2) != 0)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "nuw", 3);
    }

    v7 = v22;
    v8 = v23;
    memset(&__p, 0, sizeof(__p));
    if (v23)
    {
      v9 = 16 * v23;
      v10 = v22 + v9;
      v11 = 2 * v23 - 2;
      v12 = 8;
      do
      {
        v11 += *(v22 + v12);
        v12 += 16;
        v9 -= 16;
      }

      while (v9);
      std::string::reserve(&__p, v11);
      std::string::append(&__p, *v7, *(v7 + 1));
      if (v8 != 1)
      {
        v13 = v7 + 16;
        do
        {
          std::string::append(&__p, ", ", 2uLL);
          v14 = *v13;
          v15 = *(v13 + 1);
          v13 += 16;
          std::string::append(&__p, v14, v15);
        }

        while (v13 != v10);
      }
    }

    if (v22 != v24)
    {
      free(v22);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "none");
  }

  v16 = (*(*a2 + 16))(a2);
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

  llvm::raw_ostream::write(v16, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = (*(*a2 + 16))(a2);
  v20 = *(result + 4);
  if (*(result + 3) == v20)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v20 = 62;
  ++*(result + 4);
  return result;
}

uint64_t mlir::LLVM::FastmathFlagsAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24FastmathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastmathFlagsAttrEJNS2_13FastmathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::FastmathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::LLVM::FastmathFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::FastmathFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::FastmathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FastmathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::LLVM::FastmathFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::FastmathFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::FastmathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::FastmathFlagsAttr::parse(mlir::AsmParser *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v18 = (*(*a1 + 40))(a1);
  v2 = 0;
  v21 = 0uLL;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v21))
    {
      goto LABEL_74;
    }

    v19[0] = v21;
    if (*(&v21 + 1) == 4 && *v21 == 1701736302)
    {
      v13 = 0;
      goto LABEL_47;
    }

    v24 = v26;
    v25 = 0x200000000;
    llvm::StringRef::split(v19, &v24, ",", 1uLL, -1, 1);
    if (!v25)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_44;
    }

    v3 = 0;
    v4 = v24;
    v5 = 16 * v25;
    while (1)
    {
      v22 = *v4;
      v6 = llvm::StringRef::trim(&v22, " \t\n\v\f\r", 6);
      if (v7 > 6)
      {
        break;
      }

      if (v7 == 3)
      {
        if (*v6 == 29550 && *(v6 + 2) == 122)
        {
          v8 = 4;
        }

        else
        {
          if (*v6 != 26209 || *(v6 + 2) != 110)
          {
            goto LABEL_43;
          }

          v8 = 32;
        }
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_43;
        }

        switch(*v6)
        {
          case 0x6E616E6E:
            v8 = 1;
            break;
          case 0x666E696E:
            v8 = 2;
            break;
          case 0x70637261:
            v8 = 8;
            break;
          case 0x74736166:
            v8 = 127;
            break;
          default:
            goto LABEL_43;
        }
      }

LABEL_40:
      v3 |= v8;
      ++v4;
      v5 -= 16;
      if (!v5)
      {
        v12 = 0;
        v13 = v3;
        goto LABEL_44;
      }
    }

    if (v7 != 7)
    {
      if (v7 != 8 || *v6 != 0x74636172746E6F63)
      {
        goto LABEL_43;
      }

      v8 = 16;
      goto LABEL_40;
    }

    if (*v6 == 1935762802 && *(v6 + 3) == 1668248435)
    {
      v8 = 64;
      goto LABEL_40;
    }

LABEL_43:
    v13 = 0;
    v12 = 1;
LABEL_44:
    if (v24 != v26)
    {
      free(v24);
    }

    if (v12)
    {
      v20 = 257;
      (*(*a1 + 24))(&v24, a1, v18, v19);
      if (v24)
      {
        mlir::Diagnostic::operator<<<10ul>(&v25, "expected ");
        if (v24)
        {
          mlir::Diagnostic::operator<<<28ul>(&v25, "::mlir::LLVM::FastmathFlags");
          if (v24)
          {
            mlir::Diagnostic::operator<<<16ul>(&v25, " to be one of: ");
            if (v24)
            {
              mlir::Diagnostic::operator<<<5ul>(&v25, "none");
              if (v24)
              {
                mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                if (v24)
                {
                  mlir::Diagnostic::operator<<<5ul>(&v25, "nnan");
                  if (v24)
                  {
                    mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                    if (v24)
                    {
                      mlir::Diagnostic::operator<<<5ul>(&v25, "ninf");
                      if (v24)
                      {
                        mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                        if (v24)
                        {
                          mlir::Diagnostic::operator<<<4ul>(&v25, "nsz");
                          if (v24)
                          {
                            mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                            if (v24)
                            {
                              mlir::Diagnostic::operator<<<5ul>(&v25, "arcp");
                              if (v24)
                              {
                                mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                                if (v24)
                                {
                                  mlir::Diagnostic::operator<<<9ul>(&v25, "contract");
                                  if (v24)
                                  {
                                    mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                                    if (v24)
                                    {
                                      mlir::Diagnostic::operator<<<4ul>(&v25, "afn");
                                      if (v24)
                                      {
                                        mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                                        if (v24)
                                        {
                                          mlir::Diagnostic::operator<<<8ul>(&v25, "reassoc");
                                          if (v24)
                                          {
                                            mlir::Diagnostic::operator<<<3ul>(&v25, ", ");
                                            if (v24)
                                            {
                                              mlir::Diagnostic::operator<<<5ul>(&v25, "fast");
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

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
LABEL_74:
      v17 = (*(*a1 + 40))(a1);
      v26[8] = 259;
      (*(*a1 + 24))(v23, a1, v17, &v24);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
      return 0;
    }

LABEL_47:
    v2 |= v13;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  v14 = (*(*a1 + 168))(a1);
  if (v14)
  {
    v15 = (*(*a1 + 32))(a1);
    return mlir::LLVM::FastmathFlagsAttr::get(*v15, v2);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::FastmathFlagsAttr::print(mlir::LLVM::FastmathFlagsAttr *this, mlir::AsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
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

  v6 = *(*this + 8);
  if (!v6)
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "none");
    goto LABEL_32;
  }

  v24 = v26;
  v25 = 0x200000000;
  if ((~v6 & 0x7F) == 0)
  {
    v7 = "fast";
    v8 = 4;
LABEL_23:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, v7, v8);
    goto LABEL_24;
  }

  if (v6)
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "nnan", 4);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "ninf", 4);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "nsz", 3);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "arcp", 4);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "afn", 3);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_20:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "contract", 8);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v6 & 0x40) != 0)
  {
LABEL_22:
    v7 = "reassoc";
    v8 = 7;
    goto LABEL_23;
  }

LABEL_24:
  v9 = v24;
  v10 = v25;
  memset(&__p, 0, sizeof(__p));
  if (v25)
  {
    v11 = 16 * v25;
    v12 = v24 + v11;
    v13 = 2 * v25 - 2;
    v14 = 8;
    do
    {
      v13 += *(v24 + v14);
      v14 += 16;
      v11 -= 16;
    }

    while (v11);
    std::string::reserve(&__p, v13);
    std::string::append(&__p, *v9, *(v9 + 1));
    if (v10 != 1)
    {
      v15 = v9 + 16;
      do
      {
        std::string::append(&__p, ", ", 2uLL);
        v16 = *v15;
        v17 = *(v15 + 1);
        v15 += 16;
        std::string::append(&__p, v16, v17);
      }

      while (v15 != v12);
    }
  }

  if (v24 != v26)
  {
    free(v24);
  }

LABEL_32:
  v18 = (*(*a2 + 16))(a2);
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

  llvm::raw_ostream::write(v18, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = (*(*a2 + 16))(a2);
  v22 = *(result + 4);
  if (*(result + 3) == v22)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v22 = 62;
  ++*(result + 4);
  return result;
}

uint64_t mlir::LLVM::LLVMDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v244[25] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v224, a2, 0);
  v240 = "cconv";
  v241 = 5;
  if (v227[2])
  {
    goto LABEL_2;
  }

  v6 = v226;
  if (v226 == 5)
  {
    if (*v225 == 1852793699 && *(v225 + 4) == 118)
    {
      (*(*a2 + 32))(a2);
      (*(*a2 + 40))(a2);
      if (((*(*a2 + 152))(a2) & 1) == 0)
      {
        goto LABEL_513;
      }

      __p = 0;
      v233 = 0;
      v234 = 0;
      v17 = (*(*a2 + 40))(a2);
      if ((*(*a2 + 432))(a2, &__p))
      {
        v18 = SHIBYTE(v234);
        p_p = __p;
        if (v234 >= 0)
        {
          p_p = &__p;
        }

        if (v234 < 0)
        {
          v18 = v233;
        }

        switch(v18)
        {
          case 3:
            v20 = *p_p;
            v21 = *(p_p + 2);
            if (v20 != 25443 || v21 != 99)
            {
              goto LABEL_473;
            }

            v23 = 0;
            v24 = 1;
            break;
          case 5:
            if (*p_p == 828334947 && *(p_p + 4) == 48)
            {
              v24 = 1;
              v23 = 10;
            }

            else
            {
              v112 = *p_p;
              v113 = *(p_p + 4);
              if (v112 != 828334947 || v113 != 49)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 11;
            }

            break;
          case 6:
            if (*p_p == 1953718630 && p_p[2] == 25443)
            {
              v24 = 1;
              v23 = 8;
            }

            else if (*p_p == 1684828003 && p_p[2] == 25443)
            {
              v24 = 1;
              v23 = 9;
            }

            else if (*p_p == 1818845556 && p_p[2] == 25443)
            {
              v24 = 1;
              v23 = 18;
            }

            else
            {
              v108 = *p_p;
              v109 = p_p[2];
              if (v108 != 1836476520 || v109 != 25443)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 81;
            }

            break;
          case 7:
            if (*p_p == 1718187891 && *(p_p + 3) == 1667462246)
            {
              v24 = 1;
              v23 = 16;
            }

            else
            {
              v102 = *p_p;
              v103 = *(p_p + 3);
              if (v102 != 913205623 || v103 != 1667445814)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 79;
            }

            break;
          case 8:
            if (*p_p == 0x6363676572796E61)
            {
              v24 = 1;
              v23 = 13;
            }

            else
            {
              if (*p_p != 0x6363635F6D766868)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 82;
            }

            break;
          case 10:
            if (*p_p == 0x736370615F6D7261 && p_p[4] == 25443)
            {
              v24 = 1;
              v23 = 66;
            }

            else if (*p_p == 0x72746E695F363878 && p_p[4] == 25443)
            {
              v24 = 1;
              v23 = 83;
            }

            else
            {
              v94 = *p_p;
              v95 = p_p[4];
              if (v94 != 0x72746E695F727661 || v95 != 25443)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 84;
            }

            break;
          case 11:
            if (*p_p == 0x6961747466697773 && *(p_p + 3) == 0x63636C6961747466)
            {
              v24 = 1;
              v23 = 20;
            }

            else if (*p_p == 0x637061615F6D7261 && *(p_p + 3) == 0x636373637061615FLL)
            {
              v24 = 1;
              v23 = 67;
            }

            else if (*p_p == 0x6E75665F72697073 && *(p_p + 3) == 0x6363636E75665F72)
            {
              v24 = 1;
              v23 = 75;
            }

            else if (*p_p == 0x765F757067646D61 && *(p_p + 3) == 0x636373765F757067)
            {
              v24 = 1;
              v23 = 87;
            }

            else if (*p_p == 0x675F757067646D61 && *(p_p + 3) == 0x636373675F757067)
            {
              v24 = 1;
              v23 = 88;
            }

            else if (*p_p == 0x635F757067646D61 && *(p_p + 3) == 0x636373635F757067)
            {
              v24 = 1;
              v23 = 90;
            }

            else if (*p_p == 0x685F757067646D61 && *(p_p + 3) == 0x636373685F757067)
            {
              v24 = 1;
              v23 = 93;
            }

            else if (*p_p == 0x6C5F757067646D61 && *(p_p + 3) == 0x6363736C5F757067)
            {
              v24 = 1;
              v23 = 95;
            }

            else if (*p_p == 0x655F757067646D61 && *(p_p + 3) == 0x636373655F757067)
            {
              v24 = 1;
              v23 = 96;
            }

            else
            {
              v124 = *p_p;
              v125 = *(p_p + 3);
              if (v124 != 0x746E695F6B38366DLL || v125 != 0x636372746E695F6BLL)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 101;
            }

            break;
          case 12:
            if (*p_p == 0x6E72656B5F787470 && *(p_p + 2) == 1667460197)
            {
              v24 = 1;
              v23 = 71;
            }

            else if (*p_p == 0x697665645F787470 && *(p_p + 2) == 1667458403)
            {
              v24 = 1;
              v23 = 72;
            }

            else
            {
              v129 = *p_p;
              v130 = *(p_p + 2);
              if (v129 != 0x675F757067646D61 || v130 != 1667463270)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 100;
            }

            break;
          case 13:
            if (*p_p == 0x636474735F363878 && *(p_p + 5) == 0x63636C6C61636474)
            {
              v24 = 1;
              v23 = 64;
            }

            else if (*p_p == 0x695F30333470736DLL && *(p_p + 5) == 0x636372746E695F30)
            {
              v24 = 1;
              v23 = 69;
            }

            else if (*p_p == 0x72656B5F72697073 && *(p_p + 5) == 0x63636C656E72656BLL)
            {
              v24 = 1;
              v23 = 76;
            }

            else if (*p_p == 0x735F34365F363878 && *(p_p + 5) == 0x6363767379735F34)
            {
              v24 = 1;
              v23 = 78;
            }

            else if (*p_p == 0x6C6975625F727661 && *(p_p + 5) == 0x63636E69746C6975)
            {
              v24 = 1;
              v23 = 86;
            }

            else
            {
              v144 = *p_p;
              v145 = *(p_p + 5);
              if (v144 != 0x636765725F363878 || v145 != 0x63636C6C61636765)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 92;
            }

            break;
          case 14:
            if (*p_p == 0x6576726573657270 && *(p_p + 3) == 0x63636C6C615F6576)
            {
              v24 = 1;
              v23 = 15;
            }

            else if (*p_p == 0x747361665F787863 && *(p_p + 3) == 0x6363736C745F7473)
            {
              v24 = 1;
              v23 = 17;
            }

            else if (*p_p == 0x747361665F363878 && *(p_p + 3) == 0x63636C6C61637473)
            {
              v24 = 1;
              v23 = 65;
            }

            else if (*p_p == 0x736968745F363878 && *(p_p + 3) == 0x63636C6C61637369)
            {
              v24 = 1;
              v23 = 70;
            }

            else
            {
              v136 = *p_p;
              v137 = *(p_p + 3);
              if (v136 != 0x636F5F6C65746E69 || v137 != 0x636369625F6C636FLL)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 77;
            }

            break;
          case 15:
            if (*p_p == 0x6576726573657270 && *(p_p + 7) == 0x636374736F6D5F65)
            {
              v24 = 1;
              v23 = 14;
            }

            else if (*p_p == 0x5F64726175676663 && *(p_p + 7) == 0x63636B636568635FLL)
            {
              v24 = 1;
              v23 = 19;
            }

            else if (*p_p == 0x637061615F6D7261 && *(p_p + 7) == 0x63637066765F7363)
            {
              v24 = 1;
              v23 = 68;
            }

            else
            {
              v84 = *p_p;
              v85 = *(p_p + 7);
              if (v84 != 0x6B5F757067646D61 || v85 != 0x63636C656E72656BLL)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 91;
            }

            break;
          case 16:
            if (*p_p == 0x746365765F363878 && *(p_p + 1) == 0x63636C6C6163726FLL)
            {
              v24 = 1;
              v23 = 80;
            }

            else
            {
              v99 = *p_p;
              v98 = *(p_p + 1);
              if (v99 != 0x625F30333470736DLL || v98 != 0x63636E69746C6975)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 94;
            }

            break;
          case 20:
            v87 = *p_p;
            v88 = *(p_p + 1);
            v89 = *(p_p + 4);
            if (v87 != 0x5F34366863726161 || v88 != 0x6163726F74636576 || v89 != 1667460204)
            {
              goto LABEL_473;
            }

            v24 = 1;
            v23 = 97;
            break;
          case 24:
            if (*p_p == 0x5F34366863726161 && *(p_p + 1) == 0x746365765F657673 && *(p_p + 2) == 0x63636C6C6163726FLL)
            {
              v24 = 1;
              v23 = 98;
            }

            else
            {
              v76 = *p_p;
              v77 = *(p_p + 1);
              v78 = *(p_p + 2);
              if (v76 != 0x736D655F6D736177 || v77 != 0x5F6E657470697263 || v78 != 0x6363656B6F766E69)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 99;
            }

            break;
          default:
LABEL_473:
            v230[0] = "invalid Calling Conventions specification: ";
            v231 = 259;
            (*(*a2 + 24))(&v243, a2, v17, v230);
            if (v243)
            {
              v237 = 260;
              v235 = &__p;
              mlir::Diagnostic::operator<<(v244, &v235);
            }

            goto LABEL_139;
        }
      }

      else
      {
        v235 = "expected keyword for Calling Conventions";
        v237 = 259;
        (*(*a2 + 24))(&v243, a2, v17, &v235);
LABEL_139:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
        v23 = 0;
        v24 = 0;
      }

      if (SHIBYTE(v234) < 0)
      {
        operator delete(__p);
      }

      v46 = *a2;
      if ((v24 & 1) == 0)
      {
        v49 = (*(v46 + 40))(a2);
        goto LABEL_512;
      }

      if (((*(v46 + 168))(a2) & 1) == 0)
      {
        goto LABEL_513;
      }

      v47 = (*(*a2 + 32))(a2);
      v48 = mlir::LLVM::CConvAttr::get(*v47, v23);
LABEL_154:
      v5 = v48;
      goto LABEL_514;
    }

    goto LABEL_17;
  }

  if (v226)
  {
LABEL_17:
    v240 = "comdat";
    v241 = 6;
    goto LABEL_18;
  }

  (*(*v224[0] + 648))(v224[0], &v240, 1);
  v240 = "comdat";
  v241 = 6;
  if (v227[2])
  {
    goto LABEL_2;
  }

  v6 = v226;
  if (v226)
  {
LABEL_18:
    if (v6 != 6 || (*v225 == 1684893539 ? (v8 = *(v225 + 4) == 29793) : (v8 = 0), !v8))
    {
      v240 = "linkage";
      v241 = 7;
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    __p = 0;
    v233 = 0;
    v234 = 0;
    v25 = (*(*a2 + 40))(a2);
    if ((*(*a2 + 432))(a2, &__p))
    {
      if (v234 >= 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p;
      }

      if (v234 >= 0)
      {
        v27 = SHIBYTE(v234);
      }

      else
      {
        v27 = v233;
      }

      v28 = mlir::LLVM::comdat::symbolizeComdat(v26, v27);
      if (v29)
      {
        v30 = v28;
        v31 = 1;
LABEL_150:
        if (SHIBYTE(v234) < 0)
        {
          operator delete(__p);
        }

        v51 = *a2;
        if ((v31 & 1) == 0)
        {
          v49 = (*(v51 + 40))(a2);
          goto LABEL_512;
        }

        v52 = (*(v51 + 32))(a2);
        v48 = mlir::LLVM::ComdatAttr::get(*v52, v30);
        goto LABEL_154;
      }

      v230[0] = "invalid LLVM Comdat Types specification: ";
      v231 = 259;
      (*(*a2 + 24))(&v243, a2, v25, v230);
      if (v243)
      {
        v237 = 260;
        v235 = &__p;
        mlir::Diagnostic::operator<<(v244, &v235);
      }
    }

    else
    {
      v235 = "expected keyword for LLVM Comdat Types";
      v237 = 259;
      (*(*a2 + 24))(&v243, a2, v25, &v235);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
    v30 = 0;
    v31 = 0;
    goto LABEL_150;
  }

  (*(*v224[0] + 648))(v224[0], &v240, 1);
  v240 = "linkage";
  v241 = 7;
  if (v227[2])
  {
    goto LABEL_2;
  }

  v6 = v226;
  if (!v226)
  {
LABEL_9:
    (*(*v224[0] + 648))(v224[0], &v240, 1);
    v240 = "framePointerKind";
    v241 = 16;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
    if (!v226)
    {
      goto LABEL_11;
    }

LABEL_30:
    if (v6 != 16 || (*v225 == 0x696F50656D617266 ? (v10 = *(v225 + 8) == 0x646E694B7265746ELL) : (v10 = 0), !v10))
    {
      v243 = "loop_vectorize";
      v244[0] = 14;
      goto LABEL_36;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_513;
    }

    __p = 0;
    v233 = 0;
    v234 = 0;
    v41 = (*(*a2 + 40))(a2);
    if ((*(*a2 + 432))(a2, &__p))
    {
      v42 = SHIBYTE(v234);
      v43 = __p;
      if (v234 >= 0)
      {
        v43 = &__p;
      }

      if (v234 < 0)
      {
        v42 = v233;
      }

      if (v42 == 3)
      {
        v68 = *v43;
        v69 = *(v43 + 2);
        if (v68 == 27745 && v69 == 108)
        {
          v67 = 1;
          v44 = 2;
          goto LABEL_248;
        }
      }

      else if (v42 == 8)
      {
        if (*v43 == 0x6661656C2D6E6F6ELL)
        {
          v44 = 1;
          goto LABEL_526;
        }

        if (*v43 == 0x6465767265736572)
        {
          v67 = 1;
          v44 = 3;
LABEL_248:
          if (SHIBYTE(v234) < 0)
          {
            operator delete(__p);
          }

          v71 = *a2;
          if (v67)
          {
            if ((*(v71 + 168))(a2))
            {
              v72 = (*(*a2 + 32))(a2);
              v48 = mlir::LLVM::FramePointerKindAttr::get(*v72, v44);
              goto LABEL_154;
            }

LABEL_513:
            v5 = 0;
            goto LABEL_514;
          }

          v49 = (*(v71 + 40))(a2);
          goto LABEL_512;
        }
      }

      else if (v42 == 4 && *v43 == 1701736302)
      {
        v44 = 0;
LABEL_526:
        v67 = 1;
        goto LABEL_248;
      }

      v230[0] = "invalid LLVM FramePointerKind specification: ";
      v231 = 259;
      (*(*a2 + 24))(&v243, a2, v41, v230);
      if (v243)
      {
        v237 = 260;
        v235 = &__p;
        mlir::Diagnostic::operator<<(v244, &v235);
      }
    }

    else
    {
      v235 = "expected keyword for LLVM FramePointerKind";
      v237 = 259;
      (*(*a2 + 24))(&v243, a2, v41, &v235);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
    v44 = 0;
    v67 = 0;
    goto LABEL_248;
  }

LABEL_24:
  if (v6 == 7 && *v225 == 1802398060 && *(v225 + 3) == 1701273963)
  {
    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_513;
    }

    __p = 0;
    v233 = 0;
    v234 = 0;
    v33 = (*(*a2 + 40))(a2);
    if (((*(*a2 + 432))(a2, &__p) & 1) == 0)
    {
      v235 = "expected keyword for LLVM linkage types";
      v237 = 259;
      (*(*a2 + 24))(&v243, a2, v33, &v235);
LABEL_505:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
      v40 = 0;
      v39 = 0;
      goto LABEL_506;
    }

    v34 = SHIBYTE(v234);
    v35 = __p;
    if (v234 >= 0)
    {
      v35 = &__p;
    }

    if (v234 < 0)
    {
      v34 = v233;
    }

    if (v34 > 8)
    {
      if (v34 > 11)
      {
        if (v34 == 12)
        {
          v154 = *v35;
          v155 = *(v35 + 2);
          if (v154 == 0x65636E6F6B6E696CLL && v155 == 1919184735)
          {
            v39 = 1;
            v40 = 3;
            goto LABEL_506;
          }

          goto LABEL_503;
        }

        if (v34 == 20)
        {
          v60 = *v35;
          v61 = *(v35 + 1);
          v62 = *(v35 + 4);
          v63 = v60 == 0x6C62616C69617661 && v61 == 0x6E72657478655F65;
          if (v63 && v62 == 2037148769)
          {
            v40 = 1;
            goto LABEL_565;
          }
        }
      }

      else if (v34 == 9)
      {
        v148 = *v35;
        v149 = v35[8];
        if (v148 == 0x6E69646E65707061 && v149 == 103)
        {
          v39 = 1;
          v40 = 6;
          goto LABEL_506;
        }
      }

      else if (v34 == 11)
      {
        v55 = *v35;
        v56 = *(v35 + 3);
        if (v55 == 0x775F6E7265747865 && v56 == 0x6B6165775F6E7265)
        {
          v39 = 1;
          v40 = 9;
          goto LABEL_506;
        }
      }
    }

    else
    {
      if (v34 <= 6)
      {
        if (v34 == 4)
        {
          if (*v35 != 1801545079)
          {
            goto LABEL_503;
          }

          v39 = 1;
          v40 = 4;
        }

        else
        {
          if (v34 != 6)
          {
            goto LABEL_503;
          }

          v36 = *v35;
          v37 = *(v35 + 2);
          if (v36 != 1835888483 || v37 != 28271)
          {
            goto LABEL_503;
          }

          v39 = 1;
          v40 = 10;
        }

LABEL_506:
        if (SHIBYTE(v234) < 0)
        {
          operator delete(__p);
        }

        v157 = *a2;
        if (v39)
        {
          if ((*(v157 + 168))(a2))
          {
            v158 = (*(*a2 + 32))(a2);
            v48 = mlir::LLVM::LinkageAttr::get(*v158, v40);
            goto LABEL_154;
          }

          goto LABEL_513;
        }

        v49 = (*(v157 + 40))(a2);
LABEL_512:
        v235 = v50;
        v237 = 259;
        (*(*a2 + 24))(&v243, a2, v49, &v235);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
        goto LABEL_513;
      }

      if (v34 != 7)
      {
        if (*v35 != 0x6C616E7265747865)
        {
          if (*v35 == 0x65636E6F6B6E696CLL)
          {
            v39 = 1;
            v40 = 2;
            goto LABEL_506;
          }

          if (*v35 == 0x72646F5F6B616577)
          {
            v39 = 1;
            v40 = 5;
            goto LABEL_506;
          }

          if (*v35 != 0x6C616E7265746E69)
          {
            goto LABEL_503;
          }

          v39 = 1;
          v40 = 7;
          goto LABEL_506;
        }

        v40 = 0;
LABEL_565:
        v39 = 1;
        goto LABEL_506;
      }

      v151 = *v35;
      v152 = *(v35 + 3);
      if (v151 == 1986622064 && v152 == 1702125942)
      {
        v39 = 1;
        v40 = 8;
        goto LABEL_506;
      }
    }

LABEL_503:
    v230[0] = "invalid LLVM linkage types specification: ";
    v231 = 259;
    (*(*a2 + 24))(&v243, a2, v33, v230);
    if (v243)
    {
      v237 = 260;
      v235 = &__p;
      mlir::Diagnostic::operator<<(v244, &v235);
    }

    goto LABEL_505;
  }

  v240 = "framePointerKind";
  v241 = 16;
  if (v6)
  {
    goto LABEL_30;
  }

LABEL_11:
  (*(*v224[0] + 648))(v224[0], &v240, 1);
  v243 = "loop_vectorize";
  v244[0] = 14;
  if (v227[2])
  {
    goto LABEL_2;
  }

  v6 = v226;
LABEL_36:
  if (v6)
  {
    if (v6 == 14 && *v225 == 0x6365765F706F6F6CLL && *(v225 + 6) == 0x657A69726F746365)
    {
      v45 = mlir::LLVM::LoopVectorizeAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "loop_interleave";
    v244[0] = 15;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "loop_interleave";
    v244[0] = 15;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
    if (!v226)
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "loop_unroll";
      v244[0] = 11;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
      if (v226)
      {
        goto LABEL_49;
      }

LABEL_96:
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "loop_unroll_and_jam";
      v244[0] = 19;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
      if (v226)
      {
        goto LABEL_55;
      }

      goto LABEL_98;
    }
  }

  if (v6 == 15 && *v225 == 0x746E695F706F6F6CLL && *(v225 + 7) == 0x657661656C726574)
  {
    v45 = mlir::LLVM::LoopInterleaveAttr::parse(a2);
    goto LABEL_829;
  }

  v243 = "loop_unroll";
  v244[0] = 11;
  if (!v6)
  {
    goto LABEL_96;
  }

LABEL_49:
  if (v6 == 11 && *v225 == 0x726E755F706F6F6CLL && *(v225 + 3) == 0x6C6C6F726E755F70)
  {
    v45 = mlir::LLVM::LoopUnrollAttr::parse(a2);
    goto LABEL_829;
  }

  v243 = "loop_unroll_and_jam";
  v244[0] = 19;
  if (v6)
  {
LABEL_55:
    if (v6 == 19)
    {
      v14 = *v225 == 0x726E755F706F6F6CLL && *(v225 + 8) == 0x5F646E615F6C6C6FLL;
      if (v14 && *(v225 + 11) == 0x6D616A5F646E615FLL)
      {
        v45 = mlir::LLVM::LoopUnrollAndJamAttr::parse(a2);
        goto LABEL_829;
      }
    }

    v243 = "loop_licm";
    v244[0] = 9;
    if (v6)
    {
      goto LABEL_64;
    }

    goto LABEL_100;
  }

LABEL_98:
  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v243 = "loop_licm";
  v244[0] = 9;
  if (v227[2])
  {
    goto LABEL_2;
  }

  v6 = v226;
  if (v226)
  {
LABEL_64:
    if (v6 == 9 && *v225 == 0x63696C5F706F6F6CLL && *(v225 + 8) == 109)
    {
      v45 = mlir::LLVM::LoopLICMAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "loop_distribute";
    v244[0] = 15;
    goto LABEL_102;
  }

LABEL_100:
  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v243 = "loop_distribute";
  v244[0] = 15;
  if (v227[2])
  {
    goto LABEL_2;
  }

  v6 = v226;
LABEL_102:
  if (v6)
  {
    if (v6 == 15 && *v225 == 0x7369645F706F6F6CLL && *(v225 + 7) == 0x6574756269727473)
    {
      v45 = mlir::LLVM::LoopDistributeAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "loop_pipeline";
    v244[0] = 13;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "loop_pipeline";
    v244[0] = 13;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (v6)
  {
    if (v6 == 13 && *v225 == 0x7069705F706F6F6CLL && *(v225 + 5) == 0x656E696C65706970)
    {
      v45 = mlir::LLVM::LoopPipelineAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "loop_peeled";
    v244[0] = 11;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "loop_peeled";
    v244[0] = 11;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (v6)
  {
    if (v6 == 11 && *v225 == 0x6565705F706F6F6CLL && *(v225 + 3) == 0x64656C6565705F70)
    {
      v45 = mlir::LLVM::LoopPeeledAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "loop_unswitch";
    v244[0] = 13;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "loop_unswitch";
    v244[0] = 13;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (v6)
  {
    if (v6 == 13 && *v225 == 0x736E755F706F6F6CLL && *(v225 + 5) == 0x6863746977736E75)
    {
      v45 = mlir::LLVM::LoopUnswitchAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "loop_annotation";
    v244[0] = 15;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "loop_annotation";
    v244[0] = 15;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (v6)
  {
    if (v6 == 15 && *v225 == 0x6E6E615F706F6F6CLL && *(v225 + 7) == 0x6E6F697461746F6ELL)
    {
      v45 = mlir::LLVM::LoopAnnotationAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "di_expression_elem";
    v244[0] = 18;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "di_expression_elem";
    v244[0] = 18;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (v6)
  {
    if (v6 == 18)
    {
      v65 = *v225 == 0x65727078655F6964 && *(v225 + 8) == 0x6C655F6E6F697373;
      if (v65 && *(v225 + 16) == 28005)
      {
        v45 = mlir::LLVM::DIExpressionElemAttr::parse(a2);
        goto LABEL_829;
      }
    }

    v243 = "di_expression";
    v244[0] = 13;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "di_expression";
    v244[0] = 13;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (v6)
  {
    if (v6 == 13 && *v225 == 0x65727078655F6964 && *(v225 + 5) == 0x6E6F697373657270)
    {
      v45 = mlir::LLVM::DIExpressionAttr::parse(a2);
      goto LABEL_829;
    }

    v243 = "di_null_type";
    v244[0] = 12;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "di_null_type";
    v244[0] = 12;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
  }

  if (!v6)
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "di_basic_type";
    v244[0] = 13;
    if (v227[2])
    {
      goto LABEL_2;
    }

    v6 = v226;
    goto LABEL_518;
  }

  if (v6 != 12 || (*v225 == 0x5F6C6C756E5F6964 ? (v147 = *(v225 + 8) == 1701869940) : (v147 = 0), !v147))
  {
    v243 = "di_basic_type";
    v244[0] = 13;
LABEL_518:
    if (v6)
    {
      if (v6 == 13 && *v225 == 0x63697361625F6964 && *(v225 + 5) == 0x657079745F636973)
      {
        v45 = mlir::LLVM::DIBasicTypeAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_compile_unit";
      v244[0] = 15;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_compile_unit";
      v244[0] = 15;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 15 && *v225 == 0x69706D6F635F6964 && *(v225 + 7) == 0x74696E755F656C69)
      {
        v45 = mlir::LLVM::DICompileUnitAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_composite_type";
      v244[0] = 17;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_composite_type";
      v244[0] = 17;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 17)
      {
        v162 = *v225 == 0x6F706D6F635F6964 && *(v225 + 8) == 0x7079745F65746973;
        if (v162 && *(v225 + 16) == 101)
        {
          v45 = mlir::LLVM::DICompositeTypeAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_derived_type";
      v244[0] = 15;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_derived_type";
      v244[0] = 15;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 15 && *v225 == 0x76697265645F6964 && *(v225 + 7) == 0x657079745F646576)
      {
        v45 = mlir::LLVM::DIDerivedTypeAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_file";
      v244[0] = 7;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_file";
      v244[0] = 7;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 7 && *v225 == 1717528932 && *(v225 + 3) == 1701603686)
      {
        v45 = mlir::LLVM::DIFileAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_global_variable_expression";
      v244[0] = 29;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_global_variable_expression";
      v244[0] = 29;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 29)
      {
        v167 = *v225 == 0x61626F6C675F6964 && *(v225 + 8) == 0x6261697261765F6CLL;
        v168 = v167 && *(v225 + 16) == 0x65727078655F656CLL;
        if (v168 && *(v225 + 21) == 0x6E6F697373657270)
        {
          v45 = mlir::LLVM::DIGlobalVariableExpressionAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_global_variable";
      v244[0] = 18;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_global_variable";
      v244[0] = 18;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 18)
      {
        v170 = *v225 == 0x61626F6C675F6964 && *(v225 + 8) == 0x6261697261765F6CLL;
        if (v170 && *(v225 + 16) == 25964)
        {
          v45 = mlir::LLVM::DIGlobalVariableAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_lexical_block";
      v244[0] = 16;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_lexical_block";
      v244[0] = 16;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 16 && *v225 == 0x636978656C5F6964 && *(v225 + 8) == 0x6B636F6C625F6C61)
      {
        v45 = mlir::LLVM::DILexicalBlockAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_lexical_block_file";
      v244[0] = 21;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_lexical_block_file";
      v244[0] = 21;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 21)
      {
        v173 = *v225 == 0x636978656C5F6964 && *(v225 + 8) == 0x6B636F6C625F6C61;
        if (v173 && *(v225 + 13) == 0x656C69665F6B636FLL)
        {
          v45 = mlir::LLVM::DILexicalBlockFileAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_local_variable";
      v244[0] = 17;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_local_variable";
      v244[0] = 17;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 17)
      {
        v175 = *v225 == 0x6C61636F6C5F6964 && *(v225 + 8) == 0x6C6261697261765FLL;
        if (v175 && *(v225 + 16) == 101)
        {
          v45 = mlir::LLVM::DILocalVariableAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_subprogram";
      v244[0] = 13;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_subprogram";
      v244[0] = 13;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 13 && *v225 == 0x72706275735F6964 && *(v225 + 5) == 0x6D6172676F727062)
      {
        v45 = mlir::LLVM::DISubprogramAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_module";
      v244[0] = 9;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_module";
      v244[0] = 9;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 9 && *v225 == 0x6C75646F6D5F6964 && *(v225 + 8) == 101)
      {
        v45 = mlir::LLVM::DIModuleAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_namespace";
      v244[0] = 12;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_namespace";
      v244[0] = 12;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 12 && *v225 == 0x73656D616E5F6964 && *(v225 + 8) == 1701011824)
      {
        v45 = mlir::LLVM::DINamespaceAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_imported_entity";
      v244[0] = 18;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_imported_entity";
      v244[0] = 18;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 18)
      {
        v180 = *v225 == 0x726F706D695F6964 && *(v225 + 8) == 0x69746E655F646574;
        if (v180 && *(v225 + 16) == 31092)
        {
          v45 = mlir::LLVM::DIImportedEntityAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_annotation";
      v244[0] = 13;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_annotation";
      v244[0] = 13;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 13 && *v225 == 0x746F6E6E615F6964 && *(v225 + 5) == 0x6E6F697461746F6ELL)
      {
        v45 = mlir::LLVM::DIAnnotationAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_subrange";
      v244[0] = 11;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_subrange";
      v244[0] = 11;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 11 && *v225 == 0x61726275735F6964 && *(v225 + 3) == 0x65676E6172627573)
      {
        v45 = mlir::LLVM::DISubrangeAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_common_block";
      v244[0] = 15;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_common_block";
      v244[0] = 15;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 15 && *v225 == 0x6F6D6D6F635F6964 && *(v225 + 7) == 0x6B636F6C625F6E6FLL)
      {
        v45 = mlir::LLVM::DICommonBlockAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_generic_subrange";
      v244[0] = 19;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_generic_subrange";
      v244[0] = 19;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 19)
      {
        v185 = *v225 == 0x72656E65675F6964 && *(v225 + 8) == 0x61726275735F6369;
        if (v185 && *(v225 + 11) == 0x65676E6172627573)
        {
          v45 = mlir::LLVM::DIGenericSubrangeAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_subroutine_type";
      v244[0] = 18;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_subroutine_type";
      v244[0] = 18;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 18)
      {
        v187 = *v225 == 0x6F726275735F6964 && *(v225 + 8) == 0x79745F656E697475;
        if (v187 && *(v225 + 16) == 25968)
        {
          v45 = mlir::LLVM::DISubroutineTypeAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v243 = "di_label";
      v244[0] = 8;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_label";
      v244[0] = 8;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 8 && *v225 == 0x6C6562616C5F6964)
      {
        v45 = mlir::LLVM::DILabelAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "di_string_type";
      v244[0] = 14;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "di_string_type";
      v244[0] = 14;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 14 && *v225 == 0x6E697274735F6964 && *(v225 + 6) == 0x657079745F676E69)
      {
        v45 = mlir::LLVM::DIStringTypeAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "memory_effects";
      v244[0] = 14;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "memory_effects";
      v244[0] = 14;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (v6)
    {
      if (v6 == 14 && *v225 == 0x655F79726F6D656DLL && *(v225 + 6) == 0x737463656666655FLL)
      {
        v45 = mlir::LLVM::MemoryEffectsAttr::parse(a2);
        goto LABEL_829;
      }

      v243 = "alias_scope_domain";
      v244[0] = 18;
    }

    else
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "alias_scope_domain";
      v244[0] = 18;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
    }

    if (!v6)
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "alias_scope";
      v244[0] = 11;
      if (v227[2])
      {
        goto LABEL_2;
      }

      v6 = v226;
      goto LABEL_817;
    }

    if (v6 != 18 || (*v225 == 0x63735F7361696C61 ? (v191 = *(v225 + 8) == 0x616D6F645F65706FLL) : (v191 = 0), v191 ? (v192 = *(v225 + 16) == 28265) : (v192 = 0), !v192))
    {
      v243 = "alias_scope";
      v244[0] = 11;
LABEL_817:
      if (v6 != 11)
      {
        if (!v6)
        {
          (*(*v224[0] + 648))(v224[0], &v243, 1);
        }

        goto LABEL_2;
      }

      if (*v225 != 0x63735F7361696C61 || *(v225 + 3) != 0x65706F63735F7361)
      {
LABEL_2:
        v5 = 0;
        goto LABEL_834;
      }

      v45 = mlir::LLVM::AliasScopeAttr::parse(a2);
      goto LABEL_829;
    }

    v45 = mlir::LLVM::AliasScopeDomainAttr::parse(a2);
LABEL_829:
    v5 = v45;
    v159 = v45 == 0;
    goto LABEL_830;
  }

  v164 = *(**(*(*a2 + 32))(a2) + 560);
  v235 = &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v164 + 232), &v235);
LABEL_514:
  v159 = v5 == 0;
LABEL_830:
  v194 = !v159;
  v227[0] = v194;
  *&v227[1] = 257;
LABEL_834:
  v243 = "access_group";
  v244[0] = 12;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
  if (v226 == 12)
  {
    if (*v225 == 0x675F737365636361 && *(v225 + 8) == 1886744434)
    {
      v204 = mlir::LLVM::AccessGroupAttr::parse(a2);
      goto LABEL_997;
    }

    goto LABEL_849;
  }

  if (v226)
  {
LABEL_849:
    v228 = "tbaa_root";
    v229 = 9;
    goto LABEL_850;
  }

  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v228 = "tbaa_root";
  v229 = 9;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
  if (v226)
  {
LABEL_850:
    if (v195 != 9 || (*v225 == 0x6F6F725F61616274 ? (v197 = *(v225 + 8) == 116) : (v197 = 0), !v197))
    {
      v243 = "tbaa_member";
      v244[0] = 11;
      if (!v195)
      {
        goto LABEL_841;
      }

LABEL_856:
      if (v195 == 11 && *v225 == 0x6D656D5F61616274 && *(v225 + 3) == 0x7265626D656D5F61)
      {
        v204 = mlir::LLVM::TBAAMemberAttr::parse(a2);
        goto LABEL_997;
      }

      v243 = "tbaa_type_desc";
      v244[0] = 14;
      if (!v195)
      {
        goto LABEL_843;
      }

      goto LABEL_862;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(__p) = 0;
    LOBYTE(v233) = 0;
    if ((*(*a2 + 160))(a2))
    {
      v242 = 0;
      v230[0] = a2;
      v230[1] = &v242;
      v230[2] = &__p;
      v240 = 0;
      v241 = 0;
      if ((*(*a2 + 416))(a2, &v240))
      {
        v205 = v240;
        for (i = v241; mlir::LLVM::TBAARootAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v230, v205, i); i = v239)
        {
          if (((*(*a2 + 128))(a2) & 1) == 0)
          {
            goto LABEL_924;
          }

          v238 = 0;
          v239 = 0;
          if (!mlir::AsmParser::parseKeyword(a2, &v238))
          {
            v217 = (*(*a2 + 40))(a2);
            v235 = "expected a parameter name in struct";
            v237 = 259;
            (*(*a2 + 24))(&v243, a2, v217, &v235);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
            goto LABEL_990;
          }

          v205 = v238;
        }

        goto LABEL_990;
      }

LABEL_924:
      if (((*(*a2 + 168))(a2) & 1) == 0)
      {
LABEL_990:
        v5 = 0;
        goto LABEL_991;
      }
    }

    v208 = *(*(*a2 + 32))(a2);
    if (v233)
    {
      v209 = __p;
    }

    else
    {
      v209 = 0;
    }

    v5 = mlir::LLVM::TBAARootAttr::get(v208, v209);
    goto LABEL_991;
  }

  (*(*v224[0] + 648))(v224[0], &v228, 1);
  v243 = "tbaa_member";
  v244[0] = 11;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
  if (v226)
  {
    goto LABEL_856;
  }

LABEL_841:
  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v243 = "tbaa_type_desc";
  v244[0] = 14;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
  if (!v226)
  {
LABEL_843:
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "tbaa_tag";
    v244[0] = 8;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
    goto LABEL_868;
  }

LABEL_862:
  if (v195 == 14 && *v225 == 0x7079745F61616274 && *(v225 + 6) == 0x637365645F657079)
  {
    v204 = mlir::LLVM::TBAATypeDescriptorAttr::parse(a2);
    goto LABEL_997;
  }

  v243 = "tbaa_tag";
  v244[0] = 8;
LABEL_868:
  if (v195)
  {
    if (v195 == 8 && *v225 == 0x6761745F61616274)
    {
      v204 = mlir::LLVM::TBAATagAttr::parse(a2);
      goto LABEL_997;
    }

    v243 = "constant_range";
    v244[0] = 14;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "constant_range";
    v244[0] = 14;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
    if (!v226)
    {
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "vscale_range";
      v244[0] = 12;
      if (v227[2])
      {
        goto LABEL_1002;
      }

      v195 = v226;
      if (v226)
      {
        goto LABEL_878;
      }

LABEL_908:
      (*(*v224[0] + 648))(v224[0], &v243, 1);
      v243 = "target_features";
      v244[0] = 15;
      if (v227[2])
      {
        goto LABEL_1002;
      }

      v195 = v226;
      if (v226)
      {
        goto LABEL_884;
      }

      goto LABEL_910;
    }
  }

  if (v195 == 14 && *v225 == 0x746E6174736E6F63 && *(v225 + 6) == 0x65676E61725F746ELL)
  {
    v204 = mlir::LLVM::ConstantRangeAttr::parse(a2);
    goto LABEL_997;
  }

  v243 = "vscale_range";
  v244[0] = 12;
  if (!v195)
  {
    goto LABEL_908;
  }

LABEL_878:
  if (v195 == 12 && *v225 == 0x725F656C61637376 && *(v225 + 8) == 1701277281)
  {
    v204 = mlir::LLVM::VScaleRangeAttr::parse(a2);
    goto LABEL_997;
  }

  v243 = "target_features";
  v244[0] = 15;
  if (v195)
  {
LABEL_884:
    if (v195 == 15 && *v225 == 0x665F746567726174 && *(v225 + 7) == 0x7365727574616566)
    {
      v204 = mlir::LLVM::TargetFeaturesAttr::parse(a2);
      goto LABEL_997;
    }

    v243 = "undef";
    v244[0] = 5;
    if (v195)
    {
      goto LABEL_890;
    }

LABEL_912:
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "poison";
    v244[0] = 6;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
    goto LABEL_914;
  }

LABEL_910:
  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v243 = "undef";
  v244[0] = 5;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
  if (!v226)
  {
    goto LABEL_912;
  }

LABEL_890:
  if (v195 == 5 && *v225 == 1701080693 && *(v225 + 4) == 102)
  {
    v211 = *(**(*(*a2 + 32))(a2) + 560);
    v212 = &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id;
    goto LABEL_981;
  }

  v243 = "poison";
  v244[0] = 6;
LABEL_914:
  if (v195)
  {
    if (v195 != 6 || (*v225 == 1936289648 ? (v207 = *(v225 + 4) == 28271) : (v207 = 0), !v207))
    {
      v243 = "vec_type_hint";
      v244[0] = 13;
      goto LABEL_933;
    }

    v211 = *(**(*(*a2 + 32))(a2) + 560);
    v212 = &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id;
LABEL_981:
    v235 = v212;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v211 + 232), &v235);
LABEL_991:
    v218 = v5 == 0;
LABEL_998:
    v220 = !v218;
    v227[0] = v220;
    *&v227[1] = 257;
    goto LABEL_1002;
  }

  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v243 = "vec_type_hint";
  v244[0] = 13;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
LABEL_933:
  if (v195)
  {
    if (v195 != 13 || (*v225 == 0x657079745F636576 ? (v210 = *(v225 + 5) == 0x746E69685F657079) : (v210 = 0), !v210))
    {
      v243 = "zero";
      v244[0] = 4;
      goto LABEL_943;
    }

    v204 = mlir::LLVM::VecTypeHintAttr::parse(a2);
LABEL_997:
    v5 = v204;
    v218 = v204 == 0;
    goto LABEL_998;
  }

  (*(*v224[0] + 648))(v224[0], &v243, 1);
  v243 = "zero";
  v244[0] = 4;
  if (v227[2])
  {
    goto LABEL_1002;
  }

  v195 = v226;
LABEL_943:
  if (!v195)
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "tailcallkind";
    v244[0] = 12;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
    goto LABEL_950;
  }

  if (v195 == 4 && *v225 == 1869768058)
  {
    v211 = *(**(*(*a2 + 32))(a2) + 560);
    v212 = &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id;
    goto LABEL_981;
  }

  v243 = "tailcallkind";
  v244[0] = 12;
LABEL_950:
  if (v195)
  {
    if (v195 == 12 && *v225 == 0x6C6C61636C696174 && *(v225 + 8) == 1684957547)
    {
      v204 = mlir::LLVM::TailCallKindAttr::parse(a2);
      goto LABEL_997;
    }

    v243 = "mlir.workgroup_attribution";
    v244[0] = 26;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "mlir.workgroup_attribution";
    v244[0] = 26;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
  }

  if (v195)
  {
    if (v195 == 26)
    {
      v214 = *v225 == 0x726F772E72696C6DLL && *(v225 + 8) == 0x615F70756F72676BLL;
      v215 = v214 && *(v225 + 16) == 0x6974756269727474;
      if (v215 && *(v225 + 24) == 28271)
      {
        v204 = mlir::LLVM::WorkgroupAttributionAttr::parse(a2);
        goto LABEL_997;
      }
    }

    v243 = "overflow";
    v244[0] = 8;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "overflow";
    v244[0] = 8;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
  }

  if (v195)
  {
    if (v195 == 8 && *v225 == 0x776F6C667265766FLL)
    {
      v204 = mlir::LLVM::IntegerOverflowFlagsAttr::parse(a2);
      goto LABEL_997;
    }

    v243 = "fastmath";
    v244[0] = 8;
  }

  else
  {
    (*(*v224[0] + 648))(v224[0], &v243, 1);
    v243 = "fastmath";
    v244[0] = 8;
    if (v227[2])
    {
      goto LABEL_1002;
    }

    v195 = v226;
  }

  if (v195)
  {
    if (v195 == 8 && *v225 == 0x6874616D74736166)
    {
      v204 = mlir::LLVM::FastmathFlagsAttr::parse(a2);
      goto LABEL_997;
    }

LABEL_994:
    v219 = v225;
    *v227 = 0;
    v227[2] = 1;
    goto LABEL_1003;
  }

  (*(*v224[0] + 648))(v224[0], &v243, 1);
  if ((v227[2] & 1) == 0)
  {
    v195 = v226;
    goto LABEL_994;
  }

LABEL_1002:
  v195 = 0;
  v219 = 0;
LABEL_1003:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v224) & 0x100) == 0)
  {
    v231 = 257;
    (*(*a2 + 24))(&v243, a2, v4, v230);
    if (v243)
    {
      if (v243)
      {
        v237 = 261;
        v235 = v219;
        v236 = v195;
        mlir::Diagnostic::operator<<(v244, &v235);
        if (v243)
        {
          if (v243)
          {
            v221 = *(a1 + 8);
            v222 = *(a1 + 16);
            v237 = 261;
            v235 = v221;
            v236 = v222;
            mlir::Diagnostic::operator<<(v244, &v235);
            if (v243)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v243);
    return 0;
  }

  return v5;
}

void mlir::LLVM::LLVMDialect::printAttribute(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 4)
    {
      *(v9 + 4) = 118;
      *v9 = 1852793699;
      *(v8 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v8, "cconv", 5uLL);
    }

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (*(v12 + 3) == v13)
    {
      llvm::raw_ostream::write(v12, "<", 1uLL);
    }

    else
    {
      *v13 = 60;
      ++*(v12 + 4);
    }

    v16 = a2[1];
    v17 = (*(*a3 + 16))(a3);
    v18 = mlir::LLVM::cconv::stringifyCConv(v16);
    goto LABEL_90;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id)
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
    {
      if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
      {
        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id)
        {
          v149 = a2;
          v30 = (*(*a3 + 16))(a3);
          v31 = *(v30 + 4);
          if (*(v30 + 3) - v31 > 0xDuLL)
          {
            qmemcpy(v31, "loop_vectorize", 14);
            *(v30 + 4) += 14;
          }

          else
          {
            llvm::raw_ostream::write(v30, "loop_vectorize", 0xEuLL);
          }

          mlir::LLVM::LoopVectorizeAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id)
        {
          v149 = a2;
          v45 = (*(*a3 + 16))(a3);
          v46 = *(v45 + 4);
          if (*(v45 + 3) - v46 > 0xEuLL)
          {
            qmemcpy(v46, "loop_interleave", 15);
            *(v45 + 4) += 15;
          }

          else
          {
            llvm::raw_ostream::write(v45, "loop_interleave", 0xFuLL);
          }

          mlir::LLVM::LoopInterleaveAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id)
        {
          v149 = a2;
          v50 = (*(*a3 + 16))(a3);
          v51 = *(v50 + 4);
          if ((*(v50 + 3) - v51) > 0xA)
          {
            *(v51 + 7) = 1819045746;
            *v51 = *"loop_unroll";
            *(v50 + 4) += 11;
          }

          else
          {
            llvm::raw_ostream::write(v50, "loop_unroll", 0xBuLL);
          }

          mlir::LLVM::LoopUnrollAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id)
        {
          v149 = a2;
          v55 = (*(*a3 + 16))(a3);
          v56 = *(v55 + 4);
          if ((*(v55 + 3) - v56) > 0x12)
          {
            *(v56 + 15) = 1835100767;
            *v56 = *"loop_unroll_and_jam";
            *(v55 + 4) += 19;
          }

          else
          {
            llvm::raw_ostream::write(v55, "loop_unroll_and_jam", 0x13uLL);
          }

          mlir::LLVM::LoopUnrollAndJamAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id)
        {
          v149 = a2;
          v57 = (*(*a3 + 16))(a3);
          v58 = *(v57 + 4);
          if ((*(v57 + 3) - v58) > 8)
          {
            *(v58 + 8) = 109;
            *v58 = *"loop_licm";
            *(v57 + 4) += 9;
          }

          else
          {
            llvm::raw_ostream::write(v57, "loop_licm", 9uLL);
          }

          mlir::LLVM::LoopLICMAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id)
        {
          v149 = a2;
          v59 = (*(*a3 + 16))(a3);
          v60 = *(v59 + 4);
          if (*(v59 + 3) - v60 > 0xEuLL)
          {
            qmemcpy(v60, "loop_distribute", 15);
            *(v59 + 4) += 15;
          }

          else
          {
            llvm::raw_ostream::write(v59, "loop_distribute", 0xFuLL);
          }

          mlir::LLVM::LoopDistributeAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id)
        {
          v149 = a2;
          v61 = (*(*a3 + 16))(a3);
          v62 = *(v61 + 4);
          if (*(v61 + 3) - v62 > 0xCuLL)
          {
            qmemcpy(v62, "loop_pipeline", 13);
            *(v61 + 4) += 13;
          }

          else
          {
            llvm::raw_ostream::write(v61, "loop_pipeline", 0xDuLL);
          }

          mlir::LLVM::LoopPipelineAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id)
        {
          v149 = a2;
          v63 = (*(*a3 + 16))(a3);
          v64 = *(v63 + 4);
          if ((*(v63 + 3) - v64) > 0xA)
          {
            *(v64 + 7) = 1684368485;
            *v64 = *"loop_peeled";
            *(v63 + 4) += 11;
          }

          else
          {
            llvm::raw_ostream::write(v63, "loop_peeled", 0xBuLL);
          }

          mlir::LLVM::LoopPeeledAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id)
        {
          v149 = a2;
          v65 = (*(*a3 + 16))(a3);
          v66 = *(v65 + 4);
          if (*(v65 + 3) - v66 > 0xCuLL)
          {
            qmemcpy(v66, "loop_unswitch", 13);
            *(v65 + 4) += 13;
          }

          else
          {
            llvm::raw_ostream::write(v65, "loop_unswitch", 0xDuLL);
          }

          mlir::LLVM::LoopUnswitchAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
        {
          v149 = a2;
          v67 = (*(*a3 + 16))(a3);
          v68 = *(v67 + 4);
          if (*(v67 + 3) - v68 > 0xEuLL)
          {
            qmemcpy(v68, "loop_annotation", 15);
            *(v67 + 4) += 15;
          }

          else
          {
            llvm::raw_ostream::write(v67, "loop_annotation", 0xFuLL);
          }

          mlir::LLVM::LoopAnnotationAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id)
        {
          v149 = a2;
          v69 = (*(*a3 + 16))(a3);
          v70 = *(v69 + 4);
          if ((*(v69 + 3) - v70) > 0x11)
          {
            *(v70 + 16) = 28005;
            *v70 = *"di_expression_elem";
            *(v69 + 4) += 18;
          }

          else
          {
            llvm::raw_ostream::write(v69, "di_expression_elem", 0x12uLL);
          }

          mlir::LLVM::DIExpressionElemAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
        {
          v149 = a2;
          v71 = (*(*a3 + 16))(a3);
          v72 = *(v71 + 4);
          if (*(v71 + 3) - v72 > 0xCuLL)
          {
            qmemcpy(v72, "di_expression", 13);
            *(v71 + 4) += 13;
          }

          else
          {
            llvm::raw_ostream::write(v71, "di_expression", 0xDuLL);
          }

          mlir::LLVM::DIExpressionAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id)
        {
          v38 = (*(*a3 + 16))(a3);
          v73 = *(v38 + 4);
          if ((*(v38 + 3) - v73) > 0xB)
          {
            *(v73 + 8) = 1701869940;
            *v73 = *"di_null_type";
            v40 = *(v38 + 4) + 12;
            goto LABEL_94;
          }

          v41 = "di_null_type";
          v42 = 12;
        }

        else
        {
          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id)
          {
            v149 = a2;
            v74 = (*(*a3 + 16))(a3);
            v75 = *(v74 + 4);
            if (*(v74 + 3) - v75 > 0xCuLL)
            {
              qmemcpy(v75, "di_basic_type", 13);
              *(v74 + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(v74, "di_basic_type", 0xDuLL);
            }

            mlir::LLVM::DIBasicTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id)
          {
            v149 = a2;
            v76 = (*(*a3 + 16))(a3);
            v77 = *(v76 + 4);
            if (*(v76 + 3) - v77 > 0xEuLL)
            {
              qmemcpy(v77, "di_compile_unit", 15);
              *(v76 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v76, "di_compile_unit", 0xFuLL);
            }

            mlir::LLVM::DICompileUnitAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id)
          {
            v149 = a2;
            v78 = (*(*a3 + 16))(a3);
            v79 = *(v78 + 4);
            if ((*(v78 + 3) - v79) > 0x10)
            {
              *(v79 + 16) = 101;
              *v79 = *"di_composite_type";
              *(v78 + 4) += 17;
            }

            else
            {
              llvm::raw_ostream::write(v78, "di_composite_type", 0x11uLL);
            }

            mlir::LLVM::DICompositeTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id)
          {
            v149 = a2;
            v80 = (*(*a3 + 16))(a3);
            v81 = *(v80 + 4);
            if (*(v80 + 3) - v81 > 0xEuLL)
            {
              qmemcpy(v81, "di_derived_type", 15);
              *(v80 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v80, "di_derived_type", 0xFuLL);
            }

            mlir::LLVM::DIDerivedTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id)
          {
            v149 = a2;
            v82 = (*(*a3 + 16))(a3);
            v83 = *(v82 + 4);
            if (*(v82 + 3) - v83 > 6uLL)
            {
              *(v83 + 3) = 1701603686;
              *v83 = 1717528932;
              *(v82 + 4) += 7;
            }

            else
            {
              llvm::raw_ostream::write(v82, "di_file", 7uLL);
            }

            mlir::LLVM::DIFileAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id)
          {
            v149 = a2;
            v84 = (*(*a3 + 16))(a3);
            v85 = *(v84 + 4);
            if (*(v84 + 3) - v85 > 0x1CuLL)
            {
              qmemcpy(v85, "di_global_variable_expression", 29);
              *(v84 + 4) += 29;
            }

            else
            {
              llvm::raw_ostream::write(v84, "di_global_variable_expression", 0x1DuLL);
            }

            mlir::LLVM::DIGlobalVariableExpressionAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id)
          {
            v149 = a2;
            v86 = (*(*a3 + 16))(a3);
            v87 = *(v86 + 4);
            if ((*(v86 + 3) - v87) > 0x11)
            {
              *(v87 + 16) = 25964;
              *v87 = *"di_global_variable";
              *(v86 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v86, "di_global_variable", 0x12uLL);
            }

            mlir::LLVM::DIGlobalVariableAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id)
          {
            v149 = a2;
            v88 = (*(*a3 + 16))(a3);
            v89 = *(v88 + 4);
            if (*(v88 + 3) - v89 > 0xFuLL)
            {
              *v89 = *"di_lexical_block";
              *(v88 + 4) += 16;
            }

            else
            {
              llvm::raw_ostream::write(v88, "di_lexical_block", 0x10uLL);
            }

            mlir::LLVM::DILexicalBlockAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id)
          {
            v149 = a2;
            v90 = (*(*a3 + 16))(a3);
            v91 = *(v90 + 4);
            if (*(v90 + 3) - v91 > 0x14uLL)
            {
              qmemcpy(v91, "di_lexical_block_file", 21);
              *(v90 + 4) += 21;
            }

            else
            {
              llvm::raw_ostream::write(v90, "di_lexical_block_file", 0x15uLL);
            }

            mlir::LLVM::DILexicalBlockFileAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
          {
            v149 = a2;
            v92 = (*(*a3 + 16))(a3);
            v93 = *(v92 + 4);
            if ((*(v92 + 3) - v93) > 0x10)
            {
              *(v93 + 16) = 101;
              *v93 = *"di_local_variable";
              *(v92 + 4) += 17;
            }

            else
            {
              llvm::raw_ostream::write(v92, "di_local_variable", 0x11uLL);
            }

            mlir::LLVM::DILocalVariableAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id)
          {
            v149 = a2;
            v94 = (*(*a3 + 16))(a3);
            v95 = *(v94 + 4);
            if (*(v94 + 3) - v95 > 0xCuLL)
            {
              qmemcpy(v95, "di_subprogram", 13);
              *(v94 + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(v94, "di_subprogram", 0xDuLL);
            }

            mlir::LLVM::DISubprogramAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id)
          {
            v149 = a2;
            v96 = (*(*a3 + 16))(a3);
            v97 = *(v96 + 4);
            if ((*(v96 + 3) - v97) > 8)
            {
              *(v97 + 8) = 101;
              *v97 = *"di_module";
              *(v96 + 4) += 9;
            }

            else
            {
              llvm::raw_ostream::write(v96, "di_module", 9uLL);
            }

            mlir::LLVM::DIModuleAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id)
          {
            v149 = a2;
            v98 = (*(*a3 + 16))(a3);
            v99 = *(v98 + 4);
            if ((*(v98 + 3) - v99) > 0xB)
            {
              *(v99 + 8) = 1701011824;
              *v99 = *"di_namespace";
              *(v98 + 4) += 12;
            }

            else
            {
              llvm::raw_ostream::write(v98, "di_namespace", 0xCuLL);
            }

            mlir::LLVM::DINamespaceAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id)
          {
            v149 = a2;
            v100 = (*(*a3 + 16))(a3);
            v101 = *(v100 + 4);
            if ((*(v100 + 3) - v101) > 0x11)
            {
              *(v101 + 16) = 31092;
              *v101 = *"di_imported_entity";
              *(v100 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v100, "di_imported_entity", 0x12uLL);
            }

            mlir::LLVM::DIImportedEntityAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id)
          {
            v149 = a2;
            v102 = (*(*a3 + 16))(a3);
            v103 = *(v102 + 4);
            if (*(v102 + 3) - v103 > 0xCuLL)
            {
              qmemcpy(v103, "di_annotation", 13);
              *(v102 + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(v102, "di_annotation", 0xDuLL);
            }

            mlir::LLVM::DIAnnotationAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id)
          {
            v149 = a2;
            v104 = (*(*a3 + 16))(a3);
            v105 = *(v104 + 4);
            if ((*(v104 + 3) - v105) > 0xA)
            {
              *(v105 + 7) = 1701277281;
              *v105 = *"di_subrange";
              *(v104 + 4) += 11;
            }

            else
            {
              llvm::raw_ostream::write(v104, "di_subrange", 0xBuLL);
            }

            mlir::LLVM::DISubrangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id)
          {
            v149 = a2;
            v106 = (*(*a3 + 16))(a3);
            v107 = *(v106 + 4);
            if (*(v106 + 3) - v107 > 0xEuLL)
            {
              qmemcpy(v107, "di_common_block", 15);
              *(v106 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v106, "di_common_block", 0xFuLL);
            }

            mlir::LLVM::DICommonBlockAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id)
          {
            v149 = a2;
            v108 = (*(*a3 + 16))(a3);
            v109 = *(v108 + 4);
            if ((*(v108 + 3) - v109) > 0x12)
            {
              *(v109 + 15) = 1701277281;
              *v109 = *"di_generic_subrange";
              *(v108 + 4) += 19;
            }

            else
            {
              llvm::raw_ostream::write(v108, "di_generic_subrange", 0x13uLL);
            }

            mlir::LLVM::DIGenericSubrangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id)
          {
            v149 = a2;
            v110 = (*(*a3 + 16))(a3);
            v111 = *(v110 + 4);
            if ((*(v110 + 3) - v111) > 0x11)
            {
              *(v111 + 16) = 25968;
              *v111 = *"di_subroutine_type";
              *(v110 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v110, "di_subroutine_type", 0x12uLL);
            }

            mlir::LLVM::DISubroutineTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id)
          {
            v149 = a2;
            v112 = (*(*a3 + 16))(a3);
            v113 = *(v112 + 4);
            if (*(v112 + 3) - v113 > 7uLL)
            {
              *v113 = 0x6C6562616C5F6964;
              *(v112 + 4) += 8;
            }

            else
            {
              llvm::raw_ostream::write(v112, "di_label", 8uLL);
            }

            mlir::LLVM::DILabelAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id)
          {
            v149 = a2;
            v114 = (*(*a3 + 16))(a3);
            v115 = *(v114 + 4);
            if (*(v114 + 3) - v115 > 0xDuLL)
            {
              qmemcpy(v115, "di_string_type", 14);
              *(v114 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v114, "di_string_type", 0xEuLL);
            }

            mlir::LLVM::DIStringTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
          {
            v149 = a2;
            v116 = (*(*a3 + 16))(a3);
            v117 = *(v116 + 4);
            if (*(v116 + 3) - v117 > 0xDuLL)
            {
              qmemcpy(v117, "memory_effects", 14);
              *(v116 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v116, "memory_effects", 0xEuLL);
            }

            mlir::LLVM::MemoryEffectsAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id)
          {
            v149 = a2;
            v118 = (*(*a3 + 16))(a3);
            v119 = *(v118 + 4);
            if ((*(v118 + 3) - v119) > 0x11)
            {
              *(v119 + 16) = 28265;
              *v119 = *"alias_scope_domain";
              *(v118 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v118, "alias_scope_domain", 0x12uLL);
            }

            mlir::LLVM::AliasScopeDomainAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
          {
            v149 = a2;
            v120 = (*(*a3 + 16))(a3);
            v121 = *(v120 + 4);
            if ((*(v120 + 3) - v121) > 0xA)
            {
              *(v121 + 7) = 1701867363;
              *v121 = *"alias_scope";
              *(v120 + 4) += 11;
            }

            else
            {
              llvm::raw_ostream::write(v120, "alias_scope", 0xBuLL);
            }

            mlir::LLVM::AliasScopeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
          {
            v149 = a2;
            v122 = (*(*a3 + 16))(a3);
            v123 = *(v122 + 4);
            if ((*(v122 + 3) - v123) > 0xB)
            {
              *(v123 + 8) = 1886744434;
              *v123 = *"access_group";
              *(v122 + 4) += 12;
            }

            else
            {
              llvm::raw_ostream::write(v122, "access_group", 0xCuLL);
            }

            mlir::LLVM::AccessGroupAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id)
          {
            v149 = a2;
            v124 = (*(*a3 + 16))(a3);
            v125 = *(v124 + 4);
            if ((*(v124 + 3) - v125) > 8)
            {
              *(v125 + 8) = 116;
              *v125 = *"tbaa_root";
              *(v124 + 4) += 9;
            }

            else
            {
              llvm::raw_ostream::write(v124, "tbaa_root", 9uLL);
            }

            mlir::LLVM::TBAARootAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id)
          {
            v149 = a2;
            v126 = (*(*a3 + 16))(a3);
            v127 = *(v126 + 4);
            if ((*(v126 + 3) - v127) > 0xA)
            {
              *(v127 + 7) = 1919246957;
              *v127 = *"tbaa_member";
              *(v126 + 4) += 11;
            }

            else
            {
              llvm::raw_ostream::write(v126, "tbaa_member", 0xBuLL);
            }

            mlir::LLVM::TBAAMemberAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id)
          {
            v149 = a2;
            v128 = (*(*a3 + 16))(a3);
            v129 = *(v128 + 4);
            if (*(v128 + 3) - v129 > 0xDuLL)
            {
              qmemcpy(v129, "tbaa_type_desc", 14);
              *(v128 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v128, "tbaa_type_desc", 0xEuLL);
            }

            mlir::LLVM::TBAATypeDescriptorAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id)
          {
            v149 = a2;
            v130 = (*(*a3 + 16))(a3);
            v131 = *(v130 + 4);
            if (*(v130 + 3) - v131 > 7uLL)
            {
              *v131 = 0x6761745F61616274;
              *(v130 + 4) += 8;
            }

            else
            {
              llvm::raw_ostream::write(v130, "tbaa_tag", 8uLL);
            }

            mlir::LLVM::TBAATagAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id)
          {
            v149 = a2;
            v132 = (*(*a3 + 16))(a3);
            v133 = *(v132 + 4);
            if (*(v132 + 3) - v133 > 0xDuLL)
            {
              qmemcpy(v133, "constant_range", 14);
              *(v132 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v132, "constant_range", 0xEuLL);
            }

            mlir::LLVM::ConstantRangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
          {
            v149 = a2;
            v134 = (*(*a3 + 16))(a3);
            v135 = *(v134 + 4);
            if ((*(v134 + 3) - v135) > 0xB)
            {
              *(v135 + 8) = 1701277281;
              *v135 = *"vscale_range";
              *(v134 + 4) += 12;
            }

            else
            {
              llvm::raw_ostream::write(v134, "vscale_range", 0xCuLL);
            }

            mlir::LLVM::VScaleRangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
          {
            v149 = a2;
            v136 = (*(*a3 + 16))(a3);
            v137 = *(v136 + 4);
            if (*(v136 + 3) - v137 > 0xEuLL)
            {
              qmemcpy(v137, "target_features", 15);
              *(v136 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v136, "target_features", 0xFuLL);
            }

            mlir::LLVM::TargetFeaturesAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id)
          {
            v38 = (*(*a3 + 16))(a3);
            v138 = *(v38 + 4);
            if ((*(v38 + 3) - v138) > 4)
            {
              *(v138 + 4) = 102;
              *v138 = 1701080693;
              v40 = *(v38 + 4) + 5;
              goto LABEL_94;
            }

            v41 = "undef";
            v42 = 5;
          }

          else
          {
            if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id)
            {
              if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
              {
                v149 = a2;
                v140 = (*(*a3 + 16))(a3);
                v141 = *(v140 + 4);
                if (*(v140 + 3) - v141 > 0xCuLL)
                {
                  qmemcpy(v141, "vec_type_hint", 13);
                  *(v140 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v140, "vec_type_hint", 0xDuLL);
                }

                mlir::LLVM::VecTypeHintAttr::print(&v149, a3);
                return;
              }

              if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id)
              {
                if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
                {
                  v149 = a2;
                  v143 = (*(*a3 + 16))(a3);
                  v144 = *(v143 + 4);
                  if ((*(v143 + 3) - v144) > 0xB)
                  {
                    *(v144 + 8) = 1684957547;
                    *v144 = *"tailcallkind";
                    *(v143 + 4) += 12;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v143, "tailcallkind", 0xCuLL);
                  }

                  mlir::LLVM::TailCallKindAttr::print(&v149, a3);
                }

                else if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id)
                {
                  v149 = a2;
                  v145 = (*(*a3 + 16))(a3);
                  v146 = *(v145 + 4);
                  if (*(v145 + 3) - v146 > 0x19uLL)
                  {
                    qmemcpy(v146, "mlir.workgroup_attribution", 26);
                    *(v145 + 4) += 26;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v145, "mlir.workgroup_attribution", 0x1AuLL);
                  }

                  mlir::LLVM::WorkgroupAttributionAttr::print(&v149, a3);
                }

                else if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id)
                {
                  v149 = a2;
                  v147 = (*(*a3 + 16))(a3);
                  v148 = *(v147 + 4);
                  if (*(v147 + 3) - v148 > 7uLL)
                  {
                    *v148 = 0x776F6C667265766FLL;
                    *(v147 + 4) += 8;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v147, "overflow", 8uLL);
                  }

                  mlir::LLVM::IntegerOverflowFlagsAttr::print(&v149, a3);
                }

                else if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
                {
                  v149 = a2;
                  v6 = (*(*a3 + 16))(a3);
                  v7 = *(v6 + 4);
                  if (*(v6 + 3) - v7 > 7uLL)
                  {
                    *v7 = 0x6874616D74736166;
                    *(v6 + 4) += 8;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v6, "fastmath", 8uLL);
                  }

                  mlir::LLVM::FastmathFlagsAttr::print(&v149, a3);
                }

                return;
              }

              v38 = (*(*a3 + 16))(a3);
              v142 = *(v38 + 4);
              if (*(v38 + 3) - v142 <= 3uLL)
              {
                v41 = "zero";
                v42 = 4;
                goto LABEL_97;
              }

              *v142 = 1869768058;
              v40 = *(v38 + 4) + 4;
LABEL_94:
              *(v38 + 4) = v40;
              return;
            }

            v38 = (*(*a3 + 16))(a3);
            v139 = *(v38 + 4);
            if ((*(v38 + 3) - v139) > 5)
            {
              *(v139 + 4) = 28271;
              *v139 = 1936289648;
              v40 = *(v38 + 4) + 6;
              goto LABEL_94;
            }

            v41 = "poison";
            v42 = 6;
          }
        }

        goto LABEL_97;
      }

      v26 = (*(*a3 + 16))(a3);
      v27 = *(v26 + 4);
      if (*(v26 + 3) - v27 > 0xFuLL)
      {
        *v27 = *"framePointerKind";
        *(v26 + 4) += 16;
      }

      else
      {
        llvm::raw_ostream::write(v26, "framePointerKind", 0x10uLL);
      }

      v43 = (*(*a3 + 16))(a3);
      v44 = *(v43 + 4);
      if (*(v43 + 3) == v44)
      {
        llvm::raw_ostream::write(v43, "<", 1uLL);
      }

      else
      {
        *v44 = 60;
        ++*(v43 + 4);
      }

      v47 = a2[1];
      v35 = (*(*a3 + 16))(a3);
      if (v47 > 1)
      {
        if (v47 == 3)
        {
          v36 = "reserved";
          v37 = 8;
        }

        else
        {
          if (v47 != 2)
          {
            goto LABEL_117;
          }

          v36 = "all";
          v37 = 3;
        }
      }

      else
      {
        if (v47)
        {
          if (v47 == 1)
          {
            v48 = "non-leaf";
            v49 = 8;
LABEL_118:
            v52 = *(v35 + 4);
            if (v52 >= *(v35 + 3))
            {
              v35 = llvm::raw_ostream::write(v35, 34);
            }

            else
            {
              *(v35 + 4) = v52 + 1;
              *v52 = 34;
            }

            v53 = llvm::raw_ostream::operator<<(v35, v48, v49);
            v54 = *(v53 + 4);
            if (v54 >= *(v53 + 3))
            {
              llvm::raw_ostream::write(v53, 34);
            }

            else
            {
              *(v53 + 4) = v54 + 1;
              *v54 = 34;
            }

            goto LABEL_92;
          }

LABEL_117:
          v49 = 0;
          v48 = &str_2_25;
          goto LABEL_118;
        }

        v36 = "none";
        v37 = 4;
      }

LABEL_91:
      llvm::raw_ostream::operator<<(v35, v36, v37);
LABEL_92:
      v38 = (*(*a3 + 16))(a3);
      v39 = *(v38 + 4);
      if (*(v38 + 3) != v39)
      {
        *v39 = 62;
        v40 = *(v38 + 4) + 1;
        goto LABEL_94;
      }

      v41 = ">";
      v42 = 1;
LABEL_97:

      llvm::raw_ostream::write(v38, v41, v42);
      return;
    }

    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 6uLL)
    {
      *(v15 + 3) = 1701273963;
      *v15 = 1802398060;
      *(v14 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v14, "linkage", 7uLL);
    }

    v28 = (*(*a3 + 16))(a3);
    v29 = *(v28 + 4);
    if (*(v28 + 3) == v29)
    {
      llvm::raw_ostream::write(v28, "<", 1uLL);
    }

    else
    {
      *v29 = 60;
      ++*(v28 + 4);
    }

    v32 = a2[1];
    v17 = (*(*a3 + 16))(a3);
    v18 = mlir::LLVM::linkage::stringifyLinkage(v32);
LABEL_90:
    v33 = v18;
    v34 = v19;
    v35 = v17;
    v36 = v33;
    v37 = v34;
    goto LABEL_91;
  }

  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 5)
  {
    *(v11 + 4) = 29793;
    *v11 = 1684893539;
    *(v10 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v10, "comdat", 6uLL);
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

  v22 = a2[1];
  v23 = (*(*a3 + 16))(a3);
  if (v22 > 4)
  {
    v24 = 0;
    v25 = &str_2_25;
  }

  else
  {
    v24 = qword_25D0A0198[v22];
    v25 = off_2799BE918[v22];
  }

  llvm::raw_ostream::operator<<(v23, v25, v24);
}

uint64_t mlir::LLVM::ConstantRangeAttr::parse(uint64_t a1)
{
  v2 = (*(*a1 + 40))(a1);
  v14 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v14) || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v14 + 8) & 0x3FFFFFFF;
  v13 = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v12 = 0;
  v11 = v3;
  v10 = 0;
  v6 = mlir::AsmParser::parseInteger<llvm::APInt>(a1, &v12);
  if (v6 & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (mlir::AsmParser::parseInteger<llvm::APInt>(a1, &v10) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    llvm::APInt::sextOrTrunc(&v8, &v12, v3);
    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }

    v12 = v8;
    v13 = v9;
    llvm::APInt::sextOrTrunc(&v8, &v10, v3);
    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x25F891010](v10, 0x1000C8000313F17);
    }

    v10 = v8;
    v11 = v9;
    v7 = (*(*a1 + 32))(a1);
    v4 = mlir::AsmParser::getChecked<mlir::LLVM::ConstantRangeAttr,mlir::MLIRContext *,llvm::APInt &,llvm::APInt &>(a1, v2, *v7, &v12, &v10);
  }

  else
  {
    v4 = 0;
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::AsmParser::parseInteger<llvm::APInt>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = (*(*a1 + 376))(a1, a2);
  if ((v5 & 0x100) == 0)
  {
    v7 = "expected integer value";
    v8 = 259;
    (*(*a1 + 24))(v9, a1, v4, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

uint64_t mlir::AsmParser::getChecked<mlir::LLVM::ConstantRangeAttr,mlir::MLIRContext *,llvm::APInt &,llvm::APInt &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 8);
  if (v5 > 0x40)
  {
    operator new[]();
  }

  v6 = *(a5 + 8);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *a4;
  v8 = *a5;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v24 = 257;
    (*(*a1 + 24))(v25, a1, a2, &v20);
    if (*&v25[0])
    {
      mlir::Diagnostic::operator<<<61ul>(v25 + 8, "expected lower and upper to have matching bitwidths but got ");
    }

    LODWORD(v20) = v5;
    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v25, &v20);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<6ul>((v10 + 1), " vs. ");
    }

    LODWORD(v19[0]) = v6;
    v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v11, v19) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
  }

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v12 = *a3;
  v17[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id;
  v17[1] = a3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJRNS_5APIntESE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v19[1] = v17;
  v21 = v5;
  v20 = v7;
  v23 = v6;
  v22 = v8;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::APInt>(v25, v25, v26, &v20, &v22);
  v18 = &v20;
  *&v25[0] = &v20;
  *(&v25[0] + 1) = v19;
  v14 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt &,llvm::APInt &>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt &,llvm::APInt &>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x25F891010](v22, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  return v14;
}

llvm::raw_ostream *mlir::LLVM::ConstantRangeAttr::print(mlir::LLVM::ConstantRangeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 1uLL)
  {
    *v5 = 26940;
    *(v4 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v4, "<i", 2uLL);
  }

  v6 = *(*this + 16);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v7, v6, 0, 0, 0);
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

  v10 = *this;
  v21 = *(*this + 16);
  if (v21 > 0x40)
  {
    operator new[]();
  }

  v20 = *(v10 + 8);
  v11 = (*(*a2 + 16))(a2);
  llvm::APInt::print(&v20, v11, 1);
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

  v14 = *this;
  v19 = *(v14 + 32);
  if (v19 > 0x40)
  {
    operator new[]();
  }

  v18 = *(v14 + 24);
  v15 = (*(*a2 + 16))(a2);
  llvm::APInt::print(&v18, v15, 1);
  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {
    result = llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++*(result + 4);
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      return MEMORY[0x25F891010](v20, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::Operation::getParentOfType<mlir::FunctionOpInterface>(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a1 = *(v3 + 16);
    if (!a1)
    {
      break;
    }

    result = llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v3 + 16));
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t mlir::FieldParser<mlir::BoolAttr,mlir::BoolAttr>::parse(uint64_t a1)
{
  v4 = 0;
  v1 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(a1, &v4);
  v2 = v4;
  if (!v1)
  {
    return 0;
  }

  return v2;
}

uint64_t mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopAnnotationAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::AsmParser::parseAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 440))(a1, &v10, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v5 = v10[1], *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v5[2] == 1)
  {
    *a2 = v10;
    return 1;
  }

  else
  {
    *a2 = 0;
    v8 = "invalid kind of attribute specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopAnnotationAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(void **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopAnnotationAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopUnrollAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::FieldParser<mlir::FusedLoc,mlir::FusedLoc>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if ((*(*a1 + 440))(a1, &v10, 0))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(uint64_t a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v4[1] = &v5;
  v5 = v7;
  v6 = 0x600000000;
  v4[0] = a2;
  if ((*(*a2 + 392))(a2, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v4, 0, 0))
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(a1, &v5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v3;
  if (v5 != v7)
  {
    free(v5);
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17LoopVectorizeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopVectorizeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopInterleaveAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopInterleaveAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopUnrollAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopUnrollAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20LoopUnrollAndJamAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopUnrollAndJamAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM12LoopLICMAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopLICMAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopDistributeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopDistributeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopPipelineAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopPipelineAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopPeeledAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopPeeledAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopUnswitchAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopUnswitchAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "llvm", 4uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v13 = 0;
  v14[0] = v2;
  if (((*(*v2 + 448))(v2, &v13, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM15AccessGroupAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v14) & 1) == 0)
  {
    return 0;
  }

  v6 = v13;
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
  {
    v11 = "invalid kind of attribute specified";
    v12 = 259;
    (*(*v2 + 24))(v14, v2, v5, &v11);
    v7 = v15;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    if (v7)
    {
      return 0;
    }

    v6 = 0;
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 8);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 8 * v10) = v6;
  ++*(v9 + 8);
  return 1;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM15AccessGroupAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::AccessGroupAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(a1, a2);
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
      llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<unsigned long long>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<unsigned long long>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM10DIFileAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v12 = 0;
  if (((*(*a1 + 440))(a1, &v12, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = v12;
  v6 = *(*v12 + 136);
  if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = 1;
  if (!v7)
  {
    v10 = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v4, &v10);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v8;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM10DIFileAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIFileAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<mlir::LLVM::DIFlags,mlir::LLVM::DIFlags>::parse<mlir::AsmParser>(uint64_t a1)
{
  v61[24] = *MEMORY[0x277D85DE8];
  __p = 0;
  v55 = 0;
  v56 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    *&v57[0] = "expected keyword for LLVM DI flags";
    v58 = 259;
    (*(*a1 + 24))(&v59, a1, v2, v57);
LABEL_201:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    v48 = 0;
    v49 = 0;
    goto LABEL_205;
  }

  v3 = SHIBYTE(v56);
  p_p = __p;
  if (v56 >= 0)
  {
    p_p = &__p;
  }

  if (v56 < 0)
  {
    v3 = v55;
  }

  *&v57[0] = p_p;
  *(&v57[0] + 1) = v3;
  if (v3 == 4 && *p_p == 1869768026)
  {
    v50 = 0;
  }

  else
  {
    v59 = v61;
    v60 = 0x200000000;
    llvm::StringRef::split(v57, &v59, "|", 1uLL, -1, 1);
    if (v60)
    {
      v5 = 0;
      v6 = v59;
      v7 = 16 * v60;
      while (1)
      {
        v52[0] = *v6;
        v8 = llvm::StringRef::trim(v52, " \t\n\v\f\r", 6);
        switch(v9)
        {
          case 4:
            if (*v8 == 812935490)
            {
              goto LABEL_174;
            }

            if (*v8 == 829712706)
            {
              goto LABEL_173;
            }

            goto LABEL_195;
          case 5:
            if (*v8 != 1853188180 || *(v8 + 4) != 107)
            {
              goto LABEL_195;
            }

            v13 = 0x2000000;
            goto LABEL_190;
          case 6:
            if (*v8 == 1818391888 && *(v8 + 4) == 25449)
            {
              v13 = 3;
            }

            else
            {
              if (*v8 != 1952671062 || *(v8 + 4) != 29295)
              {
                goto LABEL_195;
              }

              v13 = 2048;
            }

            goto LABEL_190;
          case 7:
            if (*v8 == 1986622032 && *(v8 + 3) == 1702125942)
            {
LABEL_174:
              v13 = 1;
            }

            else if (*v8 == 1147434822 && *(v8 + 3) == 1818453316)
            {
              v13 = 4;
            }

            else
            {
              if (*v8 != 1953655126 || *(v8 + 3) != 1818326388)
              {
                goto LABEL_195;
              }

              v13 = 32;
            }

            goto LABEL_190;
          case 8:
            switch(*v8)
            {
              case 0x746963696C707845:
                v13 = 128;
                break;
              case 0x646C656946746942:
                v13 = 0x80000;
                break;
              case 0x6E72757465526F4ELL:
                v13 = 0x100000;
                break;
              default:
                goto LABEL_195;
            }

            goto LABEL_190;
          case 9:
            if (*v8 == 0x65746365746F7250 && *(v8 + 8) == 100)
            {
LABEL_173:
              v13 = 2;
            }

            else if (*v8 == 0x73616C436D756E45 && *(v8 + 8) == 115)
            {
              v13 = 0x1000000;
            }

            else
            {
              if (*v8 != 0x6169646E45676942 || *(v8 + 8) != 110)
              {
                goto LABEL_195;
              }

              v13 = 0x8000000;
            }

            goto LABEL_190;
          case 10:
            if (*v8 == 0x6F6C42656C707041 && *(v8 + 8) == 27491)
            {
              v13 = 8;
            }

            else if (*v8 == 0x6963696669747241 && *(v8 + 8) == 27745)
            {
              v13 = 64;
            }

            else if (*v8 == 0x7079746F746F7250 && *(v8 + 8) == 25701)
            {
              v13 = 256;
            }

            else
            {
              if (*v8 != 0x69766972546E6F4ELL || *(v8 + 8) != 27745)
              {
                goto LABEL_195;
              }

              v13 = 0x4000000;
            }

            goto LABEL_190;
          case 12:
            if (*v8 == 0x6465767265736552 && *(v8 + 8) == 880044354)
            {
              v13 = 16;
            }

            else if (*v8 == 0x654D636974617453 && *(v8 + 8) == 1919246957)
            {
              v13 = 4096;
            }

            else
            {
              if (*v8 != 0x6E45656C7474694CLL || *(v8 + 8) != 1851877732)
              {
                goto LABEL_195;
              }

              v13 = 0x10000000;
            }

            goto LABEL_190;
          case 13:
            if (*v8 == 0x6F507463656A624FLL && *(v8 + 5) == 0x7265746E696F5074)
            {
              v13 = 1024;
            }

            else
            {
              if (*v8 != 0x795374726F707845 || *(v8 + 5) != 0x736C6F626D795374)
              {
                goto LABEL_195;
              }

              v13 = 0x8000;
            }

            goto LABEL_190;
          case 15:
            if (*v8 == 0x655265756C61564CLL && *(v8 + 7) == 0x65636E6572656665)
            {
              v13 = 0x2000;
            }

            else if (*v8 == 0x655265756C615652 && *(v8 + 7) == 0x65636E6572656665)
            {
              v13 = 0x4000;
            }

            else
            {
              if (*v8 != 0x7373615065707954 || *(v8 + 7) != 0x65756C6156794273)
              {
                goto LABEL_195;
              }

              v13 = 0x400000;
            }

            goto LABEL_190;
          case 17:
            if (*v8 == 0x73616C43636A624FLL && *(v8 + 8) == 0x74656C706D6F4373 && *(v8 + 16) == 101)
            {
              v13 = 512;
            }

            else if (*v8 == 0x6E49656C676E6953 && *(v8 + 8) == 0x636E617469726568 && *(v8 + 16) == 101)
            {
LABEL_172:
              v13 = 0x10000;
            }

            else if (*v8 == 0x6375646F72746E49 && *(v8 + 8) == 0x6175747269566465 && *(v8 + 16) == 108)
            {
              v13 = 0x40000;
            }

            else
            {
              if (*v8 != 0x736C6C61436C6C41 || *(v8 + 8) != 0x6562697263736544 || *(v8 + 16) != 100)
              {
LABEL_195:
                v5 = 0;
                v47 = 0;
                v46 = 1;
                goto LABEL_196;
              }

              v13 = 0x20000000;
            }

LABEL_190:
            v5 |= v13;
            ++v6;
            v7 -= 16;
            if (!v7)
            {
              goto LABEL_194;
            }

            break;
          case 18:
            if (*v8 != 0x496C617574726956 || *(v8 + 8) != 0x6E6174697265686ELL || *(v8 + 16) != 25955)
            {
              goto LABEL_195;
            }

            goto LABEL_172;
          case 19:
            if (*v8 == 0x656C7069746C754DLL && *(v8 + 8) == 0x6174697265686E49 && *(v8 + 11) == 0x65636E6174697265)
            {
              goto LABEL_172;
            }

            if (*v8 != 0x7373615065707954 || *(v8 + 8) != 0x6572656665527942 || *(v8 + 11) != 0x65636E6572656665)
            {
              goto LABEL_195;
            }

            v13 = 0x800000;
            goto LABEL_190;
          default:
            goto LABEL_195;
        }
      }
    }

    v5 = 0;
LABEL_194:
    v46 = 0;
    v47 = v5 & 0xFFFFFF00;
    v5 = v5;
LABEL_196:
    if (v59 != v61)
    {
      free(v59);
    }

    if (v46)
    {
      *&v52[0] = "invalid LLVM DI flags specification: ";
      v53 = 259;
      (*(*a1 + 24))(&v59, a1, v2, v52);
      if (v59)
      {
        v58 = 260;
        *&v57[0] = &__p;
        mlir::Diagnostic::operator<<(&v60, v57);
      }

      goto LABEL_201;
    }

    v50 = v47 | v5;
  }

  v48 = v50;
  v49 = 0x100000000;
LABEL_205:
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }

  return v49 | v48;
}

void mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(uint64_t a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v4[1] = &v5;
  v5 = v7;
  v6 = 0x600000000;
  v4[0] = a2;
  if ((*(*a2 + 392))(a2, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v4, 0, 0))
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, &v5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v3;
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16DIExpressionAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::AsmParser::parseInteger<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v9[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(a1, a2, v9);
  if ((v5 & 0x100) == 0)
  {
    v7 = "expected integer value";
    v8 = 259;
    (*(*a1 + 24))(v9, a1, v4, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v16 = 1;
  __s2 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&v17, &__s2, 0x20u);
    LimitedValue = llvm::APInt::getLimitedValue(&v17, 0xFFFFFFFFFFFFFFFFLL);
    *a2 = LimitedValue;
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x25F891010](v17, 0x1000C8000313F17);
      LimitedValue = *a2;
    }

    if (v16 > 0x40)
    {
      operator new[]();
    }

    if (v16)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if ((v9 & LimitedValue) == __s2)
    {
      v10 = 1;
    }

    else
    {
      v13 = "integer value too large";
      v14 = 259;
      (*(*a1 + 24))(&v17, a1, v6, &v13);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
      v10 = 0;
    }

    v11 = 1;
  }

  else
  {
    v10 = v7;
    v11 = BYTE1(v7);
  }

  if (v16 >= 0x41 && __s2)
  {
    MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
  }

  return v10 | (v11 << 8);
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  if (((*(*a1 + 440))(a1, &v17, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = *(*v17 + 136);
  v11 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id;
  if (v11 || (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id ? (v14 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id) : (v14 = 1), v14))
  {
    *a2 = v17;
    return 1;
  }

  else
  {
    *a2 = 0;
    v15 = "invalid kind of attribute specified";
    v16 = 259;
    (*(*a1 + 24))(v18, a1, v4, &v15);
    v12 = (v19 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  }

  return v12;
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v15 = 0;
  if (((*(*a1 + 440))(a1, &v15, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = *(*v15 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id)
  {
    *a2 = v15;
    return 1;
  }

  else
  {
    *a2 = 0;
    v13 = "invalid kind of attribute specified";
    v14 = 259;
    (*(*a1 + 24))(v16, a1, v4, &v13);
    v12 = (v17 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v12;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(v2, &v7))
  {
    return 0;
  }

  v3 = v7;
  v4 = a1[1];
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return 1;
}

uint64_t mlir::FieldParser<mlir::LLVM::DINodeAttr,mlir::LLVM::DINodeAttr>::parse(uint64_t a1)
{
  v4 = 0;
  v1 = mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(a1, &v4);
  v2 = v4;
  if (!v1)
  {
    return 0;
  }

  return v2;
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v29 = 0;
  if (((*(*a1 + 440))(a1, &v29, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = *(*v29 + 136);
  v23 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id;
  if (v23 || (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id ? (v26 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id) : (v26 = 1), v26))
  {
    *a2 = v29;
    return 1;
  }

  else
  {
    *a2 = 0;
    v27 = "invalid kind of attribute specified";
    v28 = 259;
    (*(*a1 + 24))(v30, a1, v4, &v27);
    v24 = (v31 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
  }

  return v24;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, a2);
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
      llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16DIExpressionAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIExpressionAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<std::optional<unsigned int>,std::optional<unsigned int>>::parse(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  v1 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(a1, &v5, &v6);
  if ((v1 & 0x100) != 0)
  {
    if (v1)
    {
      v3 = v5 & 0xFFFFFF00 | 0x100000000;
      v2 = v5;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t mlir::FieldParser<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIGlobalVariableAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIGlobalVariableAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIGlobalVariableAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIGlobalVariableAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DICompileUnitAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17DICompileUnitAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::FieldParser<mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubprogramFlags>::parse<mlir::AsmParser>(uint64_t a1)
{
  v35[24] = *MEMORY[0x277D85DE8];
  __p = 0;
  v29 = 0;
  v30 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    *&v31[0] = "expected keyword for LLVM DISubprogram flags";
    v32 = 259;
    (*(*a1 + 24))(&v33, a1, v2, v31);
LABEL_83:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    v23 = 0;
    v24 = 0;
    goto LABEL_85;
  }

  v3 = SHIBYTE(v30);
  p_p = __p;
  if (v30 >= 0)
  {
    p_p = &__p;
  }

  if (v30 < 0)
  {
    v3 = v29;
  }

  *&v31[0] = p_p;
  *(&v31[0] + 1) = v3;
  v33 = v35;
  v34 = 0x200000000;
  llvm::StringRef::split(v31, &v33, "|", 1uLL, -1, 1);
  if (v34)
  {
    v5 = 0;
    v6 = 16 * v34;
    v7 = v33;
    while (1)
    {
      v26[0] = *v7;
      v8 = llvm::StringRef::trim(v26, " \t\n\v\f\r", 6);
      if (v9 > 9)
      {
        switch(v9)
        {
          case 10:
            if (*v8 == 0x6974696E69666544 && *(v8 + 8) == 28271)
            {
              v13 = 8;
            }

            else
            {
              if (*v8 != 0x65726944436A624FLL || *(v8 + 8) != 29795)
              {
LABEL_77:
                v5 = 0;
                v22 = 0;
                v21 = 1;
                goto LABEL_78;
              }

              v13 = 2048;
            }

            break;
          case 11:
            if (*v8 == 0x7472695665727550 && *(v8 + 3) == 0x6C61757472695665)
            {
              v13 = 2;
            }

            else
            {
              if (*v8 != 0x556F546C61636F4CLL || *(v8 + 3) != 0x74696E556F546C61)
              {
                goto LABEL_77;
              }

              v13 = 4;
            }

            break;
          case 14:
            if (*v8 != 0x706275536E69614DLL || *(v8 + 6) != 0x6D6172676F727062)
            {
              goto LABEL_77;
            }

            v13 = 256;
            break;
          default:
            goto LABEL_77;
        }
      }

      else
      {
        switch(v9)
        {
          case 4:
            if (*v8 != 1701999952)
            {
              goto LABEL_77;
            }

            v13 = 32;
            break;
          case 7:
            if (*v8 == 1953655126 && *(v8 + 3) == 1818326388)
            {
              v13 = 1;
            }

            else
            {
              if (*v8 != 1701602628 || *(v8 + 3) != 1684370533)
              {
                goto LABEL_77;
              }

              v13 = 512;
            }

            break;
          case 9:
            if (*v8 == 0x657A696D6974704FLL && *(v8 + 8) == 100)
            {
              v13 = 16;
            }

            else if (*v8 == 0x61746E656D656C45 && *(v8 + 8) == 108)
            {
              v13 = 64;
            }

            else
            {
              if (*v8 != 0x7669737275636552 || *(v8 + 8) != 101)
              {
                goto LABEL_77;
              }

              v13 = 128;
            }

            break;
          default:
            goto LABEL_77;
        }
      }

      v5 |= v13;
      ++v7;
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_76;
      }
    }
  }

  v5 = 0;
LABEL_76:
  v21 = 0;
  v22 = v5 & 0xFFFFFF00;
  v5 = v5;
LABEL_78:
  if (v33 != v35)
  {
    free(v33);
  }

  if (v21)
  {
    *&v26[0] = "invalid LLVM DISubprogram flags specification: ";
    v27 = 259;
    (*(*a1 + 24))(&v33, a1, v2, v26);
    if (v33)
    {
      v32 = 260;
      *&v31[0] = &__p;
      mlir::Diagnostic::operator<<(&v34, v31);
    }

    goto LABEL_83;
  }

  v23 = v22 | v5;
  v24 = 0x100000000;
LABEL_85:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  return v24 | v23;
}

uint64_t mlir::FieldParser<mlir::LLVM::DISubroutineTypeAttr,mlir::LLVM::DISubroutineTypeAttr>::parse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11[0] = a1;
  if ((*(*a1 + 448))(a1, &v10, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DISubroutineTypeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v11))
  {
    v5 = v10;
    v6 = 1;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id)
    {
      v8 = "invalid kind of attribute specified";
      v9 = 259;
      (*(*a1 + 24))(v11, a1, v4, &v8);
      v6 = (v12 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17DICompileUnitAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DICompileUnitAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DISubroutineTypeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(void **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DISubroutineTypeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DITypeAttr,6u>,llvm::SmallVector<mlir::LLVM::DITypeAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(v2, &v7))
  {
    return 0;
  }

  v3 = v7;
  v4 = a1[1];
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return 1;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(uint64_t a1)
{
  v21[25] = *MEMORY[0x277D85DE8];
  __p = 0;
  v16 = 0;
  v17 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    v18[0] = "expected keyword for LLVM ModRefInfo";
    v19 = 259;
    (*(*a1 + 24))(&v20, a1, v2, v18);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    v5 = 0;
    goto LABEL_26;
  }

  v3 = SHIBYTE(v17);
  p_p = __p;
  if (v17 >= 0)
  {
    p_p = &__p;
  }

  if (v17 < 0)
  {
    v3 = v16;
  }

  if (v3 == 9)
  {
    v9 = *p_p;
    v10 = p_p[8];
    if (v9 == 0x7469727764616572 && v10 == 101)
    {
      v5 = 3;
      goto LABEL_26;
    }

LABEL_23:
    v13 = "invalid LLVM ModRefInfo specification: ";
    v14 = 259;
    (*(*a1 + 24))(&v20, a1, v2, &v13);
    if (v20)
    {
      v19 = 260;
      v18[0] = &__p;
      mlir::Diagnostic::operator<<(v21, v18);
    }

    goto LABEL_25;
  }

  if (v3 == 5)
  {
    v6 = *p_p;
    v7 = p_p[4];
    if (v6 == 1953067639 && v7 == 101)
    {
      v5 = 2;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v3 != 4)
  {
    goto LABEL_23;
  }

  if (*p_p != 1701736302)
  {
    if (*p_p == 1684104562)
    {
      v5 = 1;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v5 = 0;
LABEL_26:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v5;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20AliasScopeDomainAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::AliasScopeDomainAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM14AliasScopeAttrEJPNS1_11MLIRContextENS1_9AttributeENS8_20AliasScopeDomainAttrENS1_10StringAttrEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>,llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "llvm", 4uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v13 = 0;
  v14[0] = v2;
  if (((*(*v2 + 448))(v2, &v13, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14TBAAMemberAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v14) & 1) == 0)
  {
    return 0;
  }

  v6 = v13;
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id)
  {
    v11 = "invalid kind of attribute specified";
    v12 = 259;
    (*(*v2 + 24))(v14, v2, v5, &v11);
    v7 = v15;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    if (v7)
    {
      return 0;
    }

    v6 = 0;
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 8);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 8 * v10) = v6;
  ++*(v9 + 8);
  return 1;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14TBAAMemberAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::TBAAMemberAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}