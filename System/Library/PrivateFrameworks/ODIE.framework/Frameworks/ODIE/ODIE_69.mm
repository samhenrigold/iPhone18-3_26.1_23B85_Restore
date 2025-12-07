void mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v39 = 261;
    v37 = "access_groups";
    v38 = 13;
    v9 = mlir::StringAttr::get(v8, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v39 = 261;
    v37 = "alias_scopes";
    v38 = 12;
    v12 = mlir::StringAttr::get(v11, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v39 = 261;
    v37 = "alignment";
    v38 = 9;
    v15 = mlir::StringAttr::get(v14, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v39 = 261;
    v37 = "failure_ordering";
    v38 = 16;
    v18 = mlir::StringAttr::get(v17, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v39 = 261;
    v37 = "noalias_scopes";
    v38 = 14;
    v21 = mlir::StringAttr::get(v20, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v39 = 261;
    v37 = "success_ordering";
    v38 = 16;
    v24 = mlir::StringAttr::get(v23, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v39 = 261;
    v37 = "syncscope";
    v38 = 9;
    v27 = mlir::StringAttr::get(v26, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v39 = 261;
    v37 = "tbaa";
    v38 = 4;
    v30 = mlir::StringAttr::get(v29, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v39 = 261;
    v37 = "volatile_";
    v38 = 9;
    v33 = mlir::StringAttr::get(v32, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v39 = 261;
    v37 = "weak";
    v38 = 4;
    v36 = mlir::StringAttr::get(v35, &v37, a3);
    mlir::NamedAttrList::push_back(a3, v36, v34);
  }
}

double mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
    v4 = a4[1];
    v5 = a4[2];
    v6 = a4[4];
    a3[3] = a4[3];
    a3[4] = v6;
    a3[1] = v4;
    a3[2] = v5;
  }

  else
  {
    *&v4 = 0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v46, a6, a2, a3);
    if (v46)
    {
      mlir::Diagnostic::operator<<<42ul>(v47, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "access_groups", 0xDuLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alias_scopes", 0xCuLL);
    if (v15)
    {
      v13 = *(v14 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v46, a6);
          if (!v46)
          {
            goto LABEL_4;
          }

LABEL_23:
          if (v46)
          {
            LODWORD(v45[0]) = 0;
            v45[1] = v13;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v48, v45, 1);
            v19 = v48 + 24 * v49;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v49;
          }

          goto LABEL_4;
        }

        a3[1] = v13;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          (a5)(&v46, a6);
          if (!v46)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        a3[2] = v13;
      }
    }

    v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "failure_ordering", 0x10uLL);
    if (v22)
    {
      v23 = *(v21 + 8);
      v45[0] = v23;
      if (v23)
      {
        if (!mlir::LLVM::AtomicOrderingAttr::classof(v23))
        {
          (a5)(&v46, a6);
          if (!v46)
          {
            goto LABEL_4;
          }

          goto LABEL_49;
        }

        a3[3] = v23;
      }
    }

    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "noalias_scopes", 0xEuLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      v45[0] = v26;
      if (v26)
      {
        if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v46, a6);
          if (!v46)
          {
            goto LABEL_4;
          }

LABEL_70:
          if (v46)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v47, v45);
          }

          goto LABEL_4;
        }

        a3[4] = v26;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "success_ordering", 0x10uLL);
    if ((v29 & 1) == 0 || (v30 = *(v28 + 8), (v45[0] = v30) == 0))
    {
LABEL_42:
      v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "syncscope", 9uLL);
      if (v32)
      {
        v33 = *(v31 + 8);
        v45[0] = v33;
        if (v33)
        {
          if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            (a5)(&v46, a6);
            if (!v46)
            {
              goto LABEL_4;
            }

            goto LABEL_62;
          }

          a3[6] = v33;
        }
      }

      v35 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tbaa", 4uLL);
      if (v36)
      {
        v37 = *(v35 + 8);
        v45[0] = v37;
        if (v37)
        {
          if (*(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            (a5)(&v46, a6);
            if (!v46)
            {
              goto LABEL_4;
            }

            goto LABEL_69;
          }

          a3[7] = v37;
        }
      }

      v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "volatile_", 9uLL);
      if (v40)
      {
        v41 = *(v39 + 8);
        v45[0] = v41;
        if (v41)
        {
          if (*(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            (a5)(&v46, a6);
            if (!v46)
            {
              goto LABEL_4;
            }

LABEL_62:
            mlir::Diagnostic::operator<<<55ul>(v47, v34);
            goto LABEL_70;
          }

          a3[8] = v41;
        }
      }

      v42 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "weak", 4uLL);
      if (v43)
      {
        v44 = *(v42 + 8);
        v45[0] = v44;
        if (v44)
        {
          if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            (a5)(&v46, a6);
            if (!v46)
            {
              goto LABEL_4;
            }

LABEL_69:
            mlir::Diagnostic::operator<<<50ul>(v47, v38);
            goto LABEL_70;
          }

          a3[9] = v44;
        }
      }

      return 1;
    }

    if (mlir::LLVM::AtomicOrderingAttr::classof(v30))
    {
      a3[5] = v30;
      goto LABEL_42;
    }

    (a5)(&v46, a6);
    if (!v46)
    {
      goto LABEL_4;
    }

LABEL_49:
    mlir::Diagnostic::operator<<<62ul>(v47, v27);
    goto LABEL_70;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  (a5)(&v46, a6);
  if (v46)
  {
    goto LABEL_23;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v43 = v45;
  v44 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v42 = 261;
    v40 = "access_groups";
    v41 = 13;
    v9 = mlir::StringAttr::get(v8, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v42 = 261;
    v40 = "alias_scopes";
    v41 = 12;
    v12 = mlir::StringAttr::get(v11, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v42 = 261;
    v40 = "alignment";
    v41 = 9;
    v15 = mlir::StringAttr::get(v14, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v42 = 261;
    v40 = "failure_ordering";
    v41 = 16;
    v18 = mlir::StringAttr::get(v17, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v42 = 261;
    v40 = "noalias_scopes";
    v41 = 14;
    v21 = mlir::StringAttr::get(v20, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v42 = 261;
    v40 = "success_ordering";
    v41 = 16;
    v24 = mlir::StringAttr::get(v23, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v42 = 261;
    v40 = "syncscope";
    v41 = 9;
    v27 = mlir::StringAttr::get(v26, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v42 = 261;
    v40 = "tbaa";
    v41 = 4;
    v30 = mlir::StringAttr::get(v29, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v42 = 261;
    v40 = "volatile_";
    v41 = 9;
    v33 = mlir::StringAttr::get(v32, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v42 = 261;
    v40 = "weak";
    v41 = 4;
    v36 = mlir::StringAttr::get(v35, &v40, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v43, v36, v34);
  }

  v37 = v43;
  if (v44)
  {
    v38 = mlir::DictionaryAttr::get(v3, v43, v44);
    v37 = v43;
  }

  else
  {
    v38 = 0;
  }

  if (v37 != v45)
  {
    free(v37);
  }

  return v38;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicCmpXchgOp>::hashProperties(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = HIDWORD(a2[1]);
  v4 = HIDWORD(*a2) ^ (v2 >> 47) ^ v2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v3);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v40 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v41 = v6;
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v14 = a2[4];
  v15 = a2[5];
  v16 = (8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14);
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v38 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v39 = v13;
  v18 = HIDWORD(v15);
  v19 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = a2[6];
  v22 = a2[7];
  v23 = (8 * v21 - 0xAE502812AA7333) ^ HIDWORD(v21);
  v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ ((0x9DDFEA08EB382D69 * v23) >> 47) ^ (0x9DDFEA08EB382D69 * v23));
  v36 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v37 = v20;
  v25 = HIDWORD(v22);
  v26 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ HIDWORD(v22));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 47));
  v27 = a2[9];
  v28 = 8 * a2[8] - 0xAE502812AA7333;
  v29 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[8]) ^ ((0x9DDFEA08EB382D69 * (v28 ^ HIDWORD(a2[8]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ HIDWORD(a2[8]))));
  v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47));
  v31 = 0x9DDFEA08EB382D69 * ((8 * v27 - 0xAE502812AA7333) ^ HIDWORD(v27));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v31 >> 47) ^ v31)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v31 >> 47) ^ v31)) >> 47));
  v34 = v30;
  memset(v43, 0, sizeof(v43));
  memset(v42, 0, sizeof(v42));
  v44 = 0;
  v45 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v42, 0, v42, v43, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47)), &v41, &v40, &v39, &v38, &v37, &v36, &v35, &v34, &v33);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicCmpXchgOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 24))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  (*(*a3 + 16))(a3, v4[13]);
  (*(*a3 + 24))(a3, v4[14]);
  (*(*a3 + 24))(a3, v4[15]);
  (*(*a3 + 24))(a3, v4[16]);
  v5 = v4[17];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::AccessGroupOpInterface>();
      mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[6];
}

uint64_t llvm::getTypeName<mlir::LLVM::AccessGroupOpInterface>()
{
  {
    llvm::getTypeName<mlir::LLVM::AccessGroupOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::AccessGroupOpInterface>();
    *algn_27FC1B048 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::AccessGroupOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::AccessGroupOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::AccessGroupOpInterface]";
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

void mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicCmpXchgOp>::getAccessedOperands(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 72) + 24);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(a2, &v2, &v3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::AliasAnalysisOpInterface>();
      mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[11];
}

uint64_t llvm::getTypeName<mlir::LLVM::AliasAnalysisOpInterface>()
{
  {
    llvm::getTypeName<mlir::LLVM::AliasAnalysisOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::AliasAnalysisOpInterface>();
    unk_27FC1B070 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::AliasAnalysisOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::AliasAnalysisOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::AliasAnalysisOpInterface]";
  v6 = 98;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicCmpXchgOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::AtomicCmpXchgOp::inferReturnTypes(a4, a5, &v17))
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
      v21 = "llvm.cmpxchg";
      v22 = 12;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicCmpXchgOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC207C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC207C0))
  {
    v1 = llvm::getTypeName<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>>();
    qword_27FC207B8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC207C0);
  }

  return qword_27FC207B8;
}

uint64_t llvm::getTypeName<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC207D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC207D8))
  {
    qword_27FC207C8 = llvm::detail::getTypeNameImpl<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>>();
    unk_27FC207D0 = v1;
    __cxa_guard_release(&qword_27FC207D8);
  }

  return qword_27FC207C8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::AccessGroupOpInterface::Trait<Empty>]";
  v6 = 110;
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

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC207E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC207E8))
  {
    v1 = llvm::getTypeName<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>>();
    qword_27FC207E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC207E8);
  }

  return qword_27FC207E0;
}

uint64_t llvm::getTypeName<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20800))
  {
    qword_27FC207F0 = llvm::detail::getTypeNameImpl<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>>();
    *algn_27FC207F8 = v1;
    __cxa_guard_release(&qword_27FC20800);
  }

  return qword_27FC207F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::AliasAnalysisOpInterface::Trait<Empty>]";
  v6 = 112;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  v8 = (*(a2 + 44) >> 23) & 1;
  if (*(a2 + 64 + 16 * v8 + 72))
  {
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
      *v12 = 1801545079;
      *(v11 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v11, "weak", 4uLL);
    }

    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8 + 64))
  {
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

    v15 = (*(*a3 + 16))(a3);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 7uLL)
    {
      *v16 = 0x656C6974616C6F76;
      *(v15 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v15, "volatile", 8uLL);
    }
  }

  v17 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ",", 1uLL);
  }

  else
  {
    *v20 = 44;
    ++*(v19 + 4);
  }

  v21 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v23 = (*(*a3 + 16))(a3);
  v24 = *(v23 + 4);
  if (*(v23 + 3) == v24)
  {
    llvm::raw_ostream::write(v23, ",", 1uLL);
  }

  else
  {
    *v24 = 44;
    ++*(v23 + 4);
  }

  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 88));
  if (*(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 48))
  {
    v27 = (*(*a3 + 16))(a3);
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

    v29 = (*(*a3 + 16))(a3);
    v30 = *(v29 + 4);
    if ((*(v29 + 3) - v30) > 8)
    {
      *(v30 + 8) = 101;
      *v30 = *"syncscope";
      *(v29 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v29, "syncscope", 9uLL);
    }

    v31 = (*(*a3 + 16))(a3);
    v32 = *(v31 + 4);
    if (*(v31 + 3) == v32)
    {
      llvm::raw_ostream::write(v31, "(", 1uLL);
    }

    else
    {
      *v32 = 40;
      ++*(v31 + 4);
    }

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 48));
    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (*(v33 + 3) == v34)
    {
      llvm::raw_ostream::write(v33, ")", 1uLL);
    }

    else
    {
      *v34 = 41;
      ++*(v33 + 4);
    }
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

  v60 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 40);
  Int = mlir::IntegerAttr::getInt(&v60);
  v38 = mlir::LLVM::stringifyAtomicOrdering(Int);
  v40 = v39;
  v41 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v41, v38, v40);
  v42 = (*(*a3 + 16))(a3);
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

  v60 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  v44 = mlir::IntegerAttr::getInt(&v60);
  v45 = mlir::LLVM::stringifyAtomicOrdering(v44);
  v47 = v46;
  v48 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v48, v45, v47);
  v60 = v62;
  v61 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "weak", 4);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "volatile_", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "syncscope", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "success_ordering", 16);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v60, "failure_ordering", 16);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v60, v61);
  v50 = (*(*a3 + 16))(a3);
  v51 = *(v50 + 4);
  if (v51 >= *(v50 + 3))
  {
    llvm::raw_ostream::write(v50, 32);
  }

  else
  {
    *(v50 + 4) = v51 + 1;
    *v51 = 32;
  }

  v52 = (*(*a3 + 16))(a3);
  v53 = *(v52 + 4);
  if (*(v52 + 3) == v53)
  {
    llvm::raw_ostream::write(v52, ":", 1uLL);
  }

  else
  {
    *v53 = 58;
    ++*(v52 + 4);
  }

  v54 = (*(*a3 + 16))(a3);
  v55 = *(v54 + 4);
  if (v55 >= *(v54 + 3))
  {
    llvm::raw_ostream::write(v54, 32);
  }

  else
  {
    *(v54 + 4) = v55 + 1;
    *v55 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v56 = (*(*a3 + 16))(a3);
  v57 = *(v56 + 4);
  if (*(v56 + 3) == v57)
  {
    llvm::raw_ostream::write(v56, ",", 1uLL);
  }

  else
  {
    *v57 = 44;
    ++*(v56 + 4);
  }

  v58 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v60 != v62)
  {
    free(v60);
  }
}

uint64_t mlir::Op<mlir::LLVM::AtomicCmpXchgOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) == 0)
  {
    goto LABEL_37;
  }

  v5 = a1 + 64;
  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 40);
    if (v8)
    {
      v10 = *v6;
      v9 = *(v6 + 8);
      v11 = *(v6 + 16);
      v12 = *(v6 + 32);
      v13 = *(v6 + 48);
      v30 = *(v6 + 56);
      v14 = *(v6 + 64);
      v15 = *(v6 + 72);
      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v8, "success_ordering", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v7, "failure_ordering", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "syncscope", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v11, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v15, "weak", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v14, "volatile_", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v9, "alias_scopes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v12, "noalias_scopes", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v30, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps5(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
      {
        goto LABEL_37;
      }

      v16 = *(a1 + 36) ? a1 - 16 : 0;
      if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps6(a1, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_37;
      }

      v17 = *(a1 + 72);
      v18 = *(*(v17 + 88) + 8);
      if ((*(*(v17 + 56) + 8) ^ v18) >= 8)
      {
        v22 = "failed to verify that operand #1 and operand #2 have the same type";
      }

      else
      {
        ValAndBoolStructType = getValAndBoolStructType(v18 & 0xFFFFFFFFFFFFFFF8);
        if (*(a1 + 36))
        {
          v21 = a1 - 16;
        }

        else
        {
          v21 = 0;
        }

        if (ValAndBoolStructType == (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_33;
        }

        v22 = "failed to verify that result #0 has an LLVM struct type consisting of the type of operand #2 and a BOOL";
      }
    }

    else
    {
      v22 = "requires attribute 'success_ordering'";
    }
  }

  else
  {
    v22 = "requires attribute 'failure_ordering'";
  }

  v33[0] = v22;
  v34 = 259;
  mlir::Operation::emitOpError(v36, a1, v33);
  v23 = v37;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
  if (v23)
  {
LABEL_37:
    v26 = 0;
    return v26 & 1;
  }

LABEL_33:
  if ((mlir::LLVM::detail::verifyAccessGroupOpInterface(a1, v20) & 1) == 0 || (mlir::LLVM::detail::verifyAliasAnalysisOpInterface(a1, v24) & 1) == 0)
  {
    goto LABEL_37;
  }

  v25 = *(a1 + 72);
  if (*(*(v25 + 24) + 8) > 7uLL)
  {
    v28 = *(*(v25 + 88) + 8);
    mlir::DataLayout::closest(a1, v36);
    if (isTypeCompatibleWithAtomicOp(v28 & 0xFFFFFFFFFFFFFFF8, v36))
    {
      v33[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 40);
      if (mlir::IntegerAttr::getInt(v33) >= 2 && (v33[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 24), mlir::IntegerAttr::getInt(v33) > 1))
      {
        v33[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 24);
        if (mlir::IntegerAttr::getInt(v33) != 5)
        {
          v33[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 24);
          if (mlir::IntegerAttr::getInt(v33) != 6)
          {
            v26 = 1;
            goto LABEL_45;
          }
        }

        v29 = "failure ordering cannot be 'release' or 'acq_rel'";
      }

      else
      {
        v29 = "ordering must be at least 'monotonic'";
      }
    }

    else
    {
      v29 = "unexpected LLVM IR type";
    }

    v31 = v29;
    v32 = 259;
    mlir::Operation::emitOpError(v33, a1, &v31);
    v26 = v35 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
LABEL_45:
    MEMORY[0x25F891030](v36[17], 8);
    MEMORY[0x25F891030](v36[14], 8);
    MEMORY[0x25F891030](v36[11], 8);
    MEMORY[0x25F891030](v36[8], 8);
    MEMORY[0x25F891030](v36[5], 8);
    return v26 & 1;
  }

  v33[0] = "expected LLVM IR pointer type for operand #0";
  v34 = 259;
  mlir::Operation::emitOpError(v36, a1, v33);
  v26 = v37 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
  return v26 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 <= 8)
  {
    if (a4 == 4)
    {
      if (*a3 == 1633772148)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
        goto LABEL_54;
      }
    }

    else
    {
      if (a4 == 6)
      {
        if (*a3 != 1601071458 || *(a3 + 4) != 28783)
        {
          goto LABEL_50;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
        goto LABEL_54;
      }

      v6 = 0;
      if (a4 != 8)
      {
        return v6 | v4;
      }

      if (*a3 == 0x676E69726564726FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
        goto LABEL_54;
      }
    }

LABEL_50:
    v4 = 0;
    v6 = 0;
    return v6 | v4;
  }

  if (a4 > 12)
  {
    if (a4 == 14)
    {
      if (*a3 != 0x5F7361696C616F6ELL || *(a3 + 6) != 0x7365706F63735F73)
      {
        goto LABEL_50;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      goto LABEL_54;
    }

    v6 = 0;
    if (a4 == 13)
    {
      if (*a3 != 0x675F737365636361 || *(a3 + 5) != 0x7370756F72675F73)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }
  }

  else
  {
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
          goto LABEL_50;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
      }

      goto LABEL_54;
    }

    v6 = 0;
    if (a4 == 12)
    {
      if (*a3 != 0x63735F7361696C61 || *(a3 + 8) != 1936027759)
      {
        goto LABEL_50;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
LABEL_54:
      v14 = *v5;
      v6 = v14 & 0xFFFFFFFFFFFFFF00;
      v4 = v14;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 <= 8)
  {
    if (v7 == 4)
    {
      if (*v6 == 1633772148)
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

        v5[15] = v17;
      }
    }

    else if (v7 == 6)
    {
      v28 = *v6;
      v29 = *(v6 + 2);
      if (v28 == 1601071458 && v29 == 28783)
      {
        if (a4)
        {
          if (mlir::LLVM::AtomicBinOpAttr::classof(a4))
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

        v5[11] = v31;
      }
    }

    else if (v7 == 8 && *v6 == 0x676E69726564726FLL)
    {
      if (a4)
      {
        if (mlir::LLVM::AtomicOrderingAttr::classof(a4))
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

      v5[13] = v12;
    }
  }

  else if (v7 > 12)
  {
    if (v7 == 14)
    {
      v24 = *v6;
      v25 = *(v6 + 6);
      if (v24 == 0x5F7361696C616F6ELL && v25 == 0x7365706F63735F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        v5[12] = v27;
      }
    }

    else if (v7 == 13)
    {
      v13 = *v6;
      v14 = *(v6 + 5);
      if (v13 == 0x675F737365636361 && v14 == 0x7370756F72675F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        v5[8] = v16;
      }
    }
  }

  else if (v7 == 9)
  {
    if (*v6 == 0x6E656D6E67696C61 && *(v6 + 8) == 116)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

      v5[10] = v32;
    }

    else if (*v6 == 0x706F6373636E7973 && *(v6 + 8) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

      v5[14] = v33;
    }

    else
    {
      v20 = *v6;
      v21 = *(v6 + 8);
      if (v20 == 0x656C6974616C6F76 && v21 == 95)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

        v5[16] = v23;
      }
    }
  }

  else if (v7 == 12)
  {
    v8 = *v6;
    v9 = v6[2];
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
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v36 = 261;
    v34 = "access_groups";
    v35 = 13;
    v9 = mlir::StringAttr::get(v8, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v36 = 261;
    v34 = "alias_scopes";
    v35 = 12;
    v12 = mlir::StringAttr::get(v11, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v36 = 261;
    v34 = "alignment";
    v35 = 9;
    v15 = mlir::StringAttr::get(v14, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v36 = 261;
    v34 = "bin_op";
    v35 = 6;
    v18 = mlir::StringAttr::get(v17, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v36 = 261;
    v34 = "noalias_scopes";
    v35 = 14;
    v21 = mlir::StringAttr::get(v20, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v36 = 261;
    v34 = "ordering";
    v35 = 8;
    v24 = mlir::StringAttr::get(v23, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v36 = 261;
    v34 = "syncscope";
    v35 = 9;
    v27 = mlir::StringAttr::get(v26, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v36 = 261;
    v34 = "tbaa";
    v35 = 4;
    v30 = mlir::StringAttr::get(v29, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v36 = 261;
    v34 = "volatile_";
    v35 = 9;
    v33 = mlir::StringAttr::get(v32, &v34, a3);
    mlir::NamedAttrList::push_back(a3, v33, v31);
  }
}

double mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    *a3 = *a4;
    v4 = *(a4 + 16);
    v5 = *(a4 + 32);
    v6 = *(a4 + 48);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 32) = v5;
    *(a3 + 48) = v6;
    *(a3 + 16) = v4;
  }

  else
  {
    *(a3 + 64) = 0;
    *&v4 = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v41, a6, a2, a3);
    if (v41)
    {
      mlir::Diagnostic::operator<<<42ul>(v42, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "access_groups", 0xDuLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alias_scopes", 0xCuLL);
    if (v15)
    {
      v13 = *(v14 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

LABEL_23:
          if (v41)
          {
            LODWORD(v40[0]) = 0;
            v40[1] = v13;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v43, v40, 1);
            v19 = v43 + 24 * v44;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v44;
          }

          goto LABEL_4;
        }

        a3[1] = v13;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
    if (v17)
    {
      v13 = *(v16 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        a3[2] = v13;
      }
    }

    v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "bin_op", 6uLL);
    if (v22)
    {
      v23 = *(v21 + 8);
      v40[0] = v23;
      if (v23)
      {
        if (!mlir::LLVM::AtomicBinOpAttr::classof(v23))
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

          goto LABEL_62;
        }

        a3[3] = v23;
      }
    }

    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "noalias_scopes", 0xEuLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      v40[0] = v26;
      if (v26)
      {
        if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

LABEL_62:
          if (v41)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v42, v40);
          }

          goto LABEL_4;
        }

        a3[4] = v26;
      }
    }

    v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "ordering", 8uLL);
    if (v28)
    {
      v29 = *(v27 + 8);
      v40[0] = v29;
      if (v29)
      {
        if (!mlir::LLVM::AtomicOrderingAttr::classof(v29))
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

          goto LABEL_62;
        }

        a3[5] = v29;
      }
    }

    v30 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "syncscope", 9uLL);
    if (v31)
    {
      v32 = *(v30 + 8);
      v40[0] = v32;
      if (v32)
      {
        if (*(*v32 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

          goto LABEL_61;
        }

        a3[6] = v32;
      }
    }

    v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tbaa", 4uLL);
    if (v35)
    {
      v36 = *(v34 + 8);
      v40[0] = v36;
      if (v36)
      {
        if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

          goto LABEL_62;
        }

        a3[7] = v36;
      }
    }

    v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "volatile_", 9uLL);
    if (v38)
    {
      v39 = *(v37 + 8);
      v40[0] = v39;
      if (v39)
      {
        if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          (a5)(&v41, a6);
          if (!v41)
          {
            goto LABEL_4;
          }

LABEL_61:
          mlir::Diagnostic::operator<<<55ul>(v42, v33);
          goto LABEL_62;
        }

        a3[8] = v39;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  (a5)(&v41, a6);
  if (v41)
  {
    goto LABEL_23;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v40 = v42;
  v41 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v39 = 261;
    v37 = "access_groups";
    v38 = 13;
    v9 = mlir::StringAttr::get(v8, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v39 = 261;
    v37 = "alias_scopes";
    v38 = 12;
    v12 = mlir::StringAttr::get(v11, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v39 = 261;
    v37 = "alignment";
    v38 = 9;
    v15 = mlir::StringAttr::get(v14, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v39 = 261;
    v37 = "bin_op";
    v38 = 6;
    v18 = mlir::StringAttr::get(v17, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v39 = 261;
    v37 = "noalias_scopes";
    v38 = 14;
    v21 = mlir::StringAttr::get(v20, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v39 = 261;
    v37 = "ordering";
    v38 = 8;
    v24 = mlir::StringAttr::get(v23, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v39 = 261;
    v37 = "syncscope";
    v38 = 9;
    v27 = mlir::StringAttr::get(v26, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v39 = 261;
    v37 = "tbaa";
    v38 = 4;
    v30 = mlir::StringAttr::get(v29, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v39 = 261;
    v37 = "volatile_";
    v38 = 9;
    v33 = mlir::StringAttr::get(v32, &v37, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v40, v33, v31);
  }

  v34 = v40;
  if (v41)
  {
    v35 = mlir::DictionaryAttr::get(v3, v40, v41);
    v34 = v40;
  }

  else
  {
    v35 = 0;
  }

  if (v34 != v42)
  {
    free(v34);
  }

  return v35;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 16) = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::AtomicRMWOp>::hashProperties(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = HIDWORD(a2[1]);
  v4 = HIDWORD(*a2) ^ (v2 >> 47) ^ v2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v3);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v37 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v38 = v6;
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v14 = a2[4];
  v15 = a2[5];
  v16 = (8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14);
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v35 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v36 = v13;
  v18 = HIDWORD(v15);
  v19 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = a2[6];
  v22 = a2[7];
  v23 = (8 * v21 - 0xAE502812AA7333) ^ HIDWORD(v21);
  v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ ((0x9DDFEA08EB382D69 * v23) >> 47) ^ (0x9DDFEA08EB382D69 * v23));
  v33 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v34 = v20;
  v25 = HIDWORD(v22);
  v26 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ HIDWORD(v22));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 47));
  v28 = HIDWORD(a2[8]);
  v29 = 0x9DDFEA08EB382D69 * ((8 * a2[8] - 0xAE502812AA7333) ^ v28);
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 47));
  v32 = v27;
  memset(v40, 0, sizeof(v40));
  v41 = 0xFF51AFD7ED558CCDLL;
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v39, 0, v40, &v40[3] + 8, &v38, &v37, &v36, &v35, &v34, &v33, &v32, &v31);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicRMWOp>::readProperties(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3))
  {
    return 0;
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 1))
  {
    return 0;
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 2))
  {
    return 0;
  }

  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = mlir::LLVM::AtomicBinOpAttr::classof(v13) ? v4 : 0;
  v3[3] = v5;
  if (!v5)
  {
    v12[16] = 257;
    (*(*a1 + 16))(&v17, a1, v12);
    if (v17)
    {
      mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
    }

    if ((atomic_load_explicit(&qword_27FC20C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20C60))
    {
      qword_27FC20C50 = llvm::detail::getTypeNameImpl<mlir::LLVM::AtomicBinOpAttr>();
      *algn_27FC20C58 = v11;
      __cxa_guard_release(&qword_27FC20C60);
    }

    if (v17)
    {
      v16 = 261;
      v14 = qword_27FC20C50;
      v15 = *algn_27FC20C58;
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

    v9 = v21;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    if (v9)
    {
      return 0;
    }
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::AtomicOrderingAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 8);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicRMWOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 24))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  (*(*a3 + 16))(a3, v4[13]);
  (*(*a3 + 24))(a3, v4[14]);
  (*(*a3 + 24))(a3, v4[15]);
  v5 = v4[16];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicRMWOp>::getAccessedOperands(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 72) + 24);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(a2, &v2, &v3);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicRMWOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (mlir::LLVM::AtomicRMWOp::inferReturnTypes(a4, a5, &v17))
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
      v21 = "llvm.atomicrmw";
      v22 = 14;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::AtomicRMWOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
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
    if (*(v10 + 3) - v11 > 7uLL)
    {
      *v11 = 0x656C6974616C6F76;
      *(v10 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "volatile", 8uLL);
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

  v51 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  Int = mlir::IntegerAttr::getInt(&v51);
  v15 = mlir::LLVM::stringifyAtomicBinOp(Int);
  v17 = v16;
  v18 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v18, v15, v17);
  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
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

  v23 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  if (*(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 48))
  {
    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }

    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if ((*(v27 + 3) - v28) > 8)
    {
      *(v28 + 8) = 101;
      *v28 = *"syncscope";
      *(v27 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v27, "syncscope", 9uLL);
    }

    v29 = (*(*a3 + 16))(a3);
    v30 = *(v29 + 4);
    if (*(v29 + 3) == v30)
    {
      llvm::raw_ostream::write(v29, "(", 1uLL);
    }

    else
    {
      *v30 = 40;
      ++*(v29 + 4);
    }

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 48));
    v31 = (*(*a3 + 16))(a3);
    v32 = *(v31 + 4);
    if (*(v31 + 3) == v32)
    {
      llvm::raw_ostream::write(v31, ")", 1uLL);
    }

    else
    {
      *v32 = 41;
      ++*(v31 + 4);
    }
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

  v51 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 40);
  v35 = mlir::IntegerAttr::getInt(&v51);
  v36 = mlir::LLVM::stringifyAtomicOrdering(v35);
  v38 = v37;
  v39 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v39, v36, v38);
  v51 = v53;
  v52 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "volatile_", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "bin_op", 6);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "syncscope", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "ordering", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v51, v52);
  v41 = (*(*a3 + 16))(a3);
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

  v43 = (*(*a3 + 16))(a3);
  v44 = *(v43 + 4);
  if (*(v43 + 3) == v44)
  {
    llvm::raw_ostream::write(v43, ":", 1uLL);
  }

  else
  {
    *v44 = 58;
    ++*(v43 + 4);
  }

  v45 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = (*(*a3 + 16))(a3);
  v48 = *(v47 + 4);
  if (*(v47 + 3) == v48)
  {
    llvm::raw_ostream::write(v47, ",", 1uLL);
  }

  else
  {
    *v48 = 44;
    ++*(v47 + 4);
  }

  v49 = (*(*a3 + 16))(a3);
  v50 = *(v49 + 4);
  if (v50 >= *(v49 + 3))
  {
    llvm::raw_ostream::write(v49, 32);
  }

  else
  {
    *(v49 + 4) = v50 + 1;
    *v50 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v51 != v53)
  {
    free(v51);
  }
}

uint64_t mlir::Op<mlir::LLVM::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v4) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v5) || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = a1 + 64;
  v7 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = *(v7 + 40);
    if (v9)
    {
      v11 = *v7;
      v10 = *(v7 + 8);
      v12 = *(v7 + 16);
      v2 = *(v7 + 32);
      v14 = *(v7 + 48);
      v13 = *(v7 + 56);
      v15 = *(v7 + 64);
      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v9, "ordering", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v14, "syncscope", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v12, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v15, "volatile_", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v10, "alias_scopes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v2, "noalias_scopes", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37))
      {
        goto LABEL_39;
      }

      v37 = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v37) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps7(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
      {
        goto LABEL_39;
      }

      v16 = *(a1 + 36) ? a1 - 16 : 0;
      if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps7(a1, (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
      {
        goto LABEL_39;
      }

      if (*(a1 + 36))
      {
        v18 = a1 - 16;
      }

      else
      {
        v18 = 0;
      }

      if ((*(v18 + 8) ^ *(*(*(a1 + 72) + 56) + 8)) < 8)
      {
        goto LABEL_30;
      }

      v19 = "failed to verify that result #0 and operand #1 have the same type";
    }

    else
    {
      v19 = "requires attribute 'ordering'";
    }
  }

  else
  {
    v19 = "requires attribute 'bin_op'";
  }

  v34[0] = v19;
  v35 = 259;
  mlir::Operation::emitOpError(&v37, a1, v34);
  v20 = v39;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
  if (v20)
  {
LABEL_39:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

LABEL_30:
  if ((mlir::LLVM::detail::verifyAccessGroupOpInterface(a1, v17) & 1) == 0 || (mlir::LLVM::detail::verifyAliasAnalysisOpInterface(a1, v21) & 1) == 0)
  {
    goto LABEL_39;
  }

  v22 = *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(a1 + 104);
  if (mlir::IntegerAttr::getInt(&v37) == 11 || (v37 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 24), mlir::IntegerAttr::getInt(&v37) == 12) || (v37 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 24), mlir::IntegerAttr::getInt(&v37) == 14) || (v37 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 24), mlir::IntegerAttr::getInt(&v37) == 13))
  {
    if (mlir::LLVM::isCompatibleVectorType(v22))
    {
      if (mlir::LLVM::isScalableVectorType(v22))
      {
        v23 = "expected LLVM IR fixed vector type";
LABEL_50:
        v34[0] = v23;
        v35 = 259;
        mlir::Operation::emitOpError(&v37, a1, v34);
LABEL_51:
        LOBYTE(v2) = v39 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
        return v2 & 1;
      }

      v25 = *(*v22 + 136);
      v26 = v25 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
      v27 = 24;
      if (v26)
      {
        v27 = 8;
      }

      if (!mlir::LLVM::isCompatibleFloatingPointType(*(v22 + v27)))
      {
        v23 = "expected LLVM IR floating point type for vector element";
        goto LABEL_50;
      }
    }

    else if (!mlir::LLVM::isCompatibleFloatingPointType(v22))
    {
      v23 = "expected LLVM IR floating point type";
      goto LABEL_50;
    }

LABEL_65:
    v37 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 40);
    if ((mlir::IntegerAttr::getInt(&v37) & 0xFFFFFFFELL) != 0)
    {
      LOBYTE(v2) = 1;
      return v2 & 1;
    }

    v33 = 257;
    mlir::Operation::emitOpError(&v37, a1, v32);
    if (v37)
    {
      mlir::Diagnostic::operator<<<20ul>(v38, "expected at least '");
      if (v37)
      {
        v35 = 261;
        v34[0] = "monotonic";
        v34[1] = 9;
        mlir::Diagnostic::operator<<(v38, v34);
        if (v37)
        {
          mlir::Diagnostic::operator<<<11ul>(v38, "' ordering");
        }
      }
    }

    goto LABEL_51;
  }

  v37 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 24);
  if (mlir::IntegerAttr::getInt(&v37))
  {
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v28 = (*(v22 + 8) & 0x3FFFFFFF) - 8;
    }

    else
    {
      v28 = -8;
    }

    HIDWORD(v31) = v28;
    LODWORD(v31) = v28;
    v30 = v31 >> 3;
    if (v30 >= 8 || ((0x8Bu >> v30) & 1) == 0)
    {
      v34[0] = "expected LLVM IR integer type";
      v35 = 259;
      mlir::Operation::emitOpError(&v37, a1, v34);
      LOBYTE(v2) = v39 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    }

    if (v30 <= 7 && ((1 << v30) & 0x8B) != 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    mlir::DataLayout::closest(a1, &v37);
    v29 = isTypeCompatibleWithAtomicOp(v22, &v37);
    if (!v29)
    {
      v32[0] = "unexpected LLVM IR type for 'xchg' bin_op";
      v33 = 259;
      mlir::Operation::emitOpError(v34, a1, v32);
      LOBYTE(v2) = v36 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
    }

    MEMORY[0x25F891030](v38[16], 8);
    MEMORY[0x25F891030](v38[13], 8);
    MEMORY[0x25F891030](v38[10], 8);
    MEMORY[0x25F891030](v38[7], 8);
    MEMORY[0x25F891030](v38[4], 8);
    if (v29)
    {
      goto LABEL_65;
    }
  }

  return v2 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::BitcastOp,void>::id)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::PromotableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t mlir::Op<mlir::LLVM::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::PromotableOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps8(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7))
  {
    v6 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps8(a1, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6))
    {
      v7 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      v8 = *(*v7 + 136);
      if (v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        v10 = 6;
      }

      else
      {
        v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
        if (!v9)
        {
          v13 = *(*v7 + 136);
          goto LABEL_21;
        }

        v10 = 2;
      }

      v7 = *&v7[v10];
      v13 = *(*v7 + 136);
LABEL_21:
      v14 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v15 = *(*v14 + 136);
      if (v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        v17 = 6;
      }

      else
      {
        if (v15 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
        {
          v18 = *(*v14 + 136);
          goto LABEL_30;
        }

        v17 = 2;
      }

      v14 = *&v14[v17];
      v18 = *(*v14 + 136);
LABEL_30:
      v9 = v18 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
      v19 = v18 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
      if (!v9)
      {
        v14 = 0;
      }

      if ((v13 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id) != v19)
      {
        v20 = "can only cast pointers from and to pointers";
LABEL_34:
        v23 = v20;
        v24 = 259;
        mlir::Operation::emitOpError(v25, a1, &v23);
        v11 = v26 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return v11 & 1;
      }

      if (v13 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
      {
        if (v8 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
        {
          goto LABEL_53;
        }

        if (v15 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
        {
          v20 = "cannot cast pointer to vector of pointers";
          goto LABEL_34;
        }

        if (v8 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
        {
LABEL_53:
          if (v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id && (v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id))
          {
            v20 = "cannot cast vector of pointers to pointer";
            goto LABEL_34;
          }
        }

        if (v7[2] != v14[2])
        {
          v20 = "cannot cast pointers of different address spaces, use 'llvm.addrspacecast' instead";
          goto LABEL_34;
        }
      }

      v11 = 1;
      return v11 & 1;
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 15 && (*a3 == 0x6E6E615F706F6F6CLL ? (v4 = *(a3 + 7) == 0x6E6F697461746F6ELL) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 15)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 7);
    if (v5 == 0x6E6E615F706F6F6CLL && v6 == 0x6E6F697461746F6ELL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "loop_annotation";
    v7[1] = 15;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "loop_annotation", 0xFuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "loop_annotation";
  v10[1] = 15;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::BrOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

double mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::LLVM::BrOp>::getSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 20) = v2;
  *(a2 + 24) = a2 + 40;
  *&result = 0x100000000;
  *(a2 + 32) = 0x100000000;
  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::LLVM::BrOp>::getSuccessorBlockArgument(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a2[10];
  if (!v3)
  {
    return 0;
  }

  v6 = a2 + 16;
  for (i = 24; ; i += 32)
  {
    v8 = a2[11];
    v9 = (v8 & 0x800000) != 0 ? a2[17] : 0;
    v15 = 0;
    v16 = a2;
    v17 = 0;
    v18 = v9;
    v19 = v21;
    v20 = 0x100000000;
    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(&v15, a3, *(((&v6[4 * ((v8 >> 23) & 1) + 1] + ((v8 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + i));
    v12 = v11;
    if (v19 != v21)
    {
      free(v19);
    }

    if (v12)
    {
      break;
    }

    if (!--v3)
    {
      v14 = 0;
      return v14 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
    }
  }

  v14 = BranchSuccessorArgument;
  return v14 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 176))(a3, *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, "(", 1uLL);
    }

    else
    {
      *v10 = 40;
      ++*(v9 + 4);
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v11 = *(a2 + 68);
      v12 = *(a2 + 72);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v29 = v12;
    v30 = v11;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v29);
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

    v15 = (*(*a3 + 16))(a3);
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

    v17 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v19 = *(a2 + 68);
      if (v19)
      {
        v20 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v19 != 1)
        {
          v21 = v19 - 1;
          v22 = (v20 + 56);
          do
          {
            v23 = (*(*a3 + 16))(a3);
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

            v25 = *v22;
            v22 += 4;
            (*(*a3 + 32))(a3, *(v25 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v21;
          }

          while (v21);
        }
      }
    }

    v26 = (*(*a3 + 16))(a3);
    v27 = *(v26 + 4);
    if (*(v26 + 3) == v27)
    {
      llvm::raw_ostream::write(v26, ")", 1uLL);
    }

    else
    {
      *v27 = 41;
      ++*(v26 + 4);
    }
  }

  v29 = v31;
  v30 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v29, v30);
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyOneSuccessor(a1, v4))
  {
    v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
    v16[0] = a1;
    if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
    {
      if ((*(a1 + 46) & 0x80) != 0 && (v7 = *(a1 + 68), v7))
      {
        v8 = 0;
        v9 = *(a1 + 72) + 24;
        while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, v8))
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v10 = *(a1 + 40);
        if (!v10)
        {
LABEL_22:
          IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
          return IsTerminator & 1;
        }

        v11 = 0;
        while (1)
        {
          v12 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
          LODWORD(v16[0]) = 0;
          v16[1] = a1;
          v17 = 0;
          v18 = v12;
          v19 = v21;
          v20 = 0x100000000;
          v13 = mlir::detail::verifyBranchSuccessorOperands(a1, v11, v16);
          if (v19 != v21)
          {
            free(v19);
          }

          if ((v13 & 1) == 0)
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  IsTerminator = 0;
  return IsTerminator & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 14)
  {
    if (a4 != 15)
    {
      if (a4 == 19)
      {
        if (*a3 != 0x53646E617265706FLL || *(a3 + 8) != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v5 = 0;
        if (a4 != 21)
        {
          return v5 | v4;
        }

        if (*a3 != 0x5F646E617265706FLL || *(a3 + 8) != 0x5F746E656D676573 || *(a3 + 13) != 0x73657A69735F746ELL)
        {
          goto LABEL_49;
        }
      }

      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96, 2);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    if (*a3 != 0x6C646E75625F706FLL || *(a3 + 7) != 0x73657A69735F656CLL)
    {
      goto LABEL_49;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
LABEL_41:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 == 6)
  {
    if (*a3 != 1920233065 || *(a3 + 4) != 28265)
    {
      goto LABEL_49;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_41;
  }

  if (a4 == 13)
  {
    if (*a3 != 0x6874616D74736166 || *(a3 + 5) != 0x7367616C46687461)
    {
      goto LABEL_49;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    goto LABEL_41;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 != 0x6C646E75625F706FLL || *(a3 + 6) != 0x736761745F656C64)
    {
LABEL_49:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
    goto LABEL_41;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 14)
  {
    if (v5 == 15)
    {
      v18 = *v4;
      v19 = *(v4 + 7);
      if (v18 == 0x6C646E75625F706FLL && v19 == 0x73657A69735F656CLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v21 = *(a4 + 8), *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v21[2] == 32)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v22;
      }
    }

    else
    {
      if (v5 == 19)
      {
        v10 = *v4 ^ 0x53646E617265706FLL;
        v11 = v4[1] ^ 0x6953746E656D6765;
        v12 = *(v4 + 11);
        v13 = 0x73657A6953746E65;
      }

      else
      {
        if (v5 != 21)
        {
          return result;
        }

        v10 = *v4 ^ 0x5F646E617265706FLL;
        v11 = v4[1] ^ 0x5F746E656D676573;
        v12 = *(v4 + 13);
        v13 = 0x73657A69735F746ELL;
      }

      if (v10 | v11 | v12 ^ v13)
      {
        v27 = 1;
      }

      else
      {
        v27 = a4 == 0;
      }

      if (!v27 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v28 = *(a4 + 8);
        if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v28[2] == 32 && *(a4 + 16) == 2)
        {
          v29 = *(a4 + 32);
          if (v29 >= 4)
          {
            return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96), *(a4 + 24), v29 & 0xFFFFFFFFFFFFFFFCLL);
          }
        }
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 6:
        v14 = *v4;
        v15 = *(v4 + 2);
        if (v14 == 1920233065 && v15 == 28265)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v17;
        }

        break;
      case 13:
        v23 = *v4;
        v24 = *(v4 + 5);
        if (v23 == 0x6874616D74736166 && v24 == 0x7367616C46687461)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
            {
              v26 = a4;
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v26;
        }

        break;
      case 14:
        v6 = *v4;
        v7 = *(v4 + 6);
        if (v6 == 0x6C646E75625F706FLL && v7 == 0x736761745F656C64)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v9;
        }

        break;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v26 = 261;
    v24 = "fastmathFlags";
    v25 = 13;
    v10 = mlir::StringAttr::get(v9, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v26 = 261;
    v24 = "intrin";
    v25 = 6;
    v13 = mlir::StringAttr::get(v12, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v26 = 261;
    v24 = "op_bundle_sizes";
    v25 = 15;
    v16 = mlir::StringAttr::get(v15, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v26 = 261;
    v24 = "op_bundle_tags";
    v25 = 14;
    v19 = mlir::StringAttr::get(v18, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 4), 2);
  v21 = *(**v20 + 32);
  v26 = 261;
  v24 = "operandSegmentSizes";
  v25 = 19;
  v23 = mlir::StringAttr::get(v21, &v24, v22);
  mlir::NamedAttrList::push_back(a3, v23, v20);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v5 = *a4;
    v4 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v5;
    *(a3 + 16) = v4;
    if (*a3)
    {
      return;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  *a3 = mlir::LLVM::FastmathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::LLVM::FastmathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v31, a6, a2, a3);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "fastmathFlags", 0xDuLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
      {
        a5(&v31, a6);
        if (v31)
        {
          goto LABEL_32;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
        return 0;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "intrin", 6uLL);
  if (v15)
  {
    v13 = *(v14 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a5(&v31, a6);
        if (!v31)
        {
          goto LABEL_4;
        }

LABEL_32:
        if (v31)
        {
          v29 = 0;
          v30 = v13;
          v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
          v22 = v33 + 24 * v34;
          v23 = *v21;
          *(v22 + 16) = *(v21 + 16);
          *v22 = v23;
          ++v34;
        }

        goto LABEL_4;
      }

      a3[1] = v13;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_sizes", 0xFuLL);
  if (v17)
  {
    v13 = *(v16 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v18 = v13[1], *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v18[2] != 32)
      {
        a5(&v31, a6);
        if (!v31)
        {
          goto LABEL_4;
        }

        goto LABEL_32;
      }

      a3[2] = v13;
    }
  }

  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_tags", 0xEuLL);
  if (v20)
  {
    v13 = *(v19 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v31, a6);
        if (!v31)
        {
          goto LABEL_4;
        }

        goto LABEL_32;
      }

      a3[3] = v13;
    }
  }

  v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v25 & 1) == 0 || (v26 = *(v24 + 8)) == 0)
  {
    v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v28 & 1) == 0)
    {
      return 1;
    }

    v26 = *(v27 + 8);
    if (!v26)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 4, 2, v26, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v28 = v30;
  v29 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "fastmathFlags";
    v26 = 13;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "intrin";
    v26 = 6;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "op_bundle_sizes";
    v26 = 15;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "op_bundle_tags";
    v26 = 14;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v18, v16);
  }

  v19 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 4), 2);
  v20 = *(**v19 + 32);
  v27 = 261;
  v25 = "operandSegmentSizes";
  v26 = 19;
  v22 = mlir::StringAttr::get(v20, &v25, v21);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v28, v22, v19);
  if (v29)
  {
    v23 = mlir::DictionaryAttr::get(v3, v28, v29);
  }

  else
  {
    v23 = 0;
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v23;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(*(a2 + 8));
  v5 = 0x9DDFEA08EB382D69 * ((8 * *(a2 + 8) - 0xAE502812AA7333) ^ v4);
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v16 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7))));
  v15 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = *(a2 + 36) ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (8 * *(a2 + 32) + 8));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  memset(v19, 0, sizeof(v19));
  v20 = 0xFF51AFD7ED558CCDLL;
  v18 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v18, 0, v19, &v19[3] + 8, &v17, &v16, &v15, &v14);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallIntrinsicOp>::readProperties(uint64_t a1, void *a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FastmathFlagsAttr>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3))
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

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 2uLL) & 1) != 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallIntrinsicOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 16))(a3, *(v6 + 8));
  (*(*a3 + 16))(a3, *(v6 + 16));
  (*(*a3 + 24))(a3, *(v6 + 24));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 32, 2);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 32), 2);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20810))
  {
    v1 = llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface>();
    qword_27FC20808 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20810);
  }

  return qword_27FC20808;
}

uint64_t llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20828))
  {
    qword_27FC20818 = llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface>();
    unk_27FC20820 = v1;
    __cxa_guard_release(&qword_27FC20828);
  }

  return qword_27FC20818;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::FastmathFlagsInterface]";
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20838))
  {
    v1 = llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>();
    qword_27FC20830 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20838);
  }

  return qword_27FC20830;
}

uint64_t llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20850))
  {
    qword_27FC20840 = llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>();
    *algn_27FC20848 = v1;
    __cxa_guard_release(&qword_27FC20850);
  }

  return qword_27FC20840;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::FastmathFlagsInterface::Trait<Empty>]";
  v6 = 110;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, uint64_t a4, uint64_t a5)
{
  v53[12] = *MEMORY[0x277D85DE8];
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
  (*(*a3 + 48))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8));
  v10 = (*(*a3 + 16))(a3);
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

  v12 = *(a2 + 44);
  v13 = *(v9 + 16 * ((v12 >> 23) & 1) + 32);
  if ((v12 & 0x800000) != 0)
  {
    v14 = *(a2 + 72);
  }

  else
  {
    v14 = 0;
  }

  v53[0] = v14;
  v53[1] = v13;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, v53);
  v15 = (*(*a3 + 16))(a3);
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

  v17 = v9 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (*(*(v17 + 16) + 16) || *(v17 + 24))
  {
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

    v20 = *(a2 + 44);
    v21 = v9 + 16 * ((v20 >> 23) & 1);
    v22 = *(v21 + 32);
    if ((v20 & 0x800000) != 0)
    {
      v23 = *(a2 + 72);
      v24 = (v23 + 32 * v22);
    }

    else
    {
      v23 = 0;
      v24 = (32 * v22);
    }

    v25 = *(v21 + 16);
    v26 = *(v25 + 16);
    v50 = v24;
    v51 = v25;
    v52[0] = 0;
    v52[1] = v26;
    *&v47 = v23 + 32 * v22;
    *(&v47 + 1) = v25;
    v48 = 0;
    v49 = v26;
    mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v53, 0, v26, &v47);
  }

  v27 = (*(*a3 + 16))(a3);
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

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) == v30)
  {
    llvm::raw_ostream::write(v29, ":", 1uLL);
  }

  else
  {
    *v30 = 58;
    ++*(v29 + 4);
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

  v33 = *(a2 + 44);
  if ((v33 & 0x800000) != 0)
  {
    v34 = *(a2 + 72);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v9 + 16 * ((v33 >> 23) & 1) + 32);
  if (*(a2 + 36))
  {
    *&v47 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v50 = &v47;
    v51 = 1;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v36 = (*(*a3 + 16))(a3);
  v37 = v36;
  v38 = *(v36 + 4);
  if (v38 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 40);
    if (!v35)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *(v36 + 4) = v38 + 1;
    *v38 = 40;
    if (!v35)
    {
      goto LABEL_44;
    }
  }

  (*(*a3 + 32))(a3, *(*(v34 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v35 != 1)
  {
    v39 = v35 - 1;
    v40 = (v34 + 56);
    do
    {
      v41 = (*(*a3 + 16))(a3);
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

      v43 = *v40;
      v40 += 4;
      (*(*a3 + 32))(a3, *(v43 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v39;
    }

    while (v39);
  }

LABEL_44:
  v44 = *(v37 + 4);
  if (v44 >= *(v37 + 3))
  {
    llvm::raw_ostream::write(v37, 41);
  }

  else
  {
    *(v37 + 4) = v44 + 1;
    *v44 = 41;
  }

  mlir::AsmPrinter::printArrowTypeList<llvm::ArrayRef<mlir::Type> &>(a3, &v50);
  v50 = v52;
  v51 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "op_bundle_sizes", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "intrin", 6);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "op_bundle_tags", 14);
  v45 = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v45 && v45 == mlir::LLVM::FastmathFlagsAttr::get(*(***(a2 + 24) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v50, "fastmathFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v50, v51);
  if (v50 != v52)
  {
    free(v50);
  }
}

uint64_t mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_22;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4))
  {
    goto LABEL_22;
  }

  v5 = a1 + 64;
  v6 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v7 = v6[1];
  if (!v7)
  {
    v20 = "requires attribute 'intrin'";
LABEL_20:
    v47[0] = v20;
    v48 = 259;
    mlir::Operation::emitOpError(&v49, a1, v47);
    v21 = v51;
    goto LABEL_21;
  }

  v8 = v6[2];
  if (!v8)
  {
    v20 = "requires attribute 'op_bundle_sizes'";
    goto LABEL_20;
  }

  v9 = *v6;
  v10 = v6[3];
  v49 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v7, "intrin", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v49))
  {
    goto LABEL_22;
  }

  v49 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v49))
  {
    goto LABEL_22;
  }

  v49 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v8, "op_bundle_sizes", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v49))
  {
    goto LABEL_22;
  }

  v49 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v10, "op_bundle_tags", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v49))
  {
    goto LABEL_22;
  }

  v11 = *(a1 + 44);
  v12 = (v11 >> 23) & 1;
  v13 = *(v5 + 16 * v12 + 32);
  if ((v11 & 0x800000) != 0)
  {
    v14 = *(a1 + 72);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
LABEL_14:
      v15 = 0;
      v16 = v14 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v16 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
      {
        ++v15;
        v16 += 32;
        if (v13 == v15)
        {
          v17 = *(a1 + 44);
          v12 = (v17 >> 23) & 1;
          v18 = v17 & 0x800000;
          v19 = *(v5 + 16 * v12 + 32);
          goto LABEL_27;
        }
      }

      goto LABEL_22;
    }
  }

  v19 = 0;
  v18 = v11 & 0x800000;
LABEL_27:
  v24 = *(v5 + 16 * v12 + 36);
  if (v18)
  {
    v25 = *(a1 + 72);
  }

  else
  {
    v25 = 0;
  }

  v26 = v24 + v19 - v19;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "op_bundle_sizes", 0xFuLL, "op_bundle_operands", 18, v26))
  {
    goto LABEL_22;
  }

  if (v24)
  {
    v27 = v25 + 32 * v19 + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v27 + 8) & 0xFFFFFFFFFFFFFFF8, v13))
    {
      LODWORD(v13) = v13 + 1;
      v27 += 32;
      if (!--v26)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_22;
  }

LABEL_34:
  LODWORD(v45) = 0;
  v28 = *(a1 + 36);
  if (v28 <= 1)
  {
    if (v28 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_22;
    }

LABEL_40:
    v31 = (v5 + 16 * ((*(a1 + 44) >> 23) & 1));
    v32 = v31[1];
    if (*(v32 + 24) < 5uLL || ((v33 = *(v32 + 16), v34 = *v33, v35 = *(v33 + 4), v34 == 1836477548) ? (v36 = v35 == 46) : (v36 = 0), !v36))
    {
      v48 = 257;
      mlir::Operation::emitOpError(&v49, a1, v47);
      if (v49)
      {
        mlir::Diagnostic::operator<<<39ul>(&v50, "intrinsic name must start with 'llvm.'");
      }

LABEL_47:
      v37 = v51;
LABEL_48:
      v22 = v37 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
      return v22 & 1;
    }

    v38 = v31[3];
    v39 = *(v31[2] + 16);
    if (v38)
    {
      v40 = *(v38 + 16);
      if (v40)
      {
        v41 = *(v38 + 8);
        v42 = 8 * v40;
        while (*(**v41 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v41 += 8;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_56;
          }
        }

        v47[0] = "operand bundle tag must be a StringAttr";
        v48 = 259;
        mlir::Operation::emitError(&v49, a1, v47);
        goto LABEL_47;
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_56:
    v45 = v40;
    v46 = v39;
    if (v39 == v40)
    {
      v22 = 1;
      return v22 & 1;
    }

    v47[0] = "expected ";
    v48 = 259;
    mlir::Operation::emitError(&v49, a1, v47);
    v43 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v49, &v46);
    v44 = v43;
    if (*v43)
    {
      mlir::Diagnostic::operator<<<40ul>((v43 + 1), " operand bundle tags, but actually got ");
    }

    v37 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v44, &v45) + 200);
    goto LABEL_48;
  }

  v47[0] = "result group starting at #";
  v48 = 259;
  mlir::Operation::emitOpError(&v49, a1, v47);
  v29 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v49, &v45);
  v30 = v29;
  if (*v29)
  {
    mlir::Diagnostic::operator<<<37ul>((v29 + 1), " requires 0 or 1 element, but found ");
  }

  v46 = v28;
  v21 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v30, &v46) + 200);
LABEL_21:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
  if ((v21 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  v22 = 0;
  return v22 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 11)
  {
    if (a4 <= 14)
    {
      if (a4 == 12)
      {
        if (*a3 == 0x6C6C61436C696154 && *(a3 + 8) == 1684957515)
        {
          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
        }

        else
        {
          if (*a3 != 0x63735F7361696C61 || *(a3 + 8) != 1936027759)
          {
            goto LABEL_118;
          }

          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
        }
      }

      else if (a4 == 13)
      {
        if (*a3 == 0x675F737365636361 && *(a3 + 5) == 0x7370756F72675F73)
        {
          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
        }

        else
        {
          if (*a3 != 0x6874616D74736166 || *(a3 + 5) != 0x7367616C46687461)
          {
            goto LABEL_118;
          }

          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
        }
      }

      else if (*a3 == 0x775F68636E617262 && *(a3 + 6) == 0x737468676965775FLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      else if (*a3 == 0x655F79726F6D656DLL && *(a3 + 6) == 0x737463656666655FLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
      }

      else if (*a3 == 0x5F7361696C616F6ELL && *(a3 + 6) == 0x7365706F63735F73)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152);
      }

      else
      {
        if (*a3 != 0x6C646E75625F706FLL || *(a3 + 6) != 0x736761745F656C64)
        {
          goto LABEL_118;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168);
      }

      goto LABEL_128;
    }

    if (a4 == 15)
    {
      if (*a3 == 0x6C646E75625F706FLL && *(a3 + 7) == 0x73657A69735F656CLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160);
      }

      else
      {
        if (*a3 != 0x6C6C61635F726176 || *(a3 + 7) != 0x657079745F65656CLL)
        {
          goto LABEL_118;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 192);
      }

      goto LABEL_128;
    }

    if (a4 == 19)
    {
      if (*a3 != 0x53646E617265706FLL || *(a3 + 8) != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | v4;
      }

      if (*a3 != 0x5F646E617265706FLL || *(a3 + 8) != 0x5F746E656D676573 || *(a3 + 13) != 0x73657A69735F746ELL)
      {
        goto LABEL_118;
      }
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 208, 2);
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 > 8)
  {
    if (a4 == 9)
    {
      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      else if (*a3 == 0x6E69776E755F6F6ELL && *(a3 + 8) == 100)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144);
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_118;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176);
      }
    }

    else if (a4 == 10)
    {
      if (*a3 != 0x65677265766E6F63 || *(a3 + 8) != 29806)
      {
        goto LABEL_118;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
    }

    else
    {
      if (*a3 != 0x7465725F6C6C6977 || *(a3 + 3) != 0x6E72757465725F6CLL)
      {
        goto LABEL_118;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 200);
    }

    goto LABEL_128;
  }

  if (a4 == 4)
  {
    if (*a3 != 1633772148)
    {
LABEL_118:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 184);
LABEL_128:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 == 5)
  {
    if (*a3 != 1852785475 || *(a3 + 4) != 118)
    {
      goto LABEL_118;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    goto LABEL_128;
  }

  v5 = 0;
  if (a4 == 6)
  {
    if (*a3 != 1819042147 || *(a3 + 4) != 25957)
    {
      goto LABEL_118;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
    goto LABEL_128;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 11)
  {
    if (v5 > 14)
    {
      if (v5 == 15)
      {
        if (*v4 == 0x6C646E75625F706FLL && *(v4 + 7) == 0x73657A69735F656CLL)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v62 = *(a4 + 8), *(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v62[2] == 32)
            {
              v63 = a4;
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160) = v63;
        }

        else
        {
          v38 = *v4;
          v39 = *(v4 + 7);
          if (v38 == 0x6C6C61635F726176 && v39 == 0x657079745F65656CLL)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
              {
                v41 = a4;
              }

              else
              {
                v41 = 0;
              }
            }

            else
            {
              v41 = 0;
            }

            *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 192) = v41;
          }
        }
      }

      else
      {
        if (v5 == 19)
        {
          v21 = *v4 ^ 0x53646E617265706FLL;
          v22 = v4[1] ^ 0x6953746E656D6765;
          v23 = *(v4 + 11);
          v24 = 0x73657A6953746E65;
        }

        else
        {
          if (v5 != 21)
          {
            return result;
          }

          v21 = *v4 ^ 0x5F646E617265706FLL;
          v22 = v4[1] ^ 0x5F746E656D676573;
          v23 = *(v4 + 13);
          v24 = 0x73657A69735F746ELL;
        }

        if (v21 | v22 | v23 ^ v24)
        {
          v55 = 1;
        }

        else
        {
          v55 = a4 == 0;
        }

        if (!v55 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
        {
          v56 = *(a4 + 8);
          if (*(*v56 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v56[2] == 32 && *(a4 + 16) == 2)
          {
            v57 = *(a4 + 32);
            if (v57 >= 4)
            {
              return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 208), *(a4 + 24), v57 & 0xFFFFFFFFFFFFFFFCLL);
            }
          }
        }
      }
    }

    else if (v5 == 12)
    {
      if (*v4 == 0x6C6C61436C696154 && *(v4 + 2) == 1684957515)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
          {
            v60 = a4;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v60;
      }

      else
      {
        v27 = *v4;
        v28 = *(v4 + 2);
        if (v27 == 0x63735F7361696C61 && v28 == 1936027759)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v30 = a4;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v30;
        }
      }
    }

    else if (v5 == 13)
    {
      if (*v4 == 0x675F737365636361 && *(v4 + 5) == 0x7370756F72675F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v64 = a4;
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v64;
      }

      else
      {
        v47 = *v4;
        v48 = *(v4 + 5);
        if (v47 == 0x6874616D74736166 && v48 == 0x7367616C46687461)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
            {
              v50 = a4;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128) = v50;
        }
      }
    }

    else if (*v4 == 0x775F68636E617262 && *(v4 + 6) == 0x737468676965775FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v58 = *(a4 + 8), *(*v58 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v58[2] == 32)
        {
          v59 = a4;
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        v59 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104) = v59;
    }

    else if (*v4 == 0x655F79726F6D656DLL && *(v4 + 6) == 0x737463656666655FLL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
        {
          v65 = a4;
        }

        else
        {
          v65 = 0;
        }
      }

      else
      {
        v65 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136) = v65;
    }

    else if (*v4 == 0x5F7361696C616F6ELL && *(v4 + 6) == 0x7365706F63735F73)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v67 = a4;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152) = v67;
    }

    else
    {
      v13 = *v4;
      v14 = *(v4 + 6);
      if (v13 == 0x6C646E75625F706FLL && v14 == 0x736761745F656C64)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168) = v16;
      }
    }
  }

  else if (v5 > 8)
  {
    if (v5 == 9)
    {
      if (*v4 == 0x727474615F677261 && *(v4 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v61 = a4;
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          v61 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96) = v61;
      }

      else if (*v4 == 0x6E69776E755F6F6ELL && *(v4 + 8) == 100)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v66 = a4;
          }

          else
          {
            v66 = 0;
          }
        }

        else
        {
          v66 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144) = v66;
      }

      else
      {
        v33 = *v4;
        v34 = *(v4 + 8);
        if (v33 == 0x727474615F736572 && v34 == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v36 = a4;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176) = v36;
        }
      }
    }

    else if (v5 == 10)
    {
      v51 = *v4;
      v52 = *(v4 + 4);
      if (v51 == 0x65677265766E6F63 && v52 == 29806)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v54 = a4;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120) = v54;
      }
    }

    else
    {
      v17 = *v4;
      v18 = *(v4 + 3);
      if (v17 == 0x7465725F6C6C6977 && v18 == 0x6E72757465725F6CLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 200) = v20;
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        if (*v4 == 1633772148)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v25 = a4;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 184) = v25;
        }

        break;
      case 5:
        v42 = *v4;
        v43 = *(v4 + 4);
        if (v42 == 1852785475 && v43 == 118)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
            {
              v45 = a4;
            }

            else
            {
              v45 = 0;
            }
          }

          else
          {
            v45 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v45;
        }

        break;
      case 6:
        v6 = *v4;
        v7 = *(v4 + 2);
        if (v6 == 1819042147 && v7 == 25957)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            if (*(a4 + 24))
            {
              v9 = 0;
            }

            else
            {
              v9 = a4;
            }
          }

          else
          {
            v9 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112) = v9;
        }

        break;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v68 = 261;
    v66 = "CConv";
    v67 = 5;
    v10 = mlir::StringAttr::get(v9, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v68 = 261;
    v66 = "TailCallKind";
    v67 = 12;
    v13 = mlir::StringAttr::get(v12, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v68 = 261;
    v66 = "access_groups";
    v67 = 13;
    v16 = mlir::StringAttr::get(v15, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v68 = 261;
    v66 = "alias_scopes";
    v67 = 12;
    v19 = mlir::StringAttr::get(v18, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = v7[4];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v68 = 261;
    v66 = "arg_attrs";
    v67 = 9;
    v22 = mlir::StringAttr::get(v21, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = v7[5];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v68 = 261;
    v66 = "branch_weights";
    v67 = 14;
    v25 = mlir::StringAttr::get(v24, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = v7[6];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v68 = 261;
    v66 = "callee";
    v67 = 6;
    v28 = mlir::StringAttr::get(v27, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }

  v29 = v7[7];
  if (v29)
  {
    v30 = *(**v29 + 32);
    v68 = 261;
    v66 = "convergent";
    v67 = 10;
    v31 = mlir::StringAttr::get(v30, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v31, v29);
  }

  v32 = v7[8];
  if (v32)
  {
    v33 = *(**v32 + 32);
    v68 = 261;
    v66 = "fastmathFlags";
    v67 = 13;
    v34 = mlir::StringAttr::get(v33, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v34, v32);
  }

  v35 = v7[9];
  if (v35)
  {
    v36 = *(**v35 + 32);
    v68 = 261;
    v66 = "memory_effects";
    v67 = 14;
    v37 = mlir::StringAttr::get(v36, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v37, v35);
  }

  v38 = v7[10];
  if (v38)
  {
    v39 = *(**v38 + 32);
    v68 = 261;
    v66 = "no_unwind";
    v67 = 9;
    v40 = mlir::StringAttr::get(v39, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v40, v38);
  }

  v41 = v7[11];
  if (v41)
  {
    v42 = *(**v41 + 32);
    v68 = 261;
    v66 = "noalias_scopes";
    v67 = 14;
    v43 = mlir::StringAttr::get(v42, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v43, v41);
  }

  v44 = v7[12];
  if (v44)
  {
    v45 = *(**v44 + 32);
    v68 = 261;
    v66 = "op_bundle_sizes";
    v67 = 15;
    v46 = mlir::StringAttr::get(v45, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v46, v44);
  }

  v47 = v7[13];
  if (v47)
  {
    v48 = *(**v47 + 32);
    v68 = 261;
    v66 = "op_bundle_tags";
    v67 = 14;
    v49 = mlir::StringAttr::get(v48, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v49, v47);
  }

  v50 = v7[14];
  if (v50)
  {
    v51 = *(**v50 + 32);
    v68 = 261;
    v66 = "res_attrs";
    v67 = 9;
    v52 = mlir::StringAttr::get(v51, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v52, v50);
  }

  v53 = v7[15];
  if (v53)
  {
    v54 = *(**v53 + 32);
    v68 = 261;
    v66 = "tbaa";
    v67 = 4;
    v55 = mlir::StringAttr::get(v54, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v55, v53);
  }

  v56 = v7[16];
  if (v56)
  {
    v57 = *(**v56 + 32);
    v68 = 261;
    v66 = "var_callee_type";
    v67 = 15;
    v58 = mlir::StringAttr::get(v57, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v58, v56);
  }

  v59 = v7[17];
  if (v59)
  {
    v60 = *(**v59 + 32);
    v68 = 261;
    v66 = "will_return";
    v67 = 11;
    v61 = mlir::StringAttr::get(v60, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v61, v59);
  }

  v62 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 18), 2);
  v63 = *(**v62 + 32);
  v68 = 261;
  v66 = "operandSegmentSizes";
  v67 = 19;
  v65 = mlir::StringAttr::get(v63, &v66, v64);
  mlir::NamedAttrList::push_back(a3, v65, v62);
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(v14, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v20, "alias_scopes", 0xC, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v23, "arg_attrs", 9, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v26, "branch_weights", 0xE, a4, a5))
            {
              v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
              if ((v28 & 1) == 0 || (v29 = v27[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v29, "callee", 6, a4, a5))
              {
                v30 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 56));
                if ((v31 & 1) == 0 || (v32 = v30[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v32, "convergent", 0xA, a4, a5))
                {
                  v33 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 64));
                  if ((v34 & 1) == 0 || (v35 = v33[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v35, a4, a5))
                  {
                    v36 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 72));
                    if ((v37 & 1) == 0 || (v38 = v36[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v38, a4, a5))
                    {
                      v39 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 80));
                      if ((v40 & 1) == 0 || (v41 = v39[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v41, "no_unwind", 9, a4, a5))
                      {
                        v42 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 88));
                        if ((v43 & 1) == 0 || (v44 = v42[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v44, "noalias_scopes", 0xE, a4, a5))
                        {
                          v45 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 96));
                          if ((v46 & 1) == 0 || (v47 = v45[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v47, "op_bundle_sizes", 0xF, a4, a5))
                          {
                            v48 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 104));
                            if ((v49 & 1) == 0 || (v50 = v48[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v50, "op_bundle_tags", 0xE, a4, a5))
                            {
                              v51 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 112));
                              if ((v52 & 1) == 0 || (v53 = v51[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v53, "res_attrs", 9, a4, a5))
                              {
                                v54 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 120));
                                if ((v55 & 1) == 0 || (v56 = v54[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v56, a4, a5))
                                {
                                  v57 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 128));
                                  if ((v58 & 1) == 0 || (v59 = v57[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v59, "var_callee_type", 0xF, a4, a5))
                                  {
                                    v60 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 136));
                                    if ((v61 & 1) == 0)
                                    {
                                      return 1;
                                    }

                                    v62 = v60[1];
                                    if (!v62 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v62, "will_return", 0xB, a4, a5))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v4;
    v5 = *(a4 + 32);
    v6 = *(a4 + 48);
    v7 = *(a4 + 80);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 80) = v7;
    *(a3 + 32) = v5;
    *(a3 + 48) = v6;
    v8 = *(a4 + 96);
    v9 = *(a4 + 112);
    v10 = *(a4 + 128);
    *(a3 + 144) = *(a4 + 144);
    *(a3 + 112) = v9;
    *(a3 + 128) = v10;
    *(a3 + 96) = v8;
  }

  else
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return mlir::LLVM::CallOp::populateDefaultProperties(a2, a3);
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v81 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v77, a6, a2, a3);
    if (v77)
    {
      mlir::Diagnostic::operator<<<42ul>(v78, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "CConv", 5uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (v77)
        {
          goto LABEL_31;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
        return 0;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "TailCallKind", 0xCuLL);
  if (v15)
  {
    v13 = *(v14 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_30;
      }

      a3[1] = v13;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "access_groups", 0xDuLL);
  if (v18)
  {
    v13 = *(v17 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

LABEL_31:
        if (v77)
        {
          LODWORD(v76[0]) = 0;
          v76[1] = v13;
          v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v79, v76, 1);
          v22 = v79 + 24 * v80;
          v23 = *v21;
          *(v22 + 16) = *(v21 + 16);
          *v22 = v23;
          ++v80;
        }

        goto LABEL_4;
      }

      a3[2] = v13;
    }
  }

  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alias_scopes", 0xCuLL);
  if (v20)
  {
    v13 = *(v19 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

LABEL_30:
        mlir::Diagnostic::operator<<<58ul>(v78, v16);
        goto LABEL_31;
      }

      a3[3] = v13;
    }
  }

  v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v25)
  {
    v26 = *(v24 + 8);
    v76[0] = v26;
    if (v26)
    {
      if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      a3[4] = v26;
    }
  }

  v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "branch_weights", 0xEuLL);
  if (v29)
  {
    v30 = *(v28 + 8);
    v76[0] = v30;
    if (v30)
    {
      if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v31 = v30[1], *(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v31[2] != 32)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_55;
      }

      a3[5] = v30;
    }
  }

  v32 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "callee", 6uLL);
  if (v33)
  {
    v34 = *(v32 + 8);
    v76[0] = v34;
    if (v34)
    {
      if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v34[3])
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

LABEL_56:
        if (v77)
        {
          mlir::Diagnostic::operator<<<mlir::Attribute &>(v78, v76);
        }

        goto LABEL_4;
      }

      a3[6] = v34;
    }
  }

  v36 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "convergent", 0xAuLL);
  if (v37)
  {
    v38 = *(v36 + 8);
    v76[0] = v38;
    if (v38)
    {
      if (*(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[7] = v38;
    }
  }

  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "fastmathFlags", 0xDuLL);
  if (v40)
  {
    v41 = *(v39 + 8);
    v76[0] = v41;
    if (v41)
    {
      if (*(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[8] = v41;
    }
  }

  v42 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "memory_effects", 0xEuLL);
  if (v43)
  {
    v44 = *(v42 + 8);
    v76[0] = v44;
    if (v44)
    {
      if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_55;
      }

      a3[9] = v44;
    }
  }

  v45 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_unwind", 9uLL);
  if (v46)
  {
    v47 = *(v45 + 8);
    v76[0] = v47;
    if (v47)
    {
      if (*(*v47 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      a3[10] = v47;
    }
  }

  v48 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "noalias_scopes", 0xEuLL);
  if (v49)
  {
    v50 = *(v48 + 8);
    v76[0] = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_55;
      }

      a3[11] = v50;
    }
  }

  v51 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_sizes", 0xFuLL);
  if (v52)
  {
    v53 = *(v51 + 8);
    v76[0] = v53;
    if (v53)
    {
      if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v54 = v53[1], *(*v54 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v54[2] != 32)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_102;
      }

      a3[12] = v53;
    }
  }

  v55 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_tags", 0xEuLL);
  if (v56)
  {
    v57 = *(v55 + 8);
    v76[0] = v57;
    if (v57)
    {
      if (*(*v57 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

LABEL_55:
        mlir::Diagnostic::operator<<<60ul>(v78, v35);
        goto LABEL_56;
      }

      a3[13] = v57;
    }
  }

  v59 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
  if (v60)
  {
    v61 = *(v59 + 8);
    v76[0] = v61;
    if (v61)
    {
      if (*(*v61 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

LABEL_39:
        mlir::Diagnostic::operator<<<55ul>(v78, v27);
        goto LABEL_56;
      }

      a3[14] = v61;
    }
  }

  v62 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tbaa", 4uLL);
  if (v63)
  {
    v64 = *(v62 + 8);
    v76[0] = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[15] = v64;
    }
  }

  v65 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "var_callee_type", 0xFuLL);
  if (v66)
  {
    v67 = *(v65 + 8);
    v76[0] = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

LABEL_102:
        mlir::Diagnostic::operator<<<61ul>(v78, v58);
        goto LABEL_56;
      }

      a3[16] = v67;
    }
  }

  v68 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "will_return", 0xBuLL);
  if (v69)
  {
    v70 = *(v68 + 8);
    v76[0] = v70;
    if (v70)
    {
      if (*(*v70 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        (a5)(&v77, a6);
        if (!v77)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[17] = v70;
    }
  }

  v71 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v72 & 1) == 0 || (v73 = *(v71 + 8)) == 0)
  {
    v74 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL);
    if ((v75 & 1) == 0)
    {
      return 1;
    }

    v73 = *(v74 + 8);
    if (!v73)
    {
      return 1;
    }
  }

  return (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 18, 2, v73, a5, a6, "DenseI32ArrayAttr", 0x11) & 1) != 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v72[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v70 = v72;
  v71 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v69 = 261;
    v67 = "CConv";
    v68 = 5;
    v9 = mlir::StringAttr::get(v8, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v69 = 261;
    v67 = "TailCallKind";
    v68 = 12;
    v12 = mlir::StringAttr::get(v11, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v69 = 261;
    v67 = "access_groups";
    v68 = 13;
    v15 = mlir::StringAttr::get(v14, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v69 = 261;
    v67 = "alias_scopes";
    v68 = 12;
    v18 = mlir::StringAttr::get(v17, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v69 = 261;
    v67 = "arg_attrs";
    v68 = 9;
    v21 = mlir::StringAttr::get(v20, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v69 = 261;
    v67 = "branch_weights";
    v68 = 14;
    v24 = mlir::StringAttr::get(v23, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v69 = 261;
    v67 = "callee";
    v68 = 6;
    v27 = mlir::StringAttr::get(v26, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v69 = 261;
    v67 = "convergent";
    v68 = 10;
    v30 = mlir::StringAttr::get(v29, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v69 = 261;
    v67 = "fastmathFlags";
    v68 = 13;
    v33 = mlir::StringAttr::get(v32, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v69 = 261;
    v67 = "memory_effects";
    v68 = 14;
    v36 = mlir::StringAttr::get(v35, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v69 = 261;
    v67 = "no_unwind";
    v68 = 9;
    v39 = mlir::StringAttr::get(v38, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v69 = 261;
    v67 = "noalias_scopes";
    v68 = 14;
    v42 = mlir::StringAttr::get(v41, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v69 = 261;
    v67 = "op_bundle_sizes";
    v68 = 15;
    v45 = mlir::StringAttr::get(v44, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v69 = 261;
    v67 = "op_bundle_tags";
    v68 = 14;
    v48 = mlir::StringAttr::get(v47, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v69 = 261;
    v67 = "res_attrs";
    v68 = 9;
    v51 = mlir::StringAttr::get(v50, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v51, v49);
  }

  v52 = v6[15];
  if (v52)
  {
    v53 = *(**v52 + 32);
    v69 = 261;
    v67 = "tbaa";
    v68 = 4;
    v54 = mlir::StringAttr::get(v53, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v54, v52);
  }

  v55 = v6[16];
  if (v55)
  {
    v56 = *(**v55 + 32);
    v69 = 261;
    v67 = "var_callee_type";
    v68 = 15;
    v57 = mlir::StringAttr::get(v56, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v57, v55);
  }

  v58 = v6[17];
  if (v58)
  {
    v59 = *(**v58 + 32);
    v69 = 261;
    v67 = "will_return";
    v68 = 11;
    v60 = mlir::StringAttr::get(v59, &v67, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v60, v58);
  }

  v61 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 18), 2);
  v62 = *(**v61 + 32);
  v69 = 261;
  v67 = "operandSegmentSizes";
  v68 = 19;
  v64 = mlir::StringAttr::get(v62, &v67, v63);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v70, v64, v61);
  if (v71)
  {
    v65 = mlir::DictionaryAttr::get(v3, v70, v71);
  }

  else
  {
    v65 = 0;
  }

  if (v70 != v72)
  {
    free(v70);
  }

  return v65;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v77[15] = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(*(a2 + 8));
  v5 = 0x9DDFEA08EB382D69 * ((8 * *(a2 + 8) - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v75 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v74 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = (8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13);
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
  v73 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  v17 = HIDWORD(v14);
  v18 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v72 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = (8 * v19 - 0xAE502812AA7333) ^ HIDWORD(v19);
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v71 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  v23 = HIDWORD(v20);
  v24 = 0x9DDFEA08EB382D69 * ((8 * v20 - 0xAE502812AA7333) ^ HIDWORD(v20));
  v70 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
  v25 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = (8 * v25 - 0xAE502812AA7333) ^ HIDWORD(v25);
  v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ ((0x9DDFEA08EB382D69 * v27) >> 47) ^ (0x9DDFEA08EB382D69 * v27));
  v69 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
  v29 = HIDWORD(v26);
  v30 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
  v68 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) ^ ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 47));
  v31 = *(a2 + 80);
  v32 = *(a2 + 88);
  v33 = (8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31);
  v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ ((0x9DDFEA08EB382D69 * v33) >> 47) ^ (0x9DDFEA08EB382D69 * v33));
  v67 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
  v35 = HIDWORD(v32);
  v36 = 0x9DDFEA08EB382D69 * ((8 * v32 - 0xAE502812AA7333) ^ HIDWORD(v32));
  v66 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) ^ ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) >> 47));
  v37 = *(a2 + 96);
  v38 = *(a2 + 104);
  v39 = (8 * v37 - 0xAE502812AA7333) ^ HIDWORD(v37);
  v40 = 0x9DDFEA08EB382D69 * (HIDWORD(v37) ^ ((0x9DDFEA08EB382D69 * v39) >> 47) ^ (0x9DDFEA08EB382D69 * v39));
  v65 = 0x9DDFEA08EB382D69 * (v40 ^ (v40 >> 47));
  v41 = HIDWORD(v38);
  v42 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
  v64 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) ^ ((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) >> 47));
  v43 = *(a2 + 112);
  v44 = *(a2 + 120);
  v45 = (8 * v43 - 0xAE502812AA7333) ^ HIDWORD(v43);
  v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v43) ^ ((0x9DDFEA08EB382D69 * v45) >> 47) ^ (0x9DDFEA08EB382D69 * v45));
  v63 = 0x9DDFEA08EB382D69 * (v46 ^ (v46 >> 47));
  v47 = HIDWORD(v44);
  v48 = 0x9DDFEA08EB382D69 * ((8 * v44 - 0xAE502812AA7333) ^ HIDWORD(v44));
  v62 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v47 ^ (v48 >> 47) ^ v48)) ^ ((0x9DDFEA08EB382D69 * (v47 ^ (v48 >> 47) ^ v48)) >> 47));
  v49 = *(a2 + 128);
  v50 = *(a2 + 136);
  v51 = (8 * v49 - 0xAE502812AA7333) ^ HIDWORD(v49);
  v52 = 0x9DDFEA08EB382D69 * (HIDWORD(v49) ^ ((0x9DDFEA08EB382D69 * v51) >> 47) ^ (0x9DDFEA08EB382D69 * v51));
  v53 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
  v54 = 0x9DDFEA08EB382D69 * ((8 * v50 - 0xAE502812AA7333) ^ HIDWORD(v50));
  v55 = 0x9DDFEA08EB382D69 * (HIDWORD(v50) ^ (v54 >> 47) ^ v54);
  v60 = 0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47));
  v61 = v53;
  v56 = *(a2 + 148) ^ 0xFF51AFD7ED558CCDLL;
  v57 = 0x9DDFEA08EB382D69 * (v56 ^ (8 * *(a2 + 144) + 8));
  memset(v77, 0, 112);
  v77[14] = 0xFF51AFD7ED558CCDLL;
  v76 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v59 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v56 ^ (v57 >> 47) ^ v57)) ^ ((0x9DDFEA08EB382D69 * (v56 ^ (v57 >> 47) ^ v57)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v76, 0, v77, &v77[7], 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47)), &v75, &v74, &v73, &v72, &v71, &v70, &v69, &v68, &v67, &v66, &v65, &v64, &v63, &v62, &v61, &v60, &v59);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::readProperties(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(a1, v3))
  {
    return 0;
  }

  v15 = 0;
  if (((*(*a1 + 56))(a1, &v15) & 1) == 0)
  {
    return 0;
  }

  v4 = v15;
  if (v15)
  {
    v5 = *(*v15 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
    {
      v4 = 0;
    }

    v3[1] = v4;
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
    {
      v14 = 257;
      (*(*a1 + 16))(&v19, a1, v13);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC20D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20D38))
      {
        qword_27FC20D28 = llvm::detail::getTypeNameImpl<mlir::LLVM::TailCallKindAttr>();
        unk_27FC20D30 = v12;
        __cxa_guard_release(&qword_27FC20D38);
      }

      if (v19)
      {
        v18 = 261;
        v16 = qword_27FC20D28;
        v17 = unk_27FC20D30;
        mlir::Diagnostic::operator<<(v20, &v16);
        if (v19)
        {
          mlir::Diagnostic::operator<<<12ul>(v20, ", but got: ");
          if (v19)
          {
            LODWORD(v16) = 0;
            v17 = v15;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v16, 1);
            v7 = v21 + 24 * v22;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v22;
          }
        }
      }

      v9 = v23;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
      if (v9)
      {
        return 0;
      }
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 4) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 5) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 6) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 7) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FastmathFlagsAttr>(a1, v3 + 8) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::MemoryEffectsAttr>(a1, v3 + 9) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 10) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 11) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 12) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 13))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v13[0] = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v13))
    {
      return 0;
    }

    if (*(v13[0] + 16) >= 3)
    {
      v16 = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(&v19, a1, &v16);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
      return 0;
    }

    v10 = *(v13[0] + 32);
    if (v10 >= 4)
    {
      memmove(v3 + 18, *(v13[0] + 24), v10 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 14) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 15) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 16) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 17))
  {
    v19 = a1;
    v20[0] = v3 + 18;
    return mlir::LLVM::CallOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(&v19) & 1;
  }

  return 0;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  (*(*a3 + 24))(a3, *(v6 + 16));
  (*(*a3 + 24))(a3, *(v6 + 24));
  (*(*a3 + 24))(a3, *(v6 + 32));
  (*(*a3 + 24))(a3, *(v6 + 40));
  (*(*a3 + 24))(a3, *(v6 + 48));
  (*(*a3 + 24))(a3, *(v6 + 56));
  (*(*a3 + 24))(a3, *(v6 + 64));
  (*(*a3 + 24))(a3, *(v6 + 72));
  (*(*a3 + 24))(a3, *(v6 + 80));
  (*(*a3 + 24))(a3, *(v6 + 88));
  (*(*a3 + 16))(a3, *(v6 + 96));
  (*(*a3 + 24))(a3, *(v6 + 104));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 144, 2);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 24))(a3, *(v6 + 112));
  (*(*a3 + 24))(a3, *(v6 + 120));
  (*(*a3 + 24))(a3, *(v6 + 128));
  (*(*a3 + 24))(a3, *(v6 + 136));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 144), 2);
  }

  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
  if (v2)
  {
    return v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if (*(v3 + 112))
  {
    *(v3 + 112) = v4;
  }

  else
  {
    v5 = *(a2 + 72);
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      *v6 = *v5;
      if (v7)
      {
        *(v7 + 8) = v5[1];
      }
    }

    v5[3] = v4;
    v8 = *v4;
    *v5 = *v4;
    v5[1] = v4;
    if (v8)
    {
      *(v8 + 8) = v5;
    }

    *v4 = v5;
  }
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (*(v3 + 112) == 0);
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v3 = *(v2 + 112) == 0;
  LODWORD(v2) = *(v2 + 208);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::verifySymbolUses(int a1, mlir::SymbolTable *this, mlir::SymbolTableCollection *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = this + 64;
  v6 = *(this + 11);
  v7 = this + 16 * ((v6 >> 23) & 1) + 64;
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = *(v8 + 8);
  if (*(v9 + 32) != 1)
  {
    v18 = "expected var_callee_type to be a variadic function type";
    goto LABEL_9;
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v7 + 36);
  v13 = *(v7 + 6) == 0;
  if ((v6 & 0x800000) == 0)
  {
    if (v12 - v13 < v10)
    {
      goto LABEL_5;
    }

    v20 = 0;
    goto LABEL_14;
  }

  if (v12 - v13 >= v10)
  {
    v20 = *(this + 9);
LABEL_14:
    if (v10)
    {
      v21 = v12 == v13;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v26 = ~v13 + v12;
      v27 = v20 + 32 * v13 + 24;
      v28 = 8 * v10 - 8;
      while (1)
      {
        v29 = *v27;
        if (*v11 != (*(*v27 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v31 = v26-- != 0;
        if (v28)
        {
          ++v11;
          v27 += 32;
          v28 -= 8;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v86 = 257;
      mlir::Operation::emitOpError(&v87, this, &v84);
      if (!v87)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<42ul>(v88, "var_callee_type parameter type mismatch: ");
      if (!v87)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<mlir::Type const&>(v88, v11);
      if (!v87)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<5ul>(v88, " != ");
      v81 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v87)
      {
        goto LABEL_10;
      }

      goto LABEL_75;
    }

LABEL_19:
    if (*(this + 9))
    {
      if ((*(this - 1) & 0xFFFFFFFFFFFFFFF8) == *(v9 + 8))
      {
        goto LABEL_34;
      }

      v84 = "var_callee_type return type mismatch: ";
      v86 = 259;
      mlir::Operation::emitOpError(&v87, this, &v84);
      if (!v87)
      {
        goto LABEL_10;
      }

      v22 = *(v9 + 8);
      LODWORD(v81) = 4;
      v82 = v22;
      v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v89, &v81, 1);
      v24 = v89 + 24 * v90;
      v25 = *v23;
      *(v24 + 16) = *(v23 + 16);
      *v24 = v25;
      ++v90;
      if (!v87)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<5ul>(v88, " != ");
      v81 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
      if (!v87)
      {
        goto LABEL_10;
      }

LABEL_75:
      mlir::Diagnostic::operator<<<mlir::Type>(v88, &v81);
      goto LABEL_10;
    }

    v32 = *(**(v9 + 8) + 136);
    if (v32 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
    {
      goto LABEL_34;
    }

    v18 = "expected var_callee_type to return void";
LABEL_9:
    v84 = v18;
    v86 = 259;
    mlir::Operation::emitOpError(&v87, this, &v84);
LABEL_10:
    v17 = v91;
    goto LABEL_11;
  }

LABEL_5:
  v84 = "expected var_callee_type to have at most ";
  v86 = 259;
  mlir::Operation::emitOpError(&v87, this, &v84);
  v14 = &v5[16 * ((*(this + 11) >> 23) & 1)];
  v81 = ((__PAIR128__(*(v14 + 36), *(v14 + 6)) - 1) >> 64);
  v15 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v87, &v81);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<12ul>((v15 + 1), " parameters");
  }

  v17 = *(v16 + 200);
LABEL_11:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
  if (v17)
  {
    return 0;
  }

LABEL_34:
  v33 = *(this + 11);
  v34 = *&v5[16 * ((v33 >> 23) & 1) + 48];
  if (!v34)
  {
    if ((v33 & 0x800000) == 0 || !*(this + 17))
    {
      v86 = 259;
      mlir::Operation::emitOpError(&v87, this, &v84);
      goto LABEL_68;
    }

    v43 = *(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v43)
    {
      v44 = *(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
    }

    else
    {
      v44 = 0;
    }

    if (!v44)
    {
      v84 = "indirect call expects a pointer as callee: ";
      v86 = 259;
      mlir::Operation::emitOpError(&v87, this, &v84);
      if (v87)
      {
        v45 = *(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v81) = 4;
        v82 = v45;
LABEL_67:
        v51 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v89, &v81, 1);
        v52 = v89 + 24 * v90;
        v53 = *v51;
        *(v52 + 16) = *(v51 + 16);
        *v52 = v53;
        ++v90;
      }

LABEL_68:
      v54 = v91;
LABEL_69:
      v49 = v54 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
      return v49 & 1;
    }

    goto LABEL_130;
  }

  v35 = *(v34 + 8);
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(this, this);
  if (!NearestSymbolTable || (v37 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v35)) == 0)
  {
    v83 = 257;
    mlir::Operation::emitOpError(&v87, this, &v81);
    if (v87)
    {
      mlir::Diagnostic::operator<<<2ul>(v88, "'");
      if (v87)
      {
        v41 = *(*(v34 + 8) + 16);
        v42 = *(*(v34 + 8) + 24);
        v86 = 261;
        v84 = v41;
        v85 = v42;
        mlir::Diagnostic::operator<<(v88, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<51ul>(v88, "' does not reference a symbol in the current scope");
        }
      }
    }

    goto LABEL_68;
  }

  v38 = v37;
  if (*(*(v37 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id)
  {
    v83 = 257;
    mlir::Operation::emitOpError(&v87, this, &v81);
    if (v87)
    {
      mlir::Diagnostic::operator<<<2ul>(v88, "'");
      if (v87)
      {
        v39 = *(*(v34 + 8) + 16);
        v40 = *(*(v34 + 8) + 24);
        v86 = 261;
        v84 = v39;
        v85 = v40;
        mlir::Diagnostic::operator<<(v88, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<43ul>(v88, "' does not reference a valid LLVM function");
        }
      }
    }

    goto LABEL_68;
  }

  v46 = (((v37 + 64 + 16 * ((*(v37 + 44) >> 23) & 1) + ((*(v37 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v37 + 40));
  if (*v46 == v46)
  {
    goto LABEL_64;
  }

  v47 = mlir::Operation::getParentOfType<mlir::FunctionOpInterface>(this);
  if (!v47)
  {
    goto LABEL_64;
  }

  v81 = *(v47 + 24);
  v87 = 0;
  v84 = &v87;
  mlir::LocationAttr::walk(&v81, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr> mlir::LocationAttr::findInstanceOf<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>>(void)::{lambda(mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>)#1}>, &v84);
  if (!v87)
  {
    goto LABEL_64;
  }

  v81 = *(v38 + 24);
  v87 = 0;
  v84 = &v87;
  mlir::LocationAttr::walk(&v81, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr> mlir::LocationAttr::findInstanceOf<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>>(void)::{lambda(mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>)#1}>, &v84);
  if (!v87 || *(**(this + 3) + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    goto LABEL_64;
  }

  v86 = 257;
  mlir::Operation::emitError(&v87, this, &v84);
  if (v87)
  {
    mlir::Diagnostic::operator<<<94ul>(v88, "inlinable function call in a function with a DISubprogram location must have a debug location");
  }

  v48 = v91;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
  if ((v48 & 1) == 0)
  {
LABEL_64:
    v50 = *(*(v38 + 64 + 16 * ((*(v38 + 44) >> 23) & 1) + 168) + 8);
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
    {
      v84 = "callee does not have a functional type: ";
      v86 = 259;
      mlir::Operation::emitOpError(&v87, this, &v84);
      if (v87)
      {
        LODWORD(v81) = 4;
        v82 = v50;
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if (*(v50 + 32) == 1)
    {
      v55 = &v5[16 * ((*(this + 11) >> 23) & 1)];
      if (!*(v55 + 16))
      {
        v86 = 257;
        mlir::Operation::emitOpError(&v87, this, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<50ul>(v88, "missing var_callee_type attribute for vararg call");
        }

        goto LABEL_68;
      }

      v56 = *(v50 + 24);
      v57 = *(v55 + 36);
    }

    else
    {
      v56 = *(v50 + 24);
      v57 = *&v5[16 * ((*(this + 11) >> 23) & 1) + 144];
      if (v57 != v56)
      {
        v86 = 257;
        mlir::Operation::emitOpError(&v87, this, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<31ul>(v88, "incorrect number of operands (");
        }

        v81 = *&v5[16 * ((*(this + 11) >> 23) & 1) + 144];
        v63 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v87, &v81);
        v59 = v63;
        if (*v63)
        {
          mlir::Diagnostic::operator<<<26ul>((v63 + 1), ") for callee (expecting: ");
        }

        goto LABEL_93;
      }

      v56 = v56;
    }

    if (v56 > v57)
    {
      v86 = 257;
      mlir::Operation::emitOpError(&v87, this, &v84);
      if (v87)
      {
        mlir::Diagnostic::operator<<<31ul>(v88, "incorrect number of operands (");
      }

      v81 = *&v5[16 * ((*(this + 11) >> 23) & 1) + 144];
      v58 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v87, &v81);
      v59 = v58;
      if (*v58)
      {
        mlir::Diagnostic::operator<<<43ul>((v58 + 1), ") for varargs callee (expecting at least: ");
      }

LABEL_93:
      LODWORD(v79) = *(v50 + 24);
      v64 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v59, &v79);
      v65 = v64;
      if (*v64)
      {
        mlir::Diagnostic::operator<<<2ul>((v64 + 1), ")");
      }

      v54 = *(v65 + 200);
      goto LABEL_69;
    }

    if (v56)
    {
      v60 = *(this + 9);
      v61 = *(v50 + 16);
      if (*v61 != (*(*(v60 + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        LODWORD(v62) = 0;
LABEL_101:
        v80 = v62;
        v86 = 257;
        mlir::Operation::emitOpError(&v87, this, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<35ul>(v88, "operand type mismatch for operand ");
        }

        v71 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v87, &v80);
        v72 = v71;
        v73 = *v71;
        if (*v71)
        {
          mlir::Diagnostic::operator<<<3ul>((v71 + 1), ": ");
          v73 = *v72;
          v74 = *v72 == 0;
        }

        else
        {
          v74 = 1;
        }

        v77 = v80;
        v81 = (*(*(*(this + 9) + 32 * v80 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (!v74)
        {
          mlir::Diagnostic::operator<<<mlir::Type>((v72 + 1), &v81);
          if (!*v72)
          {
LABEL_116:
            v54 = *(v72 + 200);
            goto LABEL_69;
          }

          mlir::Diagnostic::operator<<<5ul>((v72 + 1), " != ");
          v73 = *v72;
          v77 = v80;
        }

        v79 = *(*(v50 + 16) + 8 * v77);
        if (v73)
        {
          mlir::Diagnostic::operator<<<mlir::Type>((v72 + 1), &v79);
        }

        goto LABEL_116;
      }

      v62 = 0;
      v66 = v61 + 1;
      v67 = (v60 + 56);
      v68 = v56 - 1;
      while (v68 != v62)
      {
        v69 = *v67;
        v67 += 4;
        v70 = v66[v62++];
        if (v70 != (*(v69 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_101;
        }
      }
    }

    if (*(this + 9))
    {
      goto LABEL_106;
    }

    v78 = *(**(v50 + 8) + 136);
    if (v78 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
    {
      v86 = 257;
      mlir::Operation::emitOpError(&v87, this, &v84);
      if (v87)
      {
        mlir::Diagnostic::operator<<<42ul>(v88, "expected function call to produce a value");
      }

      goto LABEL_68;
    }

    if (*(this + 9))
    {
LABEL_106:
      v75 = *(**(v50 + 8) + 136);
      if (v75 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
      {
        v86 = 257;
        mlir::Operation::emitOpError(&v87, this, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<58ul>(v88, "calling function with void result must not produce values");
        }

        goto LABEL_68;
      }

      v76 = *(this + 9);
      if (v76 >= 2)
      {
        v86 = 257;
        mlir::Operation::emitOpError(&v87, this, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<53ul>(v88, "expected LLVM function call to produce 0 or 1 result");
        }

        goto LABEL_68;
      }

      if (v76 && (*(this - 1) & 0xFFFFFFFFFFFFFFF8) != *(v50 + 8))
      {
        v86 = 257;
        mlir::Operation::emitOpError(&v87, this, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<<23ul>(v88, "result type mismatch: ");
          v81 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
          if (v87)
          {
            mlir::Diagnostic::operator<<<mlir::Type>(v88, &v81);
            if (v87)
            {
              mlir::Diagnostic::operator<<<5ul>(v88, " != ");
              v79 = *(v50 + 8);
              if (v87)
              {
                mlir::Diagnostic::operator<<<mlir::Type>(v88, &v79);
              }
            }
          }
        }

        goto LABEL_68;
      }
    }

LABEL_130:
    v49 = 1;
    return v49 & 1;
  }

  v49 = 0;
  return v49 & 1;
}

uint64_t mlir::LLVM::detail::BranchWeightOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::setBranchWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 44);
  result = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), *(a3 + 24), *(a3 + 32) >> 2);
  *(a2 + 16 * ((v4 >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20860))
  {
    v1 = llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface>();
    qword_27FC20858 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20860);
  }

  return qword_27FC20858;
}

uint64_t llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20878))
  {
    qword_27FC20868 = llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface>();
    unk_27FC20870 = v1;
    __cxa_guard_release(&qword_27FC20878);
  }

  return qword_27FC20868;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::BranchWeightOpInterface]";
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20888))
  {
    v1 = llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>();
    qword_27FC20880 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20888);
  }

  return qword_27FC20880;
}

uint64_t llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC208A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC208A0))
  {
    qword_27FC20890 = llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>();
    *algn_27FC20898 = v1;
    __cxa_guard_release(&qword_27FC208A0);
  }

  return qword_27FC20890;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::BranchWeightOpInterface::Trait<Empty>]";
  v6 = 111;
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

llvm::raw_ostream *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, uint64_t a4, uint64_t a5)
{
  v81 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2 + 64;
  v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 48);
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = *(v10 + 16);
    v5 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
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

  v14 = *(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8);
  if (v14)
  {
    v15 = mlir::LLVM::cconv::stringifyCConv(v14);
    v17 = v16;
    v18 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v18, v15, v17);
    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }
  }

  v21 = *(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8);
  if (v21 > 1)
  {
    if (v21 == 3)
    {
      v22 = "notail";
      v23 = 6;
      goto LABEL_20;
    }

    if (v21 == 2)
    {
      v22 = "musttail";
      v23 = 8;
      goto LABEL_20;
    }

LABEL_18:
    v23 = 0;
    v22 = &str_2_25;
    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_22;
  }

  if (v21 != 1)
  {
    goto LABEL_18;
  }

  v22 = "tail";
  v23 = 4;
LABEL_20:
  v24 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v24, v22, v23);
  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  *(v25 + 4) = v26 + 1;
  *v26 = 32;
LABEL_22:
  if (v9)
  {
LABEL_23:
    (*(*a3 + 88))(a3, v11, v5);
    goto LABEL_26;
  }

LABEL_25:
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
LABEL_26:
  v27 = *(a2 + 44);
  v28 = *(v8 + 16 * ((v27 >> 23) & 1) + 144);
  if ((v27 & 0x800000) != 0)
  {
    v29 = *(a2 + 72);
  }

  else
  {
    v29 = 0;
  }

  v65 = v29 + 32 * (v9 == 0);
  v66 = (__PAIR128__(v28, v9) - 1) >> 64;
  v30 = (*(*a3 + 16))(a3);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 40);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 40;
  }

  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v65);
  v32 = (*(*a3 + 16))(a3);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 41);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 41;
  }

  v34 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
  if (v34)
  {
    v35 = *(v34 + 8);
    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (*(v36 + 3) - v37 > 7uLL)
    {
      *v37 = 0x2867726172617620;
      *(v36 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v36, " vararg(", 8uLL);
    }

    (*(*a3 + 32))(a3, v35);
    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (*(v38 + 3) == v39)
    {
      llvm::raw_ostream::write(v38, ")", 1uLL);
    }

    else
    {
      *v39 = 41;
      ++*(v38 + 4);
    }
  }

  if (*(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 96) + 16))
  {
    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (*(v40 + 3) == v41)
    {
      llvm::raw_ostream::write(v40, " ", 1uLL);
    }

    else
    {
      *v41 = 32;
      ++*(v40 + 4);
    }

    v42 = *(a2 + 44);
    v43 = v8 + 16 * ((v42 >> 23) & 1);
    v44 = *(v43 + 144);
    if ((v42 & 0x800000) != 0)
    {
      v45 = *(a2 + 72);
      v46 = (v45 + 32 * v44);
    }

    else
    {
      v45 = 0;
      v46 = (32 * v44);
    }

    v47 = *(v43 + 96);
    v48 = *(v47 + 16);
    v76 = v46;
    v77 = v47;
    v78 = 0;
    v79 = v48;
    *&v67 = v45 + 32 * v44;
    *(&v67 + 1) = v47;
    *&v68 = 0;
    *(&v68 + 1) = v48;
    mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v80, 0, v48, &v67);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  processFMFAttr(&v76, *(AttrDictionary + 8), *(AttrDictionary + 16));
  v50 = *(a2 + 48);
  v52 = *(v50 + 96);
  v51 = *(v50 + 104);
  v67 = *(v52[6] + 16);
  v68 = *(v52[1] + 16);
  v69 = *(v52[16] + 16);
  v70 = *(*v52 + 16);
  v71 = *(v52[v51 - 1] + 16);
  v53 = v52[13];
  v72 = *(v52[12] + 16);
  v73 = *(v53 + 16);
  v74 = *(v52[4] + 16);
  v75 = *(v52[14] + 16);
  (*(*a3 + 192))(a3, v76, v77, &v67, 9);
  if (v76 != &v78)
  {
    free(v76);
  }

  v54 = (*(*a3 + 16))(a3);
  v55 = *(v54 + 4);
  if ((*(v54 + 3) - v55) > 2)
  {
    *(v55 + 2) = 32;
    *v55 = 14880;
    *(v54 + 4) += 3;
    if (!v9)
    {
      goto LABEL_54;
    }
  }

  else
  {
    llvm::raw_ostream::write(v54, " : ", 3uLL);
    if (!v9)
    {
LABEL_54:
      (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v56 = (*(*a3 + 16))(a3);
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
    }
  }

  v58 = v66;
  if ((v65 & 0xFFFFFFFFFFFFFFF8) == 0 || v66 == 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = v65 & 0xFFFFFFFFFFFFFFF8 | 4;
  }

  v61 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 32);
  v62 = *(a2 + 36);
  v63 = (a2 - 16);
  if (!v62)
  {
    v63 = 0;
  }

  v76 = v63;
  v77 = 0;
  v78 = v63;
  v79 = v62;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v67, &v76);
  return mlir::call_interface_impl::printFunctionSignature(a3, v60, v58, v61, 0, v67, *(&v67 + 1), *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 112), 0, 1u);
}

uint64_t mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_66;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v4))
  {
    goto LABEL_66;
  }

  v5 = a1 + 64;
  v6 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v7 = v6[12];
  if (v7)
  {
    v49 = a1 + 64;
    v9 = *v6;
    v8 = v6[1];
    v51 = v6[3];
    v52 = v6[2];
    v10 = v6[5];
    v12 = v6[6];
    v11 = v6[7];
    v14 = v6[8];
    v13 = v6[9];
    v15 = v6[10];
    v50 = v6[11];
    v54 = v6[4];
    v55 = v6[13];
    v53 = v6[14];
    v16 = v6[16];
    v48 = v6[15];
    v56 = v6[17];
    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v16, "var_callee_type", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v12, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v10, "branch_weights", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v11, "convergent", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v15, "no_unwind", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v56, "will_return", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v7, "op_bundle_sizes", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v55, "op_bundle_tags", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v54, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v53, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v52, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v51, "alias_scopes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v50, "noalias_scopes", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v61[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v48, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61))
    {
      goto LABEL_66;
    }

    v17 = *(a1 + 44);
    v18 = (v17 >> 23) & 1;
    v19 = *(v49 + 16 * v18 + 144);
    if ((v17 & 0x800000) != 0)
    {
      v20 = *(a1 + 72);
      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
      if (v19)
      {
LABEL_27:
        v21 = 0;
        v22 = v20 + 24;
        while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, v21))
        {
          ++v21;
          v22 += 32;
          if (v19 == v21)
          {
            v23 = *(a1 + 44);
            v18 = (v23 >> 23) & 1;
            v24 = v23 & 0x800000;
            v25 = *(v49 + 16 * v18 + 144);
            goto LABEL_51;
          }
        }

        goto LABEL_66;
      }
    }

    v25 = 0;
    v24 = v17 & 0x800000;
LABEL_51:
    v39 = *(v49 + 16 * v18 + 148);
    if (v24)
    {
      v40 = *(a1 + 72);
    }

    else
    {
      v40 = 0;
    }

    v41 = v39 + v25 - v25;
    if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "op_bundle_sizes", 0xFuLL, "op_bundle_operands", 18, v41))
    {
      goto LABEL_66;
    }

    if (v39)
    {
      v42 = v40 + 32 * v25 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v42 + 8) & 0xFFFFFFFFFFFFFFF8, v19))
      {
        LODWORD(v19) = v19 + 1;
        v42 += 32;
        if (!--v41)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_66;
    }

LABEL_58:
    LODWORD(v57) = 0;
    v43 = *(a1 + 36);
    if (v43 <= 1)
    {
      if (v43 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
      {
        goto LABEL_66;
      }

      v5 = a1 + 64;
    }

    else
    {
      v59[0] = "result group starting at #";
      v60 = 259;
      mlir::Operation::emitOpError(v61, a1, v59);
      v44 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v61, &v57);
      v45 = v44;
      if (*v44)
      {
        mlir::Diagnostic::operator<<<37ul>((v44 + 1), " requires 0 or 1 element, but found ");
      }

      v58 = v43;
      v46 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v45, &v58) + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v61);
      v5 = a1 + 64;
      if (v46)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v59[0] = "requires attribute 'op_bundle_sizes'";
    v60 = 259;
    mlir::Operation::emitOpError(v61, a1, v59);
    v26 = v62;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v61);
    if (v26)
    {
LABEL_66:
      v35 = 0;
      return v35 & 1;
    }
  }

  if ((mlir::LLVM::detail::verifyAccessGroupOpInterface(a1, v27) & 1) == 0 || (mlir::LLVM::detail::verifyAliasAnalysisOpInterface(a1, v28) & 1) == 0)
  {
    goto LABEL_66;
  }

  v29 = v5 + 16 * ((*(a1 + 44) >> 23) & 1);
  v30 = *(v29 + 104);
  v31 = *(*(v29 + 96) + 16);
  if (v30)
  {
    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = *(v30 + 8);
      v34 = 8 * v32;
      while (*(**v33 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v33 += 8;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_41;
        }
      }

      v59[0] = "operand bundle tag must be a StringAttr";
      v60 = 259;
      mlir::Operation::emitError(v61, a1, v59);
      v38 = v62;
      goto LABEL_47;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_41:
  v57 = v32;
  v58 = v31;
  if (v31 != v32)
  {
    v59[0] = "expected ";
    v60 = 259;
    mlir::Operation::emitError(v61, a1, v59);
    v36 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v61, &v58);
    v37 = v36;
    if (*v36)
    {
      mlir::Diagnostic::operator<<<40ul>((v36 + 1), " operand bundle tags, but actually got ");
    }

    v38 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v57) + 200);
LABEL_47:
    v35 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v61);
    return v35 & 1;
  }

  v35 = 1;
  return v35 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
  {
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 8 && **(a3 + 16) == 0x656D616E5F6D7973)
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

    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "sym_name";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
  v10[0] = "sym_name";
  v10[1] = 8;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::LLVM::ComdatOp>::getNameAttr(uint64_t a1, uint64_t a2)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
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

  v9 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
  (*(*a3 + 88))(a3, *(v9 + 16), *(v9 + 24));
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

  (*(*a3 + 224))(a3, ((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10), 1, 1, 0);
  v13 = v15;
  v14 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v13, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, v14);
  if (v13 != v15)
  {
    free(v13);
  }
}

BOOL mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0 || (mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  if (v7)
  {
    v14[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) || !mlir::LLVM::__mlir_ods_local_region_constraint_LLVMOps1(a1, ((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "body", 4))
    {
      return 0;
    }

    return mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::ComdatOp>::verifyTrait(a1, v8);
  }

  v12 = "requires attribute 'sym_name'";
  v13 = 259;
  mlir::Operation::emitOpError(v14, a1, &v12);
  v11 = v15;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
  if ((v11 & 1) == 0)
  {
    return mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::ComdatOp>::verifyTrait(a1, v8);
  }

  return 0;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::ComdatOp>::verifyTrait(mlir::detail *a1, mlir::Operation *a2)
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

uint64_t mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (mlir::detail::verifySymbolTable(a1, a2))
  {
    v3 = (((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    if (*v3 == v3)
    {
      goto LABEL_16;
    }

    for (i = v3[1]; i != v3; i = i[1])
    {
      v5 = i - 1;
      if (!i)
      {
        v5 = 0;
      }

      if (v5[4] != v5 + 4)
      {
        break;
      }
    }

    if (i == v3)
    {
      goto LABEL_16;
    }

    v7 = i - 1;
    if (!i)
    {
      v7 = 0;
    }

    v8 = v7[5];
    v12[0] = ((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10);
    v12[1] = i;
    v13 = v8;
    if (!v8)
    {
LABEL_16:
      v6 = 1;
    }

    else
    {
      while (*(*(v8 + 48) + 16) == &unk_27FC1FED0)
      {
        mlir::Region::OpIterator::operator++(v12);
        v8 = v13;
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v10 = "only comdat selector symbols can appear in a comdat region";
      v11 = 259;
      mlir::Operation::emitError(v14, v8, &v10);
      v6 = v15 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 != 8)
  {
    if (a4 != 6)
    {
      goto LABEL_10;
    }

    if (*a3 != 1684893539 || *(a3 + 4) != 29793)
    {
      goto LABEL_10;
    }

    v6 = *(v4 + 64);
LABEL_12:
    v7 = v6 & 0xFFFFFFFFFFFFFF00;
    return v7 | v6;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v6 = *(v4 + 72);
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v6) = 0;
  v7 = 0;
  return v7 | v6;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 == 8)
  {
    if (*v6 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

      *(v5 + 72) = v12;
    }
  }

  else if (v7 == 6)
  {
    v8 = *v6;
    v9 = *(v6 + 2);
    if (v8 == 1684893539 && v9 == 29793)
    {
      if (a4)
      {
        if (mlir::LLVM::comdat::ComdatAttr::classof(a4))
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

      *(v5 + 64) = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "comdat";
    v14 = 6;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "sym_name";
    v14 = 8;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v22, a6, a2, a3);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "comdat", 6uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (!mlir::LLVM::comdat::ComdatAttr::classof(*(v11 + 8)))
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v13;
LABEL_18:
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
        v18 = v24 + 24 * v25;
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++v25;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
        return 0;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
  if (v15)
  {
    v16 = *(v14 + 8);
    if (v16)
    {
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a5(&v22, a6);
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
        goto LABEL_18;
      }

      a3[1] = v16;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v16 = "comdat";
    v17 = 6;
    v9 = mlir::StringAttr::get(v8, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v18 = 261;
    v16 = "sym_name";
    v17 = 8;
    v12 = mlir::StringAttr::get(v11, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v12, v10);
  }

  v13 = v19;
  if (v20)
  {
    v14 = mlir::DictionaryAttr::get(v3, v19, v20);
    v13 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v21)
  {
    free(v13);
  }

  return v14;
}