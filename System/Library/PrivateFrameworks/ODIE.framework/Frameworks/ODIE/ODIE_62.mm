uint64_t mlir::LLVM::LinkageAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18LinkageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11LinkageAttrEJNS2_7linkage7LinkageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LinkageAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LinkageAttrStorage,mlir::LLVM::linkage::Linkage>(llvm::function_ref<void ()(mlir::LLVM::detail::LinkageAttrStorage *)>,mlir::TypeID,mlir::LLVM::linkage::Linkage &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LinkageAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LinkageAttrStorage,mlir::LLVM::linkage::Linkage>(llvm::function_ref<void ()(mlir::LLVM::detail::LinkageAttrStorage *)>,mlir::TypeID,mlir::LLVM::linkage::Linkage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::FramePointerKindAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27FramePointerKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20FramePointerKindAttrEJNS2_16framePointerKind16FramePointerKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::FramePointerKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::LLVM::framePointerKind::FramePointerKind>(llvm::function_ref<void ()(mlir::LLVM::detail::FramePointerKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::framePointerKind::FramePointerKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FramePointerKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::LLVM::framePointerKind::FramePointerKind>(llvm::function_ref<void ()(mlir::LLVM::detail::FramePointerKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::framePointerKind::FramePointerKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::LoopVectorizeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v15[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id;
  v15[1] = a1;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24LoopVectorizeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17LoopVectorizeAttrEJNS1_8BoolAttrESD_SD_NS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v19[1] = v15;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v17 = a7;
  v18 = a8;
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v22 = ((a2 >> 4) ^ (a2 >> 9));
  v23 = ((a3 >> 4) ^ (a3 >> 9));
  v20 = 0;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v22, &v20, v24, v25, (a4 >> 4) ^ (a4 >> 9));
  v21 = v20;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v22, &v21, v11, v25, (v9 >> 4) ^ (v9 >> 9));
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v22, v21, v12, v25, v8, &v17, &v18);
  v21 = v16;
  v22 = v16;
  v23 = v19;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopVectorizeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopVectorizeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopVectorizeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopVectorizeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v22);
}

uint64_t mlir::LLVM::LoopVectorizeAttr::parse(mlir::AsmParser *a1)
{
  v38[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20[0] = a1;
  v20[1] = &v23 + 3;
  v20[2] = &v36;
  v20[3] = &v23 + 2;
  v20[4] = &v34;
  v20[5] = &v23 + 1;
  v20[6] = &v32;
  v20[7] = &v23;
  v20[8] = &v30;
  v20[9] = &v22 + 1;
  v20[10] = &v28;
  v20[11] = &v22;
  v20[12] = &v26;
  v20[13] = &v21;
  v20[14] = &v24;
  v18 = 0;
  v19 = 0;
  if ((*(*a1 + 416))(a1, &v18))
  {
    v2 = v18;
    for (i = v19; mlir::LLVM::LoopVectorizeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v20, v2, i); i = v17)
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
        (*(*a1 + 24))(v38, a1, v13, &v14);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
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
  if (v37)
  {
    v5 = v36;
  }

  else
  {
    v5 = 0;
  }

  if (v35)
  {
    v6 = v34;
  }

  else
  {
    v6 = 0;
  }

  if (v33)
  {
    v7 = v32;
  }

  else
  {
    v7 = 0;
  }

  if (v31)
  {
    v8 = v30;
  }

  else
  {
    v8 = 0;
  }

  if (v29)
  {
    v9 = v28;
  }

  else
  {
    v9 = 0;
  }

  if (v27)
  {
    v10 = v26;
  }

  else
  {
    v10 = 0;
  }

  if (v25)
  {
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  return mlir::LLVM::LoopVectorizeAttr::get(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t mlir::LLVM::LoopVectorizeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v77[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 7)
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_71;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v68 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v68);
    v11 = v68;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v70 = 259;
      (*(*v13 + 24))(v77, v13, v14, &v68);
      v15 = v77;
LABEL_74:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }

    return v8;
  }

  v16 = a1[3];
  if ((*v16 & 1) != 0 || a3 != 15)
  {
    v24 = a1[5];
    if ((*v24 & 1) != 0 || a3 != 14)
    {
      v32 = a1[7];
      if ((*v32 & 1) != 0 || a3 != 5)
      {
        v39 = a1[9];
        if ((*v39 & 1) != 0 || a3 != 18)
        {
          v47 = a1[11];
          if ((*v47 & 1) != 0 || a3 != 16)
          {
            v54 = a1[13];
            if ((*v54 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
            {
              v8 = 1;
              *v54 = 1;
              v59 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
              v60 = a1[14];
              *v60 = v59;
              *(v60 + 8) = v61;
              if (*(a1[14] + 8))
              {
                return v8;
              }

              v62 = *a1;
              v63 = (*(*v62 + 40))(v62);
              v70 = 259;
              (*(*v62 + 24))(v71, v62, v63, &v68);
              v15 = v71;
              goto LABEL_74;
            }

            goto LABEL_71;
          }

          if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x6575676F6C697045)
          {
            v8 = 1;
            *v47 = 1;
            v49 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
            v50 = a1[12];
            *v50 = v49;
            *(v50 + 8) = v51;
            if ((*(a1[12] + 8) & 1) == 0)
            {
              v52 = *a1;
              v53 = (*(*v52 + 40))(v52);
              v70 = 259;
              (*(*v52 + 24))(v72, v52, v53, &v68);
              v15 = v72;
              goto LABEL_74;
            }

            return v8;
          }
        }

        else if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x7A69726F74636556 && *(a2 + 16) == 25701)
        {
          v8 = 1;
          *v39 = 1;
          v42 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
          v43 = a1[10];
          *v43 = v42;
          *(v43 + 8) = v44;
          if ((*(a1[10] + 8) & 1) == 0)
          {
            v45 = *a1;
            v46 = (*(*v45 + 40))(v45);
            v70 = 259;
            (*(*v45 + 24))(v73, v45, v46, &v68);
            v15 = v73;
            goto LABEL_74;
          }

          return v8;
        }
      }

      else if (*a2 == 1952737655 && *(a2 + 4) == 104)
      {
        v8 = 1;
        *v32 = 1;
        v34 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
        v35 = a1[8];
        *v35 = v34;
        *(v35 + 8) = v36;
        if ((*(a1[8] + 8) & 1) == 0)
        {
          v37 = *a1;
          v38 = (*(*v37 + 40))(v37);
          v70 = 259;
          (*(*v37 + 24))(v74, v37, v38, &v68);
          v15 = v74;
          goto LABEL_74;
        }

        return v8;
      }
    }

    else if (*a2 == 0x656C62616C616373 && *(a2 + 6) == 0x656C62616E45656CLL)
    {
      v8 = 1;
      *v24 = 1;
      v26 = *a1;
      v68 = 0;
      v27 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v26, &v68);
      v28 = v68;
      if (!v27)
      {
        v28 = 0;
      }

      v29 = a1[6];
      *v29 = v28;
      *(v29 + 8) = v27;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v30 = *a1;
        v31 = (*(*v30 + 40))(v30);
        v70 = 259;
        (*(*v30 + 24))(v75, v30, v31, &v68);
        v15 = v75;
        goto LABEL_74;
      }

      return v8;
    }

LABEL_71:
    v56 = *a1;
    v57 = (*(*v56 + 40))(v56);
    v64 = "duplicate or unknown struct parameter name: ";
    v65 = 259;
    (*(*v56 + 24))(&v68, v56, v57, &v64);
    if (v68)
    {
      v67 = 261;
      v66[0] = a2;
      v66[1] = a3;
      mlir::Diagnostic::operator<<(&v69, v66);
    }

    v15 = &v68;
    goto LABEL_74;
  }

  if (*a2 != 0x7461636964657270 || *(a2 + 7) != 0x656C62616E456574)
  {
    goto LABEL_71;
  }

  v8 = 1;
  *v16 = 1;
  v18 = *a1;
  v68 = 0;
  v19 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v18, &v68);
  v20 = v68;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = a1[4];
  *v21 = v20;
  *(v21 + 8) = v19;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v22 = *a1;
    v23 = (*(*v22 + 40))(v22);
    v70 = 259;
    (*(*v22 + 24))(v76, v22, v23, &v68);
    v15 = v76;
    goto LABEL_74;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopVectorizeAttr::print(mlir::LLVM::LoopVectorizeAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_26;
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

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0x11)
  {
    *(v13 + 16) = 8253;
    *v13 = *"predicateEnable = ";
    *(v12 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v12, "predicateEnable = ", 0x12uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_26:
  if (!v9[3])
  {
    goto LABEL_35;
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

LABEL_30:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0x10)
  {
    *(v17 + 16) = 32;
    *v17 = *"scalableEnable = ";
    *(v16 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v16, "scalableEnable = ", 0x11uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_35:
  if (v9[4])
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

LABEL_39:
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 7uLL)
    {
      *v21 = 0x203D206874646977;
      *(v20 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v20, "width = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 32))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_53;
  }

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

LABEL_48:
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 0x14uLL)
  {
    qmemcpy(v25, "followupVectorized = ", 21);
    *(v24 + 4) += 21;
  }

  else
  {
    llvm::raw_ostream::write(v24, "followupVectorized = ", 0x15uLL);
  }

  v9 = *this;
  v26 = *(*this + 40);
  if (v26)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v26);
    v9 = *this;
  }

LABEL_53:
  if (v9[6])
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

LABEL_57:
    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if ((*(v29 + 3) - v30) > 0x12)
    {
      *(v30 + 15) = 540876901;
      *v30 = *"followupEpilogue = ";
      *(v29 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v29, "followupEpilogue = ", 0x13uLL);
    }

    v9 = *this;
    v31 = *(*this + 48);
    if (v31)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v31);
      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_71;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 8236;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, ", ", 2uLL);
  }

LABEL_66:
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 0xDuLL)
  {
    qmemcpy(v35, "followupAll = ", 14);
    *(v34 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v34, "followupAll = ", 0xEuLL);
  }

  v36 = *(*this + 56);
  if (v36)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v36);
  }

LABEL_71:
  result = (*(*a2 + 16))(a2);
  v38 = *(result + 4);
  if (*(result + 3) == v38)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v38 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::LoopAnnotationAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::LoopInterleaveAttr::get(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id;
  v5[1] = a1;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopInterleaveAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopInterleaveAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v8[1] = v5;
  v7 = a2;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(v9, 0, v9, v10, &v7);
  v6 = &v7;
  *&v9[0] = &v7;
  *(&v9[0] + 1) = v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopInterleaveAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopInterleaveAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v6, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopInterleaveAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopInterleaveAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::LLVM::LoopInterleaveAttr::parse(mlir::AsmParser *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v14))
  {
    v7 = (*(*a1 + 40))(a1);
    v23[0] = "expected a parameter name in struct";
    v24 = 259;
    (*(*a1 + 24))(v20, a1, v7, v23);
    v6 = v20;
LABEL_13:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
    return 0;
  }

  v2 = v14;
  v3 = v15;
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (v3 != 5 || (*v2 == 1853189987 ? (v4 = *(v2 + 4) == 116) : (v4 = 0), !v4))
  {
    v5 = (*(*a1 + 40))(a1);
    v16 = "duplicate or unknown struct parameter name: ";
    v17 = 259;
    (*(*a1 + 24))(&v21, a1, v5, &v16);
    if (v21)
    {
      v19 = 261;
      v18[0] = v2;
      v18[1] = v3;
      mlir::Diagnostic::operator<<(v22, v18);
    }

    v6 = &v21;
    goto LABEL_13;
  }

  v9 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
  if ((v10 & 1) == 0)
  {
    v13 = (*(*a1 + 40))(a1);
    v22[12] = 259;
    (*(*a1 + 24))(v23, a1, v13, &v21);
    v6 = v23;
    goto LABEL_13;
  }

  v11 = v9;
  if ((*(*a1 + 168))(a1))
  {
    v12 = (*(*a1 + 32))(a1);
    return mlir::LLVM::LoopInterleaveAttr::get(*v12, v11);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::LoopInterleaveAttr::print(mlir::LLVM::LoopInterleaveAttr *this, mlir::AsmPrinter *a2)
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
    *v7 = 0x203D20746E756F63;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "count = ", 8uLL);
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

uint64_t mlir::LLVM::LoopUnrollAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v15[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id;
  v15[1] = a1;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopUnrollAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopUnrollAttrEJNS1_8BoolAttrENS1_11IntegerAttrESD_SD_NS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v19[1] = v15;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v17 = a7;
  v18 = a8;
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v22 = ((a2 >> 4) ^ (a2 >> 9));
  v23 = ((a3 >> 4) ^ (a3 >> 9));
  v20 = 0;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v22, &v20, v24, v25, (a4 >> 4) ^ (a4 >> 9));
  v21 = v20;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v22, &v21, v11, v25, (v9 >> 4) ^ (v9 >> 9));
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v22, v21, v12, v25, v8, &v17, &v18);
  v21 = v16;
  v22 = v16;
  v23 = v19;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopUnrollAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v22);
}

uint64_t mlir::LLVM::LoopUnrollAttr::parse(mlir::AsmParser *a1)
{
  v38[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20[0] = a1;
  v20[1] = &v23 + 3;
  v20[2] = &v36;
  v20[3] = &v23 + 2;
  v20[4] = &v34;
  v20[5] = &v23 + 1;
  v20[6] = &v32;
  v20[7] = &v23;
  v20[8] = &v30;
  v20[9] = &v22 + 1;
  v20[10] = &v28;
  v20[11] = &v22;
  v20[12] = &v26;
  v20[13] = &v21;
  v20[14] = &v24;
  v18 = 0;
  v19 = 0;
  if ((*(*a1 + 416))(a1, &v18))
  {
    v2 = v18;
    for (i = v19; mlir::LLVM::LoopUnrollAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v20, v2, i); i = v17)
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
        (*(*a1 + 24))(v38, a1, v13, &v14);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
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
  if (v37)
  {
    v5 = v36;
  }

  else
  {
    v5 = 0;
  }

  if (v35)
  {
    v6 = v34;
  }

  else
  {
    v6 = 0;
  }

  if (v33)
  {
    v7 = v32;
  }

  else
  {
    v7 = 0;
  }

  if (v31)
  {
    v8 = v30;
  }

  else
  {
    v8 = 0;
  }

  if (v29)
  {
    v9 = v28;
  }

  else
  {
    v9 = 0;
  }

  if (v27)
  {
    v10 = v26;
  }

  else
  {
    v10 = 0;
  }

  if (v25)
  {
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  return mlir::LLVM::LoopUnrollAttr::get(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t mlir::LLVM::LoopUnrollAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v76[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 7)
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_67;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v67 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v67);
    v11 = v67;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v69 = 259;
      (*(*v13 + 24))(v76, v13, v14, &v67);
      v15 = v76;
LABEL_70:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }

    return v8;
  }

  v16 = a1[3];
  if ((*v16 & 1) != 0 || a3 != 5)
  {
    v23 = a1[5];
    if ((*v23 & 1) != 0 || a3 != 14)
    {
      v31 = a1[7];
      if ((*v31 & 1) == 0 && a3 == 4)
      {
        if (*a2 != 1819047270)
        {
          goto LABEL_67;
        }

        v8 = 1;
        *v31 = 1;
        v32 = *a1;
        v67 = 0;
        v33 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v32, &v67);
        v34 = v67;
        if (!v33)
        {
          v34 = 0;
        }

        v35 = a1[8];
        *v35 = v34;
        *(v35 + 8) = v33;
        if ((*(a1[8] + 8) & 1) == 0)
        {
          v36 = *a1;
          v37 = (*(*v36 + 40))(v36);
          v69 = 259;
          (*(*v36 + 24))(v73, v36, v37, &v67);
          v15 = v73;
          goto LABEL_70;
        }

        return v8;
      }

      v38 = a1[9];
      if ((*v38 & 1) != 0 || a3 != 16)
      {
        v45 = a1[11];
        if ((*v45 & 1) != 0 || a3 != 17)
        {
          v53 = a1[13];
          if ((*v53 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
          {
            v8 = 1;
            *v53 = 1;
            v58 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
            v59 = a1[14];
            *v59 = v58;
            *(v59 + 8) = v60;
            if (*(a1[14] + 8))
            {
              return v8;
            }

            v61 = *a1;
            v62 = (*(*v61 + 40))(v61);
            v69 = 259;
            (*(*v61 + 24))(v70, v61, v62, &v67);
            v15 = v70;
            goto LABEL_70;
          }

          goto LABEL_67;
        }

        if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x65646E69616D6552 && *(a2 + 16) == 114)
        {
          v8 = 1;
          *v45 = 1;
          v48 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
          v49 = a1[12];
          *v49 = v48;
          *(v49 + 8) = v50;
          if ((*(a1[12] + 8) & 1) == 0)
          {
            v51 = *a1;
            v52 = (*(*v51 + 40))(v51);
            v69 = 259;
            (*(*v51 + 24))(v71, v51, v52, &v67);
            v15 = v71;
            goto LABEL_70;
          }

          return v8;
        }
      }

      else if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x64656C6C6F726E55)
      {
        v8 = 1;
        *v38 = 1;
        v40 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v41 = a1[10];
        *v41 = v40;
        *(v41 + 8) = v42;
        if ((*(a1[10] + 8) & 1) == 0)
        {
          v43 = *a1;
          v44 = (*(*v43 + 40))(v43);
          v69 = 259;
          (*(*v43 + 24))(v72, v43, v44, &v67);
          v15 = v72;
          goto LABEL_70;
        }

        return v8;
      }
    }

    else if (*a2 == 0x44656D69746E7572 && *(a2 + 6) == 0x656C626173694465)
    {
      v8 = 1;
      *v23 = 1;
      v25 = *a1;
      v67 = 0;
      v26 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v25, &v67);
      v27 = v67;
      if (!v26)
      {
        v27 = 0;
      }

      v28 = a1[6];
      *v28 = v27;
      *(v28 + 8) = v26;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v29 = *a1;
        v30 = (*(*v29 + 40))(v29);
        v69 = 259;
        (*(*v29 + 24))(v74, v29, v30, &v67);
        v15 = v74;
        goto LABEL_70;
      }

      return v8;
    }

LABEL_67:
    v55 = *a1;
    v56 = (*(*v55 + 40))(v55);
    v63 = "duplicate or unknown struct parameter name: ";
    v64 = 259;
    (*(*v55 + 24))(&v67, v55, v56, &v63);
    if (v67)
    {
      v66 = 261;
      v65[0] = a2;
      v65[1] = a3;
      mlir::Diagnostic::operator<<(&v68, v65);
    }

    v15 = &v67;
    goto LABEL_70;
  }

  if (*a2 != 1853189987 || *(a2 + 4) != 116)
  {
    goto LABEL_67;
  }

  v8 = 1;
  *v16 = 1;
  v18 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
  v19 = a1[4];
  *v19 = v18;
  *(v19 + 8) = v20;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v21 = *a1;
    v22 = (*(*v21 + 40))(v21);
    v69 = 259;
    (*(*v21 + 24))(v75, v21, v22, &v67);
    v15 = v75;
    goto LABEL_70;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopUnrollAttr::print(mlir::LLVM::LoopUnrollAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_26;
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

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 7uLL)
  {
    *v13 = 0x203D20746E756F63;
    *(v12 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v12, "count = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_26:
  if (!v9[3])
  {
    goto LABEL_35;
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

LABEL_30:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0x10)
  {
    *(v17 + 16) = 32;
    *v17 = *"runtimeDisable = ";
    *(v16 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v16, "runtimeDisable = ", 0x11uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_35:
  if (v9[4])
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

LABEL_39:
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876908;
      *v21 = 1819047270;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "full = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 32))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_53;
  }

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

LABEL_48:
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if ((*(v24 + 3) - v25) > 0x12)
  {
    *(v25 + 15) = 540876900;
    *v25 = *"followupUnrolled = ";
    *(v24 + 4) += 19;
  }

  else
  {
    llvm::raw_ostream::write(v24, "followupUnrolled = ", 0x13uLL);
  }

  v9 = *this;
  v26 = *(*this + 40);
  if (v26)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v26);
    v9 = *this;
  }

LABEL_53:
  if (v9[6])
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

LABEL_57:
    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if ((*(v29 + 3) - v30) > 0x13)
    {
      *(v30 + 16) = 540876914;
      *v30 = *"followupRemainder = ";
      *(v29 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v29, "followupRemainder = ", 0x14uLL);
    }

    v9 = *this;
    v31 = *(*this + 48);
    if (v31)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v31);
      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_71;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 8236;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, ", ", 2uLL);
  }

LABEL_66:
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 0xDuLL)
  {
    qmemcpy(v35, "followupAll = ", 14);
    *(v34 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v34, "followupAll = ", 0xEuLL);
  }

  v36 = *(*this + 56);
  if (v36)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v36);
  }

LABEL_71:
  result = (*(*a2 + 16))(a2);
  v38 = *(result + 4);
  if (*(result + 3) == v38)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v38 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopUnrollAndJamAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v13[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id;
  v13[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27LoopUnrollAndJamAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20LoopUnrollAndJamAttrEJNS1_8BoolAttrENS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_SF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v18[1] = v13;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v24 = 0;
  v25 = 0xFF51AFD7ED558CCDLL;
  v20 = ((a2 >> 4) ^ (a2 >> 9));
  v21 = ((a3 >> 4) ^ (a3 >> 9));
  v19 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v20, &v19, v22, v23, (a4 >> 4) ^ (a4 >> 9));
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v20, v19, v10, v23, v8, &v15, &v16, &v17);
  v19 = v14;
  v20 = v14;
  v21 = v18;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAndJamAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAndJamAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
}

uint64_t mlir::LLVM::LoopUnrollAndJamAttr::parse(mlir::AsmParser *a1)
{
  v38[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20[0] = a1;
  v20[1] = &v23 + 3;
  v20[2] = &v36;
  v20[3] = &v23 + 2;
  v20[4] = &v34;
  v20[5] = &v23 + 1;
  v20[6] = &v32;
  v20[7] = &v23;
  v20[8] = &v30;
  v20[9] = &v22 + 1;
  v20[10] = &v28;
  v20[11] = &v22;
  v20[12] = &v26;
  v20[13] = &v21;
  v20[14] = &v24;
  v18 = 0;
  v19 = 0;
  if ((*(*a1 + 416))(a1, &v18))
  {
    v2 = v18;
    for (i = v19; mlir::LLVM::LoopUnrollAndJamAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v20, v2, i); i = v17)
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
        (*(*a1 + 24))(v38, a1, v13, &v14);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
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
  if (v37)
  {
    v5 = v36;
  }

  else
  {
    v5 = 0;
  }

  if (v35)
  {
    v6 = v34;
  }

  else
  {
    v6 = 0;
  }

  if (v33)
  {
    v7 = v32;
  }

  else
  {
    v7 = 0;
  }

  if (v31)
  {
    v8 = v30;
  }

  else
  {
    v8 = 0;
  }

  if (v29)
  {
    v9 = v28;
  }

  else
  {
    v9 = 0;
  }

  if (v27)
  {
    v10 = v26;
  }

  else
  {
    v10 = 0;
  }

  if (v25)
  {
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  return mlir::LLVM::LoopUnrollAndJamAttr::get(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t mlir::LLVM::LoopUnrollAndJamAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v78[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 7)
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_63;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v69 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v69);
    v11 = v69;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v71 = 259;
      (*(*v13 + 24))(v78, v13, v14, &v69);
      v15 = v78;
LABEL_66:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }

    return v8;
  }

  v16 = a1[3];
  if ((*v16 & 1) != 0 || a3 != 5)
  {
    v23 = a1[5];
    v24 = a3 != 13;
    if ((*v23 & 1) == 0 && a3 == 13)
    {
      if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 5) == 0x726574754F707577)
      {
        v8 = 1;
        *v23 = 1;
        v45 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v46 = a1[6];
        *v46 = v45;
        *(v46 + 8) = v47;
        if (*(a1[6] + 8))
        {
          return v8;
        }

        v48 = *a1;
        v49 = (*(*v48 + 40))(v48);
        v71 = 259;
        (*(*v48 + 24))(v76, v48, v49, &v69);
        v15 = v76;
        goto LABEL_66;
      }

      v24 = 0;
    }

    v26 = a1[7];
    if ((*v26 & 1) == 0 && !v24 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 5) == 0x72656E6E49707577)
    {
      v8 = 1;
      *v26 = 1;
      v50 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
      v51 = a1[8];
      *v51 = v50;
      *(v51 + 8) = v52;
      if (*(a1[8] + 8))
      {
        return v8;
      }

      v53 = *a1;
      v54 = (*(*v53 + 40))(v53);
      v71 = 259;
      (*(*v53 + 24))(v75, v53, v54, &v69);
      v15 = v75;
      goto LABEL_66;
    }

    v28 = a1[9];
    v29 = a3 != 22;
    if ((*v28 & 1) == 0 && a3 == 22)
    {
      if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x65646E69616D6552 && *(a2 + 14) == 0x726574754F726564)
      {
        v8 = 1;
        *v28 = 1;
        v55 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v56 = a1[10];
        *v56 = v55;
        *(v56 + 8) = v57;
        if (*(a1[10] + 8))
        {
          return v8;
        }

        v58 = *a1;
        v59 = (*(*v58 + 40))(v58);
        v71 = 259;
        (*(*v58 + 24))(v74, v58, v59, &v69);
        v15 = v74;
        goto LABEL_66;
      }

      v29 = 0;
    }

    v32 = a1[11];
    if ((*v32 & 1) != 0 || v29)
    {
      v40 = a1[13];
      if ((*v40 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
      {
        v8 = 1;
        *v40 = 1;
        v60 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v61 = a1[14];
        *v61 = v60;
        *(v61 + 8) = v62;
        if (*(a1[14] + 8))
        {
          return v8;
        }

        v63 = *a1;
        v64 = (*(*v63 + 40))(v63);
        v71 = 259;
        (*(*v63 + 24))(v72, v63, v64, &v69);
        v15 = v72;
        goto LABEL_66;
      }

      goto LABEL_63;
    }

    if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x65646E69616D6552 && *(a2 + 14) == 0x72656E6E49726564)
    {
      v8 = 1;
      *v32 = 1;
      v35 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
      v36 = a1[12];
      *v36 = v35;
      *(v36 + 8) = v37;
      if ((*(a1[12] + 8) & 1) == 0)
      {
        v38 = *a1;
        v39 = (*(*v38 + 40))(v38);
        v71 = 259;
        (*(*v38 + 24))(v73, v38, v39, &v69);
        v15 = v73;
        goto LABEL_66;
      }

      return v8;
    }

LABEL_63:
    v42 = *a1;
    v43 = (*(*v42 + 40))(v42);
    v65 = "duplicate or unknown struct parameter name: ";
    v66 = 259;
    (*(*v42 + 24))(&v69, v42, v43, &v65);
    if (v69)
    {
      v68 = 261;
      v67[0] = a2;
      v67[1] = a3;
      mlir::Diagnostic::operator<<(&v70, v67);
    }

    v15 = &v69;
    goto LABEL_66;
  }

  if (*a2 != 1853189987 || *(a2 + 4) != 116)
  {
    goto LABEL_63;
  }

  v8 = 1;
  *v16 = 1;
  v18 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
  v19 = a1[4];
  *v19 = v18;
  *(v19 + 8) = v20;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v21 = *a1;
    v22 = (*(*v21 + 40))(v21);
    v71 = 259;
    (*(*v21 + 24))(v77, v21, v22, &v69);
    v15 = v77;
    goto LABEL_66;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopUnrollAndJamAttr::print(mlir::LLVM::LoopUnrollAndJamAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_26;
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

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 7uLL)
  {
    *v13 = 0x203D20746E756F63;
    *(v12 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v12, "count = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_26:
  if (!v9[3])
  {
    goto LABEL_35;
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

LABEL_30:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 0xFuLL)
  {
    *v17 = *"followupOuter = ";
    *(v16 + 4) += 16;
  }

  else
  {
    llvm::raw_ostream::write(v16, "followupOuter = ", 0x10uLL);
  }

  v9 = *this;
  v18 = *(*this + 24);
  if (v18)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v18);
    v9 = *this;
  }

LABEL_35:
  if (v9[4])
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

LABEL_39:
    v21 = (*(*a2 + 16))(a2);
    v22 = *(v21 + 4);
    if (*(v21 + 3) - v22 > 0xFuLL)
    {
      *v22 = *"followupInner = ";
      *(v21 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v21, "followupInner = ", 0x10uLL);
    }

    v9 = *this;
    v23 = *(*this + 32);
    if (v23)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v23);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_53;
  }

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

LABEL_48:
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 0x18uLL)
  {
    qmemcpy(v27, "followupRemainderOuter = ", 25);
    *(v26 + 4) += 25;
  }

  else
  {
    llvm::raw_ostream::write(v26, "followupRemainderOuter = ", 0x19uLL);
  }

  v9 = *this;
  v28 = *(*this + 40);
  if (v28)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v28);
    v9 = *this;
  }

LABEL_53:
  if (v9[6])
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

LABEL_57:
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 0x18uLL)
    {
      qmemcpy(v32, "followupRemainderInner = ", 25);
      *(v31 + 4) += 25;
    }

    else
    {
      llvm::raw_ostream::write(v31, "followupRemainderInner = ", 0x19uLL);
    }

    v9 = *this;
    v33 = *(*this + 48);
    if (v33)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v33);
      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_71;
  }

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

LABEL_66:
  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) - v37 > 0xDuLL)
  {
    qmemcpy(v37, "followupAll = ", 14);
    *(v36 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v36, "followupAll = ", 0xEuLL);
  }

  v38 = *(*this + 56);
  if (v38)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v38);
  }

LABEL_71:
  result = (*(*a2 + 16))(a2);
  v40 = *(result + 4);
  if (*(result + 3) == v40)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v40 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopLICMAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19LoopLICMAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12LoopLICMAttrEJNS1_8BoolAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v6;
  v8[0] = a2;
  v8[1] = a3;
  memset(v11, 0, sizeof(v11));
  v12 = 0xFF51AFD7ED558CCDLL;
  v10 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::BoolAttr>(&v10, 0, v11, &v11[3] + 8, a3);
  v7 = v8;
  v10 = v8;
  *&v11[0] = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopLICMAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopLICMAttrStorage,mlir::BoolAttr,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopLICMAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopLICMAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopLICMAttrStorage,mlir::BoolAttr,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopLICMAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v10);
}

uint64_t mlir::LLVM::LoopLICMAttr::parse(mlir::AsmParser *a1)
{
  v21[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v16 = 0;
  v15[0] = a1;
  v15[1] = &v16 + 1;
  v15[2] = &v19;
  v15[3] = &v16;
  v15[4] = &v17;
  v13 = 0;
  v14 = 0;
  if ((*(*a1 + 416))(a1, &v13))
  {
    v2 = v13;
    for (i = v14; mlir::LLVM::LoopLICMAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v15, v2, i); i = v12)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v11 = 0;
      v12 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v11))
      {
        v8 = (*(*a1 + 40))(a1);
        v9 = "expected a parameter name in struct";
        v10 = 259;
        (*(*a1 + 24))(v21, a1, v8, &v9);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
        return 0;
      }

      v2 = v11;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v20)
  {
    v5 = v19;
  }

  else
  {
    v5 = 0;
  }

  if (v18)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  return mlir::LLVM::LoopLICMAttr::get(v4, v5, v6);
}

uint64_t mlir::LLVM::LoopLICMAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v36[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 7)
  {
    v16 = a1[3];
    if ((*v16 & 1) != 0 || a3 != 17 || (*a2 == 0x696E6F6973726576 ? (v17 = *(a2 + 8) == 0x6C6261736944676ELL) : (v17 = 0), v17 ? (v18 = *(a2 + 16) == 101) : (v18 = 0), !v18))
    {
LABEL_22:
      v19 = *a1;
      v20 = (*(*v19 + 40))(v19);
      v28 = "duplicate or unknown struct parameter name: ";
      v29 = 259;
      (*(*v19 + 24))(&v32, v19, v20, &v28);
      if (v32)
      {
        v31 = 261;
        v30[0] = a2;
        v30[1] = a3;
        mlir::Diagnostic::operator<<(&v33, v30);
      }

      v15 = &v32;
      goto LABEL_25;
    }

    v8 = 1;
    *v16 = 1;
    v22 = *a1;
    v32 = 0;
    v23 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v22, &v32);
    v24 = v32;
    if (!v23)
    {
      v24 = 0;
    }

    v25 = a1[4];
    *v25 = v24;
    *(v25 + 8) = v23;
    if ((*(a1[4] + 8) & 1) == 0)
    {
      v26 = *a1;
      v27 = (*(*v26 + 40))(v26);
      v34 = 259;
      (*(*v26 + 24))(v35, v26, v27, &v32);
      v15 = v35;
      goto LABEL_25;
    }
  }

  else
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_22;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v32 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v32);
    v11 = v32;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v34 = 259;
      (*(*v13 + 24))(v36, v13, v14, &v32);
      v15 = v36;
LABEL_25:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopLICMAttr::print(mlir::LLVM::LoopLICMAttr *this, mlir::AsmPrinter *a2)
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
    if (!*(*this + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 9)
  {
    *(v7 + 8) = 8253;
    *v7 = *"disable = ";
    *(v6 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v6, "disable = ", 0xAuLL);
  }

  v8 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v8 = *this;
  }

  if (*(v8 + 16))
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

LABEL_16:
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if ((*(v11 + 3) - v12) > 0x13)
    {
      *(v12 + 16) = 540876901;
      *v12 = *"versioningDisable = ";
      *(v11 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v11, "versioningDisable = ", 0x14uLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }
  }

LABEL_21:
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

uint64_t mlir::LLVM::LoopDistributeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id;
  v9[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopDistributeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopDistributeAttrEJNS1_8BoolAttrENS2_18LoopAnnotationAttrESE_SE_SE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v15[1] = v9;
  v11[0] = a2;
  v11[1] = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  memset(v17, 0, sizeof(v17));
  v18 = 0xFF51AFD7ED558CCDLL;
  v16 = ((a2 >> 4) ^ (a2 >> 9));
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v16, 0, v17, &v17[3] + 8, a3, &v12, &v13, &v14);
  v10 = v11;
  v16 = v11;
  *&v17[0] = v15;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopDistributeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopDistributeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopDistributeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopDistributeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v16);
}

uint64_t mlir::LLVM::LoopDistributeAttr::parse(mlir::AsmParser *a1)
{
  v31[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v20 = 0;
  v19 = 0;
  v18[0] = a1;
  v18[1] = &v20 + 3;
  v18[2] = &v29;
  v18[3] = &v20 + 2;
  v18[4] = &v27;
  v18[5] = &v20 + 1;
  v18[6] = &v25;
  v18[7] = &v20;
  v18[8] = &v23;
  v18[9] = &v19;
  v18[10] = &v21;
  v16 = 0;
  v17 = 0;
  if ((*(*a1 + 416))(a1, &v16))
  {
    v2 = v16;
    for (i = v17; mlir::LLVM::LoopDistributeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v18, v2, i); i = v15)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v14 = 0;
      v15 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v14))
      {
        v11 = (*(*a1 + 40))(a1);
        v12 = "expected a parameter name in struct";
        v13 = 259;
        (*(*a1 + 24))(v31, a1, v11, &v12);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
        return 0;
      }

      v2 = v14;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v30)
  {
    v5 = v29;
  }

  else
  {
    v5 = 0;
  }

  if (v28)
  {
    v6 = v27;
  }

  else
  {
    v6 = 0;
  }

  if (v26)
  {
    v7 = v25;
  }

  else
  {
    v7 = 0;
  }

  if (v24)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  if (v22)
  {
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  return mlir::LLVM::LoopDistributeAttr::get(v4, v5, v6, v7, v8, v9);
}

uint64_t mlir::LLVM::LoopDistributeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v61[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 7)
  {
    v16 = a1[3];
    v17 = a3 != 18;
    if ((*v16 & 1) == 0 && a3 == 18)
    {
      if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x656469636E696F43 && *(a2 + 16) == 29806)
      {
        v8 = 1;
        *v16 = 1;
        v35 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v36 = a1[4];
        *v36 = v35;
        *(v36 + 8) = v37;
        if (*(a1[4] + 8))
        {
          return v8;
        }

        v38 = *a1;
        v39 = (*(*v38 + 40))(v38);
        v56 = 259;
        (*(*v38 + 24))(v60, v38, v39, &v54);
        v15 = v60;
        goto LABEL_50;
      }

      v17 = 0;
    }

    v20 = a1[5];
    if ((*v20 & 1) == 0 && !v17)
    {
      v21 = *a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x69746E6575716553;
      if (v21 && *(a2 + 16) == 27745)
      {
        v8 = 1;
        *v20 = 1;
        v40 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v41 = a1[6];
        *v41 = v40;
        *(v41 + 8) = v42;
        if (*(a1[6] + 8))
        {
          return v8;
        }

        v43 = *a1;
        v44 = (*(*v43 + 40))(v43);
        v56 = 259;
        (*(*v43 + 24))(v59, v43, v44, &v54);
        v15 = v59;
        goto LABEL_50;
      }
    }

    v23 = a1[7];
    if ((*v23 & 1) != 0 || a3 != 16)
    {
      v30 = a1[9];
      if ((*v30 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
      {
        v8 = 1;
        *v30 = 1;
        v45 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v46 = a1[10];
        *v46 = v45;
        *(v46 + 8) = v47;
        if (*(a1[10] + 8))
        {
          return v8;
        }

        v48 = *a1;
        v49 = (*(*v48 + 40))(v48);
        v56 = 259;
        (*(*v48 + 24))(v57, v48, v49, &v54);
        v15 = v57;
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (*a2 != 0x7075776F6C6C6F66 || *(a2 + 8) != 0x6B6361626C6C6146)
    {
LABEL_47:
      v32 = *a1;
      v33 = (*(*v32 + 40))(v32);
      v50 = "duplicate or unknown struct parameter name: ";
      v51 = 259;
      (*(*v32 + 24))(&v54, v32, v33, &v50);
      if (v54)
      {
        v53 = 261;
        v52[0] = a2;
        v52[1] = a3;
        mlir::Diagnostic::operator<<(&v55, v52);
      }

      v15 = &v54;
      goto LABEL_50;
    }

    v8 = 1;
    *v23 = 1;
    v25 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
    v26 = a1[8];
    *v26 = v25;
    *(v26 + 8) = v27;
    if ((*(a1[8] + 8) & 1) == 0)
    {
      v28 = *a1;
      v29 = (*(*v28 + 40))(v28);
      v56 = 259;
      (*(*v28 + 24))(v58, v28, v29, &v54);
      v15 = v58;
      goto LABEL_50;
    }
  }

  else
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_47;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v54 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v54);
    v11 = v54;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v56 = 259;
      (*(*v13 + 24))(v61, v13, v14, &v54);
      v15 = v61;
LABEL_50:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return 0;
    }
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopDistributeAttr::print(mlir::LLVM::LoopDistributeAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_24;
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

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 0x14uLL)
  {
    qmemcpy(v13, "followupCoincident = ", 21);
    *(v12 + 4) += 21;
  }

  else
  {
    llvm::raw_ostream::write(v12, "followupCoincident = ", 0x15uLL);
  }

  v9 = *this;
  v14 = *(*this + 16);
  if (v14)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v14);
    v9 = *this;
  }

LABEL_24:
  if (!v9[3])
  {
    goto LABEL_33;
  }

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

LABEL_28:
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 0x14uLL)
  {
    qmemcpy(v18, "followupSequential = ", 21);
    *(v17 + 4) += 21;
  }

  else
  {
    llvm::raw_ostream::write(v17, "followupSequential = ", 0x15uLL);
  }

  v9 = *this;
  v19 = *(*this + 24);
  if (v19)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v19);
    v9 = *this;
  }

LABEL_33:
  if (v9[4])
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

LABEL_37:
    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if ((*(v22 + 3) - v23) > 0x12)
    {
      *(v23 + 15) = 540876907;
      *v23 = *"followupFallback = ";
      *(v22 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v22, "followupFallback = ", 0x13uLL);
    }

    v9 = *this;
    v24 = *(*this + 32);
    if (v24)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v24);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_51;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) - v26 > 1uLL)
  {
    *v26 = 8236;
    *(v25 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v25, ", ", 2uLL);
  }

LABEL_46:
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 0xDuLL)
  {
    qmemcpy(v28, "followupAll = ", 14);
    *(v27 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v27, "followupAll = ", 0xEuLL);
  }

  v29 = *(*this + 40);
  if (v29)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v29);
  }

LABEL_51:
  result = (*(*a2 + 16))(a2);
  v31 = *(result + 4);
  if (*(result + 3) == v31)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v31 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopPipelineAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id;
  v6[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopPipelineAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopPipelineAttrEJNS1_8BoolAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
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
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopPipelineAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::BoolAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPipelineAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPipelineAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::BoolAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPipelineAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
}

uint64_t mlir::LLVM::LoopPipelineAttr::parse(mlir::AsmParser *a1)
{
  v21[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v16 = 0;
  v15[0] = a1;
  v15[1] = &v16 + 1;
  v15[2] = &v19;
  v15[3] = &v16;
  v15[4] = &v17;
  v13 = 0;
  v14 = 0;
  if ((*(*a1 + 416))(a1, &v13))
  {
    v2 = v13;
    for (i = v14; mlir::LLVM::LoopPipelineAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v15, v2, i); i = v12)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v11 = 0;
      v12 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v11))
      {
        v8 = (*(*a1 + 40))(a1);
        v9 = "expected a parameter name in struct";
        v10 = 259;
        (*(*a1 + 24))(v21, a1, v8, &v9);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
        return 0;
      }

      v2 = v11;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v20)
  {
    v5 = v19;
  }

  else
  {
    v5 = 0;
  }

  if (v18)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  return mlir::LLVM::LoopPipelineAttr::get(v4, v5, v6);
}

uint64_t mlir::LLVM::LoopPipelineAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v35[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 7)
  {
    v16 = a1[3];
    if ((*v16 & 1) == 0 && a3 == 18)
    {
      v17 = *a2 == 0x6974616974696E69 && *(a2 + 8) == 0x767265746E696E6FLL;
      if (v17 && *(a2 + 16) == 27745)
      {
        v8 = 1;
        *v16 = 1;
        v22 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
        v23 = a1[4];
        *v23 = v22;
        *(v23 + 8) = v24;
        if (*(a1[4] + 8))
        {
          return v8;
        }

        v25 = *a1;
        v26 = (*(*v25 + 40))(v25);
        v33 = 259;
        (*(*v25 + 24))(v34, v25, v26, &v31);
        v15 = v34;
        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

  if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
  {
LABEL_22:
    v19 = *a1;
    v20 = (*(*v19 + 40))(v19);
    v27 = "duplicate or unknown struct parameter name: ";
    v28 = 259;
    (*(*v19 + 24))(&v31, v19, v20, &v27);
    if (v31)
    {
      v30 = 261;
      v29[0] = a2;
      v29[1] = a3;
      mlir::Diagnostic::operator<<(&v32, v29);
    }

    v15 = &v31;
    goto LABEL_25;
  }

  v8 = 1;
  *v6 = 1;
  v9 = *a1;
  v31 = 0;
  v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v31);
  v11 = v31;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = a1[2];
  *v12 = v11;
  *(v12 + 8) = v10;
  if ((*(a1[2] + 8) & 1) == 0)
  {
    v13 = *a1;
    v14 = (*(*v13 + 40))(v13);
    v33 = 259;
    (*(*v13 + 24))(v35, v13, v14, &v31);
    v15 = v35;
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    return 0;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopPipelineAttr::print(mlir::LLVM::LoopPipelineAttr *this, mlir::AsmPrinter *a2)
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
    if (!*(*this + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 9)
  {
    *(v7 + 8) = 8253;
    *v7 = *"disable = ";
    *(v6 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v6, "disable = ", 0xAuLL);
  }

  v8 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v8 = *this;
  }

  if (*(v8 + 16))
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

LABEL_16:
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 0x14uLL)
    {
      qmemcpy(v12, "initiationinterval = ", 21);
      *(v11 + 4) += 21;
    }

    else
    {
      llvm::raw_ostream::write(v11, "initiationinterval = ", 0x15uLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }
  }

LABEL_21:
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

uint64_t mlir::LLVM::LoopPeeledAttr::get(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id;
  v5[1] = a1;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopPeeledAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopPeeledAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v8[1] = v5;
  v7 = a2;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(v9, 0, v9, v10, &v7);
  v6 = &v7;
  *&v9[0] = &v7;
  *(&v9[0] + 1) = v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopPeeledAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPeeledAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v6, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPeeledAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPeeledAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::LLVM::LoopPeeledAttr::parse(mlir::AsmParser *a1)
{
  v18[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v16) = 0;
  v17 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v15 = 0;
  v14[0] = a1;
  v14[1] = &v15;
  v14[2] = &v16;
  v12 = 0;
  v13 = 0;
  if ((*(*a1 + 416))(a1, &v12))
  {
    v2 = v12;
    for (i = v13; mlir::LLVM::LoopPeeledAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v14, v2, i); i = v11)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v10 = 0;
      v11 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v10))
      {
        v7 = (*(*a1 + 40))(a1);
        v8 = "expected a parameter name in struct";
        v9 = 259;
        (*(*a1 + 24))(v18, a1, v7, &v8);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        return 0;
      }

      v2 = v10;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v17)
  {
    v5 = v16;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::LoopPeeledAttr::get(v4, v5);
}

uint64_t mlir::LLVM::LoopPeeledAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v24[26] = *MEMORY[0x277D85DE8];
  if ((*(**a1 + 136))(*a1))
  {
    v6 = a1[1];
    if ((*v6 & 1) == 0 && a3 == 5 && (*a2 == 1853189987 ? (v7 = *(a2 + 4) == 116) : (v7 = 0), v7))
    {
      v11 = 1;
      *v6 = 1;
      v13 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
      v14 = a1[2];
      *v14 = v13;
      *(v14 + 8) = v15;
      if (*(a1[2] + 8))
      {
        return v11;
      }

      v16 = *a1;
      v17 = (*(**a1 + 40))(*a1);
      v23[12] = 259;
      (*(*v16 + 24))(v24, v16, v17, &v22);
      v10 = v24;
    }

    else
    {
      v8 = *a1;
      v9 = (*(*v8 + 40))(v8);
      v18 = "duplicate or unknown struct parameter name: ";
      v19 = 259;
      (*(*v8 + 24))(&v22, v8, v9, &v18);
      if (v22)
      {
        v21 = 261;
        v20[0] = a2;
        v20[1] = a3;
        mlir::Diagnostic::operator<<(v23, v20);
      }

      v10 = &v22;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  return 0;
}

llvm::raw_ostream *mlir::LLVM::LoopPeeledAttr::print(mlir::LLVM::LoopPeeledAttr *this, mlir::AsmPrinter *a2)
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
  }

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

uint64_t mlir::LLVM::LoopUnswitchAttr::get(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id;
  v5[1] = a1;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopUnswitchAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopUnswitchAttrEJNS1_8BoolAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v8[1] = v5;
  v7 = a2;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::BoolAttr>(v9, 0, v9, v10, a2);
  v6 = &v7;
  *&v9[0] = &v7;
  *(&v9[0] + 1) = v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopUnswitchAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnswitchAttrStorage *)>,mlir::TypeID,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v6, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnswitchAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnswitchAttrStorage *)>,mlir::TypeID,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::LLVM::LoopUnswitchAttr::parse(mlir::AsmParser *a1)
{
  v18[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v16) = 0;
  v17 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v15 = 0;
  v14[0] = a1;
  v14[1] = &v15;
  v14[2] = &v16;
  v12 = 0;
  v13 = 0;
  if ((*(*a1 + 416))(a1, &v12))
  {
    v2 = v12;
    for (i = v13; mlir::LLVM::LoopUnswitchAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v14, v2, i); i = v11)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v10 = 0;
      v11 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v10))
      {
        v7 = (*(*a1 + 40))(a1);
        v8 = "expected a parameter name in struct";
        v9 = 259;
        (*(*a1 + 24))(v18, a1, v7, &v8);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        return 0;
      }

      v2 = v10;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v17)
  {
    v5 = v16;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::LoopUnswitchAttr::get(v4, v5);
}

uint64_t mlir::LLVM::LoopUnswitchAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, void *a2, const char *a3)
{
  v25[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 14 || (*a2 == 0x446C616974726170 ? (v7 = *(a2 + 6) == 0x656C62617369446CLL) : (v7 = 0), !v7))
  {
    v8 = *a1;
    v9 = (*(*v8 + 40))(v8);
    v19 = "duplicate or unknown struct parameter name: ";
    v20 = 259;
    (*(*v8 + 24))(&v23, v8, v9, &v19);
    if (v23)
    {
      v22 = 261;
      v21[0] = a2;
      v21[1] = a3;
      mlir::Diagnostic::operator<<(v24, v21);
    }

    v10 = &v23;
    goto LABEL_11;
  }

  v11 = 1;
  *v6 = 1;
  v13 = *a1;
  v23 = 0;
  v14 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v13, &v23);
  v15 = v23;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = a1[2];
  *v16 = v15;
  *(v16 + 8) = v14;
  if ((*(a1[2] + 8) & 1) == 0)
  {
    v17 = *a1;
    v18 = (*(**a1 + 40))(*a1);
    v24[12] = 259;
    (*(*v17 + 24))(v25, v17, v18, &v23);
    v10 = v25;
LABEL_11:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    return 0;
  }

  return v11;
}

llvm::raw_ostream *mlir::LLVM::LoopUnswitchAttr::print(mlir::LLVM::LoopUnswitchAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v6 + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 32;
      *v7 = *"partialDisable = ";
      *(v6 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v6, "partialDisable = ", 0x11uLL);
    }

    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
    }
  }

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

uint64_t mlir::LLVM::LoopAnnotationAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, unsigned int *a14, uint64_t a15)
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v76[0] = *MEMORY[0x277D85DE8];
  v18 = *a1;
  v50[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id;
  v50[1] = a1;
  v56[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopAnnotationAttrEJNS1_8BoolAttrENS2_17LoopVectorizeAttrENS2_18LoopInterleaveAttrENS2_14LoopUnrollAttrENS2_20LoopUnrollAndJamAttrENS2_12LoopLICMAttrENS2_18LoopDistributeAttrENS2_16LoopPipelineAttrENS2_14LoopPeeledAttrENS2_16LoopUnswitchAttrESD_SD_NS1_8FusedLocESN_NS_8ArrayRefINS2_15AccessGroupAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueEST_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSV_E_EEvlS5_;
  v56[1] = v50;
  v51[0] = a2;
  v51[1] = a3;
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = a6;
  v51[5] = a7;
  v51[6] = a8;
  v51[7] = a9;
  v51[8] = a10;
  v51[9] = a11;
  v52 = a12;
  v53 = a13;
  v54 = a14;
  v55 = a15;
  memset(v74, 0, 96);
  v71 = ((a2 >> 4) ^ (a2 >> 9));
  v72 = ((a3 >> 4) ^ (a3 >> 9));
  v74[12] = 0xFF51AFD7ED558CCDLL;
  v73 = (a4 >> 4) ^ (a4 >> 9);
  v57 = 0;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v57, v74, &v74[5], (a5 >> 4) ^ (a5 >> 9));
  v58 = v57;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v58, v19, &v74[5], (v17 >> 4) ^ (v17 >> 9));
  v59 = v58;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v59, v20, &v74[5], (v16 >> 4) ^ (v16 >> 9));
  v60 = v59;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v60, v21, &v74[5], (v15 >> 4) ^ (v15 >> 9));
  v61 = v60;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v61, v22, &v74[5], (a9 >> 4) ^ (a9 >> 9));
  v62 = v61;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v62, v23, &v74[5], (a10 >> 4) ^ (a10 >> 9));
  v63 = v62;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v63, v24, &v74[5], (a11 >> 4) ^ (a11 >> 9));
  v64 = v63;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v64, v25, &v74[5], (v52 >> 4) ^ (v52 >> 9));
  v65 = v64;
  v27 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v65, v26, &v74[5], (DWORD2(v52) >> 4) ^ (DWORD2(v52) >> 9));
  v66 = v65;
  v28 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v66, v27, &v74[5], (v53 >> 4) ^ (v53 >> 9));
  v67 = v66;
  v31 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v67, v28, &v74[5], (DWORD2(v53) >> 4) ^ (DWORD2(v53) >> 9));
  v32 = v54;
  v33 = v55;
  v68 = v67;
  if (v55)
  {
    v34 = 0;
    v35 = 8 * v55;
    v36 = &v54[2 * v55];
    while (v34 <= 0x38)
    {
      v37 = v34 + 8;
      v38 = *v32;
      v32 += 2;
      *&__src[v34] = (v38 >> 4) ^ (v38 >> 9);
      v34 = v37;
      if (v35 == v37)
      {
        goto LABEL_7;
      }
    }

    v69[0] = xmmword_25D0A0610;
    v69[1] = xmmword_25D0A0620;
    v69[2] = xmmword_25D0A0630;
    v70 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v69, __src, v29, v30);
    v40 = 64;
    if (v34 != 8 * v33)
    {
      do
      {
        v41 = 0;
        do
        {
          v42 = *v32;
          v32 += 2;
          v43 = v41 + 8;
          *&__src[v41] = (v42 >> 4) ^ (v42 >> 9);
          if (v32 == v36)
          {
            break;
          }

          v44 = v41 >= 0x31;
          v41 += 8;
        }

        while (!v44);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v43], v76);
        llvm::hashing::detail::hash_state::mix(v69, __src, v45, v46);
        v40 += v43;
      }

      while (v32 != v36);
    }

    v39 = llvm::hashing::detail::hash_state::finalize(v69, v40);
  }

  else
  {
    v37 = 0;
LABEL_7:
    v39 = llvm::hashing::detail::hash_short(__src, v37, 0xFF51AFD7ED558CCDLL);
  }

  v47 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v71, &v68, v31, &v74[5], v39);
  v48 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v71, v68, v47, &v74[5]);
  *__src = v51;
  v71 = v51;
  v72 = v56;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v18 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, v48, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, __src, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v71);
}

uint64_t mlir::LLVM::LoopAnnotationAttr::parse(void *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v71) = 0;
  v72 = 0;
  LOBYTE(v69) = 0;
  v70 = 0;
  LOBYTE(v67) = 0;
  v68 = 0;
  LOBYTE(v65) = 0;
  v66 = 0;
  LOBYTE(v63) = 0;
  v64 = 0;
  LOBYTE(v61) = 0;
  v62 = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  LOBYTE(v55) = 0;
  v56 = 0;
  LOBYTE(v53) = 0;
  v54 = 0;
  LOBYTE(v51) = 0;
  v52 = 0;
  LOBYTE(v49) = 0;
  v50 = 0;
  LOBYTE(v47) = 0;
  v48 = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  LOBYTE(v79) = 0;
  v82 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v76 = a1;
  v77 = &v44 + 3;
  v78[0] = &v71;
  v78[1] = &v44 + 2;
  v78[2] = &v69;
  v78[3] = &v44 + 1;
  v78[4] = &v67;
  v78[5] = &v44;
  v78[6] = &v65;
  v78[7] = &v43 + 3;
  v78[8] = &v63;
  v78[9] = &v43 + 2;
  v78[10] = &v61;
  v78[11] = &v43 + 1;
  v78[12] = &v59;
  v78[13] = &v43;
  v78[14] = &v57;
  v78[15] = &v42 + 3;
  v78[16] = &v55;
  v78[17] = &v42 + 2;
  v78[18] = &v53;
  v78[19] = &v42 + 1;
  v78[20] = &v51;
  v78[21] = &v42;
  v78[22] = &v49;
  v78[23] = &v41 + 1;
  v78[24] = &v47;
  v78[25] = &v41;
  v78[26] = &v45;
  v78[27] = &v40;
  v78[28] = &v79;
  v38 = 0;
  v39 = 0;
  if ((*(*a1 + 416))(a1, &v38))
  {
    v2 = v38;
    for (i = v39; mlir::LLVM::LoopAnnotationAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v76, v2, i); i = v37)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v36 = 0;
      v37 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v36))
      {
        v24 = (*(*a1 + 40))(a1);
        v73[0] = "expected a parameter name in struct";
        v74[8] = 259;
        (*(*a1 + 24))(v75, a1, v24, v73);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v75);
        goto LABEL_66;
      }

      v2 = v36;
    }

    goto LABEL_66;
  }

LABEL_9:
  if ((*(*a1 + 168))(a1))
  {
    v5 = *(*(*a1 + 32))(a1);
    if (v72)
    {
      v6 = v71;
    }

    else
    {
      v6 = 0;
    }

    if (v70)
    {
      v7 = v69;
    }

    else
    {
      v7 = 0;
    }

    if (v68)
    {
      v8 = v67;
    }

    else
    {
      v8 = 0;
    }

    if (v66)
    {
      v9 = v65;
    }

    else
    {
      v9 = 0;
    }

    if (v64)
    {
      v10 = v63;
    }

    else
    {
      v10 = 0;
    }

    if (v62)
    {
      v11 = v61;
    }

    else
    {
      v11 = 0;
    }

    if (v60)
    {
      v12 = v59;
    }

    else
    {
      v12 = 0;
    }

    if (v58)
    {
      v13 = v57;
    }

    else
    {
      v13 = 0;
    }

    if (v56)
    {
      v14 = v55;
    }

    else
    {
      v14 = 0;
    }

    if (v54)
    {
      v15 = v53;
    }

    else
    {
      v15 = 0;
    }

    if (v52)
    {
      v16 = v51;
    }

    else
    {
      v16 = 0;
    }

    if (v50)
    {
      v17 = v49;
    }

    else
    {
      v17 = 0;
    }

    if (v48)
    {
      v18 = v47;
    }

    else
    {
      v18 = 0;
    }

    if (v46)
    {
      v19 = v45;
    }

    else
    {
      v19 = 0;
    }

    v73[0] = v74;
    v73[1] = 0x600000000;
    v76 = v78;
    v77 = 0x600000000;
    if (v82 != 1 || (v20 = v80) == 0)
    {
      v20 = 0;
      v23 = v78;
LABEL_61:
      *&v27 = v18;
      *(&v27 + 1) = v19;
      *&v26 = v16;
      *(&v26 + 1) = v17;
      v4 = mlir::LLVM::LoopAnnotationAttr::get(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v26, v27, v23, v20);
      if (v76 != v78)
      {
        free(v76);
      }

      if (v73[0] != v74)
      {
        free(v73[0]);
      }

      goto LABEL_67;
    }

    v28 = v12;
    v29 = v11;
    v30 = v10;
    v31 = v9;
    v32 = v8;
    v33 = v7;
    v34 = v6;
    v35 = v5;
    if (v80 < 7)
    {
      v22 = v78;
      v21 = v80;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v80, 8);
      v21 = v80;
      if (!v80)
      {
LABEL_60:
        LODWORD(v77) = v20;
        v23 = v76;
        v6 = v34;
        v5 = v35;
        v8 = v32;
        v7 = v33;
        v10 = v30;
        v9 = v31;
        v12 = v28;
        v11 = v29;
        goto LABEL_61;
      }

      v22 = v76;
    }

    memcpy(v22, v79, 8 * v21);
    goto LABEL_60;
  }

LABEL_66:
  v4 = 0;
LABEL_67:
  if ((v82 & 1) != 0 && v79 != &v81)
  {
    free(v79);
  }

  return v4;
}

uint64_t mlir::LLVM::LoopAnnotationAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, const char *a3)
{
  v167 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 16)
  {
    v7 = *a2 == 0x4E656C6261736964 && *(a2 + 8) == 0x646563726F666E6FLL;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    if (v7)
    {
      *v6 = 1;
      v11 = *a1;
      v161 = 0;
      v12 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v11, &v161);
      v13 = v161;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = a1[2];
      *v14 = v13;
      *(v14 + 8) = v12;
      if (*(a1[2] + 8))
      {
        return v8;
      }

      v15 = *a1;
      v16 = (*(*v15 + 40))(v15);
      v164 = 259;
      (*(*v15 + 24))(v160, v15, v16, &v161);
      v17 = v160;
LABEL_167:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
      return 0;
    }

    goto LABEL_19;
  }

  v18 = a1[3];
  if ((*v18 & 1) != 0 || a3 != 9)
  {
    v34 = a1[5];
    v35 = a3 != 10;
    if ((*v34 & 1) != 0 || a3 != 10)
    {
      v40 = a1[7];
      v9 = a3 != 6;
      if ((*v40 & 1) == 0 && a3 == 6)
      {
        v41 = *a2 == 1869770357 && *(a2 + 4) == 27756;
        v8 = 1;
        if (v41)
        {
          *v40 = 1;
          v104 = mlir::FieldParser<mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAttr>::parse(*a1);
          v105 = a1[8];
          *v105 = v104;
          *(v105 + 8) = v106;
          if ((*(a1[8] + 8) & 1) == 0)
          {
            v107 = *a1;
            v108 = (*(*v107 + 40))(v107);
            v164 = 259;
            (*(*v107 + 24))(v157, v107, v108, &v161);
            v17 = v157;
            goto LABEL_167;
          }

          return v8;
        }

        v9 = 0;
        v10 = 1;
        goto LABEL_19;
      }

      v64 = a1[9];
      v10 = a3 != 12;
      if ((*v64 & 1) == 0 && a3 == 12)
      {
        v65 = *a2 == 0x6E416C6C6F726E75 && *(a2 + 8) == 1835092580;
        LODWORD(v8) = 1;
        if (v65)
        {
          *v64 = 1;
          v124 = *a1;
          v125 = (*(**a1 + 32))(*a1);
          mlir::MLIRContext::getOrLoadDialect(*v125, "llvm", 4uLL, v126);
          v127 = (*(*v124 + 40))(v124);
          v142[0] = 0;
          v161 = v124;
          if ((*(*v124 + 448))(v124, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20LoopUnrollAndJamAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
          {
            v128 = v142[0];
            if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id)
            {
              v144[0] = "invalid kind of attribute specified";
              v145 = 259;
              (*(*v124 + 24))(&v161, v124, v127, v144);
              LODWORD(v8) = (v166 & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
              v128 = 0;
            }
          }

          else
          {
            v128 = 0;
            LODWORD(v8) = 0;
          }

          if (!v8)
          {
            v128 = 0;
          }

          v135 = a1[10];
          *v135 = v128;
          *(v135 + 8) = v8;
          if ((*(a1[10] + 8) & 1) == 0)
          {
            v136 = *a1;
            v137 = (*(*v136 + 40))(v136);
            v164 = 259;
            (*(*v136 + 24))(v156, v136, v137, &v161);
            v17 = v156;
            goto LABEL_167;
          }

          return 1;
        }

        v10 = 0;
        v9 = 1;
        goto LABEL_19;
      }

      v98 = a1[11];
      if ((*v98 & 1) == 0 && a3 == 4)
      {
        LODWORD(v8) = 1;
        v9 = 1;
        v10 = 1;
        if (*a2 == 1835231596)
        {
          *v98 = 1;
          v99 = *a1;
          v100 = (*(**a1 + 32))(*a1);
          mlir::MLIRContext::getOrLoadDialect(*v100, "llvm", 4uLL, v101);
          v102 = (*(*v99 + 40))(v99);
          v142[0] = 0;
          v161 = v99;
          if ((*(*v99 + 448))(v99, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM12LoopLICMAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
          {
            v103 = v142[0];
            if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id)
            {
              v144[0] = "invalid kind of attribute specified";
              v145 = 259;
              (*(*v99 + 24))(&v161, v99, v102, v144);
              LODWORD(v8) = (v166 & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
              v103 = 0;
            }
          }

          else
          {
            v103 = 0;
            LODWORD(v8) = 0;
          }

          if (!v8)
          {
            v103 = 0;
          }

          v138 = a1[12];
          *v138 = v103;
          *(v138 + 8) = v8;
          if ((*(a1[12] + 8) & 1) == 0)
          {
            v139 = *a1;
            v140 = (*(*v139 + 40))(v139);
            v164 = 259;
            (*(*v139 + 24))(v155, v139, v140, &v161);
            v17 = v155;
            goto LABEL_167;
          }

          return 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v36 = *a2 == 0x61656C7265746E69 && *(a2 + 8) == 25974;
      v9 = 1;
      if (v36)
      {
        *v34 = 1;
        v79 = *a1;
        v80 = (*(**a1 + 32))(*a1);
        mlir::MLIRContext::getOrLoadDialect(*v80, "llvm", 4uLL, v81);
        v82 = (*(*v79 + 40))(v79);
        v142[0] = 0;
        v161 = v79;
        if ((*(*v79 + 448))(v79, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopInterleaveAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
        {
          v83 = v142[0];
          v84 = 1;
          if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id)
          {
            v144[0] = "invalid kind of attribute specified";
            v145 = 259;
            (*(*v79 + 24))(&v161, v79, v82, v144);
            v84 = (v166 & 1) == 0;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
            v83 = 0;
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
        }

        if (!v84)
        {
          v83 = 0;
        }

        v109 = a1[6];
        *v109 = v83;
        *(v109 + 8) = v84;
        if ((*(a1[6] + 8) & 1) == 0)
        {
          v110 = *a1;
          v111 = (*(*v110 + 40))(v110);
          v164 = 259;
          (*(*v110 + 24))(v158, v110, v111, &v161);
          v17 = v158;
          goto LABEL_167;
        }

        return 1;
      }

      v35 = 0;
      v10 = 1;
    }

    v37 = a1[13];
    if ((*v37 & 1) == 0 && !v35 && *a2 == 0x7562697274736964 && *(a2 + 8) == 25972)
    {
      *v37 = 1;
      v112 = *a1;
      v113 = (*(**a1 + 32))(*a1);
      mlir::MLIRContext::getOrLoadDialect(*v113, "llvm", 4uLL, v114);
      v115 = (*(*v112 + 40))(v112);
      v142[0] = 0;
      v161 = v112;
      if ((*(*v112 + 448))(v112, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopDistributeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
      {
        v116 = v142[0];
        v117 = 1;
        if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id)
        {
          v144[0] = "invalid kind of attribute specified";
          v145 = 259;
          (*(*v112 + 24))(&v161, v112, v115, v144);
          v117 = (v166 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
          v116 = 0;
        }
      }

      else
      {
        v116 = 0;
        v117 = 0;
      }

      if (!v117)
      {
        v116 = 0;
      }

      v129 = a1[14];
      *v129 = v116;
      *(v129 + 8) = v117;
      if ((*(a1[14] + 8) & 1) == 0)
      {
        v130 = *a1;
        v131 = (*(*v130 + 40))(v130);
        v164 = 259;
        (*(*v130 + 24))(v154, v130, v131, &v161);
        v17 = v154;
        goto LABEL_167;
      }

      return 1;
    }

    v39 = a1[15];
    LODWORD(v8) = a3 != 8;
    if ((*v39 & 1) == 0 && a3 == 8)
    {
      if (*a2 == 0x656E696C65706970)
      {
        *v39 = 1;
        v118 = *a1;
        v119 = (*(**a1 + 32))(*a1);
        mlir::MLIRContext::getOrLoadDialect(*v119, "llvm", 4uLL, v120);
        v121 = (*(*v118 + 40))(v118);
        v142[0] = 0;
        v161 = v118;
        if ((*(*v118 + 448))(v118, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopPipelineAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
        {
          v122 = v142[0];
          v123 = 1;
          if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id)
          {
            v144[0] = "invalid kind of attribute specified";
            v145 = 259;
            (*(*v118 + 24))(&v161, v118, v121, v144);
            v123 = (v166 & 1) == 0;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
            v122 = 0;
          }
        }

        else
        {
          v122 = 0;
          v123 = 0;
        }

        if (!v123)
        {
          v122 = 0;
        }

        v132 = a1[16];
        *v132 = v122;
        *(v132 + 8) = v123;
        if ((*(a1[16] + 8) & 1) == 0)
        {
          v133 = *a1;
          v134 = (*(*v133 + 40))(v133);
          v164 = 259;
          (*(*v133 + 24))(v153, v133, v134, &v161);
          v17 = v153;
          goto LABEL_167;
        }

        return 1;
      }

      LODWORD(v8) = 0;
    }

    goto LABEL_19;
  }

  v19 = *a2 == 0x7A69726F74636576 && *(a2 + 8) == 101;
  LODWORD(v8) = 1;
  v9 = 1;
  v10 = 1;
  if (v19)
  {
    *v18 = 1;
    v48 = *a1;
    v49 = (*(**a1 + 32))(*a1);
    mlir::MLIRContext::getOrLoadDialect(*v49, "llvm", 4uLL, v50);
    v51 = (*(*v48 + 40))(v48);
    v142[0] = 0;
    v161 = v48;
    if ((*(*v48 + 448))(v48, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17LoopVectorizeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
    {
      v52 = v142[0];
      if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id)
      {
        v144[0] = "invalid kind of attribute specified";
        v145 = 259;
        (*(*v48 + 24))(&v161, v48, v51, v144);
        LODWORD(v8) = (v166 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
      LODWORD(v8) = 0;
    }

    if (!v8)
    {
      v52 = 0;
    }

    v85 = a1[4];
    *v85 = v52;
    *(v85 + 8) = v8;
    if ((*(a1[4] + 8) & 1) == 0)
    {
      v86 = *a1;
      v87 = (*(*v86 + 40))(v86);
      v164 = 259;
      (*(*v86 + 24))(v159, v86, v87, &v161);
      v17 = v159;
      goto LABEL_167;
    }

    return 1;
  }

LABEL_19:
  v20 = a1[17];
  if ((*v20 & 1) == 0 && !v9 && *a2 == 1818584432 && *(a2 + 4) == 25701)
  {
    *v20 = 1;
    v42 = *a1;
    v43 = (*(**a1 + 32))(*a1);
    mlir::MLIRContext::getOrLoadDialect(*v43, "llvm", 4uLL, v44);
    v45 = (*(*v42 + 40))(v42);
    v142[0] = 0;
    v161 = v42;
    if ((*(*v42 + 448))(v42, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopPeeledAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
    {
      v46 = v142[0];
      v47 = 1;
      if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id)
      {
        v144[0] = "invalid kind of attribute specified";
        v145 = 259;
        (*(*v42 + 24))(&v161, v42, v45, v144);
        v47 = (v166 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    if (!v47)
    {
      v46 = 0;
    }

    v71 = a1[18];
    *v71 = v46;
    *(v71 + 8) = v47;
    if ((*(a1[18] + 8) & 1) == 0)
    {
      v72 = *a1;
      v73 = (*(*v72 + 40))(v72);
      v164 = 259;
      (*(*v72 + 24))(v152, v72, v73, &v161);
      v17 = v152;
      goto LABEL_167;
    }

    return 1;
  }

  v22 = a1[19];
  if (((*v22 | v8) & 1) == 0 && *a2 == 0x6863746977736E75)
  {
    *v22 = 1;
    v53 = *a1;
    v54 = (*(**a1 + 32))(*a1);
    mlir::MLIRContext::getOrLoadDialect(*v54, "llvm", 4uLL, v55);
    v56 = (*(*v53 + 40))(v53);
    v142[0] = 0;
    v161 = v53;
    if ((*(*v53 + 448))(v53, v142, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopUnswitchAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v161))
    {
      v57 = v142[0];
      v58 = 1;
      if (*(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id)
      {
        v144[0] = "invalid kind of attribute specified";
        v145 = 259;
        (*(*v53 + 24))(&v161, v53, v56, v144);
        v58 = (v166 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v161);
        v57 = 0;
      }
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    if (!v58)
    {
      v57 = 0;
    }

    v88 = a1[20];
    *v88 = v57;
    *(v88 + 8) = v58;
    if ((*(a1[20] + 8) & 1) == 0)
    {
      v89 = *a1;
      v90 = (*(*v89 + 40))(v89);
      v164 = 259;
      (*(*v89 + 24))(v151, v89, v90, &v161);
      v17 = v151;
      goto LABEL_167;
    }

    return 1;
  }

  v23 = a1[21];
  if (((*v23 | v10) & 1) == 0 && *a2 == 0x676F72507473756DLL && *(a2 + 8) == 1936942450)
  {
    v8 = 1;
    *v23 = 1;
    v59 = mlir::FieldParser<mlir::BoolAttr,mlir::BoolAttr>::parse(*a1);
    v60 = a1[22];
    *v60 = v59;
    *(v60 + 8) = v61;
    if (*(a1[22] + 8))
    {
      return v8;
    }

    v62 = *a1;
    v63 = (*(*v62 + 40))(v62);
    v164 = 259;
    (*(*v62 + 24))(v150, v62, v63, &v161);
    v17 = v150;
    goto LABEL_167;
  }

  v25 = a1[23];
  if (((*v25 | v10) & 1) == 0 && *a2 == 0x726F746365567369 && *(a2 + 8) == 1684372073)
  {
    v8 = 1;
    *v25 = 1;
    v66 = mlir::FieldParser<mlir::BoolAttr,mlir::BoolAttr>::parse(*a1);
    v67 = a1[24];
    *v67 = v66;
    *(v67 + 8) = v68;
    if (*(a1[24] + 8))
    {
      return v8;
    }

    v69 = *a1;
    v70 = (*(*v69 + 40))(v69);
    v164 = 259;
    (*(*v69 + 24))(v149, v69, v70, &v161);
    v17 = v149;
    goto LABEL_167;
  }

  v27 = a1[25];
  if (((*v27 | v8) & 1) == 0 && *a2 == 0x636F4C7472617473)
  {
    v8 = 1;
    *v27 = 1;
    v74 = mlir::FieldParser<mlir::FusedLoc,mlir::FusedLoc>::parse(*a1);
    v75 = a1[26];
    *v75 = v74;
    *(v75 + 8) = v76;
    if (*(a1[26] + 8))
    {
      return v8;
    }

    v77 = *a1;
    v78 = (*(*v77 + 40))(v77);
    v164 = 259;
    (*(*v77 + 24))(v148, v77, v78, &v161);
    v17 = v148;
    goto LABEL_167;
  }

  v28 = a1[27];
  if (((*v28 | v9) & 1) != 0 || (*a2 == 1281650277 ? (v29 = *(a2 + 4) == 25455) : (v29 = 0), !v29))
  {
    v30 = a1[29];
    if ((*v30 & 1) != 0 || a3 != 16 || (*a2 == 0x6C656C6C61726170 ? (v31 = *(a2 + 8) == 0x7365737365636341) : (v31 = 0), !v31))
    {
      v32 = *a1;
      v33 = (*(*v32 + 40))(v32);
      v142[0] = "duplicate or unknown struct parameter name: ";
      v143 = 259;
      (*(*v32 + 24))(&v161, v32, v33, v142);
      if (v161)
      {
        v145 = 261;
        v144[0] = a2;
        v144[1] = a3;
        mlir::Diagnostic::operator<<(&v162, v144);
      }

      v17 = &v161;
      goto LABEL_167;
    }

    *v30 = 1;
    mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(&v161, *a1);
    std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>>(a1[30], &v161);
    if (v165 == 1 && v161 != &v163)
    {
      free(v161);
    }

    if ((*(a1[30] + 64) & 1) == 0)
    {
      v96 = *a1;
      v97 = (*(*v96 + 40))(v96);
      v164 = 259;
      (*(*v96 + 24))(v146, v96, v97, &v161);
      v17 = v146;
      goto LABEL_167;
    }

    return 1;
  }

  v8 = 1;
  *v28 = 1;
  v91 = mlir::FieldParser<mlir::FusedLoc,mlir::FusedLoc>::parse(*a1);
  v92 = a1[28];
  *v92 = v91;
  *(v92 + 8) = v93;
  if ((*(a1[28] + 8) & 1) == 0)
  {
    v94 = *a1;
    v95 = (*(*v94 + 40))(v94);
    v164 = 259;
    (*(*v94 + 24))(v147, v94, v95, &v161);
    v17 = v147;
    goto LABEL_167;
  }

  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopAnnotationAttr::print(mlir::LLVM::LoopAnnotationAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v7 + 3) - v8) > 0x12)
    {
      *(v8 + 15) = 540876900;
      *v8 = *"disableNonforced = ";
      *(v7 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disableNonforced = ", 0x13uLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_37;
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

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              if (!v6[8])
              {
                if (!v6[9])
                {
                  if (!v6[10])
                  {
                    if (!v6[11])
                    {
                      if (!v6[12])
                      {
                        if (!v6[13])
                        {
                          if (!v6[14])
                          {
                            if (!v6[16])
                            {
                              goto LABEL_183;
                            }

                            goto LABEL_173;
                          }

                          goto LABEL_164;
                        }

                        goto LABEL_155;
                      }

                      goto LABEL_146;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_125;
                }

                goto LABEL_113;
              }

              goto LABEL_101;
            }

            goto LABEL_89;
          }

          goto LABEL_77;
        }

        goto LABEL_65;
      }

      goto LABEL_53;
    }

    goto LABEL_41;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0xB)
  {
    *(v13 + 8) = 540876901;
    *v13 = *"vectorize = ";
    *(v12 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v12, "vectorize = ", 0xCuLL);
  }

  v9 = *this;
  v14 = *(*this + 16);
  if (v14)
  {
    v102 = *(*this + 16);
    if (((*(*a2 + 56))(a2, v14) & 1) == 0)
    {
      v15 = (*(*a2 + 16))(a2);
      v16 = (*(*v15 + 80))(v15) + v15[4] - v15[2];
      mlir::LLVM::LoopVectorizeAttr::print(&v102, a2);
      if (v16 == (*(*v15 + 80))(v15) + v15[4] - v15[2])
      {
        (*(*a2 + 40))(a2, v14);
      }
    }

    v9 = *this;
  }

LABEL_37:
  if (!v9[3])
  {
    goto LABEL_49;
  }

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

LABEL_41:
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 0xCuLL)
  {
    qmemcpy(v20, "interleave = ", 13);
    *(v19 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v19, "interleave = ", 0xDuLL);
  }

  v9 = *this;
  v21 = *(*this + 24);
  if (v21)
  {
    v102 = *(*this + 24);
    if (((*(*a2 + 56))(a2, v21) & 1) == 0)
    {
      v22 = (*(*a2 + 16))(a2);
      v23 = (*(*v22 + 80))(v22) + v22[4] - v22[2];
      mlir::LLVM::LoopInterleaveAttr::print(&v102, a2);
      if (v23 == (*(*v22 + 80))(v22) + v22[4] - v22[2])
      {
        (*(*a2 + 40))(a2, v21);
      }
    }

    v9 = *this;
  }

LABEL_49:
  if (v9[4])
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

LABEL_53:
    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if ((*(v26 + 3) - v27) > 8)
    {
      *(v27 + 8) = 32;
      *v27 = *"unroll = ";
      *(v26 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v26, "unroll = ", 9uLL);
    }

    v9 = *this;
    v28 = *(*this + 32);
    if (v28)
    {
      v102 = *(*this + 32);
      if (((*(*a2 + 56))(a2, v28) & 1) == 0)
      {
        v29 = (*(*a2 + 16))(a2);
        v30 = (*(*v29 + 80))(v29) + v29[4] - v29[2];
        mlir::LLVM::LoopUnrollAttr::print(&v102, a2);
        if (v30 == (*(*v29 + 80))(v29) + v29[4] - v29[2])
        {
          (*(*a2 + 40))(a2, v28);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_73;
  }

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

LABEL_65:
  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (*(v33 + 3) - v34 > 0xEuLL)
  {
    qmemcpy(v34, "unrollAndJam = ", 15);
    *(v33 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v33, "unrollAndJam = ", 0xFuLL);
  }

  v9 = *this;
  v35 = *(*this + 40);
  if (v35)
  {
    v102 = *(*this + 40);
    if (((*(*a2 + 56))(a2, v35) & 1) == 0)
    {
      v36 = (*(*a2 + 16))(a2);
      v37 = (*(*v36 + 80))(v36) + v36[4] - v36[2];
      mlir::LLVM::LoopUnrollAndJamAttr::print(&v102, a2);
      if (v37 == (*(*v36 + 80))(v36) + v36[4] - v36[2])
      {
        (*(*a2 + 40))(a2, v35);
      }
    }

    v9 = *this;
  }

LABEL_73:
  if (v9[6])
  {
    v38 = (*(*a2 + 16))(a2);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 1uLL)
    {
      *v39 = 8236;
      *(v38 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v38, ", ", 2uLL);
    }

LABEL_77:
    v40 = (*(*a2 + 16))(a2);
    v41 = *(v40 + 4);
    if (*(v40 + 3) - v41 > 6uLL)
    {
      *(v41 + 3) = 540876909;
      *v41 = 1835231596;
      *(v40 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v40, "licm = ", 7uLL);
    }

    v9 = *this;
    v42 = *(*this + 48);
    if (v42)
    {
      v102 = *(*this + 48);
      if (((*(*a2 + 56))(a2, v42) & 1) == 0)
      {
        v43 = (*(*a2 + 16))(a2);
        v44 = (*(*v43 + 80))(v43) + v43[4] - v43[2];
        mlir::LLVM::LoopLICMAttr::print(&v102, a2);
        if (v44 == (*(*v43 + 80))(v43) + v43[4] - v43[2])
        {
          (*(*a2 + 40))(a2, v42);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_97;
  }

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

LABEL_89:
  v47 = (*(*a2 + 16))(a2);
  v48 = *(v47 + 4);
  if (*(v47 + 3) - v48 > 0xCuLL)
  {
    qmemcpy(v48, "distribute = ", 13);
    *(v47 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v47, "distribute = ", 0xDuLL);
  }

  v9 = *this;
  v49 = *(*this + 56);
  if (v49)
  {
    v102 = *(*this + 56);
    if (((*(*a2 + 56))(a2, v49) & 1) == 0)
    {
      v50 = (*(*a2 + 16))(a2);
      v51 = (*(*v50 + 80))(v50) + v50[4] - v50[2];
      mlir::LLVM::LoopDistributeAttr::print(&v102, a2);
      if (v51 == (*(*v50 + 80))(v50) + v50[4] - v50[2])
      {
        (*(*a2 + 40))(a2, v49);
      }
    }

    v9 = *this;
  }

LABEL_97:
  if (v9[8])
  {
    v52 = (*(*a2 + 16))(a2);
    v53 = *(v52 + 4);
    if (*(v52 + 3) - v53 > 1uLL)
    {
      *v53 = 8236;
      *(v52 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v52, ", ", 2uLL);
    }

LABEL_101:
    v54 = (*(*a2 + 16))(a2);
    v55 = *(v54 + 4);
    if ((*(v54 + 3) - v55) > 0xA)
    {
      *(v55 + 7) = 540876901;
      *v55 = *"pipeline = ";
      *(v54 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v54, "pipeline = ", 0xBuLL);
    }

    v9 = *this;
    v56 = *(*this + 64);
    if (v56)
    {
      v102 = *(*this + 64);
      if (((*(*a2 + 56))(a2, v56) & 1) == 0)
      {
        v57 = (*(*a2 + 16))(a2);
        v58 = (*(*v57 + 80))(v57) + v57[4] - v57[2];
        mlir::LLVM::LoopPipelineAttr::print(&v102, a2);
        if (v58 == (*(*v57 + 80))(v57) + v57[4] - v57[2])
        {
          (*(*a2 + 40))(a2, v56);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[9])
  {
    goto LABEL_121;
  }

  v59 = (*(*a2 + 16))(a2);
  v60 = *(v59 + 4);
  if (*(v59 + 3) - v60 > 1uLL)
  {
    *v60 = 8236;
    *(v59 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v59, ", ", 2uLL);
  }

LABEL_113:
  v61 = (*(*a2 + 16))(a2);
  v62 = *(v61 + 4);
  if ((*(v61 + 3) - v62) > 8)
  {
    *(v62 + 8) = 32;
    *v62 = *"peeled = ";
    *(v61 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v61, "peeled = ", 9uLL);
  }

  v9 = *this;
  v63 = *(*this + 72);
  if (v63)
  {
    v102 = *(*this + 72);
    if (((*(*a2 + 56))(a2, v63) & 1) == 0)
    {
      v64 = (*(*a2 + 16))(a2);
      v65 = (*(*v64 + 80))(v64) + v64[4] - v64[2];
      mlir::LLVM::LoopPeeledAttr::print(&v102, a2);
      if (v65 == (*(*v64 + 80))(v64) + v64[4] - v64[2])
      {
        (*(*a2 + 40))(a2, v63);
      }
    }

    v9 = *this;
  }

LABEL_121:
  if (v9[10])
  {
    v66 = (*(*a2 + 16))(a2);
    v67 = *(v66 + 4);
    if (*(v66 + 3) - v67 > 1uLL)
    {
      *v67 = 8236;
      *(v66 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v66, ", ", 2uLL);
    }

LABEL_125:
    v68 = (*(*a2 + 16))(a2);
    v69 = *(v68 + 4);
    if ((*(v68 + 3) - v69) > 0xA)
    {
      *(v69 + 7) = 540876904;
      *v69 = *"unswitch = ";
      *(v68 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v68, "unswitch = ", 0xBuLL);
    }

    v9 = *this;
    v70 = *(*this + 80);
    if (v70)
    {
      v102 = *(*this + 80);
      if (((*(*a2 + 56))(a2, v70) & 1) == 0)
      {
        v71 = (*(*a2 + 16))(a2);
        v72 = (*(*v71 + 80))(v71) + v71[4] - v71[2];
        mlir::LLVM::LoopUnswitchAttr::print(&v102, a2);
        if (v72 == (*(*v71 + 80))(v71) + v71[4] - v71[2])
        {
          (*(*a2 + 40))(a2, v70);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[11])
  {
    goto LABEL_142;
  }

  v73 = (*(*a2 + 16))(a2);
  v74 = *(v73 + 4);
  if (*(v73 + 3) - v74 > 1uLL)
  {
    *v74 = 8236;
    *(v73 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v73, ", ", 2uLL);
  }

LABEL_137:
  v75 = (*(*a2 + 16))(a2);
  v76 = *(v75 + 4);
  if (*(v75 + 3) - v76 > 0xEuLL)
  {
    qmemcpy(v76, "mustProgress = ", 15);
    *(v75 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v75, "mustProgress = ", 0xFuLL);
  }

  v9 = *this;
  if (*(*this + 88))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_142:
  if (v9[12])
  {
    v77 = (*(*a2 + 16))(a2);
    v78 = *(v77 + 4);
    if (*(v77 + 3) - v78 > 1uLL)
    {
      *v78 = 8236;
      *(v77 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v77, ", ", 2uLL);
    }

LABEL_146:
    v79 = (*(*a2 + 16))(a2);
    v80 = *(v79 + 4);
    if (*(v79 + 3) - v80 > 0xEuLL)
    {
      qmemcpy(v80, "isVectorized = ", 15);
      *(v79 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v79, "isVectorized = ", 0xFuLL);
    }

    v9 = *this;
    if (*(*this + 96))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[13])
  {
    goto LABEL_160;
  }

  v81 = (*(*a2 + 16))(a2);
  v82 = *(v81 + 4);
  if (*(v81 + 3) - v82 > 1uLL)
  {
    *v82 = 8236;
    *(v81 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v81, ", ", 2uLL);
  }

LABEL_155:
  v83 = (*(*a2 + 16))(a2);
  v84 = *(v83 + 4);
  if ((*(v83 + 3) - v84) > 0xA)
  {
    *(v84 + 7) = 540876899;
    *v84 = *"startLoc = ";
    *(v83 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v83, "startLoc = ", 0xBuLL);
  }

  v9 = *this;
  if (*(*this + 104))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_160:
  if (v9[14])
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

LABEL_164:
    v87 = (*(*a2 + 16))(a2);
    v88 = *(v87 + 4);
    if ((*(v87 + 3) - v88) > 8)
    {
      *(v88 + 8) = 32;
      *v88 = *"endLoc = ";
      *(v87 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v87, "endLoc = ", 9uLL);
    }

    v9 = *this;
    if (*(*this + 112))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[16])
  {
    goto LABEL_183;
  }

  v89 = (*(*a2 + 16))(a2);
  v90 = *(v89 + 4);
  if (*(v89 + 3) - v90 > 1uLL)
  {
    *v90 = 8236;
    *(v89 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v89, ", ", 2uLL);
  }

LABEL_173:
  v91 = (*(*a2 + 16))(a2);
  v92 = *(v91 + 4);
  if ((*(v91 + 3) - v92) > 0x12)
  {
    *(v92 + 15) = 540876915;
    *v92 = *"parallelAccesses = ";
    *(v91 + 4) += 19;
  }

  else
  {
    llvm::raw_ostream::write(v91, "parallelAccesses = ", 0x13uLL);
  }

  v93 = *(*this + 128);
  if (v93)
  {
    v94 = *(*this + 120);
    v95 = (*(*a2 + 16))(a2);
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::AccessGroupAttr,(void *)0>(a2, *v94);
    if (v93 != 1)
    {
      v96 = v94 + 1;
      v97 = 8 * v93 - 8;
      do
      {
        v98 = *(v95 + 4);
        if (*(v95 + 3) - v98 > 1uLL)
        {
          *v98 = 8236;
          *(v95 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v95, ", ", 2uLL);
        }

        v99 = *v96++;
        mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::AccessGroupAttr,(void *)0>(a2, v99);
        v97 -= 8;
      }

      while (v97);
    }
  }

LABEL_183:
  result = (*(*a2 + 16))(a2);
  v101 = *(result + 4);
  if (*(result + 3) == v101)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v101 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIExpressionElemAttr::get(uint64_t *a1, int a2, llvm::hashing::detail::hash_state *a3, unint64_t *a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id;
  v9[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIExpressionElemAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIExpressionElemAttrEJjNS_8ArrayRefIyEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v14[1] = v9;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  LODWORD(v15[0]) = a2;
  v5 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(a3, a3 + 8 * a4, a3, a4);
  HIDWORD(v15[0]) = v5;
  v6 = __ROR8__(v5 + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v15[0] ^ v6 ^ 0xFF51AFD7ED558CCDLL);
  v10 = &v11;
  v15[0] = &v11;
  v15[1] = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::LLVM::DIExpressionElemAttr::parse(mlir::AsmParser *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v20) = 0;
  v23 = 0;
  v2 = (*(*a1 + 40))(a1);
  v14 = 0;
  v15 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v14))
  {
LABEL_16:
    v9 = (*(*a1 + 40))(a1);
    v27 = 259;
    (*(*a1 + 24))(v19, a1, v9, &v24);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  OperationEncoding = llvm::dwarf::getOperationEncoding(v14, v15);
  if (!OperationEncoding)
  {
    v13 = 257;
    (*(*a1 + 24))(&v24, a1, v2, v12);
    if (v24)
    {
      mlir::Diagnostic::operator<<<56ul>(&v25, "invalid debug info debug info operation encoding name: ");
      if (v24)
      {
        v18[8] = 261;
        v16 = v14;
        v17 = v15;
        mlir::Diagnostic::operator<<(&v25, &v16);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    goto LABEL_16;
  }

  v4 = OperationEncoding;
  if ((*(*a1 + 288))(a1))
  {
    (*(*a1 + 40))(a1);
    if (v23 == 1 && v20 != v22)
    {
      free(v20);
    }

    v20 = v22;
    v21 = 0x600000000;
    v23 = 1;
    v16 = v4;
    v24 = &v20;
    v25 = &v16;
    v26[0] = a1;
    if (((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseExpressionArg(mlir::AsmParser &,unsigned long long,llvm::SmallVector<unsigned long long,6u> &)::$_0>, &v24, 0, 0) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = 0;
  v7 = *v5;
  v16 = v18;
  v17 = 0x600000000;
  v24 = v26;
  v25 = 0x600000000;
  if (v23 == 1)
  {
    v8 = v26;
    if (v21)
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(&v24, &v20);
      v8 = v24;
      v6 = v25;
    }
  }

  else
  {
    v8 = v26;
  }

  v10 = mlir::LLVM::DIExpressionElemAttr::get(v7, v4, v8, v6);
  if (v24 != v26)
  {
    free(v24);
  }

  if (v16 != v18)
  {
    free(v16);
  }

LABEL_18:
  if (v23 == 1 && v20 != v22)
  {
    free(v20);
  }

  return v10;
}

llvm::raw_ostream *mlir::LLVM::DIExpressionElemAttr::print(mlir::LLVM::DIExpressionElemAttr *this, mlir::AsmPrinter *a2)
{
  v4 = llvm::dwarf::OperationEncodingString(*(*this + 8));
  v6 = v5;
  v7 = (*(*a2 + 16))(a2);
  result = llvm::raw_ostream::operator<<(v7, v4, v6);
  if (*(*this + 24))
  {
    v9 = (*(*a2 + 16))(a2);
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

    v11 = *this;
    v12 = *(*this + 24);
    if (v12)
    {
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *v14;
      v16 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v16, v15, 0, 0, 0);
      if (v12 != 1)
      {
        v17 = (v14 + 1);
        v18 = 8 * v12 - 8;
        v19 = 1;
        do
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

          v22 = *v17;
          if (v13 == 4097 && v19 && (v23 = llvm::dwarf::AttributeEncodingString(*v17), v24))
          {
            v25 = v23;
            v26 = v24;
            v27 = (*(*a2 + 16))(a2);
            llvm::raw_ostream::operator<<(v27, v25, v26);
          }

          else
          {
            v28 = (*(*a2 + 16))(a2);
            write_unsigned<unsigned long long>(v28, v22, 0, 0, 0);
            ++v19;
          }

          ++v17;
          v18 -= 8;
        }

        while (v18);
      }
    }

    result = (*(*a2 + 16))(a2);
    v29 = *(result + 4);
    if (*(result + 3) == v29)
    {

      return llvm::raw_ostream::write(result, ")", 1uLL);
    }

    else
    {
      *v29 = 41;
      ++*(result + 4);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DIExpressionAttr::get(uint64_t *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v22[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id;
  v22[1] = a1;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIExpressionAttrEJNS_8ArrayRefINS2_20DIExpressionElemAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v24[1] = v22;
  v23[0] = a2;
  v23[1] = a3;
  if (a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = &a2[2 * a3];
    while (v7 <= 0x38)
    {
      v9 = v7 + 8;
      v10 = *v6;
      v6 += 2;
      *(__src + v7) = (v10 >> 4) ^ (v10 >> 9);
      v7 = v9;
      if (8 * a3 == v9)
      {
        goto LABEL_7;
      }
    }

    v25[0] = xmmword_25D0A0610;
    v25[1] = xmmword_25D0A0620;
    v25[2] = xmmword_25D0A0630;
    v26 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v25, __src, a3, a4);
    if (v7 == 8 * a3)
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
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, __src + v15, &v28);
        llvm::hashing::detail::hash_state::mix(v25, __src, v17, v18);
        v12 += v15;
      }

      while (v6 != v8);
    }

    v11 = llvm::hashing::detail::hash_state::finalize(v25, v12);
  }

  else
  {
    v9 = 0;
LABEL_7:
    v11 = llvm::hashing::detail::hash_short(__src, v9, 0xFF51AFD7ED558CCDLL);
  }

  v19 = HIDWORD(v11) ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (8 * v11 + 8));
  *&v25[0] = v23;
  __src[0] = v23;
  __src[1] = v24;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
}

uint64_t mlir::LLVM::DIExpressionAttr::parse(uint64_t *a1)
{
  v25[6] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v19) = 0;
  v22 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((*(*a1 + 320))(a1))
  {
    v23 = v25;
    v24 = 0x600000000;
    v13[0] = a1;
    v13[1] = &v23;
    if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>,llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v13, 0, 0))
    {
      v15 = v17;
      v16 = 0x600000000;
      if (v24)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(&v15, &v23);
      }

      v2 = 1;
    }

    else
    {
      v2 = 0;
      LOBYTE(v15) = 0;
    }

    v18 = v2;
    if (v23 != v25)
    {
      free(v23);
      v2 = v18;
    }

    if (v22 == v2)
    {
      if (v22)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(&v19, &v15);
      }
    }

    else if (v22)
    {
      if (v19 != v21)
      {
        free(v19);
      }

      v22 = 0;
    }

    else
    {
      v19 = v21;
      v20 = 0x600000000;
      if (v16)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(&v19, &v15);
      }

      v22 = 1;
    }

    if (v18 == 1 && v15 != v17)
    {
      free(v15);
    }

    v3 = *a1;
    if ((v22 & 1) == 0)
    {
      v9 = (*(v3 + 40))(a1);
      v17[8] = 259;
      (*(*a1 + 24))(v14, a1, v9, &v15);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
      goto LABEL_32;
    }

    if (((*(v3 + 328))(a1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

  v5 = *(*(*a1 + 32))(a1);
  v23 = v25;
  v24 = 0x600000000;
  v15 = v17;
  v16 = 0x600000000;
  if (v22 == 1)
  {
    v6 = v20;
    if (v20)
    {
      if (v20 < 7)
      {
        v8 = v17;
        v7 = v20;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v20, 8);
        v7 = v20;
        if (!v20)
        {
LABEL_40:
          LODWORD(v16) = v6;
          v12 = v15;
          goto LABEL_41;
        }

        v8 = v15;
      }

      memcpy(v8, v19, 8 * v7);
      goto LABEL_40;
    }
  }

  v6 = 0;
  v12 = v17;
LABEL_41:
  v10 = mlir::LLVM::DIExpressionAttr::get(v5, v12, v6, v4);
  if (v15 != v17)
  {
    free(v15);
  }

  if (v23 != v25)
  {
    free(v23);
  }

LABEL_33:
  if (v22 == 1 && v19 != v21)
  {
    free(v19);
  }

  return v10;
}

llvm::raw_ostream *mlir::LLVM::DIExpressionAttr::print(mlir::LLVM::DIExpressionAttr *this, mlir::AsmPrinter *a2)
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

  if (*(*this + 16))
  {
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

    v8 = *(*this + 16);
    if (v8)
    {
      v9 = *(*this + 8);
      v10 = (*(*a2 + 16))(a2);
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionElemAttr,(void *)0>(a2, *v9);
      if (v8 != 1)
      {
        v11 = v9 + 1;
        v12 = 8 * v8 - 8;
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

          v14 = *v11++;
          mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionElemAttr,(void *)0>(a2, v14);
          v12 -= 8;
        }

        while (v12);
      }
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) == v16)
    {
      llvm::raw_ostream::write(v15, "]", 1uLL);
    }

    else
    {
      *v16 = 93;
      ++*(v15 + 4);
    }
  }

  result = (*(*a2 + 16))(a2);
  v18 = *(result + 4);
  if (*(result + 3) == v18)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v18 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIBasicTypeAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id;
  v9[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DIBasicTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DIBasicTypeAttrEJjNS1_10StringAttrEyjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v14[1] = v9;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  *&v16[16] = 0u;
  v17 = 0u;
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  *v16 = a2;
  *&v16[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v16[12] = a4;
  v15 = 0;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v16, &v15, &v16[20], v19, a5);
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v16, v15, v6, v19);
  v15 = &v10;
  *v16 = &v10;
  *&v16[8] = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIBasicTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIBasicTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIBasicTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIBasicTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIBasicTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIBasicTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::LLVM::DIBasicTypeAttr::parse(mlir::AsmParser *a1)
{
  v51 = *MEMORY[0x277D85DE8];
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
  v32 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v33 = 0;
    v34 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v33))
    {
      v24 = (*(*a1 + 40))(a1);
      v48 = "expected a parameter name in struct";
      v50 = 259;
      (*(*a1 + 24))(v42, a1, v24, &v48);
      v25 = v42;
      goto LABEL_58;
    }

    v9 = v33;
    v10 = v34;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v6 & 1 | (v10 != 3))
    {
      if (v2 & 1 | (v10 != 4))
      {
        if (v4 & 1 | (v10 != 10))
        {
          if (v7 & 1 | (v10 != 8))
          {
            goto LABEL_55;
          }

          if (*v9 != 0x676E69646F636E65)
          {
            v10 = 8;
            goto LABEL_55;
          }

          v11 = (*(*a1 + 40))(a1);
          v37 = 0;
          v38 = 0;
          if (!mlir::AsmParser::parseKeyword(a1, &v37))
          {
            goto LABEL_66;
          }

          AttributeEncoding = llvm::dwarf::getAttributeEncoding(v37, v38);
          if (!AttributeEncoding)
          {
            v36 = 257;
            (*(*a1 + 24))(&v48, a1, v11, v35);
            if (v48)
            {
              mlir::Diagnostic::operator<<<46ul>(v49, "invalid debug info debug info encoding name: ");
              if (v48)
              {
                v41 = 261;
                v39 = v37;
                v40 = v38;
                mlir::Diagnostic::operator<<(v49, &v39);
              }
            }

            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
LABEL_66:
            v31 = (*(*a1 + 40))(a1);
            v50 = 259;
            (*(*a1 + 24))(v43, a1, v31, &v48);
            v25 = v43;
            goto LABEL_58;
          }

          v8 = AttributeEncoding;
          v7 = 1;
        }

        else
        {
          if (*v9 != 0x69426E49657A6973 || *(v9 + 8) != 29556)
          {
            v10 = 10;
            goto LABEL_55;
          }

          v48 = 0;
          if ((mlir::AsmParser::parseInteger<unsigned long long>(a1, &v48) & 1) == 0)
          {
            v30 = (*(*a1 + 40))(a1);
            v50 = 259;
            (*(*a1 + 24))(v44, a1, v30, &v48);
            v25 = v44;
            goto LABEL_58;
          }

          v32 = v48;
          v4 = 1;
        }
      }

      else
      {
        if (*v9 != 1701667182)
        {
          v10 = 4;
          goto LABEL_55;
        }

        v16 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
        if ((v17 & 1) == 0)
        {
          v28 = (*(*a1 + 40))(a1);
          v50 = 259;
          (*(*a1 + 24))(v45, a1, v28, &v48);
          v25 = v45;
          goto LABEL_58;
        }

        v3 = v16;
        v2 = 1;
      }
    }

    else
    {
      if (*v9 != 24948 || *(v9 + 2) != 103)
      {
        v10 = 3;
LABEL_55:
        v29 = (*(*a1 + 40))(a1);
        v35[0] = "duplicate or unknown struct parameter name: ";
        v36 = 259;
        (*(*a1 + 24))(&v48, a1, v29, v35);
        if (v48)
        {
          v41 = 261;
          v39 = v9;
          v40 = v10;
          mlir::Diagnostic::operator<<(v49, &v39);
        }

LABEL_57:
        v25 = &v48;
        goto LABEL_58;
      }

      v14 = (*(*a1 + 40))(a1);
      v37 = 0;
      v38 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v37))
      {
        goto LABEL_49;
      }

      Tag = llvm::dwarf::getTag(v37, v38);
      if (Tag == -1)
      {
        v36 = 257;
        (*(*a1 + 24))(&v48, a1, v14, v35);
        if (v48)
        {
          mlir::Diagnostic::operator<<<41ul>(v49, "invalid debug info debug info tag name: ");
          if (v48)
          {
            v41 = 261;
            v39 = v37;
            v40 = v38;
            mlir::Diagnostic::operator<<(v49, &v39);
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
LABEL_49:
        v26 = (*(*a1 + 40))(a1);
        v50 = 259;
        (*(*a1 + 24))(v46, a1, v26, &v48);
        v25 = v46;
LABEL_58:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return 0;
      }

      v5 = Tag;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v2 & 1) == 0)
  {
    v27 = (*(*a1 + 40))(a1);
    v46[0] = "struct is missing required parameter: ";
    v47 = 259;
    (*(*a1 + 24))(&v48, a1, v27, v46);
    if (v48)
    {
      mlir::Diagnostic::operator<<<5ul>(v49, "name");
    }

    goto LABEL_57;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v19 = *(*(*a1 + 32))(a1);
  if (v6)
  {
    v20 = v5;
  }

  else
  {
    v20 = 0;
  }

  if (v4)
  {
    v21 = v32;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v8;
  }

  else
  {
    v22 = 0;
  }

  return mlir::LLVM::DIBasicTypeAttr::get(v19, v20, v3, v21, v22);
}

llvm::raw_ostream *mlir::LLVM::DIBasicTypeAttr::print(mlir::LLVM::DIBasicTypeAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v26 + 3) - v27) > 0xA)
    {
      *(v27 + 7) = 540876903;
      *v27 = *"encoding = ";
      *(v26 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v26, "encoding = ", 0xBuLL);
    }

    v28 = *(*this + 32);
    if (v28)
    {
      v29 = llvm::dwarf::AttributeEncodingString(v28);
      v31 = v30;
      v32 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v32, v29, v31);
    }
  }

  result = (*(*a2 + 16))(a2);
  v34 = *(result + 4);
  if (*(result + 3) == v34)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v34 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DICompileUnitAttr::get(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id;
  v11[1] = a1;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJNS1_12DistinctAttrEjNS2_10DIFileAttrENS1_10StringAttrEbNS2_14DIEmissionKindENS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v20[1] = v11;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17[0] = a6;
  v18 = a7;
  v19 = a8;
  memset(v22, 0, sizeof(v22));
  memset(__dst, 0, sizeof(__dst));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(__dst, __dst, v22, a2, &v14, &v15, &v16, v17, &v18, &v19);
  v12 = &v13;
  *&__dst[0] = &v13;
  *(&__dst[0] + 1) = v20;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::LLVM::DICompileUnitAttr::parse(mlir::AsmParser *a1)
{
  v94 = *MEMORY[0x277D85DE8];
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
  v70 = 0;
  v71 = 0;
  v6 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v7 = 0;
  do
  {
    v72 = 0;
    v73 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v72))
    {
      v47 = (*(*a1 + 40))(a1);
      v91 = "expected a parameter name in struct";
      v93 = 259;
      (*(*a1 + 24))(v82, a1, v47, &v91);
      v48 = v82;
      goto LABEL_163;
    }

    v8 = v72;
    v9 = v73;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (v7 & 1 | (v9 != 2))
    {
      if (v4 & 1 | (v9 != 14))
      {
        if (v3 & 1 | (v9 != 4))
        {
          if (BYTE4(v71) & 1 | (v9 != 8))
          {
            if (v71 & 1 | (v9 != 11))
            {
              if (BYTE4(v69) & 1 | (v9 != 12))
              {
                if (v69 & 1 | (v9 != 13))
                {
                  goto LABEL_160;
                }

                if (*v8 != 0x6C626154656D616ELL || *(v8 + 5) != 0x646E694B656C6261)
                {
                  v9 = 13;
LABEL_160:
                  v64 = (*(*a1 + 40))(a1);
                  v74[0] = "duplicate or unknown struct parameter name: ";
                  v75 = 259;
                  (*(*a1 + 24))(&v91, a1, v64, v74);
                  if (v91)
                  {
                    v81 = 261;
                    v79 = v8;
                    v80 = v9;
                    mlir::Diagnostic::operator<<(v92, &v79);
                  }

LABEL_162:
                  v48 = &v91;
                  goto LABEL_163;
                }

                __p = 0;
                v77 = 0;
                v78 = 0;
                v11 = (*(*a1 + 40))(a1);
                if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
                {
                  v79 = "expected keyword for LLVM debug name table kind";
                  v81 = 259;
                  (*(*a1 + 24))(&v91, a1, v11, &v79);
LABEL_110:
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
                  v66 = 0;
                  v14 = 0;
                  goto LABEL_111;
                }

                v12 = SHIBYTE(v78);
                p_p = __p;
                if (v78 >= 0)
                {
                  p_p = &__p;
                }

                if (v78 < 0)
                {
                  v12 = v77;
                }

                if (v12 > 4)
                {
                  if (v12 == 5)
                  {
                    v44 = *p_p;
                    v45 = *(p_p + 4);
                    if (v44 == 1819308097 && v45 == 101)
                    {
                      v14 = 1;
                      v15 = 3;
                      goto LABEL_122;
                    }

                    goto LABEL_108;
                  }

                  if (v12 != 7)
                  {
                    goto LABEL_108;
                  }

                  v28 = *p_p;
                  v29 = *(p_p + 3);
                  if (v28 != 1634100548 || v29 != 1953264993)
                  {
                    goto LABEL_108;
                  }

                  v66 = 0;
                }

                else
                {
                  if (v12 != 3)
                  {
                    if (v12 == 4 && *p_p == 1701736270)
                    {
                      v14 = 1;
                      v15 = 2;
LABEL_122:
                      v66 = v15;
                      goto LABEL_111;
                    }

                    goto LABEL_108;
                  }

                  v41 = *p_p;
                  v42 = *(p_p + 2);
                  if (v41 != 20039 || v42 != 85)
                  {
LABEL_108:
                    v74[0] = "invalid LLVM debug name table kind specification: ";
                    v75 = 259;
                    (*(*a1 + 24))(&v91, a1, v11, v74);
                    if (v91)
                    {
                      v81 = 260;
                      v79 = &__p;
                      mlir::Diagnostic::operator<<(v92, &v79);
                    }

                    goto LABEL_110;
                  }

                  v66 = 1;
                }

                v14 = 1;
LABEL_111:
                if (SHIBYTE(v78) < 0)
                {
                  operator delete(__p);
                }

                if ((v14 & 1) == 0)
                {
                  v65 = (*(*a1 + 40))(a1);
                  v93 = 259;
                  (*(*a1 + 24))(v83, a1, v65, &v91);
                  v48 = v83;
                  goto LABEL_163;
                }

                LOBYTE(v69) = 1;
                continue;
              }

              if (*v8 != 0x6E6F697373696D65 || *(v8 + 8) != 1684957515)
              {
                v9 = 12;
                goto LABEL_160;
              }

              __p = 0;
              v77 = 0;
              v78 = 0;
              v25 = (*(*a1 + 40))(a1);
              if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
              {
                v79 = "expected keyword for LLVM debug emission kind";
                v81 = 259;
                (*(*a1 + 24))(&v91, a1, v25, &v79);
LABEL_92:
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
                v67 = 0;
                v34 = 0;
LABEL_93:
                if (SHIBYTE(v78) < 0)
                {
                  operator delete(__p);
                }

                if ((v34 & 1) == 0)
                {
                  v63 = (*(*a1 + 40))(a1);
                  v93 = 259;
                  (*(*a1 + 24))(v84, a1, v63, &v91);
                  v48 = v84;
                  goto LABEL_163;
                }

                BYTE4(v69) = 1;
                continue;
              }

              v26 = SHIBYTE(v78);
              v27 = __p;
              if (v78 >= 0)
              {
                v27 = &__p;
              }

              if (v78 < 0)
              {
                v26 = v77;
              }

              if (v26 == 19)
              {
                v36 = *v27;
                v37 = v27[1];
                v38 = *(v27 + 11);
                if (v36 != 0x7269446775626544 || v37 != 0x4F73657669746365 || v38 != 0x796C6E4F73657669)
                {
                  goto LABEL_90;
                }

                v34 = 1;
                v35 = 3;
              }

              else
              {
                if (v26 != 14)
                {
                  if (v26 == 4)
                  {
                    if (*v27 == 1701736270)
                    {
                      v67 = 0;
                      goto LABEL_120;
                    }

                    if (*v27 == 1819047238)
                    {
                      v67 = 1;
LABEL_120:
                      v34 = 1;
                      goto LABEL_93;
                    }
                  }

                  goto LABEL_90;
                }

                v31 = *v27;
                v32 = *(v27 + 6);
                if (v31 != 0x6C626154656E694CLL || v32 != 0x796C6E4F73656C62)
                {
LABEL_90:
                  v74[0] = "invalid LLVM debug emission kind specification: ";
                  v75 = 259;
                  (*(*a1 + 24))(&v91, a1, v25, v74);
                  if (v91)
                  {
                    v81 = 260;
                    v79 = &__p;
                    mlir::Diagnostic::operator<<(v92, &v79);
                  }

                  goto LABEL_92;
                }

                v34 = 1;
                v35 = 2;
              }

              v67 = v35;
              goto LABEL_93;
            }

            if (*v8 != 0x696D6974704F7369 || *(v8 + 3) != 0x64657A696D697470)
            {
              v9 = 11;
              goto LABEL_160;
            }

            LOBYTE(v91) = 0;
            if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v91) & 1) == 0)
            {
              v61 = (*(*a1 + 40))(a1);
              v93 = 259;
              (*(*a1 + 24))(v85, a1, v61, &v91);
              v48 = v85;
              goto LABEL_163;
            }

            v68 = v91;
            LOBYTE(v71) = 1;
          }

          else
          {
            if (*v8 != 0x72656375646F7270)
            {
              v9 = 8;
              goto LABEL_160;
            }

            v21 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            if ((v22 & 1) == 0)
            {
              v59 = (*(*a1 + 40))(a1);
              v93 = 259;
              (*(*a1 + 24))(v86, a1, v59, &v91);
              v48 = v86;
              goto LABEL_163;
            }

            v70 = v21;
            BYTE4(v71) = 1;
          }
        }

        else
        {
          if (*v8 != 1701603686)
          {
            v9 = 4;
            goto LABEL_160;
          }

          v19 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
          if ((v20 & 1) == 0)
          {
            v57 = (*(*a1 + 40))(a1);
            v93 = 259;
            (*(*a1 + 24))(v87, a1, v57, &v91);
            v48 = v87;
            goto LABEL_163;
          }

          v5 = v19;
          v3 = 1;
        }
      }

      else
      {
        if (*v8 != 0x614C656372756F73 || *(v8 + 6) != 0x65676175676E614CLL)
        {
          v9 = 14;
          goto LABEL_160;
        }

        v17 = (*(*a1 + 40))(a1);
        __p = 0;
        v77 = 0;
        if (!mlir::AsmParser::parseKeyword(a1, &__p))
        {
          goto LABEL_145;
        }

        Language = llvm::dwarf::getLanguage(__p, v77);
        if (!Language)
        {
          v75 = 257;
          (*(*a1 + 24))(&v91, a1, v17, v74);
          if (v91)
          {
            mlir::Diagnostic::operator<<<46ul>(v92, "invalid debug info debug info language name: ");
            if (v91)
            {
              v81 = 261;
              v79 = __p;
              v80 = v77;
              mlir::Diagnostic::operator<<(v92, &v79);
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
LABEL_145:
          v55 = (*(*a1 + 40))(a1);
          v93 = 259;
          (*(*a1 + 24))(v88, a1, v55, &v91);
          v48 = v88;
LABEL_163:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v48);
          return 0;
        }

        v2 = Language;
        v4 = 1;
      }
    }

    else
    {
      if (*v8 != 25705)
      {
        v9 = 2;
        goto LABEL_160;
      }

      v91 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(a1, &v91))
      {
        v53 = (*(*a1 + 40))(a1);
        v93 = 259;
        (*(*a1 + 24))(v89, a1, v53, &v91);
        v48 = v89;
        goto LABEL_163;
      }

      v6 = v91;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v54 = (*(*a1 + 40))(a1);
    v89[0] = "struct is missing required parameter: ";
    v90 = 259;
    (*(*a1 + 24))(&v91, a1, v54, v89);
    if (v91)
    {
      mlir::Diagnostic::operator<<<3ul>(v92, "id");
    }

    goto LABEL_162;
  }

  if ((v4 & 1) == 0)
  {
    v56 = (*(*a1 + 40))(a1);
    v89[0] = "struct is missing required parameter: ";
    v90 = 259;
    (*(*a1 + 24))(&v91, a1, v56, v89);
    if (v91)
    {
      mlir::Diagnostic::operator<<<15ul>(v92, "sourceLanguage");
    }

    goto LABEL_162;
  }

  if ((v3 & 1) == 0)
  {
    v58 = (*(*a1 + 40))(a1);
    v89[0] = "struct is missing required parameter: ";
    v90 = 259;
    (*(*a1 + 24))(&v91, a1, v58, v89);
    if (v91)
    {
      mlir::Diagnostic::operator<<<5ul>(v92, "file");
    }

    goto LABEL_162;
  }

  if ((v71 & 1) == 0)
  {
    v60 = (*(*a1 + 40))(a1);
    v89[0] = "struct is missing required parameter: ";
    v90 = 259;
    (*(*a1 + 24))(&v91, a1, v60, v89);
    if (v91)
    {
      mlir::Diagnostic::operator<<<12ul>(v92, "isOptimized");
    }

    goto LABEL_162;
  }

  if ((v69 & 0x100000000) == 0)
  {
    v62 = (*(*a1 + 40))(a1);
    v89[0] = "struct is missing required parameter: ";
    v90 = 259;
    (*(*a1 + 24))(&v91, a1, v62, v89);
    if (v91)
    {
      mlir::Diagnostic::operator<<<13ul>(v92, "emissionKind");
    }

    goto LABEL_162;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v49 = *(*(*a1 + 32))(a1);
  if ((v71 & 0x100000000) != 0)
  {
    v50 = v70;
  }

  else
  {
    v50 = 0;
  }

  if (v69)
  {
    v51 = v66;
  }

  else
  {
    v51 = 0;
  }

  return mlir::LLVM::DICompileUnitAttr::get(v49, v6, v2, v5, v50, v68 & 1, v67, v51);
}

llvm::raw_ostream *mlir::LLVM::DICompileUnitAttr::print(mlir::LLVM::DICompileUnitAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v10 + 3) - v11) > 0x10)
  {
    *(v11 + 16) = 32;
    *v11 = *"sourceLanguage = ";
    *(v10 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v10, "sourceLanguage = ", 0x11uLL);
  }

  v12 = llvm::dwarf::LanguageString(*(*this + 16));
  v14 = v13;
  v15 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v15, v12, v14);
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
  if (*(v18 + 3) - v19 > 6uLL)
  {
    *(v19 + 3) = 540876901;
    *v19 = 1701603686;
    *(v18 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v18, "file = ", 7uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, *(*this + 24));
  if (*(*this + 32))
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
    if ((*(v22 + 3) - v23) > 0xA)
    {
      *(v23 + 7) = 540876914;
      *v23 = *"producer = ";
      *(v22 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v22, "producer = ", 0xBuLL);
    }

    if (*(*this + 32))
    {
      (*(*a2 + 40))(a2);
    }
  }

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
    qmemcpy(v27, "isOptimized = ", 14);
    *(v26 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v26, "isOptimized = ", 0xEuLL);
  }

  v28 = *(*this + 40);
  v29 = (*(*a2 + 16))(a2);
  if (v28)
  {
    v30 = 4;
  }

  else
  {
    v30 = 5;
  }

  if (v28)
  {
    v31 = "true";
  }

  else
  {
    v31 = "false";
  }

  llvm::raw_ostream::operator<<(v29, v31, v30);
  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 8236;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, ", ", 2uLL);
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 0xEuLL)
  {
    qmemcpy(v35, "emissionKind = ", 15);
    *(v34 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v34, "emissionKind = ", 0xFuLL);
  }

  v36 = *(*this + 48);
  v37 = (*(*a2 + 16))(a2);
  if (v36 > 3)
  {
    v38 = 0;
    v39 = &str_2_25;
  }

  else
  {
    v38 = qword_25D0A0138[v36];
    v39 = off_2799BE8A0[v36];
  }

  llvm::raw_ostream::operator<<(v37, v39, v38);
  if (*(*this + 56))
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
    if (*(v42 + 3) - v43 > 0xFuLL)
    {
      *v43 = *"nameTableKind = ";
      *(v42 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v42, "nameTableKind = ", 0x10uLL);
    }

    v44 = *(*this + 56);
    if (v44)
    {
      v45 = (*(*a2 + 16))(a2);
      if (v44 > 3)
      {
        v46 = 0;
        v47 = &str_2_25;
      }

      else
      {
        v46 = v44 + 2;
        v47 = off_2799BE8C0[v44 - 1];
      }

      llvm::raw_ostream::operator<<(v45, v47, v46);
    }
  }

  result = (*(*a2 + 16))(a2);
  v49 = *(result + 4);
  if (*(result + 3) == v49)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v49 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIFileAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DICompositeTypeAttr::get(uint64_t *a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v20 = a6;
  v70[16] = *MEMORY[0x277D85DE8];
  v38 = *a1;
  v39[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id;
  v39[1] = a1;
  v57[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DICompositeTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DICompositeTypeAttrEJNS1_12DistinctAttrEbjNS1_10StringAttrENS2_10DIFileAttrEjNS2_11DIScopeAttrENS2_10DITypeAttrENS2_7DIFlagsEyyNS_8ArrayRefINS2_10DINodeAttrEEENS2_16DIExpressionAttrESM_SM_SM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_;
  v57[1] = v39;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a13;
  v52 = a14;
  v53 = a15;
  v54 = a16;
  v55 = a17;
  v56 = a18;
  memset(&v70[1], 0, 112);
  v70[15] = 0xFF51AFD7ED558CCDLL;
  v70[0] = (a2 >> 4) ^ (a2 >> 9);
  LOBYTE(v70[1]) = a3;
  *(&v70[1] + 1) = a4;
  v58 = 0;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v58, (&v70[1] + 5), &v70[8], (a5 >> 4) ^ (a5 >> 9));
  v59 = v58;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v59, v21, &v70[8], (v20 >> 4) ^ (v20 >> 9));
  v60 = v59;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v70, &v60, v22, &v70[8], a7);
  v61 = v60;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v61, v23, &v70[8], (v18 >> 4) ^ (v18 >> 9));
  v62 = v61;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v62, v24, &v70[8], (a9 >> 4) ^ (a9 >> 9));
  v63 = v62;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::LLVM::DIFlags>(v70, &v63, v25, &v70[8], a10);
  v64 = v63;
  v27 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(v70, &v64, v26, &v70[8], a11);
  v65 = v64;
  v28 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(v70, &v65, v27, &v70[8], a12);
  v66 = v65;
  v31 = llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(a13, &a13[2 * a14], v29, v30);
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v66, v28, &v70[8], v31);
  v67 = v66;
  v33 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v67, v32, &v70[8], (a15 >> 4) ^ (a15 >> 9));
  v68 = v67;
  v34 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v68, v33, &v70[8], (a16 >> 4) ^ (a16 >> 9));
  v69 = v68;
  v35 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v70, &v69, v34, &v70[8], (a17 >> 4) ^ (a17 >> 9));
  v36 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIExpressionAttr>(v70, v69, v35, &v70[8], v56);
  v69 = &v40;
  v70[0] = &v40;
  v70[1] = v57;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v38 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, v36, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v69, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v70);
}

uint64_t mlir::LLVM::DICompositeTypeAttr::parse(void *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v61) = 0;
  v62 = 0;
  v60 = 0;
  LOBYTE(v58) = 0;
  v59 = 0;
  LOBYTE(v56) = 0;
  v57 = 0;
  LOBYTE(v54) = 0;
  v55 = 0;
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
  LOBYTE(v69[0]) = 0;
  v71 = 0;
  LOBYTE(v40) = 0;
  v41 = 0;
  LOBYTE(v38) = 0;
  v39 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v66 = a1;
  v67 = &v33 + 3;
  v68[0] = &v61;
  v68[1] = &v33 + 2;
  v68[2] = &v60;
  v68[3] = &v33 + 1;
  v68[4] = &v58;
  v68[5] = &v33;
  v68[6] = &v56;
  v68[7] = &v32 + 3;
  v68[8] = &v54;
  v68[9] = &v32 + 2;
  v68[10] = &v52;
  v68[11] = &v32 + 1;
  v68[12] = &v50;
  v68[13] = &v32;
  v68[14] = &v48;
  v68[15] = &v31 + 3;
  v68[16] = &v46;
  v68[17] = &v31 + 2;
  v68[18] = &v44;
  v68[19] = &v31 + 1;
  v68[20] = &v42;
  v68[21] = &v31;
  v68[22] = v69;
  v68[23] = &v30 + 3;
  v68[24] = &v40;
  v68[25] = &v30 + 2;
  v68[26] = &v38;
  v68[27] = &v30 + 1;
  v68[28] = &v36;
  v68[29] = &v30;
  v68[30] = &v34;
  v28 = 0;
  v29 = 0;
  if ((*(*a1 + 416))(a1, &v28))
  {
    v2 = v28;
    for (i = v29; mlir::LLVM::DICompositeTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v66, v2, i); i = v27)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v26 = 0;
      v27 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v26))
      {
        v21 = (*(*a1 + 40))(a1);
        v63[0] = "expected a parameter name in struct";
        v64[8] = 259;
        (*(*a1 + 24))(v65, a1, v21, v63);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v65);
        break;
      }

      v2 = v26;
    }
  }

  else
  {
LABEL_9:
    if ((*(*a1 + 168))(a1))
    {
      v5 = *(*(*a1 + 32))(a1);
      if (v62)
      {
        v6 = v61;
      }

      else
      {
        v6 = 0;
      }

      v24 = v6;
      v25 = v5;
      v7 = HIBYTE(v60) & v60;
      if (v59)
      {
        v8 = v58;
      }

      else
      {
        v8 = 0;
      }

      v23 = v8;
      if (v57)
      {
        v9 = v56;
      }

      else
      {
        v9 = 0;
      }

      if (v55)
      {
        v10 = v54;
      }

      else
      {
        v10 = 0;
      }

      if (v53)
      {
        v11 = v52;
      }

      else
      {
        v11 = 0;
      }

      if (v51)
      {
        v12 = v50;
      }

      else
      {
        v12 = 0;
      }

      if (v49)
      {
        v13 = v48;
      }

      else
      {
        v13 = 0;
      }

      if (v47)
      {
        v14 = v46;
      }

      else
      {
        v14 = 0;
      }

      if (v45)
      {
        v15 = v44;
      }

      else
      {
        v15 = 0;
      }

      if (v43)
      {
        v16 = v42;
      }

      else
      {
        v16 = 0;
      }

      v63[0] = v64;
      v63[1] = 0x600000000;
      std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v66, v69, v63);
      if (v41)
      {
        v17 = v40;
      }

      else
      {
        v17 = 0;
      }

      if (v39)
      {
        v18 = v38;
      }

      else
      {
        v18 = 0;
      }

      if (v37)
      {
        v19 = v36;
      }

      else
      {
        v19 = 0;
      }

      if (v35)
      {
        v20 = v34;
      }

      else
      {
        v20 = 0;
      }

      v4 = mlir::LLVM::DICompositeTypeAttr::get(v25, v24, v7 & 1, v23, v9, v10, v11, v12, v13, v14, v15, v16, v66, v67, v17, v18, v19, v20);
      if (v66 != v68)
      {
        free(v66);
      }

      if (v63[0] != v64)
      {
        free(v63[0]);
      }

      goto LABEL_58;
    }
  }

  v4 = 0;
LABEL_58:
  if ((v71 & 1) != 0 && v69[0] != &v70)
  {
    free(v69[0]);
  }

  return v4;
}

uint64_t mlir::LLVM::DICompositeTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v155 = *MEMORY[0x277D85DE8];
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
        v49 = *a1;
        LOBYTE(v150) = 0;
        v50 = mlir::AsmParser::parseInteger<BOOL>(v49, &v150);
        v51 = v150;
        if ((v50 & 1) == 0)
        {
          v51 = 0;
        }

        *a1[4] = v51 | ((v50 & 1) << 8);
        if ((*(a1[4] + 1) & 1) == 0)
        {
          v52 = *a1;
          v53 = (*(*v52 + 40))(v52);
          v153 = 259;
          (*(*v52 + 24))(v148, v52, v53, &v150);
          v19 = v148;
          goto LABEL_105;
        }

        return v8;
      }

      v9 = 0;
      v22 = 1;
      goto LABEL_91;
    }

    v23 = a1[5];
    if ((*v23 & 1) != 0 || a3 != 3)
    {
      v44 = a1[7];
      LODWORD(v8) = a3 != 4;
      if ((*v44 & 1) == 0 && a3 == 4)
      {
        if (*a2 == 1701667182)
        {
          v8 = 1;
          *v44 = 1;
          v95 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v96 = a1[8];
          *v96 = v95;
          *(v96 + 8) = v97;
          if (*(a1[8] + 8))
          {
            return v8;
          }

          v98 = *a1;
          v99 = (*(*v98 + 40))(v98);
          v153 = 259;
          (*(*v98 + 24))(v146, v98, v99, &v150);
          v19 = v146;
          goto LABEL_105;
        }

        LODWORD(v8) = 0;
      }

      v45 = a1[9];
      if ((*v45 & 1) == 0 && (v8 & 1) == 0 && *a2 == 1701603686)
      {
        v8 = 1;
        *v45 = 1;
        v106 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(*a1);
        v107 = a1[10];
        *v107 = v106;
        *(v107 + 8) = v108;
        if (*(a1[10] + 8))
        {
          return v8;
        }

        v109 = *a1;
        v110 = (*(*v109 + 40))(v109);
        v153 = 259;
        (*(*v109 + 24))(v145, v109, v110, &v150);
        v19 = v145;
        goto LABEL_105;
      }

      v46 = a1[11];
      if (((*v46 | v8) & 1) == 0)
      {
        if (*a2 == 1701734764)
        {
          v8 = 1;
          *v46 = 1;
          v111 = *a1;
          LODWORD(v150) = 0;
          v112 = mlir::AsmParser::parseInteger<unsigned int>(v111, &v150);
          v113 = v150;
          if ((v112 & 1) == 0)
          {
            v113 = 0;
          }

          v114 = a1[12];
          *(v114 + 4) = v112 & 1;
          *v114 = v113;
          if ((*(a1[12] + 4) & 1) == 0)
          {
            v115 = *a1;
            v116 = (*(*v115 + 40))(v115);
            v153 = 259;
            (*(*v115 + 24))(v144, v115, v116, &v150);
            v19 = v144;
            goto LABEL_105;
          }

          return v8;
        }

        LODWORD(v8) = 0;
      }

      goto LABEL_8;
    }

    v24 = *a2 == 24948 && *(a2 + 2) == 103;
    v22 = 1;
    v9 = 1;
    if (!v24)
    {
LABEL_91:
      v60 = a1[29];
      if ((*v60 & 1) != 0 || v9 || (*a2 == 0x657461636F6C6C61 ? (v61 = *(a2 + 8) == 100) : (v61 = 0), !v61))
      {
        v62 = a1[31];
        if (((*v62 | v22) & 1) == 0 && (*a2 == 0x746169636F737361 ? (v63 = *(a2 + 8) == 25701) : (v63 = 0), v63))
        {
          v8 = 1;
          *v62 = 1;
          v72 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
          v73 = a1[32];
          *v73 = v72;
          *(v73 + 8) = v74;
          if (*(a1[32] + 8))
          {
            return v8;
          }

          v75 = *a1;
          v76 = (*(*v75 + 40))(v75);
          v153 = 259;
          (*(*v75 + 24))(v134, v75, v76, &v150);
          v19 = v134;
        }

        else
        {
          v64 = *a1;
          v65 = (*(*v64 + 40))(v64);
          v127[0] = "duplicate or unknown struct parameter name: ";
          v128 = 259;
          (*(*v64 + 24))(&v150, v64, v65, v127);
          if (v150)
          {
            v133 = 261;
            v131 = a2;
            v132 = a3;
            mlir::Diagnostic::operator<<(&v151, &v131);
          }

          v19 = &v150;
        }
      }

      else
      {
        v8 = 1;
        *v60 = 1;
        v67 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
        v68 = a1[30];
        *v68 = v67;
        *(v68 + 8) = v69;
        if (*(a1[30] + 8))
        {
          return v8;
        }

        v70 = *a1;
        v71 = (*(*v70 + 40))(v70);
        v153 = 259;
        (*(*v70 + 24))(v135, v70, v71, &v150);
        v19 = v135;
      }

      goto LABEL_105;
    }

    *v23 = 1;
    v25 = *a1;
    v26 = (*(**a1 + 40))(*a1);
    v129 = 0;
    v130 = 0;
    if (mlir::AsmParser::parseKeyword(v25, &v129))
    {
      Tag = llvm::dwarf::getTag(v129, v130);
      if (Tag != -1)
      {
        v28 = Tag & 0xFFFFFF00;
        v29 = Tag;
        v30 = 0x100000000;
        goto LABEL_146;
      }

      v128 = 257;
      (*(*v25 + 24))(&v150, v25, v26, v127);
      if (v150)
      {
        mlir::Diagnostic::operator<<<41ul>(&v151, "invalid debug info debug info tag name: ");
        if (v150)
        {
          v133 = 261;
          v131 = v129;
          v132 = v130;
          mlir::Diagnostic::operator<<(&v151, &v131);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v150);
    }

    v30 = 0;
    v29 = 0;
    v28 = 0;
LABEL_146:
    v123 = v30 | v28 | v29;
    v124 = a1[6];
    *(v124 + 4) = BYTE4(v30);
    *v124 = v123;
    if ((*(a1[6] + 4) & 1) == 0)
    {
      v125 = *a1;
      v126 = (*(*v125 + 40))(v125);
      v153 = 259;
      (*(*v125 + 24))(v147, v125, v126, &v150);
      v19 = v147;
      goto LABEL_105;
    }

    return 1;
  }

  v7 = *a2 == 1231250802 && *(a2 + 4) == 100;
  v8 = 1;
  v9 = 1;
  if (v7)
  {
    *v6 = 1;
    v38 = *a1;
    v150 = 0;
    v39 = mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(v38, &v150);
    v40 = v150;
    if (!v39)
    {
      v40 = 0;
    }

    v41 = a1[2];
    *v41 = v40;
    *(v41 + 8) = v39;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v42 = *a1;
      v43 = (*(*v42 + 40))(v42);
      v153 = 259;
      (*(*v42 + 24))(v149, v42, v43, &v150);
      v19 = v149;
      goto LABEL_105;
    }

    return v8;
  }

LABEL_8:
  v10 = a1[13];
  if ((*v10 & 1) != 0 || a3 != 5)
  {
    v31 = a1[15];
    v12 = a3 != 8;
    if ((*v31 & 1) == 0 && a3 == 8)
    {
      v22 = 1;
      if (*a2 == 0x6570795465736162)
      {
        *v31 = 1;
        v79 = *a1;
        v150 = 0;
        v80 = mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(v79, &v150);
        v81 = v150;
        if (!v80)
        {
          v81 = 0;
        }

        v82 = a1[16];
        *v82 = v81;
        *(v82 + 8) = v80;
        v8 = 1;
        if ((*(a1[16] + 8) & 1) == 0)
        {
          v83 = *a1;
          v84 = (*(*v83 + 40))(v83);
          v153 = 259;
          (*(*v83 + 24))(v142, v83, v84, &v150);
          v19 = v142;
          goto LABEL_105;
        }

        return v8;
      }

      v12 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    v11 = *a2 == 1886348147 && *(a2 + 4) == 101;
    v12 = 1;
    if (v11)
    {
      *v10 = 1;
      v13 = *a1;
      v150 = 0;
      v14 = mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(v13, &v150);
      v15 = v150;
      if (!v14)
      {
        v15 = 0;
      }

      v16 = a1[14];
      *v16 = v15;
      *(v16 + 8) = v14;
      v8 = 1;
      if ((*(a1[14] + 8) & 1) == 0)
      {
        v17 = *a1;
        v18 = (*(*v17 + 40))(v17);
        v153 = 259;
        (*(*v17 + 24))(v143, v17, v18, &v150);
        v19 = v143;
        goto LABEL_105;
      }

      return v8;
    }
  }

  v32 = a1[17];
  if ((*v32 & 1) != 0 || a3 != 5)
  {
    v47 = a1[19];
    v22 = a3 != 10;
    if ((*v47 & 1) != 0 || a3 != 10)
    {
      v54 = a1[21];
      if ((*v54 & 1) != 0 || a3 != 11)
      {
        goto LABEL_80;
      }

      v55 = *a2 == 0x426E496E67696C61 && *(a2 + 3) == 0x737469426E496E67;
      v22 = 1;
      if (!v55)
      {
        goto LABEL_80;
      }

      *v54 = 1;
      v117 = *a1;
      v150 = 0;
      v118 = mlir::AsmParser::parseInteger<unsigned long long>(v117, &v150);
      v119 = v150;
      if ((v118 & 1) == 0)
      {
        v119 = 0;
      }

      v120 = a1[22];
      *v120 = v119;
      *(v120 + 8) = v118 & 1;
      v8 = 1;
      if ((*(a1[22] + 8) & 1) == 0)
      {
        v121 = *a1;
        v122 = (*(*v121 + 40))(v121);
        v153 = 259;
        (*(*v121 + 24))(v139, v121, v122, &v150);
        v19 = v139;
        goto LABEL_105;
      }

      return v8;
    }

    if (*a2 == 0x69426E49657A6973 && *(a2 + 8) == 29556)
    {
      v8 = 1;
      *v47 = 1;
      v100 = *a1;
      v150 = 0;
      v101 = mlir::AsmParser::parseInteger<unsigned long long>(v100, &v150);
      v102 = v150;
      if ((v101 & 1) == 0)
      {
        v102 = 0;
      }

      v103 = a1[20];
      *v103 = v102;
      *(v103 + 8) = v101 & 1;
      if ((*(a1[20] + 8) & 1) == 0)
      {
        v104 = *a1;
        v105 = (*(*v104 + 40))(v104);
        v153 = 259;
        (*(*v104 + 24))(v140, v104, v105, &v150);
        v19 = v140;
        goto LABEL_105;
      }

      return v8;
    }

    v22 = 0;
LABEL_80:
    v56 = a1[23];
    if ((*v56 & 1) != 0 || v12 || *a2 != 0x73746E656D656C65)
    {
      v57 = a1[25];
      if ((*v57 & 1) == 0 && a3 == 12 && (*a2 == 0x61636F4C61746164 ? (v58 = *(a2 + 8) == 1852795252) : (v58 = 0), v58))
      {
        v8 = 1;
        *v57 = 1;
        v85 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
        v86 = a1[26];
        *v86 = v85;
        *(v86 + 8) = v87;
        if (*(a1[26] + 8))
        {
          return v8;
        }

        v88 = *a1;
        v89 = (*(*v88 + 40))(v88);
        v153 = 259;
        (*(*v88 + 24))(v137, v88, v89, &v150);
        v19 = v137;
      }

      else
      {
        v59 = a1[27];
        if (((*v59 | v8) & 1) != 0 || *a2 != 1802396018)
        {
          goto LABEL_91;
        }

        v8 = 1;
        *v59 = 1;
        v90 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
        v91 = a1[28];
        *v91 = v90;
        *(v91 + 8) = v92;
        if (*(a1[28] + 8))
        {
          return v8;
        }

        v93 = *a1;
        v94 = (*(*v93 + 40))(v93);
        v153 = 259;
        (*(*v93 + 24))(v136, v93, v94, &v150);
        v19 = v136;
      }

LABEL_105:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
      return 0;
    }

    *v56 = 1;
    mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v150, *a1);
    std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(a1[24], &v150);
    if (v154 == 1 && v150 != &v152)
    {
      free(v150);
    }

    if ((*(a1[24] + 64) & 1) == 0)
    {
      v77 = *a1;
      v78 = (*(*v77 + 40))(v77);
      v153 = 259;
      (*(*v77 + 24))(v138, v77, v78, &v150);
      v19 = v138;
      goto LABEL_105;
    }

    return 1;
  }

  v33 = *a2 == 1734437990 && *(a2 + 4) == 115;
  v22 = 1;
  if (!v33)
  {
    goto LABEL_80;
  }

  *v32 = 1;
  v34 = mlir::FieldParser<mlir::LLVM::DIFlags,mlir::LLVM::DIFlags>::parse<mlir::AsmParser>(*a1);
  v35 = a1[18];
  *v35 = v34;
  *(v35 + 4) = BYTE4(v34);
  v8 = 1;
  if ((*(a1[18] + 4) & 1) == 0)
  {
    v36 = *a1;
    v37 = (*(*v36 + 40))(v36);
    v153 = 259;
    (*(*v36 + 24))(v141, v36, v37, &v150);
    v19 = v141;
    goto LABEL_105;
  }

  return v8;
}

void std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 64);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (v5 == 1)
  {
    if (a1 != a2)
    {
      v6 = *(a2 + 8);
      if (v6)
      {
        v7 = *(a2 + 8);
        if (v6 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), *(a2 + 8), 8), (v7 = *(a2 + 8)) != 0))
        {
          memcpy(*a1, *a2, 8 * v7);
        }

        *(a1 + 8) = v6;
      }
    }
  }

  else if (*(a3 + 8))
  {

    llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, a3);
  }
}

llvm::raw_ostream *mlir::LLVM::DICompositeTypeAttr::print(mlir::LLVM::DICompositeTypeAttr *this, mlir::AsmPrinter *a2)
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
    if ((*(v6 + 16) & 1) == 0)
    {
      if (!*(v6 + 20))
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
                      if (!*(v6 + 80))
                      {
                        if (!*(v6 + 96))
                        {
                          if (!*(v6 + 104))
                          {
                            if (!*(v6 + 112))
                            {
                              if (!*(v6 + 120))
                              {
                                if (!*(v6 + 128))
                                {
                                  goto LABEL_164;
                                }

                                goto LABEL_159;
                              }

                              goto LABEL_150;
                            }

                            goto LABEL_141;
                          }

                          goto LABEL_132;
                        }

                        goto LABEL_123;
                      }

                      goto LABEL_114;
                    }

                    goto LABEL_105;
                  }

                  goto LABEL_96;
                }

                goto LABEL_87;
              }

              goto LABEL_78;
            }

            goto LABEL_69;
          }

          goto LABEL_60;
        }

        goto LABEL_51;
      }

      goto LABEL_42;
    }

    goto LABEL_30;
  }

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

  if (*(v9 + 16))
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

LABEL_30:
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
  }

  if (*(v9 + 20))
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

LABEL_42:
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if ((*(v18 + 3) - v19) > 5)
    {
      *(v19 + 4) = 8253;
      *v19 = 543646068;
      *(v18 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v18, "tag = ", 6uLL);
    }

    v9 = *this;
    v20 = *(*this + 20);
    if (v20)
    {
      v21 = llvm::dwarf::TagString(v20);
      v23 = v22;
      v24 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v24, v21, v23);
      v9 = *this;
    }
  }

  if (!*(v9 + 24))
  {
    goto LABEL_56;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) - v26 > 1uLL)
  {
    *v26 = 8236;
    *(v25 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v25, ", ", 2uLL);
  }

LABEL_51:
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 6uLL)
  {
    *(v28 + 3) = 540876901;
    *v28 = 1701667182;
    *(v27 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v27, "name = ", 7uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_56:
  if (*(v9 + 32))
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

LABEL_60:
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 6uLL)
    {
      *(v32 + 3) = 540876901;
      *v32 = 1701603686;
      *(v31 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v31, "file = ", 7uLL);
    }

    v9 = *this;
    v33 = *(*this + 32);
    if (v33)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v33);
      v9 = *this;
    }
  }

  if (!*(v9 + 40))
  {
    goto LABEL_74;
  }

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

LABEL_69:
  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) - v37 > 6uLL)
  {
    *(v37 + 3) = 540876901;
    *v37 = 1701734764;
    *(v36 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v36, "line = ", 7uLL);
  }

  v9 = *this;
  v38 = *(*this + 40);
  if (v38)
  {
    v39 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v39, v38, 0, 0, 0);
    v9 = *this;
  }

LABEL_74:
  if (*(v9 + 48))
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

LABEL_78:
    v42 = (*(*a2 + 16))(a2);
    v43 = *(v42 + 4);
    if (*(v42 + 3) - v43 > 7uLL)
    {
      *v43 = 0x203D2065706F6373;
      *(v42 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v42, "scope = ", 8uLL);
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
    goto LABEL_92;
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

LABEL_87:
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if ((*(v46 + 3) - v47) > 0xA)
  {
    *(v47 + 7) = 540876901;
    *v47 = *"baseType = ";
    *(v46 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v46, "baseType = ", 0xBuLL);
  }

  v9 = *this;
  if (*(*this + 56))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_92:
  if (*(v9 + 64))
  {
    v48 = (*(*a2 + 16))(a2);
    v49 = *(v48 + 4);
    if (*(v48 + 3) - v49 > 1uLL)
    {
      *v49 = 8236;
      *(v48 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v48, ", ", 2uLL);
    }

LABEL_96:
    v50 = (*(*a2 + 16))(a2);
    v51 = *(v50 + 4);
    if (*(v50 + 3) - v51 > 7uLL)
    {
      *v51 = 0x203D207367616C66;
      *(v50 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v50, "flags = ", 8uLL);
    }

    v9 = *this;
    v52 = *(*this + 64);
    if (v52)
    {
      v53 = (*(*a2 + 16))(a2);
      llvm::operator<<(v53, v52);
      v9 = *this;
    }
  }

  if (!*(v9 + 72))
  {
    goto LABEL_110;
  }

  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) - v55 > 1uLL)
  {
    *v55 = 8236;
    *(v54 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v54, ", ", 2uLL);
  }

LABEL_105:
  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (*(v56 + 3) - v57 > 0xCuLL)
  {
    qmemcpy(v57, "sizeInBits = ", 13);
    *(v56 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v56, "sizeInBits = ", 0xDuLL);
  }

  v9 = *this;
  v58 = *(*this + 72);
  if (v58)
  {
    v59 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v59, v58, 0, 0, 0);
    v9 = *this;
  }

LABEL_110:
  if (*(v9 + 80))
  {
    v60 = (*(*a2 + 16))(a2);
    v61 = *(v60 + 4);
    if (*(v60 + 3) - v61 > 1uLL)
    {
      *v61 = 8236;
      *(v60 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v60, ", ", 2uLL);
    }

LABEL_114:
    v62 = (*(*a2 + 16))(a2);
    v63 = *(v62 + 4);
    if (*(v62 + 3) - v63 > 0xDuLL)
    {
      qmemcpy(v63, "alignInBits = ", 14);
      *(v62 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v62, "alignInBits = ", 0xEuLL);
    }

    v9 = *this;
    v64 = *(*this + 80);
    if (v64)
    {
      v65 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v65, v64, 0, 0, 0);
      v9 = *this;
    }
  }

  if (!*(v9 + 96))
  {
    goto LABEL_128;
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (*(v66 + 3) - v67 > 1uLL)
  {
    *v67 = 8236;
    *(v66 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v66, ", ", 2uLL);
  }

LABEL_123:
  v68 = (*(*a2 + 16))(a2);
  v69 = *(v68 + 4);
  if ((*(v68 + 3) - v69) > 0xA)
  {
    *(v69 + 7) = 540876915;
    *v69 = *"elements = ";
    *(v68 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v68, "elements = ", 0xBuLL);
  }

  v9 = *this;
  v70 = *(*this + 96);
  if (v70)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(v9 + 88), v70);
    v9 = *this;
  }

LABEL_128:
  if (*(v9 + 104))
  {
    v71 = (*(*a2 + 16))(a2);
    v72 = *(v71 + 4);
    if (*(v71 + 3) - v72 > 1uLL)
    {
      *v72 = 8236;
      *(v71 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v71, ", ", 2uLL);
    }

LABEL_132:
    v73 = (*(*a2 + 16))(a2);
    v74 = *(v73 + 4);
    if (*(v73 + 3) - v74 > 0xEuLL)
    {
      qmemcpy(v74, "dataLocation = ", 15);
      *(v73 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v73, "dataLocation = ", 0xFuLL);
    }

    v9 = *this;
    v75 = *(*this + 104);
    if (v75)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v75);
      v9 = *this;
    }
  }

  if (!*(v9 + 112))
  {
    goto LABEL_146;
  }

  v76 = (*(*a2 + 16))(a2);
  v77 = *(v76 + 4);
  if (*(v76 + 3) - v77 > 1uLL)
  {
    *v77 = 8236;
    *(v76 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v76, ", ", 2uLL);
  }

LABEL_141:
  v78 = (*(*a2 + 16))(a2);
  v79 = *(v78 + 4);
  if (*(v78 + 3) - v79 > 6uLL)
  {
    *(v79 + 3) = 540876907;
    *v79 = 1802396018;
    *(v78 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v78, "rank = ", 7uLL);
  }

  v9 = *this;
  v80 = *(*this + 112);
  if (v80)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v80);
    v9 = *this;
  }

LABEL_146:
  if (*(v9 + 120))
  {
    v81 = (*(*a2 + 16))(a2);
    v82 = *(v81 + 4);
    if (*(v81 + 3) - v82 > 1uLL)
    {
      *v82 = 8236;
      *(v81 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v81, ", ", 2uLL);
    }

LABEL_150:
    v83 = (*(*a2 + 16))(a2);
    v84 = *(v83 + 4);
    if ((*(v83 + 3) - v84) > 0xB)
    {
      *(v84 + 8) = 540876900;
      *v84 = *"allocated = ";
      *(v83 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v83, "allocated = ", 0xCuLL);
    }

    v9 = *this;
    v85 = *(*this + 120);
    if (v85)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v85);
      v9 = *this;
    }
  }

  if (!*(v9 + 128))
  {
    goto LABEL_164;
  }

  v86 = (*(*a2 + 16))(a2);
  v87 = *(v86 + 4);
  if (*(v86 + 3) - v87 > 1uLL)
  {
    *v87 = 8236;
    *(v86 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v86, ", ", 2uLL);
  }

LABEL_159:
  v88 = (*(*a2 + 16))(a2);
  v89 = *(v88 + 4);
  if (*(v88 + 3) - v89 > 0xCuLL)
  {
    qmemcpy(v89, "associated = ", 13);
    *(v88 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v88, "associated = ", 0xDuLL);
  }

  v90 = *(*this + 128);
  if (v90)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v90);
  }

LABEL_164:
  result = (*(*a2 + 16))(a2);
  v92 = *(result + 4);
  if (*(result + 3) == v92)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v92 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    result = (*(*result + 40))(result, *a2);
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
        result = (*(*v5 + 40))(v5, v11);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIExpressionAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DIDerivedTypeAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v18[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id;
  v18[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DIDerivedTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DIDerivedTypeAttrEJjNS1_10StringAttrENS2_10DITypeAttrEyjyNSt3__18optionalIjEENS2_10DINodeAttrEEEENSF_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v27[1] = v18;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  *&v33[4] = 0u;
  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v36 = 0xFF51AFD7ED558CCDLL;
  *v32 = a2;
  *&v32[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v32[12] = (a4 >> 4) ^ (a4 >> 9);
  *v33 = a5;
  v28 = 0;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v32, &v28, &v33[8], &v35[8], a6);
  v29 = v28;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(v32, &v29, v11, &v35[8], a7);
  v30 = v29;
  v13 = llvm::hash_value<unsigned int>(&v25);
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v30, v12, &v35[8], v13);
  v31 = v30;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v31, v14, &v35[8], (v26 >> 4) ^ (v26 >> 9));
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v32, v31, v15, &v35[8]);
  v31 = &v19;
  *v32 = &v19;
  *&v32[8] = v27;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
}

uint64_t mlir::LLVM::DIDerivedTypeAttr::parse(mlir::AsmParser *a1)
{
  v40[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v38) = 0;
  v39 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v21[0] = a1;
  v21[1] = (&v23 + 3);
  v21[2] = &v38;
  v21[3] = (&v23 + 2);
  v21[4] = &v36;
  v21[5] = (&v23 + 1);
  v21[6] = &v34;
  v21[7] = &v23;
  v21[8] = &v32;
  v21[9] = (&v22 + 3);
  v21[10] = &v30;
  v21[11] = (&v22 + 2);
  v21[12] = &v28;
  v21[13] = (&v22 + 1);
  v21[14] = &v26;
  v21[15] = &v22;
  v21[16] = &v24;
  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 416))(a1, &v19))
  {
    v2 = v19;
    for (i = v20; mlir::LLVM::DIDerivedTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v21, v2, i); i = v18)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v17))
      {
        v14 = (*(*a1 + 40))(a1);
        v15 = "expected a parameter name in struct";
        v16 = 259;
        (*(*a1 + 24))(v40, a1, v14, &v15);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
        return 0;
      }

      v2 = v17;
    }

    return 0;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v39)
  {
    v5 = v38;
  }

  else
  {
    v5 = 0;
  }

  if (v37)
  {
    v6 = v36;
  }

  else
  {
    v6 = 0;
  }

  if (v35)
  {
    v7 = v34;
  }

  else
  {
    v7 = 0;
  }

  if (v33)
  {
    v8 = v32;
  }

  else
  {
    v8 = 0;
  }

  if (v31)
  {
    v9 = v30;
  }

  else
  {
    v9 = 0;
  }

  if (v29)
  {
    v10 = v28;
  }

  else
  {
    v10 = 0;
  }

  if (v25)
  {
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  if (v27)
  {
    v12 = v26 & 0xFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  return mlir::LLVM::DIDerivedTypeAttr::get(v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t mlir::LLVM::DIDerivedTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(mlir::AsmParser **a1, uint64_t a2, uint64_t a3)
{
  v93 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 3)
  {
    if (*a2 != 24948 || *(a2 + 2) != 103)
    {
      goto LABEL_83;
    }

    *v6 = 1;
    v8 = *a1;
    v9 = (*(**a1 + 40))(*a1);
    v77 = 0;
    v78 = 0;
    if (mlir::AsmParser::parseKeyword(v8, &v77))
    {
      Tag = llvm::dwarf::getTag(v77, v78);
      if (Tag != -1)
      {
        v11 = Tag & 0xFFFFFF00;
        v12 = Tag;
        v13 = 0x100000000;
LABEL_51:
        v45 = v13 | v11 | v12;
        v46 = a1[2];
        *(v46 + 4) = BYTE4(v13);
        *v46 = v45;
        if (*(a1[2] + 4))
        {
          return 1;
        }

        v47 = *a1;
        v48 = (*(*v47 + 40))(v47);
        v92 = 259;
        (*(*v47 + 24))(v89, v47, v48, &v90);
        v21 = v89;
LABEL_86:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
        return 0;
      }

      v76 = 257;
      (*(*v8 + 24))(&v90, v8, v9, v75);
      if (v90)
      {
        mlir::Diagnostic::operator<<<41ul>(v91, "invalid debug info debug info tag name: ");
        if (v90)
        {
          v81 = 261;
          v79 = v77;
          v80 = v78;
          mlir::Diagnostic::operator<<(v91, &v79);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v90);
    }

    v13 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_51;
  }

  v14 = a1[3];
  if ((*v14 & 1) != 0 || a3 != 4)
  {
    v22 = a1[5];
    if ((*v22 & 1) != 0 || a3 != 8)
    {
      v29 = a1[7];
      if ((*v29 & 1) != 0 || a3 != 10)
      {
        v37 = a1[9];
        if ((*v37 & 1) != 0 || a3 != 11)
        {
          v49 = a1[11];
          if ((*v49 & 1) != 0 || a3 != 12)
          {
            v57 = a1[13];
            if ((*v57 & 1) != 0 || a3 != 17)
            {
              v65 = a1[15];
              if ((*v65 & 1) == 0 && a3 == 9 && *a2 == 0x7461446172747865 && *(a2 + 8) == 97)
              {
                v15 = 1;
                *v65 = 1;
                v70 = mlir::FieldParser<mlir::LLVM::DINodeAttr,mlir::LLVM::DINodeAttr>::parse(*a1);
                v71 = a1[16];
                *v71 = v70;
                *(v71 + 8) = v72;
                if (*(a1[16] + 8))
                {
                  return v15;
                }

                v73 = *a1;
                v74 = (*(*v73 + 40))(v73);
                v92 = 259;
                (*(*v73 + 24))(v82, v73, v74, &v90);
                v21 = v82;
                goto LABEL_86;
              }

              goto LABEL_83;
            }

            if (*a2 == 0x6464416672617764 && *(a2 + 8) == 0x6361705373736572 && *(a2 + 16) == 101)
            {
              v15 = 1;
              *v57 = 1;
              v60 = mlir::FieldParser<std::optional<unsigned int>,std::optional<unsigned int>>::parse(*a1);
              v61 = a1[14];
              *v61 = v60;
              *(v61 + 8) = v62;
              if (*(a1[14] + 8))
              {
                return v15;
              }

              v63 = *a1;
              v64 = (*(*v63 + 40))(v63);
              v92 = 259;
              (*(*v63 + 24))(v83, v63, v64, &v90);
              v21 = v83;
              goto LABEL_86;
            }
          }

          else if (*a2 == 0x6E4974657366666FLL && *(a2 + 8) == 1937008962)
          {
            v15 = 1;
            *v49 = 1;
            v51 = *a1;
            v90 = 0;
            v52 = mlir::AsmParser::parseInteger<unsigned long long>(v51, &v90);
            v53 = v90;
            if ((v52 & 1) == 0)
            {
              v53 = 0;
            }

            v54 = a1[12];
            *v54 = v53;
            *(v54 + 8) = v52 & 1;
            if ((*(a1[12] + 8) & 1) == 0)
            {
              v55 = *a1;
              v56 = (*(*v55 + 40))(v55);
              v92 = 259;
              (*(*v55 + 24))(v84, v55, v56, &v90);
              v21 = v84;
              goto LABEL_86;
            }

            return v15;
          }
        }

        else if (*a2 == 0x426E496E67696C61 && *(a2 + 3) == 0x737469426E496E67)
        {
          v15 = 1;
          *v37 = 1;
          v39 = *a1;
          LODWORD(v90) = 0;
          v40 = mlir::AsmParser::parseInteger<unsigned int>(v39, &v90);
          v41 = v90;
          if ((v40 & 1) == 0)
          {
            v41 = 0;
          }

          v42 = a1[10];
          *(v42 + 4) = v40 & 1;
          *v42 = v41;
          if ((*(a1[10] + 4) & 1) == 0)
          {
            v43 = *a1;
            v44 = (*(*v43 + 40))(v43);
            v92 = 259;
            (*(*v43 + 24))(v85, v43, v44, &v90);
            v21 = v85;
            goto LABEL_86;
          }

          return v15;
        }
      }

      else if (*a2 == 0x69426E49657A6973 && *(a2 + 8) == 29556)
      {
        v15 = 1;
        *v29 = 1;
        v31 = *a1;
        v90 = 0;
        v32 = mlir::AsmParser::parseInteger<unsigned long long>(v31, &v90);
        v33 = v90;
        if ((v32 & 1) == 0)
        {
          v33 = 0;
        }

        v34 = a1[8];
        *v34 = v33;
        *(v34 + 8) = v32 & 1;
        if ((*(a1[8] + 8) & 1) == 0)
        {
          v35 = *a1;
          v36 = (*(*v35 + 40))(v35);
          v92 = 259;
          (*(*v35 + 24))(v86, v35, v36, &v90);
          v21 = v86;
          goto LABEL_86;
        }

        return v15;
      }

LABEL_83:
      v67 = *a1;
      v68 = (*(*v67 + 40))(v67);
      v75[0] = "duplicate or unknown struct parameter name: ";
      v76 = 259;
      (*(*v67 + 24))(&v90, v67, v68, v75);
      if (v90)
      {
        v81 = 261;
        v79 = a2;
        v80 = a3;
        mlir::Diagnostic::operator<<(v91, &v79);
      }

      v21 = &v90;
      goto LABEL_86;
    }

    if (*a2 != 0x6570795465736162)
    {
      goto LABEL_83;
    }

    v15 = 1;
    *v22 = 1;
    v23 = *a1;
    v90 = 0;
    v24 = mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(v23, &v90);
    v25 = v90;
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
      v92 = 259;
      (*(*v27 + 24))(v87, v27, v28, &v90);
      v21 = v87;
      goto LABEL_86;
    }
  }

  else
  {
    if (*a2 != 1701667182)
    {
      goto LABEL_83;
    }

    v15 = 1;
    *v14 = 1;
    v16 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
    v17 = a1[4];
    *v17 = v16;
    *(v17 + 8) = v18;
    if ((*(a1[4] + 8) & 1) == 0)
    {
      v19 = *a1;
      v20 = (*(*v19 + 40))(v19);
      v92 = 259;
      (*(*v19 + 24))(v88, v19, v20, &v90);
      v21 = v88;
      goto LABEL_86;
    }
  }

  return v15;
}