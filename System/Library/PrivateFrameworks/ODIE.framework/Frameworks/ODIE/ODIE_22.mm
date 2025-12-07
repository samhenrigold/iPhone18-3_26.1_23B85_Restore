llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::SamplingModeAttr::print(mlir::ODIE::Compiler::CoreML::SamplingModeAttr *this, mlir::AsmPrinter *a2)
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
  v7 = &str_56;
  v8 = 13;
  if (v6 == 1)
  {
    v7 = "align_corners";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10;
  }

  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = "half_pixel";
  }

  v11 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v11, v10, v9);
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

uint64_t mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ScatterModeAttrEJNS4_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(mlir::AsmParser *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v9 = 0;
  v10 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v9))
  {
    goto LABEL_22;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(v9, v10);
  if ((v3 & 0x100000000) == 0)
  {
    v8[16] = 257;
    (*(*a1 + 24))(&v12, a1, v2, v8);
    if (v12)
    {
      mlir::Diagnostic::operator<<<10ul>(v13, "expected ");
      if (v12)
      {
        mlir::Diagnostic::operator<<<42ul>(v13, "mlir::ODIE::Compiler::CoreML::ScatterMode");
        if (v12)
        {
          mlir::Diagnostic::operator<<<16ul>(v13, " to be one of: ");
          if (v12)
          {
            mlir::Diagnostic::operator<<<7ul>(v13, "update");
            if (v12)
            {
              mlir::Diagnostic::operator<<<3ul>(v13, ", ");
              if (v12)
              {
                mlir::Diagnostic::operator<<<4ul>(v13, "add");
                if (v12)
                {
                  mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                  if (v12)
                  {
                    mlir::Diagnostic::operator<<<4ul>(v13, "sub");
                    if (v12)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                      if (v12)
                      {
                        mlir::Diagnostic::operator<<<4ul>(v13, "mul");
                        if (v12)
                        {
                          mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                          if (v12)
                          {
                            mlir::Diagnostic::operator<<<4ul>(v13, "div");
                            if (v12)
                            {
                              mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                              if (v12)
                              {
                                mlir::Diagnostic::operator<<<4ul>(v13, "max");
                                if (v12)
                                {
                                  mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                                  if (v12)
                                  {
                                    mlir::Diagnostic::operator<<<4ul>(v13, "min");
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

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
LABEL_22:
    v4 = (*(*a1 + 40))(a1);
    v13[12] = 259;
    (*(*a1 + 24))(v11, a1, v4, &v12);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    return 0;
  }

  v6 = v3;
  if ((*(*a1 + 168))(a1))
  {
    v7 = (*(*a1 + 32))(a1);
    return mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(*v7, v6);
  }

  return 0;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ScatterModeAttr::print(mlir::ODIE::Compiler::CoreML::ScatterModeAttr *this, mlir::AsmPrinter *a2)
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

  v6 = mlir::ODIE::Compiler::CoreML::stringifyScatterMode(*(*this + 8));
  v8 = v7;
  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v6, v8);
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

char *mlir::ODIE::Compiler::CoreML::stringifyScatterMode(unsigned int a1)
{
  if (a1 > 6)
  {
    return &str_56;
  }

  else
  {
    return (&off_2799BDA50)[a1];
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23FileResourceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16FileResourceAttrEJNS1_10ShapedTypeENS1_10StringAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v12[1] = v8;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v11 = a5;
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v13 = ((a2 >> 4) ^ (a2 >> 9));
  v14 = ((a4 >> 4) ^ (a4 >> 9));
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(&v13, 0, v15, v16, &v11);
  v9 = v10;
  v13 = v10;
  v14 = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
}

uint64_t mlir::ODIE::Compiler::CoreML::FileResourceAttr::parse(uint64_t *a1, uint64_t *a2)
{
  v27[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v4 = (*(*a1 + 40))(a1);
  if (!a2)
  {
    v22[0] = "expected a trailing type";
    v23 = 259;
    (*(*a1 + 24))(v26, a1, v4, v22);
    v19 = v26;
LABEL_14:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return 0;
  }

  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
  if (!v5)
  {
    v22[0] = "invalid kind of type specified";
    v23 = 259;
    (*(*a1 + 24))(v27, a1, v4, v22);
    v19 = v27;
    goto LABEL_14;
  }

  v7 = v5;
  v8 = v6;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v9 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  v10 = *a1;
  if ((v11 & 1) == 0)
  {
    v20 = (*(v10 + 40))(a1);
    v23 = 259;
    (*(*a1 + 24))(v25, a1, v20, v22);
    v19 = v25;
    goto LABEL_14;
  }

  v12 = v9;
  if (((*(v10 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v13 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
  v14 = *a1;
  if ((v15 & 1) == 0)
  {
    v21 = (*(v14 + 40))(a1);
    v23 = 259;
    (*(*a1 + 24))(v24, a1, v21, v22);
    v19 = v24;
    goto LABEL_14;
  }

  v16 = v13;
  if (((*(v14 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = *(*(*a1 + 32))(a1);

  return mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(v17, v7, v8, v12, v16);
}

uint64_t mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::FileResourceAttr::print(mlir::ODIE::Compiler::CoreML::FileResourceAttr *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 40))(a2, *(*this + 24));
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

  (*(*a2 + 40))(a2, *(*this + 32));
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

uint64_t mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ComputeTargetAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ComputeTargetAttrEJNS4_13ComputeTargetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage,mlir::ODIE::Compiler::CoreML::ComputeTarget>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ComputeTarget &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage,mlir::ODIE::Compiler::CoreML::ComputeTarget>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ComputeTarget &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::parse(mlir::AsmParser *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v9 = 0;
  v10 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v9))
  {
    goto LABEL_16;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeComputeTarget(v9, v10);
  if ((v3 & 0x100000000) == 0)
  {
    v8[16] = 257;
    (*(*a1 + 24))(&v12, a1, v2, v8);
    if (v12)
    {
      mlir::Diagnostic::operator<<<10ul>(v13, "expected ");
      if (v12)
      {
        mlir::Diagnostic::operator<<<44ul>(v13, "mlir::ODIE::Compiler::CoreML::ComputeTarget");
        if (v12)
        {
          mlir::Diagnostic::operator<<<16ul>(v13, " to be one of: ");
          if (v12)
          {
            mlir::Diagnostic::operator<<<12ul>(v13, "interpreter");
            if (v12)
            {
              mlir::Diagnostic::operator<<<3ul>(v13, ", ");
              if (v12)
              {
                mlir::Diagnostic::operator<<<4ul>(v13, "cpu");
                if (v12)
                {
                  mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                  if (v12)
                  {
                    mlir::Diagnostic::operator<<<4ul>(v13, "gpu");
                    if (v12)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                      if (v12)
                      {
                        mlir::Diagnostic::operator<<<4ul>(v13, "ane");
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

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
LABEL_16:
    v4 = (*(*a1 + 40))(a1);
    v13[12] = 259;
    (*(*a1 + 24))(v11, a1, v4, &v12);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    return 0;
  }

  v6 = v3;
  if ((*(*a1 + 168))(a1))
  {
    v7 = (*(*a1 + 32))(a1);
    return mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(*v7, v6);
  }

  return 0;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::print(mlir::ODIE::Compiler::CoreML::ComputeTargetAttr *this, mlir::AsmPrinter *a2)
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
  if (v6 > 3)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D09F638[v6];
    v8 = (&off_2799BDA88)[v6];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
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

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseAttribute(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(&v40, a2, 0);
  v37 = "torch_location_extras";
  v38 = 21;
  if (v44[2])
  {
    goto LABEL_2;
  }

  v8 = v43;
  if (v43 == 21)
  {
    if (*v42 == 0x6F6C5F6863726F74 && *(v42 + 8) == 0x655F6E6F69746163 && *(v42 + 13) == 0x7361727478655F6ELL)
    {
      v20 = mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(a2);
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v43)
  {
LABEL_20:
    v37 = "odie_location_frame_attr";
    v38 = 24;
    goto LABEL_21;
  }

  (*(*v40 + 648))(v40, &v37, 1);
  v37 = "odie_location_frame_attr";
  v38 = 24;
  if (v44[2])
  {
    goto LABEL_2;
  }

  v8 = v43;
  if (!v43)
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "extern";
    v38 = 6;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
    if (!v43)
    {
      goto LABEL_9;
    }

LABEL_30:
    if (v8 == 6 && *v42 == 1702131813 && *(v42 + 4) == 28274)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "tensor_encoding";
    v38 = 15;
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_21:
  if (v8 == 24)
  {
    v11 = *v42 == 0x636F6C5F6569646FLL && *(v42 + 8) == 0x72665F6E6F697461;
    if (v11 && *(v42 + 16) == 0x727474615F656D61)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(a2);
      goto LABEL_185;
    }
  }

  v37 = "extern";
  v38 = 6;
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_9:
  (*(*v40 + 648))(v40, &v37, 1);
  v37 = "tensor_encoding";
  v38 = 15;
  if (v44[2])
  {
    goto LABEL_2;
  }

  v8 = v43;
  if (!v43)
  {
LABEL_11:
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "param.decl";
    v38 = 10;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
    goto LABEL_42;
  }

LABEL_36:
  if (v8 == 15 && *v42 == 0x655F726F736E6574 && *(v42 + 7) == 0x676E69646F636E65)
  {
    v20 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(a2);
    goto LABEL_185;
  }

  v37 = "param.decl";
  v38 = 10;
LABEL_42:
  if (v8)
  {
    if (v8 == 10 && *v42 == 0x65642E6D61726170 && *(v42 + 8) == 27747)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "param.decl.array";
    v38 = 16;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "param.decl.array";
    v38 = 16;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
    if (!v43)
    {
      (*(*v40 + 648))(v40, &v37, 1);
      v37 = "param.ref";
      v38 = 9;
      if (v44[2])
      {
        goto LABEL_2;
      }

      v8 = v43;
      if (v43)
      {
        goto LABEL_55;
      }

LABEL_79:
      (*(*v40 + 648))(v40, &v37, 1);
      v37 = "param.bind";
      v38 = 10;
      if (v44[2])
      {
        goto LABEL_2;
      }

      v8 = v43;
      if (v43)
      {
        goto LABEL_61;
      }

      goto LABEL_81;
    }
  }

  if (v8 == 16 && *v42 == 0x65642E6D61726170 && *(v42 + 8) == 0x79617272612E6C63)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(a2);
    goto LABEL_185;
  }

  v37 = "param.ref";
  v38 = 9;
  if (!v8)
  {
    goto LABEL_79;
  }

LABEL_55:
  if (v8 == 9 && *v42 == 0x65722E6D61726170 && *(v42 + 8) == 102)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(a2, a3);
    goto LABEL_185;
  }

  v37 = "param.bind";
  v38 = 10;
  if (v8)
  {
LABEL_61:
    if (v8 == 10 && *v42 == 0x69622E6D61726170 && *(v42 + 8) == 25710)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(a2, a3);
      goto LABEL_185;
    }

    v37 = "param.constant";
    v38 = 14;
    if (v8)
    {
      goto LABEL_67;
    }

LABEL_83:
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "intent";
    v38 = 6;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
    goto LABEL_85;
  }

LABEL_81:
  (*(*v40 + 648))(v40, &v37, 1);
  v37 = "param.constant";
  v38 = 14;
  if (v44[2])
  {
    goto LABEL_2;
  }

  v8 = v43;
  if (!v43)
  {
    goto LABEL_83;
  }

LABEL_67:
  if (v8 == 14 && *v42 == 0x6F632E6D61726170 && *(v42 + 6) == 0x746E6174736E6F63)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(a2, a3);
    goto LABEL_185;
  }

  v37 = "intent";
  v38 = 6;
LABEL_85:
  if (v8)
  {
    if (v8 == 6 && *v42 == 1702129257 && *(v42 + 4) == 29806)
    {
      v20 = mlir::ODIE::Compiler::CoreML::IntentAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "target_spec";
    v38 = 11;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "target_spec";
    v38 = 11;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
  }

  if (v8)
  {
    if (v8 == 11 && *v42 == 0x735F746567726174 && *(v42 + 3) == 0x636570735F746567)
    {
      v20 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "approximate";
    v38 = 11;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "approximate";
    v38 = 11;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
  }

  if (v8)
  {
    if (v8 == 11 && *v42 == 0x6D69786F72707061 && *(v42 + 3) == 0x6574616D69786F72)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "padding_mode";
    v38 = 12;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "padding_mode";
    v38 = 12;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
  }

  if (v8)
  {
    if (v8 == 12 && *v42 == 0x5F676E6964646170 && *(v42 + 8) == 1701080941)
    {
      v20 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "interpolation_mode";
    v38 = 18;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "interpolation_mode";
    v38 = 18;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
  }

  if (v8)
  {
    if (v8 != 18 || (*v42 == 0x6C6F707265746E69 ? (v25 = *(v42 + 8) == 0x6F6D5F6E6F697461) : (v25 = 0), v25 ? (v26 = *(v42 + 16) == 25956) : (v26 = 0), !v26))
    {
      v37 = "sampling_mode";
      v38 = 13;
      goto LABEL_142;
    }

    v20 = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(a2);
LABEL_185:
    v7 = v20;
    v44[0] = v20 != 0;
    *&v44[1] = 257;
    goto LABEL_186;
  }

  (*(*v40 + 648))(v40, &v37, 1);
  v37 = "sampling_mode";
  v38 = 13;
  if (v44[2])
  {
    goto LABEL_2;
  }

  v8 = v43;
LABEL_142:
  if (v8)
  {
    if (v8 == 13 && *v42 == 0x676E696C706D6173 && *(v42 + 5) == 0x65646F6D5F676E69)
    {
      v20 = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "scatter_mode";
    v38 = 12;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "scatter_mode";
    v38 = 12;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
  }

  if (v8)
  {
    if (v8 == 12 && *v42 == 0x5F72657474616373 && *(v42 + 8) == 1701080941)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(a2);
      goto LABEL_185;
    }

    v37 = "file_resource";
    v38 = 13;
  }

  else
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "file_resource";
    v38 = 13;
    if (v44[2])
    {
      goto LABEL_2;
    }

    v8 = v43;
  }

  if (!v8)
  {
    (*(*v40 + 648))(v40, &v37, 1);
    v37 = "compute_target";
    v38 = 14;
    if ((v44[2] & 1) == 0)
    {
      v8 = v43;
      goto LABEL_172;
    }

LABEL_2:
    v7 = 0;
LABEL_186:
    v8 = 0;
    v31 = 0;
    goto LABEL_187;
  }

  if (v8 == 13 && *v42 == 0x7365725F656C6966 && *(v42 + 5) == 0x656372756F736572)
  {
    v20 = mlir::ODIE::Compiler::CoreML::FileResourceAttr::parse(a2, a3);
    goto LABEL_185;
  }

  v37 = "compute_target";
  v38 = 14;
LABEL_172:
  if (!v8)
  {
    (*(*v40 + 648))(v40, &v37, 1);
    if (v44[2])
    {
      v8 = 0;
      v31 = 0;
      v7 = 0;
      goto LABEL_187;
    }

    v8 = v43;
    goto LABEL_197;
  }

  if (v8 == 14 && *v42 == 0x5F657475706D6F63 && *(v42 + 6) == 0x7465677261745F65)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::parse(a2);
    goto LABEL_185;
  }

LABEL_197:
  v7 = 0;
  v31 = v42;
  *v44 = 0;
  v44[2] = 1;
LABEL_187:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v40) & 0x100) == 0)
  {
    v36 = 257;
    (*(*a2 + 24))(&v40, a2, v6, v35);
    if (v40)
    {
      if (v40)
      {
        v39 = 261;
        v37 = v31;
        v38 = v8;
        mlir::Diagnostic::operator<<(&v41, &v37);
        if (v40)
        {
          if (v40)
          {
            v32 = *(a1 + 8);
            v33 = *(a1 + 16);
            v39 = 261;
            v37 = v32;
            v38 = v33;
            mlir::Diagnostic::operator<<(&v41, &v37);
            if (v40)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    return 0;
  }

  return v7;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::printAttribute(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id)
  {
    v57 = a2;
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 0x14uLL)
    {
      qmemcpy(v9, "torch_location_extras", 21);
      *(v8 + 4) += 21;
    }

    else
    {
      llvm::raw_ostream::write(v8, "torch_location_extras", 0x15uLL);
    }

    mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id)
  {
    v57 = a2;
    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0x17uLL)
    {
      qmemcpy(v11, "odie_location_frame_attr", 24);
      *(v10 + 4) += 24;
    }

    else
    {
      llvm::raw_ostream::write(v10, "odie_location_frame_attr", 0x18uLL);
    }

    mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v57 = a2;
    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 5)
    {
      *(v13 + 4) = 28274;
      *v13 = 1702131813;
      *(v12 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v12, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    v57 = a2;
    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 0xEuLL)
    {
      qmemcpy(v15, "tensor_encoding", 15);
      *(v14 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v14, "tensor_encoding", 0xFuLL);
    }

    mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
    v57 = a2;
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if ((*(v16 + 3) - v17) > 9)
    {
      *(v17 + 8) = 27747;
      *v17 = *"param.decl";
      *(v16 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v16, "param.decl", 0xAuLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 0xFuLL)
    {
      *v19 = *"param.decl.array";
      *(v18 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v18, "param.decl.array", 0x10uLL);
    }

    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (*(v22 + 3) == v23)
    {
      llvm::raw_ostream::write(v22, "[", 1uLL);
    }

    else
    {
      *v23 = 91;
      ++*(v22 + 4);
    }

    v26 = a2[2];
    if (v26)
    {
      v27 = a2[1];
      v28 = (*(*a3 + 16))(a3);
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(a3, *v27);
      if (v26 != 1)
      {
        v29 = v27 + 1;
        v30 = 8 * v26 - 8;
        do
        {
          v31 = *(v28 + 4);
          if (*(v28 + 3) - v31 > 1uLL)
          {
            *v31 = 8236;
            *(v28 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v28, ", ", 2uLL);
          }

          v32 = *v29++;
          mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(a3, v32);
          v30 -= 8;
        }

        while (v30);
      }
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (*(v33 + 3) != v34)
    {
      v35 = 93;
LABEL_69:
      *v34 = v35;
      ++*(v33 + 4);
      return;
    }

    v36 = "]";
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
      {
        v57 = a2;
        v24 = (*(*a3 + 16))(a3);
        v25 = *(v24 + 4);
        if ((*(v24 + 3) - v25) > 9)
        {
          *(v25 + 8) = 25710;
          *v25 = *"param.bind";
          *(v24 + 4) += 10;
        }

        else
        {
          llvm::raw_ostream::write(v24, "param.bind", 0xAuLL);
        }

        mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
      {
        v57 = a2;
        v39 = (*(*a3 + 16))(a3);
        v40 = *(v39 + 4);
        if (*(v39 + 3) - v40 > 0xDuLL)
        {
          qmemcpy(v40, "param.constant", 14);
          *(v39 + 4) += 14;
        }

        else
        {
          llvm::raw_ostream::write(v39, "param.constant", 0xEuLL);
        }

        mlir::ODIE::Compiler::CoreML::ParamConstantAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
      {
        v57 = a2;
        v41 = (*(*a3 + 16))(a3);
        v42 = *(v41 + 4);
        if ((*(v41 + 3) - v42) > 5)
        {
          *(v42 + 4) = 29806;
          *v42 = 1702129257;
          *(v41 + 4) += 6;
        }

        else
        {
          llvm::raw_ostream::write(v41, "intent", 6uLL);
        }

        mlir::ODIE::Compiler::CoreML::IntentAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
      {
        v57 = a2;
        v43 = (*(*a3 + 16))(a3);
        v44 = *(v43 + 4);
        if ((*(v43 + 3) - v44) > 0xA)
        {
          *(v44 + 7) = 1667592307;
          *v44 = *"target_spec";
          *(v43 + 4) += 11;
        }

        else
        {
          llvm::raw_ostream::write(v43, "target_spec", 0xBuLL);
        }

        mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
      {
        v57 = a2;
        v45 = (*(*a3 + 16))(a3);
        v46 = *(v45 + 4);
        if ((*(v45 + 3) - v46) > 0xA)
        {
          *(v46 + 7) = 1702125933;
          *v46 = *"approximate";
          *(v45 + 4) += 11;
        }

        else
        {
          llvm::raw_ostream::write(v45, "approximate", 0xBuLL);
        }

        mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
      {
        v57 = a2;
        v47 = (*(*a3 + 16))(a3);
        v48 = *(v47 + 4);
        if ((*(v47 + 3) - v48) > 0xB)
        {
          *(v48 + 8) = 1701080941;
          *v48 = *"padding_mode";
          *(v47 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v47, "padding_mode", 0xCuLL);
        }

        mlir::ODIE::Compiler::CoreML::PaddingModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
      {
        v57 = a2;
        v49 = (*(*a3 + 16))(a3);
        v50 = *(v49 + 4);
        if ((*(v49 + 3) - v50) > 0x11)
        {
          *(v50 + 16) = 25956;
          *v50 = *"interpolation_mode";
          *(v49 + 4) += 18;
        }

        else
        {
          llvm::raw_ostream::write(v49, "interpolation_mode", 0x12uLL);
        }

        mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
      {
        v57 = a2;
        v51 = (*(*a3 + 16))(a3);
        v52 = *(v51 + 4);
        if (*(v51 + 3) - v52 > 0xCuLL)
        {
          qmemcpy(v52, "sampling_mode", 13);
          *(v51 + 4) += 13;
        }

        else
        {
          llvm::raw_ostream::write(v51, "sampling_mode", 0xDuLL);
        }

        mlir::ODIE::Compiler::CoreML::SamplingModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
      {
        v57 = a2;
        v53 = (*(*a3 + 16))(a3);
        v54 = *(v53 + 4);
        if ((*(v53 + 3) - v54) > 0xB)
        {
          *(v54 + 8) = 1701080941;
          *v54 = *"scatter_mode";
          *(v53 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v53, "scatter_mode", 0xCuLL);
        }

        mlir::ODIE::Compiler::CoreML::ScatterModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id)
      {
        v57 = a2;
        v55 = (*(*a3 + 16))(a3);
        v56 = *(v55 + 4);
        if (*(v55 + 3) - v56 > 0xCuLL)
        {
          qmemcpy(v56, "file_resource", 13);
          *(v55 + 4) += 13;
        }

        else
        {
          llvm::raw_ostream::write(v55, "file_resource", 0xDuLL);
        }

        mlir::ODIE::Compiler::CoreML::FileResourceAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id)
      {
        v57 = a2;
        v6 = (*(*a3 + 16))(a3);
        v7 = *(v6 + 4);
        if (*(v6 + 3) - v7 > 0xDuLL)
        {
          qmemcpy(v7, "compute_target", 14);
          *(v6 + 4) += 14;
        }

        else
        {
          llvm::raw_ostream::write(v6, "compute_target", 0xEuLL);
        }

        mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::print(&v57, a3);
      }

      return;
    }

    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if ((*(v20 + 3) - v21) > 8)
    {
      *(v21 + 8) = 102;
      *v21 = *"param.ref";
      *(v20 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v20, "param.ref", 9uLL);
    }

    v37 = (*(*a3 + 16))(a3);
    v38 = *(v37 + 4);
    if (*(v37 + 3) == v38)
    {
      llvm::raw_ostream::write(v37, "<", 1uLL);
    }

    else
    {
      *v38 = 60;
      ++*(v37 + 4);
    }

    (*(*a3 + 72))(a3, *(a2[1] + 16), *(a2[1] + 24));
    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (*(v33 + 3) != v34)
    {
      v35 = 62;
      goto LABEL_69;
    }

    v36 = ">";
  }

  llvm::raw_ostream::write(v33, v36, 1uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 16) != a3)
  {
    a5(&v10, a6, a2);
    if (v10)
    {
      mlir::Diagnostic::operator<<<46ul>(v11, "encoding rank is different than tensor shape.");
    }

    goto LABEL_9;
  }

  if (a3 != (4 * a3) >> 2 || !std::__is_permutation[abi:nn200100]<std::_ClassicAlgPolicy,llvm::detail::SafeIntIterator<long long,false>,llvm::detail::SafeIntIterator<long long,false>,int const*,int const*,std::__identity &,std::__identity &,std::__equal_to &>(0, a3, *(*a1 + 8), (*(*a1 + 8) + 4 * a3)))
  {
    (a5)(&v10, a6);
    if (v10)
    {
      mlir::Diagnostic::operator<<<61ul>(v11, "encoding dimension order should be permutation of the shape.");
    }

LABEL_9:
    v8 = v11[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeApproximate(_DWORD *a1, uint64_t a2)
{
  if (a2 == 7)
  {
    if (*a1 == 1835493747 && *(a1 + 3) == 1684631405)
    {
      return 0x100000002;
    }

    return 0;
  }

  if (a2 != 4)
  {
    return 0;
  }

  if (*a1 != 1701736302)
  {
    if (*a1 == 1752064372)
    {
      return 0x100000001;
    }

    return 0;
  }

  return 0x100000000;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeComputeTarget(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 != 3)
  {
    if (a2 == 11 && *a1 == 0x6572707265746E69 && *(a1 + 3) == 0x7265746572707265)
    {
      return 0x100000000;
    }

    return 0;
  }

  if (*a1 == 28771 && *(a1 + 2) == 117)
  {
    return 0x100000001;
  }

  result = 0x100000002;
  if (*a1 != 28775 || *(a1 + 2) != 117)
  {
    v7 = *a1;
    v8 = *(a1 + 2);
    if (v7 == 28257 && v8 == 101)
    {
      return 0x100000003;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeIntent(int *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v7 = *a1;
      v8 = *(a1 + 4);
      if (v7 == 1970237033 && v8 == 116)
      {
        return 1;
      }
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v4 = *a1;
      v5 = *(a1 + 2);
      if (v4 == 1970562418 && v5 == 28274)
      {
        return 2;
      }
    }

    return 0;
  }

  if (a2 == 2)
  {
    if (*a1 == 28265)
    {
      return 3;
    }

    return 0;
  }

  if (a2 == 3)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (*a1 == 25697 && *(a1 + 2) == 100)
    {
      return 0x100000001;
    }

    else
    {
      result = 0x100000002;
      if (*a1 != 30067 || *(a1 + 2) != 98)
      {
        if (*a1 == 30061 && *(a1 + 2) == 108)
        {
          return 0x100000003;
        }

        else if (*a1 == 26980 && *(a1 + 2) == 118)
        {
          return 0x100000004;
        }

        else if (*a1 == 24941 && *(a1 + 2) == 120)
        {
          return 0x100000005;
        }

        else if (*a1 ^ 0x696D | *(a1 + 2) ^ 0x6E)
        {
          return 0;
        }

        else
        {
          return 0x100000006;
        }
      }
    }
  }

  else if (a2 == 6 && (*a1 == 1633972341 ? (v3 = a1[2] == 25972) : (v3 = 0), v3))
  {
    return 0x100000000;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::parse(mlir::ODIE::Compiler::CoreML::ParamRefType *this, mlir::AsmParser *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  v3 = (*(*this + 40))(this);
  if (((*(*this + 152))(this) & 1) == 0)
  {
    return 0;
  }

  v21 = 0;
  v22[0] = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(this, &v21, 0))
  {
    v13 = (*(*this + 40))(this);
    v23 = 259;
    (*(*this + 24))(v20, this, v13, &v21);
    v12 = v20;
LABEL_9:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    return 0;
  }

  v4 = v21;
  v5 = HIBYTE(v21);
  v6 = *(&v21 + 5);
  v7 = *(&v21 + 1);
  v8 = v22[0];
  if (((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v9 = v7 | ((v6 | (v5 << 16)) << 32);
  v10 = *(*(*this + 32))(this);
  v11 = (v4 | (v9 << 8));
  *&v17 = v11;
  *(&v17 + 1) = v8;
  if (*(*(*v8)(v8, v11) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    v19 = 257;
    (*(*this + 24))(&v21, this, v3, v18);
    if (v21)
    {
    }

    v12 = &v21;
    goto LABEL_9;
  }

  if (v11)
  {
    v15 = *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v15 = 0;
  }

  if (v15 && (v16 = v11[1], *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id))
  {
    return v16[1];
  }

  else
  {
    return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::TypedAttr &>(v10, &v17);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::HandleType::parse(mlir::ODIE::Compiler::CoreML::HandleType *this, mlir::AsmParser *a2)
{
  v11[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v9[0] = 0;
    v3 = (*(*this + 536))(this, v9);
    v4 = *this;
    if (v3)
    {
      v5 = v9[0];
      if ((*(v4 + 168))(this))
      {
        v6 = *(*(*this + 32))(this);
        v9[0] = v5;
        return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type>(v6, v9);
      }
    }

    else
    {
      v8 = (*(v4 + 40))(this);
      v10 = 259;
      (*(*this + 24))(v11, this, v8, v9);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    }
  }

  return 0;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::HandleType::print(mlir::ODIE::Compiler::CoreML::HandleType *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 32))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(mlir::ODIE::Compiler::CoreML::AsyncValueType *this, mlir::AsmParser *a2)
{
  v11[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v9[0] = 0;
    v3 = (*(*this + 536))(this, v9);
    v4 = *this;
    if (v3)
    {
      v5 = v9[0];
      if ((*(v4 + 168))(this))
      {
        v6 = *(*(*this + 32))(this);
        v9[0] = v5;
        return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type>(v6, v9);
      }
    }

    else
    {
      v8 = (*(v4 + 40))(this);
      v10 = 259;
      (*(*this + 24))(v11, this, v8, v9);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    }
  }

  return 0;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::AsyncValueType::print(mlir::ODIE::Compiler::CoreML::AsyncValueType *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 32))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t *mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseType(uint64_t a1, mlir::ODIE::Compiler::CoreML::ParamRefType *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v45, a2, 0);
  *&__dst = "opaque";
  *(&__dst + 1) = 6;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (v47 == 6)
  {
    if (*v46 == 1902211183 && *(v46 + 4) == 25973)
    {
      v16 = *(**(*(*a2 + 32))(a2) + 384);
      v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
      goto LABEL_85;
    }

    goto LABEL_17;
  }

  if (v47)
  {
LABEL_17:
    *&__dst = "type";
    *(&__dst + 1) = 4;
LABEL_18:
    if (v7 != 4 || *v46 != 1701869940)
    {
      *&__dst = "symbol";
      *(&__dst + 1) = 6;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    v16 = *(**(*(*a2 + 32))(a2) + 384);
    v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
LABEL_85:
    v57 = v17;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v16 + 232), &v57);
LABEL_86:
    v20 = v6 == 0;
LABEL_105:
    v31 = !v20;
    v48[0] = v31;
    *&v48[1] = 257;
    goto LABEL_109;
  }

  (*(*v45[0] + 648))(v45[0], &__dst, 1);
  *&__dst = "type";
  *(&__dst + 1) = 4;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (v47)
  {
    goto LABEL_18;
  }

  (*(*v45[0] + 648))(v45[0], &__dst, 1);
  *&__dst = "symbol";
  *(&__dst + 1) = 6;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (!v47)
  {
LABEL_9:
    (*(*v45[0] + 648))(v45[0], &__dst, 1);
    v49 = "array";
    v50 = 5;
    if (v48[2])
    {
      goto LABEL_2;
    }

    v7 = v47;
    if (!v47)
    {
      goto LABEL_11;
    }

LABEL_27:
    if (v7 != 5 || (*v46 == 1634890337 ? (v10 = *(v46 + 4) == 121) : (v10 = 0), !v10))
    {
      *&__dst = "param_ref";
      *(&__dst + 1) = 9;
      goto LABEL_33;
    }

    v51 = 0;
    v52 = 0;
    v21 = (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0 || ((*(*a2 + 440))(a2, &v52, 0) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 440))(a2, &v51, 0) & 1) == 0 || ((*(*a2 + 168))(a2) & 1) == 0)
    {
LABEL_133:
      v6 = 0;
      goto LABEL_86;
    }

    v22 = v52;
    if (*(*v52 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v23 = *(**(*(*a2 + 32))(a2) + 384);
      *&__dst = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
      v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v23 + 232), &__dst);
      v52 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v22, *v24);
    }

    v25 = *(*(*a2 + 32))(a2);
    v26 = v52;
    if (v52)
    {
      v27 = *v52;
      v28 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v29 = mlir::detail::InterfaceMap::lookup(v27 + 8, v28);
    }

    else
    {
      v29 = 0;
    }

    v35 = v51;
    if (v51)
    {
      v36 = *v51;
      v37 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v38 = mlir::detail::InterfaceMap::lookup(v36 + 8, v37);
    }

    else
    {
      v38 = 0;
    }

    if (*(*(*v29)(v29, v26) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
    {
      if (*(*(*v38)(v38, v35) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        goto LABEL_134;
      }

      v60 = 257;
      (*(*a2 + 24))(&__dst, a2, v21, &v57);
      if (__dst)
      {
        mlir::Diagnostic::operator<<<53ul>(&__dst + 8, "expected a size expression of any integer type, got ");
        if (__dst)
        {
          LODWORD(v57) = 0;
          v58 = v35;
          goto LABEL_131;
        }
      }
    }

    else
    {
      v60 = 257;
      (*(*a2 + 24))(&__dst, a2, v21, &v57);
      if (__dst)
      {
        if (__dst)
        {
          LODWORD(v57) = 0;
          v58 = v26;
LABEL_131:
          v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v62 + 8, &v57, 1);
          v40 = *(&v62 + 1) + 24 * v63;
          v41 = *v39;
          *(v40 + 16) = *(v39 + 16);
          *v40 = v41;
          LODWORD(v63) = v63 + 1;
        }
      }
    }

    v42 = v68;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
    if (v42)
    {
      goto LABEL_133;
    }

LABEL_134:
    v54 = v25;
    v43 = *v25;
    v53[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
    v53[1] = &v54;
    v56[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
    v56[1] = v53;
    v57 = v26;
    v58 = v29;
    v59[0] = v35;
    v59[1] = v38;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v62 = 0u;
    v63 = 0u;
    __dst = 0u;
    v66 = 0;
    v67 = 0xFF51AFD7ED558CCDLL;
    v44 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr,mlir::TypedAttr>(&__dst, &__dst, v65, v26, v59);
    v55 = &v57;
    *&__dst = &v57;
    *(&__dst + 1) = v56;
    v6 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v43 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, v44, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
    goto LABEL_86;
  }

LABEL_21:
  if (v7 == 6 && *v46 == 1651341683 && *(v46 + 4) == 27759)
  {
    v16 = *(**(*(*a2 + 32))(a2) + 384);
    v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
    goto LABEL_85;
  }

  v49 = "array";
  v50 = 5;
  if (v7)
  {
    goto LABEL_27;
  }

LABEL_11:
  (*(*v45[0] + 648))(v45[0], &v49, 1);
  *&__dst = "param_ref";
  *(&__dst + 1) = 9;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
LABEL_33:
  if (v7)
  {
    if (v7 == 9 && *v46 == 0x65725F6D61726170 && *(v46 + 8) == 102)
    {
      v19 = mlir::ODIE::Compiler::CoreML::ParamRefType::parse(a2, v5);
      goto LABEL_104;
    }

    *&__dst = "symbol_ref";
    *(&__dst + 1) = 10;
LABEL_40:
    if (v7 != 10 || (*v46 == 0x725F6C6F626D7973 ? (v12 = *(v46 + 8) == 26213) : (v12 = 0), !v12))
    {
      *&__dst = "handle";
      *(&__dst + 1) = 6;
      if (v7)
      {
        goto LABEL_46;
      }

LABEL_70:
      (*(*v45[0] + 648))(v45[0], &__dst, 1);
      *&__dst = "token";
      *(&__dst + 1) = 5;
      if (v48[2])
      {
        goto LABEL_2;
      }

      v7 = v47;
      if (v47)
      {
        goto LABEL_52;
      }

      goto LABEL_72;
    }

    v19 = mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(a2, v5);
LABEL_104:
    v6 = v19;
    v20 = v19 == 0;
    goto LABEL_105;
  }

  (*(*v45[0] + 648))(v45[0], &__dst, 1);
  *&__dst = "symbol_ref";
  *(&__dst + 1) = 10;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (v47)
  {
    goto LABEL_40;
  }

  (*(*v45[0] + 648))(v45[0], &__dst, 1);
  *&__dst = "handle";
  *(&__dst + 1) = 6;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (!v47)
  {
    goto LABEL_70;
  }

LABEL_46:
  if (v7 == 6 && *v46 == 1684955496 && *(v46 + 4) == 25964)
  {
    v19 = mlir::ODIE::Compiler::CoreML::HandleType::parse(a2, v5);
    goto LABEL_104;
  }

  *&__dst = "token";
  *(&__dst + 1) = 5;
  if (v7)
  {
LABEL_52:
    if (v7 != 5 || (*v46 == 1701539700 ? (v14 = *(v46 + 4) == 110) : (v14 = 0), !v14))
    {
      *&__dst = "async.value";
      *(&__dst + 1) = 11;
      if (v7)
      {
        goto LABEL_58;
      }

LABEL_74:
      (*(*v45[0] + 648))(v45[0], &__dst, 1);
      *&__dst = "pointer";
      *(&__dst + 1) = 7;
      if (v48[2])
      {
        goto LABEL_2;
      }

      v7 = v47;
      goto LABEL_76;
    }

    v16 = *(**(*(*a2 + 32))(a2) + 384);
    v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    goto LABEL_85;
  }

LABEL_72:
  (*(*v45[0] + 648))(v45[0], &__dst, 1);
  *&__dst = "async.value";
  *(&__dst + 1) = 11;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (!v47)
  {
    goto LABEL_74;
  }

LABEL_58:
  if (v7 == 11 && *v46 == 0x61762E636E797361 && *(v46 + 3) == 0x65756C61762E636ELL)
  {
    v19 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(a2, v5);
    goto LABEL_104;
  }

  *&__dst = "pointer";
  *(&__dst + 1) = 7;
LABEL_76:
  if (v7)
  {
    if (v7 != 7)
    {
      goto LABEL_101;
    }

    if (*v46 != 1852403568 || *(v46 + 3) != 1919251566)
    {
      goto LABEL_101;
    }

    v19 = mlir::ODIE::Compiler::CoreML::TypedPointerType::parse(a2, v5);
    goto LABEL_104;
  }

  (*(*v45[0] + 648))(v45[0], &__dst, 1);
  if ((v48[2] & 1) == 0)
  {
    v7 = v47;
LABEL_101:
    v6 = 0;
    v30 = v46;
    *v48 = 0;
    v48[2] = 1;
    goto LABEL_110;
  }

LABEL_2:
  v6 = 0;
LABEL_109:
  v7 = 0;
  v30 = 0;
LABEL_110:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v45) & 0x100) == 0)
  {
    *v48 = 257;
    (*(*a2 + 24))(&__dst, a2, v4, v45);
    if (__dst)
    {
      if (__dst)
      {
        v60 = 261;
        v57 = v30;
        v58 = v7;
        mlir::Diagnostic::operator<<(&__dst + 8, &v57);
        if (__dst)
        {
          if (__dst)
          {
            v32 = *(a1 + 8);
            v33 = *(a1 + 16);
            v60 = 261;
            v57 = v32;
            v58 = v33;
            mlir::Diagnostic::operator<<(&__dst + 8, &v57);
            if (__dst)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
    return 0;
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::printType(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) <= 5)
    {
      v10 = "opaque";
LABEL_20:
      v12 = 6;
      goto LABEL_56;
    }

    *(v9 + 4) = 25973;
    v13 = 1902211183;
LABEL_25:
    *v9 = v13;
    v14 = *(v8 + 4) + 6;
    goto LABEL_53;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
    {
      if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id)
      {
        v15 = (*(*a3 + 16))(a3);
        v16 = *(v15 + 4);
        if ((*(v15 + 3) - v16) > 4)
        {
          *(v16 + 4) = 121;
          *v16 = 1634890337;
          *(v15 + 4) += 5;
        }

        else
        {
          llvm::raw_ostream::write(v15, "array", 5uLL);
        }

        v19 = (*(*a3 + 16))(a3);
        v20 = *(v19 + 4);
        if (*(v19 + 3) == v20)
        {
          llvm::raw_ostream::write(v19, "<", 1uLL);
        }

        else
        {
          *v20 = 60;
          ++*(v19 + 4);
        }

        v23 = a2[1];
        if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v24 = v23[1];
          if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            (*(*a3 + 32))(a3, v24[1]);
          }
        }

        else
        {
          (*(*a3 + 40))(a3);
        }

        v25 = (*(*a3 + 16))(a3);
        v26 = *(v25 + 4);
        if (*(v25 + 3) - v26 > 1uLL)
        {
          *v26 = 8250;
          *(v25 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v25, ": ", 2uLL);
        }

        v27 = a2[3];
      }

      else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id)
      {
        v17 = (*(*a3 + 16))(a3);
        v18 = *(v17 + 4);
        if ((*(v17 + 3) - v18) > 8)
        {
          *(v18 + 8) = 102;
          *v18 = *"param_ref";
          *(v17 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v17, "param_ref", 9uLL);
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

        v27 = a2[1];
      }

      else
      {
        if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
        {
          if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
          {
            v39 = a2;
            v30 = (*(*a3 + 16))(a3);
            v31 = *(v30 + 4);
            if ((*(v30 + 3) - v31) > 5)
            {
              *(v31 + 4) = 25964;
              *v31 = 1684955496;
              *(v30 + 4) += 6;
            }

            else
            {
              llvm::raw_ostream::write(v30, "handle", 6uLL);
            }

            mlir::ODIE::Compiler::CoreML::HandleType::print(&v39, a3);
            return;
          }

          if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
          {
            if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
            {
              v39 = a2;
              v37 = (*(*a3 + 16))(a3);
              v38 = *(v37 + 4);
              if ((*(v37 + 3) - v38) > 0xA)
              {
                *(v38 + 7) = 1702194273;
                *v38 = *"async.value";
                *(v37 + 4) += 11;
              }

              else
              {
                llvm::raw_ostream::write(v37, "async.value", 0xBuLL);
              }

              mlir::ODIE::Compiler::CoreML::AsyncValueType::print(&v39, a3);
            }

            else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id)
            {
              v39 = a2;
              v6 = (*(*a3 + 16))(a3);
              v7 = *(v6 + 4);
              if (*(v6 + 3) - v7 > 6uLL)
              {
                *(v7 + 3) = 1919251566;
                *v7 = 1852403568;
                *(v6 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v6, "pointer", 7uLL);
              }

              mlir::ODIE::Compiler::CoreML::TypedPointerType::print(&v39, a3);
            }

            return;
          }

          v8 = (*(*a3 + 16))(a3);
          v35 = *(v8 + 4);
          if ((*(v8 + 3) - v35) <= 4)
          {
            v10 = "token";
            v12 = 5;
            goto LABEL_56;
          }

          *(v35 + 4) = 110;
          *v35 = 1701539700;
          v14 = *(v8 + 4) + 5;
LABEL_53:
          *(v8 + 4) = v14;
          return;
        }

        v21 = (*(*a3 + 16))(a3);
        v22 = *(v21 + 4);
        if ((*(v21 + 3) - v22) > 9)
        {
          *(v22 + 8) = 26213;
          *v22 = *"symbol_ref";
          *(v21 + 4) += 10;
        }

        else
        {
          llvm::raw_ostream::write(v21, "symbol_ref", 0xAuLL);
        }

        v33 = (*(*a3 + 16))(a3);
        v34 = *(v33 + 4);
        if (*(v33 + 3) == v34)
        {
          llvm::raw_ostream::write(v33, "<", 1uLL);
        }

        else
        {
          *v34 = 60;
          ++*(v33 + 4);
        }

        v27 = a2[1];
        v36 = *(*v27 + 136);
        if (v27 && v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v27 = v27[1];
          if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            goto LABEL_51;
          }
        }

        else if (v27 && v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a3, v27);
          goto LABEL_51;
        }
      }

      (*(*a3 + 40))(a3, v27);
LABEL_51:
      v8 = (*(*a3 + 16))(a3);
      v32 = *(v8 + 4);
      if (*(v8 + 3) != v32)
      {
        *v32 = 62;
        v14 = *(v8 + 4) + 1;
        goto LABEL_53;
      }

      v10 = ">";
      v12 = 1;
      goto LABEL_56;
    }

    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) <= 5)
    {
      v10 = "symbol";
      goto LABEL_20;
    }

    *(v9 + 4) = 27759;
    v13 = 1651341683;
    goto LABEL_25;
  }

  v8 = (*(*a3 + 16))(a3);
  v11 = *(v8 + 4);
  if (*(v8 + 3) - v11 > 3uLL)
  {
    *v11 = 1701869940;
    v14 = *(v8 + 4) + 4;
    goto LABEL_53;
  }

  v10 = "type";
  v12 = 4;
LABEL_56:

  llvm::raw_ostream::write(v8, v10, v12);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

__n128 llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::MoveImpl<mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(llvm::sys::OwningMemoryBlock &&,unsigned long)::$_0>(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *(a1 + 16) = a2[1].n128_u32[0];
  *a1 = result;
  *a2 = 0uLL;
  a2[1].n128_u32[0] = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::DestroyImpl<mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(llvm::sys::OwningMemoryBlock &&,unsigned long)::$_0>(uint64_t a1)
{
  if (*a1)
  {
    return llvm::sys::Memory::releaseMappedMemory(a1);
  }

  return a1;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::StringAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::StringAttr,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::StringAttr>::operator=(a1, a2);
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
      llvm::SmallVectorImpl<mlir::StringAttr>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t llvm::SmallVectorImpl<mlir::StringAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::StringAttr>::assignRemote(a1, a2);
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

double llvm::SmallVectorImpl<mlir::StringAttr>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

BOOL mlir::AsmParser::parseString(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = (*(*a1 + 264))(a1, a2);
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    v8 = "expected string";
    v9 = 259;
    (*(*a1 + 24))(v10, a1, v4, &v8);
    v6 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  return v6;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__optional_storage_base<llvm::SmallVector<int,12u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<int,12u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<int>::operator=(a1, a2);
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
    *(a1 + 8) = 0xC00000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<int>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t mlir::Diagnostic::operator<<<4ul>(uint64_t a1, char *__s)
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

uint64_t mlir::FieldParser<mlir::DictionaryAttr,mlir::DictionaryAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

BOOL mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v12 = 0;
  if (((*(*a1 + 440))(a1, &v12, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v12;
  if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
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

uint64_t mlir::Diagnostic::operator<<<8ul>(uint64_t a1, char *__s)
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

uint64_t mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(const char **a1)
{
  v8[26] = *MEMORY[0x277D85DE8];
  if (*(a1 + 34))
  {
    v2 = *(a1 + 16);
    v3 = v2 >> 8;
  }

  else
  {
    v4 = *a1;
    v6 = "unexpected keyword: ";
    v7 = 259;
    (*(*v4 + 24))(v8);
    mlir::InFlightDiagnostic::append<llvm::StringRef &>(v8, a1 + 2);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
    LOBYTE(v2) = 0;
    v3 = 1;
  }

  return v2 | (v3 << 8);
}

uint64_t mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = (*(*a2 + 40))(a2);
  *(a1 + 16) = 0;
  *(a1 + 8) = v6;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a3 && *(a3 + 8))
  {
    *(a1 + 16) = *a3;
  }

  else if (((*(*a2 + 640))(a2) & 1) == 0)
  {
    if (*(a1 + 34) == 1)
    {
      *(a1 + 32) = 256;
    }

    else
    {
      *(a1 + 32) = 256;
      *(a1 + 34) = 1;
    }
  }

  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *a1;
  v5 = *a2;
  v6 = v2 - 1;
  do
  {
    v7 = mlir::TypeRange::dereference_iterator(v4, v3);
    v8 = v7 == mlir::TypeRange::dereference_iterator(v5, v3);
    result = v8;
    if (!v8)
    {
      break;
    }

    v8 = v6 == v3++;
  }

  while (!v8);
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferTypeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3712);
}

uint64_t llvm::getTypeName<mlir::InferTypeOpInterface>()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface>();
    *algn_27FC17E98 = v1;
  }

  return llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferTypeOpInterface]";
  v6 = 88;
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(_DWORD *result, unint64_t a2, uint64_t a3)
{
  if (result[3] >= a2)
  {
    v3 = result[2];
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = result[2];
    }

    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = (*result + 8);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v8.i8[0])
        {
          *(v7 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v7 = a3;
        }

        v5 += 2;
        v7 += 2;
      }

      while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
      v3 = result[2];
    }

    v9 = a2 - v3;
    if (a2 > v3)
    {
      v10 = 0;
      v11 = vdupq_n_s64(v9 - 1);
      v12 = (*result + 8 * v3 + 8);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
        if (v13.i8[0])
        {
          *(v12 - 1) = a3;
        }

        if (v13.i8[4])
        {
          *v12 = a3;
        }

        v10 += 2;
        v12 += 2;
      }

      while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
    }

    result[2] = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::IntentAttr,true>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::IntentAttr,true>::growAndAssign(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  a1[2] = a2;
}

uint64_t llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assignRemote(a1, a2);
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

double llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[232];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>();
    *algn_27FC18758 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface]";
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[13] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[12] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 12);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3752);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>();
    unk_27FC17EC0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneResult<Empty>]";
  v6 = 93;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3792);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>();
    *algn_27FC17EE8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3832);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>();
    unk_27FC17F10 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneOperand<Empty>]";
  v6 = 94;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3872);
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>();
    *algn_27FC17F38 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultShape<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3912);
}

uint64_t llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>();
    unk_27FC17F60 = v1;
  }

  return llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferTypeOpInterface::Trait<Empty>]";
  v6 = 102;
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3952);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>();
    *algn_27FC17F88 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AcosOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AcoshOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3992);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>();
    unk_27FC17FB0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface]";
  v6 = 123;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, 0, 0);
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[14] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[13] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 13);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 4032);
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>();
    *algn_27FC17FD8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<2>::Impl<Empty>]";
  v6 = 102;
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF10))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>();
    _MergedGlobals_18 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF10);
  }

  return _MergedGlobals_18;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DF28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF28))
  {
    qword_27FC1DF18 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>();
    unk_27FC1DF20 = v1;
    __cxa_guard_release(&qword_27FC1DF28);
  }

  return qword_27FC1DF18;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF38))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>();
    qword_27FC1DF30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF38);
  }

  return qword_27FC1DF30;
}

uint64_t llvm::getTypeName<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF50))
  {
    qword_27FC1DF40 = llvm::detail::getTypeNameImpl<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>();
    *algn_27FC1DF48 = v1;
    __cxa_guard_release(&qword_27FC1DF50);
  }

  return qword_27FC1DF40;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ResultsBroadcastableShape<Empty>]";
  v6 = 109;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AddOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, (mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 4072);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference>();
    unk_27FC18000 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::KernelTypeInference]";
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[10] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[2];
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>();
    *algn_27FC18028 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<3>::Impl<Empty>]";
  v6 = 102;
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF60))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>();
    qword_27FC1DF58 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF60);
  }

  return qword_27FC1DF58;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DF78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF78))
  {
    qword_27FC1DF68 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>();
    unk_27FC1DF70 = v1;
    __cxa_guard_release(&qword_27FC1DF78);
  }

  return qword_27FC1DF68;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AllOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AndOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AndOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AndOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  if (v7 == *(v6 + 56))
  {
    v8 = v7 | 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 8 || a2 - 16 == (v8 & ((v8 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v8 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v8);
  return 1;
}

void llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[14] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 14);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[7];
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>();
    unk_27FC18050 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsElementType<Empty>]";
  v6 = 107;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[12];
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>();
    *algn_27FC18078 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultElementType<Empty>]";
  v6 = 116;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AndOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v10 = a1, mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(&v10)) && (mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5) & 1) != 0 && (mlir::OpTrait::impl::verifySameOperandsElementType(a1, v6))
  {
    v8 = mlir::OpTrait::impl::verifySameOperandsAndResultElementType(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AnyOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[17];
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>();
    unk_27FC180A0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<4>::Impl<Empty>]";
  v6 = 102;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::ArgSortOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::ArgSortOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AsinOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AsinhOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AtanOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AtanhOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[10] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[22];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>();
    *algn_27FC180C8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<Empty>]";
  v6 = 128;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF88))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>();
    qword_27FC1DF80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF88);
  }

  return qword_27FC1DF80;
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFA0))
  {
    qword_27FC1DF90 = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>();
    *algn_27FC1DF98 = v1;
    __cxa_guard_release(&qword_27FC1DFA0);
  }

  return qword_27FC1DF90;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<7>::Impl<Empty>]";
  v6 = 102;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AvgPool2dOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 7) & 1) != 0 && (v7 = a1, mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AvgPool3dOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 7) & 1) != 0 && (v7 = a1, mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "coreml.async.await";
      v22 = 18;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(void **a1, char a2, char *a3, const char **a4, char *a5, uint64_t **a6, char *a7, uint64_t **a8)
{
  v17[26] = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v16[16] = 257;
  emitDiag(a1, 2, v16, v17);
  v14 = (mlir::InFlightDiagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(v17, a3, a4, a5, a6, a7, a8)[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  return v14;
}

void *mlir::InFlightDiagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(void *a1, char *a2, const char **a3, char *a4, uint64_t **a5, char *a6, uint64_t **a7)
{
  if (*a1)
  {
    mlir::Diagnostic::operator<<<2ul>((a1 + 1), a2);
    mlir::Diagnostic::append<llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>((a1 + 1), a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t mlir::Diagnostic::append<llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, const char **a2, char *a3, uint64_t **a4, char *a5, uint64_t **a6)
{
  v15 = 262;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  v12 = mlir::Diagnostic::operator<<(a1, v14);
  mlir::Diagnostic::operator<<<23ul>(v12, a3);
  return mlir::Diagnostic::append<llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a1, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, uint64_t **a2, char *__s, uint64_t **a4)
{
  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = *a2;
    v9 = **a2;
    LODWORD(v34) = 4;
    v35 = v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
    v11 = *(a1 + 16) + 24 * *(a1 + 24);
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++*(a1 + 24);
    if (v7 != 1)
    {
      v13 = 8 * v7;
      v14 = v8 + 1;
      v15 = v13 - 8;
      do
      {
        v34 = ", ";
        v36 = 259;
        mlir::Diagnostic::operator<<(a1, &v34);
        v16 = *v14++;
        LODWORD(v34) = 4;
        v35 = v16;
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
        v18 = *(a1 + 16) + 24 * *(a1 + 24);
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++*(a1 + 24);
        v15 -= 8;
      }

      while (v15);
    }
  }

  mlir::Diagnostic::operator<<<52ul>(a1, __s);
  v20 = *(a4 + 2);
  if (v20)
  {
    v21 = *a4;
    v22 = **a4;
    LODWORD(v34) = 4;
    v35 = v22;
    v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
    v24 = *(a1 + 16) + 24 * *(a1 + 24);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 16);
    *v24 = v25;
    ++*(a1 + 24);
    if (v20 != 1)
    {
      v26 = 8 * v20;
      v27 = v21 + 1;
      v28 = v26 - 8;
      do
      {
        v34 = ", ";
        v36 = 259;
        mlir::Diagnostic::operator<<(a1, &v34);
        v29 = *v27++;
        LODWORD(v34) = 4;
        v35 = v29;
        v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
        v31 = *(a1 + 16) + 24 * *(a1 + 24);
        v32 = *v30;
        *(v31 + 16) = *(v30 + 16);
        *v31 = v32;
        ++*(a1 + 24);
        v28 -= 8;
      }

      while (v28);
    }
  }

  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::Type const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[27];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>();
    unk_27FC180F0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<Empty>]";
  v6 = 116;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AwaitOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BatchMatmulOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[10] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFB0))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>();
    qword_27FC1DFA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DFB0);
  }

  return qword_27FC1DFA8;
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFC8))
  {
    qword_27FC1DFB8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>();
    unk_27FC1DFC0 = v1;
    __cxa_guard_release(&qword_27FC1DFC8);
  }

  return qword_27FC1DFB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<6>::Impl<Empty>]";
  v6 = 102;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BatchNormOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 6))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[14] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[13] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 13);
  return v4 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DFD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFD8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>();
    qword_27FC1DFD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DFD8);
  }

  return qword_27FC1DFD0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFF0))
  {
    qword_27FC1DFE0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>();
    *algn_27FC1DFE8 = v1;
    __cxa_guard_release(&qword_27FC1DFF0);
  }

  return qword_27FC1DFE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<Empty>]";
  v6 = 158;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BatchToSpace::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 11);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) == 0)
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  while (1)
  {
    if (v8 == *v8)
    {
      goto LABEL_11;
    }

    v9 = v8[1];
    if (v8 == v9 || v8 != *(v9 + 8))
    {
      break;
    }

    if (*(v9 + 24) == v9 + 24)
    {
      v16 = 257;
      mlir::Operation::emitOpError(&v18, a1, v15);
      if (v18)
      {
        mlir::Diagnostic::operator<<<26ul>(v19, "expects a non-empty block");
      }

      v12 = v19[192];
      goto LABEL_19;
    }

LABEL_11:
    ++v7;
    v8 += 3;
    if (v6 == v7)
    {
      goto LABEL_22;
    }
  }

  v17 = v7;
  v15[0] = "expects region #";
  v16 = 259;
  mlir::Operation::emitOpError(&v18, a1, v15);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v17);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
LABEL_19:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  if ((v12 & 1) == 0)
  {
LABEL_22:
    v18 = a1;
    return mlir::ODIE::Compiler::CoreML::BatchToSpace::verifyInvariantsImpl(&v18);
  }

  return 0;
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
        {
          v16 = 1283;
          v15[0] = "expects regions to end with '";
          v15[2] = "coreml.yield";
          v15[3] = 12;
          v17[0] = v15;
          v17[2] = "', found '";
          v18 = 770;
          v13 = *(v8 + 8);
          v19 = v17;
          v20 = *(v13 + 16);
          v21 = 1282;
          v22[0] = &v19;
          v22[2] = "'";
          v23 = 770;
          mlir::Operation::emitOpError(&v24, this, v22);
          mlir::Diagnostic::attachNote(v25, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(this, a2))
  {
    v10 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
    if (v10)
    {
      v11 = (v10 - 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = mlir::ODIE::Compiler::CoreML::verifyDecompositionBlock(this, v11, v9);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t mlir::Diagnostic::operator<<<62ul>(uint64_t a1, char *__s)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, 0, 0);
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[12] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[11] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 11);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BitwiseAndOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, (mlir::ODIE::Compiler::CoreML::BitwiseAndOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, 0, 0);
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BitwiseOrOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, (mlir::ODIE::Compiler::CoreML::BitwiseOrOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, 0, 0);
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BitwiseXorOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, (mlir::ODIE::Compiler::CoreML::BitwiseXorOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v7 = mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::fold(v9);
  if (v7 < 8 || a2 - 16 == (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v7 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && (v7 = a1, (mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14[0] = a2;
  v14[1] = v7;
  v14[2] = v8;
  v15 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v16 = v11;
  v17 = v10;
  v18 = a3;
  v19 = a4;
  v12 = mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(v14);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BroadcastToOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v7 = mlir::ODIE::Compiler::CoreML::BroadcastToOp::fold(v9);
  if (v7 < 8 || a2 - 16 == (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v7 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[10] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BroadcastToOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::BroadcastToOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
    if (*(a3 + 24))
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

  *(a3 + 24) = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    *(a3 + 24) = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CallOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

void *mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(a3 & 0xFFFFFFFFFFFFFFF8);
  v5 = result;
  if (result)
  {
    v6 = *result;
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
  }

  v8 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  *(v8 + 72) = v5;
  *(v8 + 80) = result;
  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

unint64_t mlir::detail::CallOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::CallOp>::resolveCallableInTable(mlir::SymbolTable **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::call_interface_impl::resolveCallable(v3, InterfaceFor, a2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[32];
}

uint64_t llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>();
    *algn_27FC18118 = v1;
  }

  return llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::CallOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[37];
}

uint64_t llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>();
    unk_27FC18140 = v1;
  }

  return llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolUserOpInterface::Trait<Empty>]";
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

llvm::raw_ostream *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreML::CallOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && (v6 = a1, mlir::ODIE::Compiler::CoreML::CallOp::verifyInvariantsImpl(&v6)))
  {
    v6 = a1;
    v4 = mlir::ODIE::Compiler::CoreML::CallOp::verify(&v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::CastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferShapedTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CastOp>::inferReturnTypeComponents(uint64_t a1, void **a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a4[1];
  v11[0] = *a4;
  v11[1] = v9;
  v11[2] = a4[2];
  return mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents(a1, a2, a3, v11, a5, a6, a7, a8, a9);
}

uint64_t mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferShapedTypeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[50];
}

uint64_t llvm::getTypeName<mlir::InferShapedTypeOpInterface>()
{
  {
    llvm::getTypeName<mlir::InferShapedTypeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferShapedTypeOpInterface>();
    *algn_27FC181A8 = v1;
  }

  return llvm::getTypeName<mlir::InferShapedTypeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferShapedTypeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferShapedTypeOpInterface]";
  v6 = 94;
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

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CastOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CastOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v6, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferShapedTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v7 = mlir::ODIE::Compiler::CoreML::CastOp::fold(v9);
  if (v7 < 8 || a2 - 16 == (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v7 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
  return 1;
}