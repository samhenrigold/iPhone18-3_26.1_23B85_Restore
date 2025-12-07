void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >= 8)
  {
    v4 = a2 + 3;
    v5 = *a2;
    v6 = (v2 & 2) != 0 ? v4 : a2[3];
    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v6, v5, a2[1], a2[2]);
    v7 = a2[6];
    if (v7 >= 8)
    {
      if ((v7 & 4) != 0)
      {
        if ((v7 & 2) != 0)
        {
          v8 = v4;
        }

        else
        {
          v8 = *v4;
        }

        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        v9 = a2[3];
        v10 = a2[4];

        llvm::deallocate_buffer(v9, v10);
      }
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v7 = v2;
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v3);
    v2 = v7;
  }

  else
  {
    *(*v3 + 8 * v4) = 0;
    *(v3 + 8) = v4 + 1;
  }

  v5 = *(*v2 + 536);

  return v5();
}

void *llvm::object_deleter<anonymous namespace::AsmPrinterOptions>::call(void *result)
{
  if (result)
  {
    v1 = result;
    result[241] = &unk_1F1A35C60;
    v2 = result + 261;
    v3 = result[264];
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      v1[241] = &unk_1F1A35888;
      v4 = v1[253];
      if (v4 != v1[252])
      {
LABEL_6:
        free(v4);
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v1[241] = &unk_1F1A35888;
      v4 = v1[253];
      if (v4 != v1[252])
      {
        goto LABEL_6;
      }
    }

    v5 = v1[249];
    if (v5 != v1 + 251)
    {
      free(v5);
    }

    v1[217] = &unk_1F1A35C60;
    v6 = v1[240];
    if (v6 == v1 + 237)
    {
      (*(*v6 + 32))(v6);
      v1[217] = &unk_1F1A35888;
      v7 = v1[229];
      if (v7 != v1[228])
      {
LABEL_13:
        free(v7);
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v1[217] = &unk_1F1A35888;
      v7 = v1[229];
      if (v7 != v1[228])
      {
        goto LABEL_13;
      }
    }

    v8 = v1[225];
    if (v8 != v1 + 227)
    {
      free(v8);
    }

    v1[193] = &unk_1F1A35C60;
    v9 = v1[216];
    if (v9 == v1 + 213)
    {
      (*(*v9 + 32))(v9);
      v1[193] = &unk_1F1A35888;
      v10 = v1[205];
      if (v10 != v1[204])
      {
LABEL_20:
        free(v10);
      }
    }

    else
    {
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      v1[193] = &unk_1F1A35888;
      v10 = v1[205];
      if (v10 != v1[204])
      {
        goto LABEL_20;
      }
    }

    v11 = v1[201];
    if (v11 != v1 + 203)
    {
      free(v11);
    }

    v1[169] = &unk_1F1A35C60;
    v12 = v1[192];
    if (v12 == v1 + 189)
    {
      (*(*v12 + 32))(v12);
      v1[169] = &unk_1F1A35888;
      v13 = v1[181];
      if (v13 != v1[180])
      {
LABEL_27:
        free(v13);
      }
    }

    else
    {
      if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v1[169] = &unk_1F1A35888;
      v13 = v1[181];
      if (v13 != v1[180])
      {
        goto LABEL_27;
      }
    }

    v14 = v1[177];
    if (v14 != v1 + 179)
    {
      free(v14);
    }

    v1[145] = &unk_1F1A35C60;
    v15 = v1[168];
    if (v15 == v1 + 165)
    {
      (*(*v15 + 32))(v15);
      v1[145] = &unk_1F1A35888;
      v16 = v1[157];
      if (v16 != v1[156])
      {
LABEL_34:
        free(v16);
      }
    }

    else
    {
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      v1[145] = &unk_1F1A35888;
      v16 = v1[157];
      if (v16 != v1[156])
      {
        goto LABEL_34;
      }
    }

    v17 = v1[153];
    if (v17 != v1 + 155)
    {
      free(v17);
    }

    v1[121] = &unk_1F1A35C60;
    v18 = v1[144];
    if (v18 == v1 + 141)
    {
      (*(*v18 + 32))(v18);
      v1[121] = &unk_1F1A35888;
      v19 = v1[133];
      if (v19 != v1[132])
      {
LABEL_41:
        free(v19);
      }
    }

    else
    {
      if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v1[121] = &unk_1F1A35888;
      v19 = v1[133];
      if (v19 != v1[132])
      {
        goto LABEL_41;
      }
    }

    v20 = v1[129];
    if (v20 != v1 + 131)
    {
      free(v20);
    }

    v1[97] = &unk_1F1A35C60;
    v21 = v1[120];
    if (v21 == v1 + 117)
    {
      (*(*v21 + 32))(v21);
      v1[97] = &unk_1F1A35888;
      v22 = v1[109];
      if (v22 != v1[108])
      {
LABEL_48:
        free(v22);
      }
    }

    else
    {
      if (v21)
      {
        (*(*v21 + 40))(v21);
      }

      v1[97] = &unk_1F1A35888;
      v22 = v1[109];
      if (v22 != v1[108])
      {
        goto LABEL_48;
      }
    }

    v23 = v1[105];
    if (v23 != v1 + 107)
    {
      free(v23);
    }

    v1[73] = &unk_1F1A35C60;
    v24 = v1[96];
    if (v24 == v1 + 93)
    {
      (*(*v24 + 32))(v24);
      v1[73] = &unk_1F1A35888;
      v25 = v1[85];
      if (v25 != v1[84])
      {
LABEL_55:
        free(v25);
      }
    }

    else
    {
      if (v24)
      {
        (*(*v24 + 40))(v24);
      }

      v1[73] = &unk_1F1A35888;
      v25 = v1[85];
      if (v25 != v1[84])
      {
        goto LABEL_55;
      }
    }

    v26 = v1[81];
    if (v26 != v1 + 83)
    {
      free(v26);
    }

    v1[49] = &unk_1F1A35AE8;
    v27 = v1[72];
    if (v27 == v1 + 69)
    {
      (*(*v27 + 32))(v27);
      v1[49] = &unk_1F1A35888;
      v28 = v1[61];
      if (v28 != v1[60])
      {
LABEL_62:
        free(v28);
      }
    }

    else
    {
      if (v27)
      {
        (*(*v27 + 40))(v27);
      }

      v1[49] = &unk_1F1A35888;
      v28 = v1[61];
      if (v28 != v1[60])
      {
        goto LABEL_62;
      }
    }

    v29 = v1[57];
    if (v29 != v1 + 59)
    {
      free(v29);
    }

    v1[25] = &unk_1F1A35AE8;
    v30 = v1[48];
    if (v30 == v1 + 45)
    {
      (*(*v30 + 32))(v30);
      v1[25] = &unk_1F1A35888;
      v31 = v1[37];
      if (v31 != v1[36])
      {
LABEL_69:
        free(v31);
      }
    }

    else
    {
      if (v30)
      {
        (*(*v30 + 40))(v30);
      }

      v1[25] = &unk_1F1A35888;
      v31 = v1[37];
      if (v31 != v1[36])
      {
        goto LABEL_69;
      }
    }

    v32 = v1[33];
    if (v32 != v1 + 35)
    {
      free(v32);
    }

    *v1 = &unk_1F1A0CC18;
    v33 = v1[24];
    if (v33 == v1 + 21)
    {
      (*(*v33 + 32))(v33);
      *v1 = &unk_1F1A35888;
      v34 = v1[12];
      if (v34 != v1[11])
      {
LABEL_76:
        free(v34);
      }
    }

    else
    {
      if (v33)
      {
        (*(*v33 + 40))(v33);
      }

      *v1 = &unk_1F1A35888;
      v34 = v1[12];
      if (v34 != v1[11])
      {
        goto LABEL_76;
      }
    }

    v35 = v1[8];
    if (v35 != v1 + 10)
    {
      free(v35);
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<char [44],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F1A0CC80;
  *a1 = &unk_1F1A0CC18;
  *(a1 + 160) = &unk_1F1A359E0;
  *(a1 + 168) = &unk_1F1A0CCA0;
  *(a1 + 192) = a1 + 168;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10, v11, v12, v13);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<long long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 192);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(void *a1)
{
  *a1 = &unk_1F1A0CC18;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(void *a1)
{
  *a1 = &unk_1F1A0CC18;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::printOptionValue(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 152) != 1 || *(result + 144) != *(result + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 128);
    v6 = *(result + 144);
    v8 = *(result + 152);
    v7[0] = &unk_1F1A0CC80;
    v7[1] = v6;
    llvm::cl::parser<long long>::printOptionDiff((result + 160), result, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::setDefault(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [35],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F1A0CEB0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A35AE8;
  *(a1 + 152) = &unk_1F1A35A40;
  *(a1 + 160) = &unk_1F1A0CED0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10, v11, v12, v13);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v18 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v18;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F1A01F08;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A35C60;
  *(a1 + 152) = &unk_1F1A35980;
  *(a1 + 160) = &unk_1F1A01F28;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12, v13, v14, v15);
  v16 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v16;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [22],llvm::cl::initializer<BOOL>,llvm::cl::desc,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4, _WORD *a5)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v20 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v20;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F1A01F08;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A35C60;
  *(a1 + 152) = &unk_1F1A35980;
  *(a1 + 160) = &unk_1F1A01F28;
  *(a1 + 184) = a1 + 160;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14, v15, v16, v17);
  v18 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v18;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(llvm::StringMapImpl *a1, void *a2, size_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[32 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = *(v5 + 2);
      *v8 = v9;
      *v5 = 0;
      *(v5 + 1) = 0;
      v10 = *(v5 + 3);
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v8[3] = v10;
      v8 += 4;
      v5 += 32;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 32 * v11;
      v13 = &v5[v12 - 9];
      v14 = -v12;
      do
      {
        v15 = *(v13 + 1);
        *(v13 + 1) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        if (*v13 < 0)
        {
          operator delete(*(v13 - 23));
        }

        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

uint64_t mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t result)
{
  *result = &unk_1F19FC250;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_1F19FC250;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1AC55A070);
}

char *llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 96, &v31);
  v8 = &v7[96 * *(a1 + 2)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v33 = *a3;
  v11 = *(a3 + 6);
  v34 = *(a3 + 2);
  v37 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(&v35, a3 + 24);
      (*((v37 & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 24);
    }

    else
    {
      v35 = *(a3 + 24);
      v36 = *(a3 + 5);
    }

    *(a3 + 6) = 0;
  }

  v38 = *(a3 + 56);
  v39 = 0;
  if (!v10)
  {
    v12 = 0;
    v8[24] = 0;
    v13 = v8 + 24;
    *(v8 + 22) = -1;
    v14 = (v8 + 88);
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    goto LABEL_17;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v8[23] = v9;
  if (v9)
  {
    memmove(v8, v10, v9);
  }

  v8[v9] = 0;
  v12 = v39;
  *(v8 + 22) = -1;
  v15 = v8 + 88;
  *(v15 - 64) = 0;
  v13 = v15 - 16;
  if (v12 != -1)
  {
    v14 = v15;
LABEL_17:
    v32 = v13;
    (off_1F19FC808[v12])(&v32, &v33);
    *v14 = v12;
    if (v39 != -1)
    {
      (off_1F19FC7A0[v39])(&v32, &v33);
    }
  }

  v39 = -1;
  v16 = *a1;
  v17 = *(a1 + 2);
  if (v17)
  {
    v18 = &v16[12 * v17];
    v19 = v7 + 88;
    v20 = (v16 + 3);
    do
    {
      v22 = *(v20 - 24);
      *(v19 - 9) = *(v20 - 1);
      *(v19 - 22) = v22;
      *(v20 - 2) = 0;
      *(v20 - 1) = 0;
      *(v20 - 3) = 0;
      *(v19 - 64) = 0;
      *v19 = -1;
      v23 = *(v20 + 16);
      if (v23 != -1)
      {
        v32 = v19 - 16;
        (off_1F19FC808[v23])(&v32, v20);
        *v19 = v23;
      }

      v21 = v20 - 24;
      v19 += 24;
      v20 += 96;
    }

    while (v21 + 96 != v18);
    v16 = *a1;
    v24 = *(a1 + 2);
    if (v24)
    {
      v25 = &v16[12 * v24 - 1];
      v26 = -96 * v24;
      do
      {
        v27 = *v25;
        if (v27 != -1)
        {
          (off_1F19FC7A0[v27])(&v32, v25 - 8);
        }

        *v25 = -1;
        if (*(v25 - 65) < 0)
        {
          operator delete(*(v25 - 11));
        }

        v25 -= 12;
        v26 += 96;
      }

      while (v26);
      v16 = *a1;
    }
  }

  v28 = v31;
  if (v16 != v6)
  {
    free(v16);
  }

  *a1 = v7;
  v29 = *(a1 + 2) + 1;
  *(a1 + 2) = v29;
  *(a1 + 3) = v28;
  return &v7[96 * v29 - 96];
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(v2 + 48) = 0;
  v4 = *(a2 + 6);
  *(v2 + 48) = v4;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      v6 = a2;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(v2 + 24, a2 + 24);
      result = (*((*(v2 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(v6 + 24);
      a2 = v6;
    }

    else
    {
      v5 = *(a2 + 24);
      *(v2 + 40) = *(a2 + 5);
      *(v2 + 24) = v5;
    }

    *(a2 + 6) = 0;
  }

  *(v2 + 56) = *(a2 + 56);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

char *llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 96, &v30);
  v8 = &v7[96 * *(a1 + 2)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v32[0] = *a3;
  v33 = 1;
  if (!v10)
  {
    v8[24] = 0;
    v11 = v8 + 24;
    *(v8 + 22) = -1;
    v12 = (v8 + 88);
    *v8 = 0;
    *(v8 + 1) = 0;
    v13 = 1;
    *(v8 + 2) = 0;
    goto LABEL_11;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v8[23] = v9;
  if (v9)
  {
    memmove(v8, v10, v9);
  }

  v8[v9] = 0;
  v13 = v33;
  *(v8 + 22) = -1;
  v14 = v8 + 88;
  *(v14 - 64) = 0;
  v11 = v14 - 16;
  if (v13 != -1)
  {
    v12 = v14;
LABEL_11:
    v31 = v11;
    (off_1F19FC808[v13])(&v31, v32);
    *v12 = v13;
    if (v33 != -1)
    {
      (off_1F19FC7A0[v33])(&v31, v32);
    }
  }

  v33 = -1;
  v15 = *a1;
  v16 = *(a1 + 2);
  if (v16)
  {
    v17 = &v15[12 * v16];
    v18 = v7 + 88;
    v19 = (v15 + 3);
    do
    {
      v21 = *(v19 - 24);
      *(v18 - 9) = *(v19 - 1);
      *(v18 - 22) = v21;
      *(v19 - 2) = 0;
      *(v19 - 1) = 0;
      *(v19 - 3) = 0;
      *(v18 - 64) = 0;
      *v18 = -1;
      v22 = *(v19 + 16);
      if (v22 != -1)
      {
        v31 = v18 - 16;
        (off_1F19FC808[v22])(&v31, v19);
        *v18 = v22;
      }

      v20 = v19 - 24;
      v18 += 24;
      v19 += 96;
    }

    while (v20 + 96 != v17);
    v15 = *a1;
    v23 = *(a1 + 2);
    if (v23)
    {
      v24 = &v15[12 * v23 - 1];
      v25 = -96 * v23;
      do
      {
        v26 = *v24;
        if (v26 != -1)
        {
          (off_1F19FC7A0[v26])(&v31, v24 - 8);
        }

        *v24 = -1;
        if (*(v24 - 65) < 0)
        {
          operator delete(*(v24 - 11));
        }

        v24 -= 12;
        v25 += 96;
      }

      while (v25);
      v15 = *a1;
    }
  }

  v27 = v30;
  if (v15 != v6)
  {
    free(v15);
  }

  *a1 = v7;
  v28 = *(a1 + 2) + 1;
  *(a1 + 2) = v28;
  *(a1 + 3) = v27;
  return &v7[96 * v28 - 96];
}

char *llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 96, &v30);
  v8 = &v7[96 * *(a1 + 2)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v32 = *a3;
  v33 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v34 = 2;
  if (!v10)
  {
    v8[24] = 0;
    v11 = v8 + 24;
    *(v8 + 22) = -1;
    v12 = (v8 + 88);
    *v8 = 0;
    *(v8 + 1) = 0;
    v13 = 2;
    *(v8 + 2) = 0;
    goto LABEL_11;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v8[23] = v9;
  if (v9)
  {
    memmove(v8, v10, v9);
  }

  v8[v9] = 0;
  v13 = v34;
  *(v8 + 22) = -1;
  v14 = v8 + 88;
  *(v14 - 64) = 0;
  v11 = v14 - 16;
  if (v13 != -1)
  {
    v12 = v14;
LABEL_11:
    v31 = v11;
    (off_1F19FC808[v13])(&v31, &v32);
    *v12 = v13;
    if (v34 != -1)
    {
      (off_1F19FC7A0[v34])(&v31, &v32);
    }
  }

  v34 = -1;
  v15 = *a1;
  v16 = *(a1 + 2);
  if (v16)
  {
    v17 = &v15[12 * v16];
    v18 = v7 + 88;
    v19 = (v15 + 3);
    do
    {
      v21 = *(v19 - 24);
      *(v18 - 9) = *(v19 - 1);
      *(v18 - 22) = v21;
      *(v19 - 2) = 0;
      *(v19 - 1) = 0;
      *(v19 - 3) = 0;
      *(v18 - 64) = 0;
      *v18 = -1;
      v22 = *(v19 + 16);
      if (v22 != -1)
      {
        v31 = v18 - 16;
        (off_1F19FC808[v22])(&v31, v19);
        *v18 = v22;
      }

      v20 = v19 - 24;
      v18 += 24;
      v19 += 96;
    }

    while (v20 + 96 != v17);
    v15 = *a1;
    v23 = *(a1 + 2);
    if (v23)
    {
      v24 = &v15[12 * v23 - 1];
      v25 = -96 * v23;
      do
      {
        v26 = *v24;
        if (v26 != -1)
        {
          (off_1F19FC7A0[v26])(&v31, v24 - 8);
        }

        *v24 = -1;
        if (*(v24 - 65) < 0)
        {
          operator delete(*(v24 - 11));
        }

        v24 -= 12;
        v25 += 96;
      }

      while (v25);
      v15 = *a1;
    }
  }

  v27 = v30;
  if (v15 != v6)
  {
    free(v15);
  }

  *a1 = v7;
  v28 = *(a1 + 2) + 1;
  *(a1 + 2) = v28;
  *(a1 + 3) = v27;
  return &v7[96 * v28 - 96];
}

uint64_t mlir::detail::AsmStateImpl::AsmStateImpl(uint64_t a1, unsigned int *a2, _OWORD *a3, uint64_t a4)
{
  v239 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((a2 + 6));
  mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(a1, Context);
  *(a1 + 184) = 0u;
  *(a1 + 56) = a1 + 72;
  *(a1 + 64) = 0x600000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x400000000;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  v8 = (a1 + 280);
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  *(a1 + 296) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = a1 + 464;
  *(a1 + 456) = 0x400000000;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  v9 = *a3;
  v10 = a3[1];
  v206 = a3;
  *(a1 + 576) = a3[2];
  *(a1 + 560) = v10;
  *(a1 + 544) = v9;
  v225 = 0;
  v226 = 0;
  v227 = v229;
  v228 = 0x400000000;
  v230 = &v231 + 8;
  v232 = 1;
  v231 = xmmword_1A75DA810;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&v225, 24, 24, 3);
  v12 = a2;
  v13 = *(a1 + 424);
  *Slow = a1 + 400;
  Slow[1] = v13;
  v209 = a1 + 184;
  *(a1 + 424) = Slow;
  Slow[2] = 0;
  v205 = a1 + 400;
  v222 = v224;
  v223 = 0x800000000;
  v14 = a2[11];
  v207 = a1;
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = 0;
    v16 = ((&a2[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    v17 = 24 * (v14 & 0x7FFFFF);
    do
    {
      *&v233 = v16;
      *(&v233 + 1) = *(a1 + 528);
      LODWORD(v234) = *(a1 + 536);
      v235 = Slow;
      v18 = v222;
      if (v15 >= HIDWORD(v223))
      {
        v22 = Slow;
        v23 = v12;
        if (v222 <= &v233 && v222 + 32 * v15 > &v233)
        {
          v24 = &v233 - v222;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v222, v224, v15 + 1, 32);
          v18 = v222;
          v19 = (v222 + v24);
          a1 = v207;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v222, v224, v15 + 1, 32);
          v19 = &v233;
          v18 = v222;
        }

        v12 = v23;
        Slow = v22;
      }

      else
      {
        v19 = &v233;
      }

      v20 = &v18[32 * v223];
      v21 = v19[1];
      *v20 = *v19;
      *(v20 + 1) = v21;
      v15 = v223 + 1;
      LODWORD(v223) = v223 + 1;
      v16 += 24;
      v17 -= 24;
    }

    while (v17);
  }

  v25 = v223;
  if (v223)
  {
    v212 = v8;
    do
    {
      v26 = v222 + 32 * v25;
      v208 = *(v26 - 4);
      if ((*(v206 + 40) & 0x84) != 0)
      {
        v27 = *(v26 - 1);
        LODWORD(v223) = v25 - 1;
        v28 = *(v209 + 240);
        if (v28 != v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v29 = *(v26 - 4);
        v27 = *(v26 - 1);
        *(a1 + 528) = *(v26 - 3);
        *(a1 + 536) = v29;
        LODWORD(v223) = v25 - 1;
        v28 = *(v209 + 240);
        if (v28 != v27)
        {
LABEL_21:
          while (1)
          {
            *(*v28 + 24) = v28[1];
            v30 = v28[2];
            if (v30)
            {
              break;
            }

            v28 = *(v209 + 240);
            if (v28 == v27)
            {
              goto LABEL_104;
            }
          }

          v36 = *v28;
          v37 = **v28;
          v38 = *(*v28 + 16);
          if (*(v30 + 8))
          {
            if (v38)
            {
              HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v30 + 16), *(v30 + 24));
              v39 = v38 - 1;
              v41 = *(v30 + 16);
              v40 = *(v30 + 24);
              if (v40)
              {
                if (v41 == -2)
                {
                  for (i = 1; ; ++i)
                  {
                    v31 = HashValue & v39;
                    v32 = (v37 + 24 * (HashValue & v39));
                    v33 = *v32;
                    if (*v32 == -2)
                    {
                      break;
                    }

                    if (v33 == -1)
                    {
                      goto LABEL_62;
                    }

                    if (v40 == v32[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v33, v40))
                    {
                      break;
                    }

                    HashValue = i + v31;
                  }

LABEL_48:
                  v32[2] = *(v30 + 8);
LABEL_49:
                  v28[2] = *v30;
                  llvm::deallocate_buffer(v30, 0x28);
                }

                v61 = 0;
                v62 = 1;
                v63 = HashValue & v39;
                v32 = (v37 + 24 * (HashValue & v39));
                v64 = *v32;
                if (*v32 == -2)
                {
                  goto LABEL_74;
                }

                while (v64 != -1)
                {
                  if (v40 == v32[1])
                  {
                    v202 = v63;
                    v203 = v62;
                    v65 = memcmp(v41, v64, v40);
                    v63 = v202;
                    v62 = v203;
                    if (!v65)
                    {
                      goto LABEL_48;
                    }
                  }

                  do
                  {
LABEL_74:
                    if (v61)
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v66 = v64 + 2 == 0;
                    }

                    if (v66)
                    {
                      v61 = v32;
                    }

                    v67 = v62 + v63;
                    ++v62;
                    v63 = v67 & v39;
                    v32 = (v37 + 24 * (v67 & v39));
                    v64 = *v32;
                  }

                  while (*v32 == -2);
                }
              }

              else if (v41 == -2)
              {
                v53 = 1;
                v54 = HashValue & v39;
                v32 = (v37 + 24 * (HashValue & v39));
                v55 = *v32;
                if (*v32 == -2)
                {
                  goto LABEL_48;
                }

                while (v55 != -1)
                {
                  if (v32[1])
                  {
                    v56 = v53 + v54;
                    ++v53;
                    v54 = v56 & v39;
                    v32 = (v37 + 24 * (v56 & v39));
                    v55 = *v32;
                    if (*v32 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_48;
                }

LABEL_62:
                v61 = 0;
              }

              else
              {
                v61 = 0;
                v72 = 1;
                v73 = HashValue & v39;
                v32 = (v37 + 24 * (HashValue & v39));
                v74 = *v32;
                if (*v32 == -2)
                {
                  goto LABEL_90;
                }

                while (v74 != -1)
                {
                  if (!v32[1])
                  {
                    goto LABEL_48;
                  }

                  do
                  {
LABEL_90:
                    if (v61)
                    {
                      v75 = 0;
                    }

                    else
                    {
                      v75 = v74 + 2 == 0;
                    }

                    if (v75)
                    {
                      v61 = v32;
                    }

                    v76 = v72 + v73;
                    ++v72;
                    v73 = v76 & v39;
                    v32 = (v37 + 24 * (v76 & v39));
                    v74 = *v32;
                  }

                  while (*v32 == -2);
                }
              }

              if (v41 == -1)
              {
                goto LABEL_48;
              }

              if (v61)
              {
                v32 = v61;
              }

              v51 = *(v36 + 16);
            }

            else
            {
              v51 = 0;
              v32 = 0;
            }

            *&v233 = v32;
            v52 = *(v36 + 8);
            if (4 * v52 + 4 >= 3 * v51)
            {
              v51 *= 2;
            }

            else if (v51 + ~v52 - *(v36 + 12) > v51 >> 3)
            {
              *(v36 + 8) = v52 + 1;
              if (*v32 != -1)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(v36, v51);
            llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(v36, (v30 + 16), &v233);
            v32 = v233;
            ++*(v36 + 8);
            if (*v32 != -1)
            {
LABEL_46:
              --*(v36 + 12);
            }

LABEL_47:
            *v32 = *(v30 + 16);
            v32[2] = 0;
            goto LABEL_48;
          }

          if (!v38)
          {
            goto LABEL_49;
          }

          v42 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v30 + 16), *(v30 + 24));
          v43 = v38 - 1;
          v45 = *(v30 + 16);
          v44 = *(v30 + 24);
          if (v44)
          {
            if (v45 != -2)
            {
              v68 = 1;
              v69 = v42 & v43;
              v48 = v37 + 24 * (v42 & v43);
              v70 = *v48;
              if (*v48 == -2)
              {
                goto LABEL_85;
              }

              while (v70 != -1)
              {
                if (v44 == *(v48 + 8) && !memcmp(v45, v70, v44))
                {
                  goto LABEL_103;
                }

                do
                {
LABEL_85:
                  v71 = v68 + v69;
                  ++v68;
                  v69 = v71 & v43;
                  v48 = v37 + 24 * (v71 & v43);
                  v70 = *v48;
                }

                while (*v48 == -2);
              }

              goto LABEL_102;
            }

            v46 = 1;
            v47 = v42 & v43;
            v48 = v37 + 24 * (v42 & v43);
            v49 = *v48;
            if (*v48 != -2)
            {
              while (v49 != -1)
              {
                if (v44 != *(v48 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v49, v44))
                {
                  v50 = v46 + v47;
                  ++v46;
                  v47 = v50 & v43;
                  v48 = v37 + 24 * (v50 & v43);
                  v49 = *v48;
                  if (*v48 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_103;
              }

LABEL_102:
              if (v45 != -1)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
            v57 = 1;
            if (v45 == -2)
            {
              v58 = v42 & v43;
              v48 = v37 + 24 * (v42 & v43);
              v59 = *v48;
              if (*v48 != -2)
              {
                while (v59 != -1)
                {
                  if (*(v48 + 8))
                  {
                    v60 = v57 + v58;
                    ++v57;
                    v58 = v60 & v43;
                    v48 = v37 + 24 * (v60 & v43);
                    v59 = *v48;
                    if (*v48 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_103;
                }

                goto LABEL_102;
              }
            }

            else
            {
              while (1)
              {
                v48 = v37 + 24 * (v42 & v43);
                if (*v48 != -2)
                {
                  if (*v48 == -1)
                  {
                    goto LABEL_102;
                  }

                  if (!*(v48 + 8))
                  {
                    break;
                  }
                }

                v42 = v57 + (v42 & v43);
                ++v57;
              }
            }
          }

LABEL_103:
          *v48 = xmmword_1A75DA820;
          *(v36 + 8) = vadd_s32(*(v36 + 8), 0x1FFFFFFFFLL);
          goto LABEL_49;
        }
      }

LABEL_104:
      *(&v231 + 1) += 24;
      if (v225 && (v77 = ((v225 + 7) & 0xFFFFFFFFFFFFFFF8), (v77 + 3) <= v226))
      {
        v225 = v77 + 3;
      }

      else
      {
        v77 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&v225, 24, 24, 3);
        v28 = *(v209 + 240);
      }

      a1 = v207;
      *v77 = v205;
      v77[1] = v28;
      *(v207 + 424) = v77;
      v77[2] = 0;
      *&v213 = v8;
      if ((*(v207 + 584) & 4) == 0)
      {
        v78 = *(v208 + 2);
        if (v78)
        {
          if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(*(v208 + 2)))
          {
            InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v78);
          }
        }
      }

      v80 = *(v208 + 1);
      if (v80 != v208)
      {
        v81 = 0;
        while (2)
        {
          if (v80)
          {
            v82 = (v80 - 8);
          }

          else
          {
            v82 = 0;
          }

          v83 = *(a1 + 392);
          if (!v83)
          {
            goto LABEL_186;
          }

          v84 = *(a1 + 376);
          v85 = ((v82 >> 4) ^ (v82 >> 9)) & (v83 - 1);
          v86 = v84 + 32 * v85;
          v87 = *v86;
          if (*v86 == v82)
          {
            goto LABEL_147;
          }

          v88 = 0;
          v89 = 1;
          while (v87 != -4096)
          {
            if (v88)
            {
              v90 = 0;
            }

            else
            {
              v90 = v87 == -8192;
            }

            if (v90)
            {
              v88 = v86;
            }

            v91 = v85 + v89++;
            v85 = v91 & (v83 - 1);
            v86 = v84 + 32 * v85;
            v87 = *v86;
            if (*v86 == v82)
            {
              goto LABEL_147;
            }
          }

          if (v88)
          {
            v86 = v88;
          }

          v126 = *(a1 + 384);
          if (4 * v126 + 4 >= 3 * v83)
          {
LABEL_186:
            v83 *= 2;
LABEL_187:
            v127 = *(a1 + 392);
            if (v127)
            {
              v128 = *(a1 + 376);
              v129 = v127 - 1;
              v130 = v129 & ((v82 >> 4) ^ (v82 >> 9));
              v86 = v128 + 32 * v130;
              v131 = *v86;
              if (*v86 != v82)
              {
                v132 = 0;
                v133 = 1;
                while (v131 != -4096)
                {
                  if (v132)
                  {
                    v134 = 0;
                  }

                  else
                  {
                    v134 = v131 == -8192;
                  }

                  if (v134)
                  {
                    v132 = v86;
                  }

                  v135 = v130 + v133++;
                  v130 = v135 & v129;
                  v86 = v128 + 32 * v130;
                  v131 = *v86;
                  a1 = v207;
                  v8 = v212;
                  if (*v86 == v82)
                  {
                    goto LABEL_200;
                  }
                }

                if (v132)
                {
                  v86 = v132;
                }

                a1 = v207;
                v8 = v212;
              }
            }

            else
            {
              v86 = 0;
            }

LABEL_200:
            ++*(a1 + 384);
            if (*v86 == -4096)
            {
              goto LABEL_132;
            }

LABEL_131:
            --*(a1 + 388);
            goto LABEL_132;
          }

          if (v83 + ~v126 - *(a1 + 388) <= v83 >> 3)
          {
            goto LABEL_187;
          }

          *(a1 + 384) = v126 + 1;
          if (*v86 != -4096)
          {
            goto LABEL_131;
          }

LABEL_132:
          *v86 = v82;
          *(v86 + 8) = -1;
          *(v86 + 16) = "";
          *(v86 + 24) = 0;
          __p[0] = 0;
          __p[1] = 0;
          v216 = 0;
          DWORD2(v233) = 0;
          LOBYTE(v237) = 0;
          HIDWORD(v237) = 1;
          v235 = 0;
          v236 = 0;
          v234 = 0;
          *&v233 = &unk_1F1A362A8;
          v238 = __p;
          llvm::raw_ostream::SetBufferAndMode(&v233, 0, 0, 0);
          v92 = v236;
          if (v235 - v236 > 2)
          {
            *(v236 + 2) = 98;
            *v92 = 25182;
            v236 += 3;
          }

          else
          {
            llvm::raw_ostream::write(&v233, "^bb", 3uLL);
          }

          llvm::raw_ostream::operator<<(&v233, v81);
          llvm::raw_ostream::~raw_ostream(&v233);
          if (SHIBYTE(v216) >= 0)
          {
            v93 = __p;
          }

          else
          {
            v93 = __p[0];
          }

          if (SHIBYTE(v216) >= 0)
          {
            v94 = SHIBYTE(v216);
          }

          else
          {
            v94 = __p[1];
          }

          if (v94)
          {
            *(a1 + 512) += v94;
            v95 = *(a1 + 432);
            if (v95 && &v95[v94] <= *(a1 + 440))
            {
              *(v209 + 248) = &v95[v94];
            }

            else
            {
              v136 = v93;
              v137 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v209 + 248, v94, v94, 0);
              v93 = v136;
              a1 = v207;
              v95 = v137;
            }

            memmove(v95, v93, v94);
            *(v86 + 16) = v95;
            *(v86 + 24) = v94;
            if (SHIBYTE(v216) < 0)
            {
LABEL_146:
              operator delete(__p[0]);
            }
          }

          else
          {
            *(v86 + 16) = 0;
            *(v86 + 24) = 0;
            if (SHIBYTE(v216) < 0)
            {
              goto LABEL_146;
            }
          }

LABEL_147:
          *(v86 + 8) = v81;
          isEntryBlock = mlir::Block::isEntryBlock(v82);
          v97 = isEntryBlock;
          v98 = 3;
          if (!isEntryBlock)
          {
            v98 = 0;
          }

          *&v233 = &v235;
          v234 = 32;
          if (isEntryBlock)
          {
            qmemcpy(&v235, "arg", 3);
          }

          *(&v233 + 1) = v98;
          LODWORD(__p[1]) = 2;
          v219 = 0;
          v220 = 1;
          v217 = 0;
          v218 = 0;
          v216 = 0;
          __p[0] = &unk_1F1A36338;
          v221 = &v233;
          llvm::raw_ostream::SetBufferAndMode(__p, 0, 0, 0);
          v99 = *(v82 + 6);
          v100 = *(v82 + 7);
          if (v99 != v100)
          {
            if (v97)
            {
              while (1)
              {
                v112 = *v99;
                v113 = *(a1 + 296);
                if (!v113)
                {
                  goto LABEL_172;
                }

                v114 = *(a1 + 280);
                v115 = 0x9DDFEA08EB382D69 * ((8 * *v99 - 0xAE502812AA7333) ^ HIDWORD(*v99));
                v116 = 0x9DDFEA08EB382D69 * (HIDWORD(v112) ^ (v115 >> 47) ^ v115);
                v117 = v113 - 1;
                v118 = (-348639895 * ((v116 >> 47) ^ v116)) & v117;
                v119 = *(v114 + 16 * v118);
                if (v119 != v112)
                {
                  break;
                }

LABEL_165:
                if (++v99 == v100)
                {
                  goto LABEL_177;
                }
              }

              v120 = 1;
              while (v119 != -4096)
              {
                v121 = v118 + v120++;
                v118 = v121 & v117;
                v119 = *(v114 + 16 * v118);
                if (v119 == v112)
                {
                  goto LABEL_165;
                }
              }

LABEL_172:
              v122 = *(&v233 + 1);
              if (*(&v233 + 1) != 3)
              {
                if (*(&v233 + 1) <= 3uLL)
                {
                  if (v234 > 2 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(&v233, &v235, 3uLL, 1), v122 = *(&v233 + 1), *(&v233 + 1) != 3))
                  {
                    bzero((v233 + v122), 3 - v122);
                  }
                }

                *(&v233 + 1) = 3;
              }

              v111 = *(a1 + 532);
              *(a1 + 532) = v111 + 1;
              llvm::raw_ostream::operator<<(__p, v111);
              goto LABEL_165;
            }

            while (2)
            {
              v101 = *v99;
              v102 = *(a1 + 296);
              if (v102)
              {
                v103 = *(a1 + 280);
                v104 = 0x9DDFEA08EB382D69 * ((8 * *v99 - 0xAE502812AA7333) ^ HIDWORD(*v99));
                v105 = 0x9DDFEA08EB382D69 * (HIDWORD(v101) ^ (v104 >> 47) ^ v104);
                v106 = v102 - 1;
                v107 = (-348639895 * ((v105 >> 47) ^ v105)) & v106;
                v108 = *(v103 + 16 * v107);
                if (v108 != v101)
                {
                  v109 = 1;
                  while (v108 != -4096)
                  {
                    v110 = v107 + v109++;
                    v107 = v110 & v106;
                    v108 = *(v103 + 16 * v107);
                    if (v108 == v101)
                    {
                      goto LABEL_155;
                    }
                  }

                  goto LABEL_154;
                }
              }

              else
              {
LABEL_154:
              }

LABEL_155:
              if (++v99 == v100)
              {
                break;
              }

              continue;
            }
          }

LABEL_177:
          v123 = (v82 + 32);
          for (j = *(v82 + 5); j != v123; j = *(j + 1))
          {
            ZinIrHalH13g::~ZinIrHalH13g(j);
          }

          llvm::raw_ostream::~raw_ostream(__p);
          if (v233 != &v235)
          {
            free(v233);
          }

          ++v81;
          v80 = *(v80 + 1);
          a1 = v207;
          if (v80 == v208)
          {
            break;
          }

          continue;
        }
      }

      mlir::Region::OpIterator::OpIterator(__p, v208, 0);
      mlir::Region::OpIterator::OpIterator(&v235, v208, 1);
      v138 = v216;
      v234 = v216;
      v233 = *__p;
      v213 = *__p;
      v214 = v216;
      v139 = v237;
      while (v138 != v139)
      {
        ZinIrHalH13g::~ZinIrHalH13g(v138);
        v141 = *(v140 + 44);
        v142 = v141 & 0x7FFFFF;
        if ((v141 & 0x7FFFFF) != 0)
        {
          v143 = (v140 + 16 * ((v141 >> 23) & 1) + ((v141 >> 21) & 0x7F8) + 32 * *(v140 + 40) + 64);
          v144 = v223;
          v145 = 24 * v142;
          do
          {
            __p[0] = v143;
            __p[1] = *(a1 + 528);
            LODWORD(v216) = *(a1 + 536);
            v217 = v77;
            v146 = v222;
            if (v144 >= HIDWORD(v223))
            {
              if (v222 <= __p && v222 + 32 * v144 > __p)
              {
                v150 = __p - v222;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v222, v224, v144 + 1, 32);
                v146 = v222;
                v147 = (v222 + v150);
                a1 = v207;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v222, v224, v144 + 1, 32);
                v147 = __p;
                v146 = v222;
              }
            }

            else
            {
              v147 = __p;
            }

            v148 = &v146[32 * v223];
            v149 = *(v147 + 1);
            *v148 = *v147;
            *(v148 + 1) = v149;
            v144 = v223 + 1;
            LODWORD(v223) = v223 + 1;
            v143 += 24;
            v145 -= 24;
          }

          while (v145);
        }

        mlir::Region::OpIterator::operator++(&v213);
        v138 = v214;
      }

      v25 = v223;
    }

    while (v223);
  }

  v151 = *(v209 + 240);
  if (v151)
  {
    while (1)
    {
      *(*v151 + 24) = v151[1];
      v157 = v151[2];
      if (v157)
      {
        break;
      }

      v151 = *(v209 + 240);
      if (!v151)
      {
        goto LABEL_306;
      }
    }

    v158 = *v151;
    v159 = **v151;
    v160 = *(*v151 + 16);
    if (*(v157 + 8))
    {
      if (v160)
      {
        v155 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v157 + 16), *(v157 + 24));
        v161 = v160 - 1;
        v163 = *(v157 + 16);
        v162 = *(v157 + 24);
        if (v162)
        {
          if (v163 == -2)
          {
            for (k = 1; ; ++k)
            {
              v152 = v155 & v161;
              v153 = (v159 + 24 * (v155 & v161));
              v154 = *v153;
              if (*v153 == -2)
              {
                break;
              }

              if (v154 == -1)
              {
                goto LABEL_264;
              }

              if (v162 == v153[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v154, v162))
              {
                break;
              }

              v155 = k + v152;
            }

            goto LABEL_250;
          }

          v183 = 0;
          v184 = 1;
          v185 = v155 & v161;
          v153 = (v159 + 24 * (v155 & v161));
          v186 = *v153;
          if (*v153 == -2)
          {
            goto LABEL_276;
          }

          while (v186 != -1)
          {
            if (v162 == v153[1])
            {
              v211 = v184;
              v210 = v185;
              v187 = memcmp(v163, v186, v162);
              v185 = v210;
              v184 = v211;
              if (!v187)
              {
                goto LABEL_250;
              }
            }

            do
            {
LABEL_276:
              if (v183)
              {
                v188 = 0;
              }

              else
              {
                v188 = v186 + 2 == 0;
              }

              if (v188)
              {
                v183 = v153;
              }

              v189 = v184 + v185;
              ++v184;
              v185 = v189 & v161;
              v153 = (v159 + 24 * (v189 & v161));
              v186 = *v153;
            }

            while (*v153 == -2);
          }
        }

        else if (v163 == -2)
        {
          v175 = 1;
          v176 = v155 & v161;
          v153 = (v159 + 24 * (v155 & v161));
          v177 = *v153;
          if (*v153 == -2)
          {
            goto LABEL_250;
          }

          while (v177 != -1)
          {
            if (v153[1])
            {
              v178 = v175 + v176;
              ++v175;
              v176 = v178 & v161;
              v153 = (v159 + 24 * (v178 & v161));
              v177 = *v153;
              if (*v153 != -2)
              {
                continue;
              }
            }

            goto LABEL_250;
          }

LABEL_264:
          v183 = 0;
        }

        else
        {
          v183 = 0;
          v194 = 1;
          v195 = v155 & v161;
          v153 = (v159 + 24 * (v155 & v161));
          v196 = *v153;
          if (*v153 == -2)
          {
            goto LABEL_292;
          }

          while (v196 != -1)
          {
            if (!v153[1])
            {
              goto LABEL_250;
            }

            do
            {
LABEL_292:
              if (v183)
              {
                v197 = 0;
              }

              else
              {
                v197 = v196 + 2 == 0;
              }

              if (v197)
              {
                v183 = v153;
              }

              v198 = v194 + v195;
              ++v194;
              v195 = v198 & v161;
              v153 = (v159 + 24 * (v198 & v161));
              v196 = *v153;
            }

            while (*v153 == -2);
          }
        }

        if (v163 == -1)
        {
          goto LABEL_250;
        }

        if (v183)
        {
          v153 = v183;
        }

        v173 = *(v158 + 16);
      }

      else
      {
        v173 = 0;
        v153 = 0;
      }

      *&v233 = v153;
      v174 = *(v158 + 8);
      if (4 * v174 + 4 >= 3 * v173)
      {
        v173 *= 2;
      }

      else if (v173 + ~v174 - *(v158 + 12) > v173 >> 3)
      {
        *(v158 + 8) = v174 + 1;
        if (*v153 == -1)
        {
LABEL_249:
          *v153 = *(v157 + 16);
          v153[2] = 0;
LABEL_250:
          v153[2] = *(v157 + 8);
          goto LABEL_251;
        }

LABEL_248:
        --*(v158 + 12);
        goto LABEL_249;
      }

      llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(v158, v173);
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(v158, (v157 + 16), &v233);
      v153 = v233;
      ++*(v158 + 8);
      if (*v153 == -1)
      {
        goto LABEL_249;
      }

      goto LABEL_248;
    }

    if (!v160)
    {
      goto LABEL_251;
    }

    v164 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v157 + 16), *(v157 + 24));
    v165 = v160 - 1;
    v167 = *(v157 + 16);
    v166 = *(v157 + 24);
    if (v166)
    {
      if (v167 == -2)
      {
        v168 = 1;
        v169 = v164 & v165;
        v170 = v159 + 24 * (v164 & v165);
        v171 = *v170;
        if (*v170 != -2)
        {
          while (v171 != -1)
          {
            if (v166 != *(v170 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v171, v166))
            {
              v172 = v168 + v169;
              ++v168;
              v169 = v172 & v165;
              v170 = v159 + 24 * (v172 & v165);
              v171 = *v170;
              if (*v170 != -2)
              {
                continue;
              }
            }

            goto LABEL_305;
          }

          goto LABEL_304;
        }

        goto LABEL_305;
      }

      v190 = 1;
      v191 = v164 & v165;
      v170 = v159 + 24 * (v164 & v165);
      v192 = *v170;
      if (*v170 == -2)
      {
        goto LABEL_287;
      }

      while (v192 != -1)
      {
        if (v166 == *(v170 + 8) && !memcmp(v167, v192, v166))
        {
          goto LABEL_305;
        }

        do
        {
LABEL_287:
          v193 = v190 + v191;
          ++v190;
          v191 = v193 & v165;
          v170 = v159 + 24 * (v193 & v165);
          v192 = *v170;
        }

        while (*v170 == -2);
      }
    }

    else
    {
      v179 = 1;
      if (v167 != -2)
      {
        while (1)
        {
          v170 = v159 + 24 * (v164 & v165);
          if (*v170 != -2)
          {
            if (*v170 == -1)
            {
              goto LABEL_304;
            }

            if (!*(v170 + 8))
            {
              goto LABEL_305;
            }
          }

          v164 = v179 + (v164 & v165);
          ++v179;
        }
      }

      v180 = v164 & v165;
      v170 = v159 + 24 * (v164 & v165);
      v181 = *v170;
      if (*v170 == -2)
      {
LABEL_305:
        *v170 = xmmword_1A75DA820;
        *(v158 + 8) = vadd_s32(*(v158 + 8), 0x1FFFFFFFFLL);
LABEL_251:
        v151[2] = *v157;
        llvm::deallocate_buffer(v157, 0x28);
      }

      while (v181 != -1)
      {
        if (*(v170 + 8))
        {
          v182 = v179 + v180;
          ++v179;
          v180 = v182 & v165;
          v170 = v159 + 24 * (v182 & v165);
          v181 = *v170;
          if (*v170 != -2)
          {
            continue;
          }
        }

        goto LABEL_305;
      }
    }

LABEL_304:
    if (v167 != -1)
    {
      goto LABEL_251;
    }

    goto LABEL_305;
  }

LABEL_306:
  if (v222 != v224)
  {
    free(v222);
  }

  if (v228)
  {
    llvm::deallocate_buffer(*v227, 0x1000);
  }

  if (v231)
  {
    llvm::deallocate_buffer(*v230, *(v230 + 1));
  }

  if (v230 != &v231 + 8)
  {
    free(v230);
  }

  if (v227 != v229)
  {
    free(v227);
  }

  *(v207 + 536) = 0;
  *(v207 + 528) = 0;
  *(v207 + 592) = 0;
  *(v207 + 616) = 0;
  *(v207 + 600) = 0u;
  v199 = *v206;
  v200 = v206[2];
  *(v207 + 640) = v206[1];
  *(v207 + 656) = v200;
  *(v207 + 624) = v199;
  *(v207 + 672) = a4;
  *(v207 + 680) = 0u;
  *(v207 + 696) = 0;
  *(v207 + 704) = v207 + 720;
  *(v207 + 712) = 0;
  return v207;
}

uint64_t mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6[1] = 77;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_1F19FC830;
  return result;
}

void sub_1A6BAC0D0()
{

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::SSANameState::numberValuesInOp(_anonymous_namespace_::SSANameState *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23[1] = &__base;
  __base = &v26;
  v26 = 0;
  __nel = 0x200000001;
  v22 = this;
  v23[0] = this;
  if ((*(this + 304) & 4) == 0)
  {
    if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v5 = InterfaceFor;
      if (a2)
      {
      }
    }
  }

  if (*(a2 + 9))
  {
    v19 = (a2 - 16);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int &>(this, &v19, this + 62, v20);
    if (v21 == 1)
    {
      ++*(this + 62);
    }

    if (__nel)
    {
      if (__nel == 1)
      {
        goto LABEL_28;
      }

      qsort(__base, __nel, 4uLL, llvm::array_pod_sort_comparator<int>);
    }

    v8 = *(this + 9);
    v7 = this + 72;
    v6 = v8;
    v20[0] = a2;
    v9 = *(v7 + 4);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = v10 & ((a2 >> 4) ^ (a2 >> 9));
      v12 = (v6 + 32 * v11);
      v13 = *v12;
      if (*v12 == a2)
      {
        goto LABEL_28;
      }

      v14 = 0;
      v15 = 1;
      while (v13 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v13 == -8192;
        }

        if (v16)
        {
          v14 = v12;
        }

        v17 = v11 + v15++;
        v11 = v17 & v10;
        v12 = (v6 + 32 * v11);
        v13 = *v12;
        if (*v12 == a2)
        {
          goto LABEL_28;
        }
      }

      if (v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v12;
      }
    }

    else
    {
      v18 = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::InsertIntoBucket<mlir::Operation *,llvm::SmallVector<int,2u>>(v7, v18, v20, &__base);
  }

  else if ((*(this + 304) & 0x40) != 0)
  {
    v19 = a2;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(this + 6, &v19, this + 62, v20);
    if (v21 == 1)
    {
      ++*(this + 62);
    }
  }

LABEL_28:
  if (__base != &v26)
  {
    free(__base);
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int &>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 2);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

void llvm::function_ref<void ()(mlir::Block *,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_0>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v29 = v31;
  v30 = xmmword_1A7595B90;
  v31[0] = 94;
  v6 = sanitizeIdentifier(a3, a4, &v29, "$._-", 4uLL, 1);
  v7 = v6;
  v9 = v8;
  v10 = v29;
  if (v29 == v6)
  {
    v10 = v6;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = v30;
    if (*(&v30 + 1) < v30 + v9)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v29, v31, v30 + v9, 1);
      v10 = v29;
      v11 = v30;
    }

    if (v9)
    {
      memcpy(&v10[v11], v7, v9);
      v10 = v29;
      v11 = v30;
    }

    v9 += v11;
    *&v30 = v9;
    if (v9)
    {
LABEL_7:
      *(v5 + 232) += v9;
      v12 = *(v5 + 152);
      v13 = &v12[v9];
      if (v12)
      {
        v14 = v13 > *(v5 + 160);
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v26 = v10;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v5 + 152, v9, v9, 0);
        v10 = v26;
        v12 = Slow;
      }

      else
      {
        *(v5 + 152) = v13;
      }

      memmove(v12, v10, v9);
      v15 = v5 + 96;
      v16 = *(v5 + 96);
      v17 = *(v5 + 112);
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  v12 = 0;
  v15 = v5 + 96;
  v16 = *(v5 + 96);
  v17 = *(v5 + 112);
  if (!v17)
  {
    goto LABEL_25;
  }

LABEL_13:
  v18 = (v17 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v19 = (v16 + 32 * v18);
  v20 = *v19;
  if (*v19 == a2)
  {
    goto LABEL_31;
  }

  v21 = 0;
  v22 = 1;
  while (v20 != -4096)
  {
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20 == -8192;
    }

    if (v23)
    {
      v21 = v19;
    }

    v24 = v18 + v22++;
    v18 = v24 & (v17 - 1);
    v19 = (v16 + 32 * v18);
    v20 = *v19;
    if (*v19 == a2)
    {
      goto LABEL_31;
    }
  }

  if (v21)
  {
    v19 = v21;
  }

LABEL_26:
  v28 = v19;
  v25 = *(v5 + 104);
  if (4 * v25 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_39:
    v19 = v28;
    ++*(v5 + 104);
    if (*v19 == -4096)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v17 + ~v25 - *(v5 + 108) <= v17 >> 3)
  {
    goto LABEL_39;
  }

  *(v5 + 104) = v25 + 1;
  if (*v19 != -4096)
  {
LABEL_29:
    --*(v5 + 108);
  }

LABEL_30:
  *v19 = a2;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
LABEL_31:
  *(v19 + 2) = -1;
  v19[2] = v12;
  v19[3] = v9;
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (result + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
LABEL_3:
      *a4 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      while (v6 != -4096)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == -8192;
        }

        if (v9)
        {
          v7 = v5;
        }

        v10 = v4 + v8++;
        v4 = v10 & (a2 - 1);
        v5 = (result + 32 * v4);
        v6 = *v5;
        if (*v5 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      *a4 = v5;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (*v22 != v24)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (*v22 == v24)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 3);
          *(v22 + 8) = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Value,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_1>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  if (a2 && (*(a2 + 8) & 7) == 6)
  {
    v7 = *(a2 + 16);
    v8 = v7 + 6;
    if (v7 == -6)
    {
      return;
    }
  }

  else
  {
    v8 = v6 & 7;
    if ((v6 & 7) == 0)
    {
      return;
    }
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 4);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 4 * v10) = v8;
  ++*(v9 + 8);
}

uint64_t anonymous namespace::SSANameState::setValueName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = a2;
  if (!a4)
  {
    v11 = *(a1 + 248);
    *(a1 + 248) = v11 + 1;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v40);
    *result = v11;
    return result;
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v40) = -1;
  v48 = v50;
  v49 = xmmword_1A75DA800;
  __src[0] = sanitizeIdentifier(a3, a4, &v48, "$._-", 4uLL, 1);
  __src[1] = v7;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((a1 + 120), __src))
  {
    v13 = __src[1];
    if (__src[1])
    {
      *(a1 + 232) += __src[1];
      Slow = *(a1 + 152);
      if (Slow && &Slow[v13] <= *(a1 + 160))
      {
        *(a1 + 152) = &Slow[v13];
LABEL_11:
        memmove(Slow, __src[0], v13);
        v15 = __src[1];
LABEL_58:
        __src[0] = Slow;
        __src[1] = v15;
        goto LABEL_59;
      }

      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 152, v13, v13, 0);
      v13 = __src[1];
      if (__src[1])
      {
        goto LABEL_11;
      }
    }

    else
    {
      Slow = 0;
    }

    v15 = 0;
    goto LABEL_58;
  }

  v9 = __src[0];
  v8 = __src[1];
  v45 = v47;
  v46 = xmmword_1A75DA830;
  if (__src[1] < 0x41)
  {
    v10 = 0;
    if (!__src[1])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, __src[1], 1);
  v10 = v46;
  if (v8)
  {
LABEL_13:
    memcpy(v45 + v10, v9, v8);
    v10 = v46;
  }

LABEL_14:
  v16 = &v8[v10];
  *&v46 = v16;
  if ((v16 + 1) > *(&v46 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, (v16 + 1), 1);
    v16 = v46;
  }

  v16[v45] = 95;
  *&v46 = v46 + 1;
  while (1)
  {
    v17 = *(a1 + 256);
    *(a1 + 256) = v17 + 1;
    if (v17)
    {
      v18 = 20;
      do
      {
        v50[v18-- + 19] = (v17 % 0xA) | 0x30;
        v19 = v17 > 9;
        v17 /= 0xAuLL;
      }

      while (v19);
      v20 = v18 + 1;
      v21 = 20 - v18;
      if ((20 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }
    }

    else
    {
      v50[39] = 48;
      v20 = 20;
      v21 = 1;
    }

    if (v21 > 0x16)
    {
      operator new();
    }

    v43 = v21;
    if (v20 != 21)
    {
      memcpy(&__dst, &v50[v20 + 19], v21);
    }

    *(&__dst + v21) = 0;
    v22 = v43;
    v23 = __dst;
    if (v43 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v43 >= 0)
    {
      v25 = v43;
    }

    else
    {
      v25 = v42;
    }

    v26 = v46;
    if (*(&v46 + 1) < v46 + v25)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, v46 + v25, 1);
      v26 = v46;
    }

    if (v25)
    {
      memcpy(v45 + v26, p_dst, v25);
      v26 = v46;
    }

    v27 = v26 + v25;
    *&v46 = v27;
    if (v22 < 0)
    {
      operator delete(v23);
      v27 = v46;
    }

    __dst = v45;
    v42 = v27;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((a1 + 120), &__dst))
    {
      break;
    }

    v28 = __src[1] + 1;
    v29 = v46;
    if (v46 != __src[1] + 1)
    {
      if (v46 <= __src[1] + 1)
      {
        if (*(&v46 + 1) < v28)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v45, v47, __src[1] + 1, 1);
          v29 = v46;
        }

        if (v28 != v29)
        {
          bzero(&v29[v45], v28 - v29);
        }
      }

      *&v46 = v28;
    }
  }

  v30 = v45;
  v31 = v46;
  if (v46)
  {
    *(a1 + 232) += v46;
    v32 = *(a1 + 152);
    if (v32 && &v32[v31] <= *(a1 + 160))
    {
      *(a1 + 152) = &v32[v31];
    }

    else
    {
      v32 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 152, v31, v31, 0);
    }

    memmove(v32, v30, v31);
    v30 = v45;
    __src[0] = v32;
    __src[1] = v31;
    if (v45 == v47)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  __src[0] = 0;
  __src[1] = 0;
  if (v45 != v47)
  {
LABEL_55:
    free(v30);
  }

LABEL_59:
  v33 = *(a1 + 144);
  v34 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[]((a1 + 120), __src);
  v35 = *(v33 + 16);
  v36 = *v34;
  buffer = llvm::allocate_buffer(0x28uLL, 8uLL);
  buffer[1] = *__src;
  *(buffer + 32) = 0;
  *buffer = v35;
  *(buffer + 1) = v36;
  *v34 = buffer;
  *(v33 + 16) = buffer;
  v38 = __src[0];
  v39 = __src[1];
  if (v48 != v50)
  {
    free(v48);
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](a1 + 24, &v40);
  *result = v38;
  *(result + 8) = v39;
  return result;
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](uint64_t *a1, llvm::hashing::detail **a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 2);
    v7 = *(a1 + 4);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 3);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 2);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = v4 - 1;
  v9 = *a2;
  v10 = a2[1];
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 24 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 24 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 24 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 24 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 24 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 24 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL);
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1A75AD9C0;
        *(v17 + 24) = xmmword_1A75AD9C0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              v23[2] = *(v22 + 2);
              ++*(a1 + 8);
            }

            v22 = (v22 + 24);
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = result + 24 * v10;
    do
    {
      *v12 = xmmword_1A75AD9C0;
      v12 += 24;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = result + 24 * v13;
      do
      {
        *v15 = xmmword_1A75AD9C0;
        v15 += 24;
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL);
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_1A75AD9C0;
      *(v25 + 24) = xmmword_1A75AD9C0;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t llvm::array_pod_sort_comparator<int>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::InsertIntoBucket<mlir::Operation *,llvm::SmallVector<int,2u>>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0x100000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<int>::operator=((v4 + 1), a4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[4 * v10];
      v12 = v7 + 4;
      v13 = v10;
      do
      {
        *(v12 - 4) = -4096;
        *v12 = -4096;
        v12 += 8;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[4 * v6];
    do
    {
      *v11 = -4096;
      v11 += 4;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 32 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*a1 + 32 * v17);
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v18[1] = (v18 + 3);
        v18[2] = 0x100000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<int>::operator=((v18 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v20 = v4[1];
        if (v20 != v4 + 3)
        {
          free(v20);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

void mlir::detail::AsmStateImpl::~AsmStateImpl(mlir::detail::AsmStateImpl *this)
{
  v2 = *(this + 88);
  if (v2 != this + 720)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 85), (8 * *(this + 174)));
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 6 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 48 * v11 - 48;
    if (v12 < 0x30)
    {
      v13 = result;
LABEL_14:
      v17 = &result[6 * v11];
      do
      {
        *v13 = -4096;
        v13 += 6;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x30 + 1;
    v13 = &result[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[6] = -4096;
      v15 += 12;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = 48 * v5 - 48;
    if (v7 < 0x30)
    {
      v8 = *result;
LABEL_7:
      v12 = &v6[6 * v5];
      do
      {
        *v8 = -4096;
        v8 += 6;
      }

      while (v8 != v12);
      goto LABEL_9;
    }

    v9 = v7 / 0x30 + 1;
    v8 = &v6[6 * (v9 & 0xFFFFFFFFFFFFFFELL)];
    v10 = *result;
    v11 = v9 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v10 = -4096;
      v10[6] = -4096;
      v10 += 12;
      v11 -= 2;
    }

    while (v11);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v13 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v14 = *(result + 16) - 1;
        v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v16 = *result + 48 * v15;
        v17 = *v16;
        if (v13 != *v16)
        {
          v22 = 0;
          v23 = 1;
          while (v17 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v17 == -8192;
            }

            if (v24)
            {
              v22 = v16;
            }

            v25 = v15 + v23++;
            v15 = v25 & v14;
            v16 = *v4 + 48 * v15;
            v17 = *v16;
            if (v13 == *v16)
            {
              goto LABEL_15;
            }
          }

          if (v22)
          {
            v16 = v22;
          }
        }

LABEL_15:
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = v13;
        *(v16 + 24) = 0;
        *(v16 + 8) = v3[1];
        v3[1] = 0;
        *(v16 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v18 = *(v16 + 20);
        *(v16 + 20) = *(v3 + 5);
        *(v3 + 5) = v18;
        v19 = *(v16 + 24);
        *(v16 + 24) = *(v3 + 6);
        *(v3 + 6) = v19;
        *(v16 + 32) = v16 + 48;
        *(v16 + 40) = 0;
        v20 = v16 + 32;
        if (*(v3 + 10))
        {
          llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v20, v3 + 4);
        }

        ++*(v4 + 8);
        v21 = v3[4];
        if (v21 != v3 + 6)
        {
          free(v21);
        }

        llvm::deallocate_buffer(v3[1], (24 * *(v3 + 6)));
      }

      v3 += 6;
    }

    while (v3 != a3);
  }

  return result;
}

void llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(uint64_t a1, llvm::raw_ostream *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return;
  }

  v6 = *a1;
  v7 = **a1;
  if (!v7)
  {
    v8 = *a3;
    v9 = *(*a3 + 32);
    if ((*(*a3 + 24) - v9) > 0x11)
    {
      *(v9 + 16) = 15934;
      *v9 = *"<<NULL ATTRIBUTE>>";
      v8[4] += 18;
      if (v3 == 1)
      {
        return;
      }

LABEL_11:
      v10 = v6 + 1;
      v11 = 8 * v3 - 8;
      while (1)
      {
        v12 = *(a2 + 4);
        if (*(a2 + 3) - v12 > 1uLL)
        {
          *v12 = 8236;
          *(a2 + 4) += 2;
          v13 = *v10;
          if (*v10)
          {
LABEL_19:
            {
              mlir::AsmPrinter::Impl::printAttributeImpl(a3, v13, 1);
            }

            goto LABEL_13;
          }
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
          v13 = *v10;
          if (*v10)
          {
            goto LABEL_19;
          }
        }

        v14 = *a3;
        v15 = *(*a3 + 32);
        if ((*(*a3 + 24) - v15) > 0x11)
        {
          *(v15 + 16) = 15934;
          *v15 = *"<<NULL ATTRIBUTE>>";
          v14[4] += 18;
        }

        else
        {
          llvm::raw_ostream::write(v14, "<<NULL ATTRIBUTE>>", 0x12uLL);
        }

LABEL_13:
        ++v10;
        v11 -= 8;
        if (!v11)
        {
          return;
        }
      }
    }

    llvm::raw_ostream::write(v8, "<<NULL ATTRIBUTE>>", 0x12uLL);
LABEL_8:
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_11;
  }

  {
    goto LABEL_8;
  }

  mlir::AsmPrinter::Impl::printAttributeImpl(a3, v7, 1);
  if (v3 != 1)
  {
    goto LABEL_11;
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v11 = **a1;
  v13 = *(&v4 + 1);
  v12 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v11, &v14);
  v5 = *v3;
  v6 = *(*v3 + 4);
  if (*(*v3 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "(", 1uLL);
    DWORD2(v11) = v15;
    if (v15 <= 0x40)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::APInt::initSlowCase(&v11, &v14);
  }

  *v6 = 40;
  ++*(v5 + 4);
  DWORD2(v11) = v15;
  if (v15 > 0x40)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v11 = v14;
  printDenseIntElement(&v11, *v3, *a1[2]);
  if (DWORD2(v11) >= 0x41 && v11)
  {
    MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  }

  v7 = *v3;
  v8 = *(*v3 + 4);
  if (*(*v3 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
    DWORD2(v11) = v17;
    if (v17 <= 0x40)
    {
      goto LABEL_11;
    }

LABEL_13:
    llvm::APInt::initSlowCase(&v11, &v16);
  }

  *v8 = 44;
  ++*(v7 + 4);
  DWORD2(v11) = v17;
  if (v17 > 0x40)
  {
    goto LABEL_13;
  }

LABEL_11:
  *&v11 = v16;
  printDenseIntElement(&v11, *v3, *a1[2]);
  if (DWORD2(v11) >= 0x41 && v11)
  {
    MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  }

  result = *v3;
  v10 = *(*v3 + 4);
  if (*(*v3 + 3) == v10)
  {
    result = llvm::raw_ostream::write(result, ")", 1uLL);
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v10 = 41;
    ++*(result + 4);
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  result = v16;
  if (v16)
  {
    result = MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
  }

LABEL_23:
  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      return MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }
  }

  return result;
}

void printDenseIntElement(llvm::APInt *a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v12 = a3;
  if (mlir::Type::isInteger(&v12, 1))
  {
    v5 = *(a1 + 2);
    if (v5 > 0x40)
    {
      v6 = llvm::APInt::countLeadingZerosSlowCase(a1) == v5;
    }

    else
    {
      v6 = *a1 == 0;
    }

    v8 = v6;
    if (v8)
    {
      v9 = "false";
    }

    else
    {
      v9 = "true";
    }

    if (v8)
    {
      v10 = 5;
    }

    else
    {
      v10 = 4;
    }

    v11 = *(a2 + 4);
    if (v10 <= *(a2 + 3) - v11)
    {
      memcpy(v11, v9, v10);
      *(a2 + 4) += v10;
    }

    else
    {
      llvm::raw_ostream::write(a2, v9, v10);
    }
  }

  else
  {
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&v12);
    llvm::APInt::print(a1, a2, !isUnsignedInteger);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>(__int128 **a1, unsigned int a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v17 = **a1;
  v19 = *(&v4 + 1);
  v20 = v3;
  v18 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v17, &v13);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v21, &v13, &v17);
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
  }

  v5 = *v2;
  v6 = *(*v2 + 4);
  if (*(*v2 + 3) == v6)
  {
    v5 = llvm::raw_ostream::write(v5, "(", 1uLL);
  }

  else
  {
    *v6 = 40;
    ++*(v5 + 4);
  }

  v7 = v22[0];
  v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v17 + 1, v22);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((&v17 + 8), v22);
  }

  printFloatValue(&v17, *v2, 0);
  if (v8 == *(&v17 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v17 + 8));
    v9 = *v2;
    v10 = *(*v2 + 4);
    if (*(*v2 + 3) != v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v17 + 8));
    v9 = *v2;
    v10 = *(*v2 + 4);
    if (*(*v2 + 3) != v10)
    {
LABEL_15:
      *v10 = 44;
      ++*(v9 + 4);
      goto LABEL_18;
    }
  }

  llvm::raw_ostream::write(v9, ",", 1uLL);
LABEL_18:
  if (v8 == v23[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v17 + 1, v23);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((&v17 + 8), v23);
  }

  printFloatValue(&v17, *v2, 0);
  if (v8 == *(&v17 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v17 + 8));
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
LABEL_23:
      *v12 = 41;
      ++*(v11 + 4);
      if (v8 != v23[0])
      {
        goto LABEL_24;
      }

LABEL_29:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
      if (v8 != v22[0])
      {
        goto LABEL_25;
      }

LABEL_30:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v17 + 8));
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
      goto LABEL_23;
    }
  }

  llvm::raw_ostream::write(v11, ")", 1uLL);
  if (v8 == v23[0])
  {
    goto LABEL_29;
  }

LABEL_24:
  llvm::detail::IEEEFloat::~IEEEFloat(v23);
  if (v8 == v22[0])
  {
    goto LABEL_30;
  }

LABEL_25:
  llvm::detail::IEEEFloat::~IEEEFloat(v22);
}

void mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(uint64_t *__return_ptr a1@<X8>, llvm::APInt *a2@<X1>, llvm::APFloatBase *a3@<X0>)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 4);
  v16 = *(a2 + 2);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, a2);
  }

  v15 = *a2;
  v8 = llvm::APFloatBase::PPCDoubleDouble(a3);
  if (v8 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v18, v6, &v15);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v18, v6, &v15, v7);
  v10 = *(a3 + 4);
  v14 = *(a2 + 6);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, a2 + 2);
  }

  v13 = *(a2 + 2);
  if (v8 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v10, &v13);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v17, v10, &v13, v9);
  v11 = a1 + 1;
  if (v8 == v18[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v18);
    v12 = (a1 + 5);
    if (v8 != v17[0])
    {
LABEL_7:
      llvm::detail::IEEEFloat::IEEEFloat(v12, v17);
      if (v8 != v17[0])
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v11, v18);
    v12 = (a1 + 5);
    if (v8 != v17[0])
    {
      goto LABEL_7;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v17);
  if (v8 != v17[0])
  {
LABEL_8:
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
    if (v14 < 0x41)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  if (v14 < 0x41)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v13)
  {
    MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
  }

LABEL_19:
  if (v8 == v18[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
    if (v16 < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v18);
    if (v16 < 0x41)
    {
      return;
    }
  }

  if (v15)
  {
    MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v5 = **a1;
  v7 = *(&v4 + 1);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v5, &v8);
  printDenseIntElement(&v8, *v3, *a1[2]);
  if (v9 >= 0x41)
  {
    if (v8)
    {
      MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>(__int128 **a1, unsigned int a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v9 = **a1;
  v11 = *(&v4 + 1);
  v12 = v3;
  v10 = v4 + a2;
  v5 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v9, &v13);
  v6 = v12;
  v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v8 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v6, &v13);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v16, v6, &v13, v7);
  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
  }

  printFloatValue(v15, *v2, 0);
  if (v8 == v16[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>(llvm::raw_ostream ***a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *a1[1] + 16 * a2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = **a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(v4, v5, *v2);
  result = *v2;
  v9 = *(*v2 + 4);
  if (*(*v2 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = **a1;
  v12 = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, 0, 0);
  }

  v11 = 0;
  if (v6)
  {
    llvm::LoadIntFromMemory(&v11, (**(a1 + 8) + (**(a1 + 16) * a2)), **(a1 + 16));
  }

  if (mlir::Type::isIntOrIndex(*(a1 + 24)))
  {
    printDenseIntElement(&v11, *v5, **(a1 + 24));
    if (v12 < 0x41)
    {
      return;
    }
  }

  else
  {
    v10 = **(a1 + 24);
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v10);
    v9 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
    if (v9 == FloatSemantics)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, FloatSemantics, &v11);
    }

    llvm::detail::IEEEFloat::IEEEFloat(v14, FloatSemantics, &v11, v8);
    printFloatValue(v13, *v5, 0);
    if (v9 == v14[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
      if (v12 < 0x41)
      {
        return;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v14);
      if (v12 < 0x41)
      {
        return;
      }
    }
  }

  if (v11)
  {
    MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  }
}

int64_t *llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(int64_t *result, int64_t *a2, llvm::raw_ostream *this, llvm::raw_ostream *a4, uint64_t a5)
{
  if (result != a2)
  {
    v9 = result;
    if (*result == 0x8000000000000000)
    {
      v10 = *(this + 4);
      if (*(this + 3) == v10)
      {
        result = llvm::raw_ostream::write(this, "?", 1uLL);
        v11 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      else
      {
        *v10 = 63;
        ++*(this + 4);
        v11 = result + 1;
        if (result + 1 == a2)
        {
          return result;
        }
      }
    }

    else
    {
      result = llvm::raw_ostream::operator<<(this, *result);
      v11 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    do
    {
      v12 = *a5;
      v13 = *(a5 + 8);
      result = *(a4 + 4);
      if (v13 <= *(a4 + 3) - result)
      {
        if (v13)
        {
          v14 = *(a5 + 8);
          result = memcpy(result, v12, v13);
          *(a4 + 4) += v14;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(a4, v12, v13);
      }

      if (*v11 == 0x8000000000000000)
      {
        v15 = *(this + 4);
        if (*(this + 3) == v15)
        {
          result = llvm::raw_ostream::write(this, "?", 1uLL);
        }

        else
        {
          *v15 = 63;
          ++*(this + 4);
        }
      }

      else
      {
        result = llvm::raw_ostream::operator<<(this, *v11);
      }

      ++v11;
    }

    while (v11 != a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_5@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 3;
  return result;
}

uint64_t mlir::NamedAttribute::operator<(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v13 = *a1;
  v14 = v2;
  if (v13 == v2)
  {
    return 0;
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v13);
  v5 = v4;
  v6 = mlir::OpaqueAttr::getAttrData(&v14);
  v8 = v7;
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = memcmp(AttrData, v6, v9);
    if (v10)
    {
      return ((v10 >> 31) | 1u) >> 31;
    }
  }

  if (v5 < v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v5 == v8)
  {
    v12 = 0;
  }

  return v12 >> 31;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v21 = a2;
  v22 = a4;
  LODWORD(v23) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>((a1 + 48), &v21, &v23, &v19);
  if ((v20 & 1) == 0)
  {
    return *(v19 + 16);
  }

  if (a4 == 1 && (v26 = 1, v27 = 1, v23 = &v26, v24 = a1, v25 = &v27, mlir::AbstractAttribute::walkImmediateSubElements(*a2), !v26))
  {
LABEL_9:
    v13 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](a1 + 48, &v21);
    result = 0;
    *v13 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v23 = a2;
      v11 = *(v9 - 8);
      if (!v11)
      {
        v15 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(v15, v16, v17, v18);
      }

      v12 = (*(*v11 + 48))(v11, &v23);
      if (v12 == 2)
      {
        return 1;
      }

      v9 -= 32;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (a4)
    {
      return 1;
    }

    v26 = 1;
    v27 = 0;
    v23 = &v26;
    v24 = a1;
    v25 = &v27;
    mlir::AbstractAttribute::walkImmediateSubElements(*a2);
    return v26 != 0;
  }

  return result;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v22 = a2;
  v23 = a4;
  LODWORD(v24) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>((a1 + 48), &v22, &v24, &v20);
  if ((v21 & 1) == 0)
  {
    return *(v20 + 16);
  }

  if (a4 == 1 && (v27 = 1, v28 = 1, v24 = &v27, v25 = a1, v26 = &v28, mlir::AbstractAttribute::walkImmediateSubElements(*a2), !v27))
  {
LABEL_9:
    v13 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](a1 + 48, &v22);
    result = 0;
    *v13 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v24 = a2;
      v11 = *(v9 - 8);
      if (!v11)
      {
        v15 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(v15, v16, v17, v18, v19);
      }

      v12 = (*(*v11 + 48))(v11, &v24);
      if (v12 == 2)
      {
        return 1;
      }

      v9 -= 32;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (a4)
    {
      return 1;
    }

    v27 = 1;
    v28 = 0;
    v24 = &v27;
    v25 = a1;
    v26 = &v28;
    mlir::AbstractAttribute::walkImmediateSubElements(*a2);
    return v27 != 0;
  }

  return result;
}

void mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3)
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v120 = AttrDictionary;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>((result + 48), &v120, &v120, v118);
    if (v119)
    {
      v10 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(result, AttrDictionary);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](result + 48, &v120) = v10;
      if (v10)
      {
        v11 = v10 == AttrDictionary;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
LABEL_13:
        mlir::Operation::setAttrs(a2, v10);
      }
    }

    else
    {
      v10 = *(v118[0] + 8);
      if (v10)
      {
        v12 = v10 == AttrDictionary;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_13;
      }
    }
  }

  if ((a4 & 1) == 0 && !a5)
  {
    return;
  }

  if (a4)
  {
    v13 = *(a2 + 24);
    v120 = v13;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>((result + 48), &v120, &v120, v118);
    if (v119)
    {
      v14 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(result, v13);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](result + 48, &v120) = v14;
      if (v14)
      {
        v15 = v14 == v13;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
LABEL_28:
        *(a2 + 24) = v14;
      }
    }

    else
    {
      v14 = *(v118[0] + 8);
      if (v14)
      {
        v16 = v14 == v13;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  if (a5)
  {
    v17 = *(a2 + 36);
    v18 = v17 ? a2 - 16 : 0;
    if (v17)
    {
      for (i = 0; v17 != i; ++i)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, i);
        v21 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        v120 = v21;
        llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>((result + 48), &v120, &v120, v118);
        if (v119)
        {
          v22 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(result, v21);
          *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](result + 48, &v120) = v22;
          if (v22)
          {
            v23 = v22 == v21;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            continue;
          }
        }

        else
        {
          v22 = *(v118[0] + 8);
          if (v22)
          {
            v24 = v22 == v21;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            continue;
          }
        }

        *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | v22;
      }
    }
  }

  v25 = *(a2 + 44);
  if ((v25 & 0x7FFFFF) != 0)
  {
    v26 = ((a2 + 16 * ((v25 >> 23) & 1) + ((v25 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v27 = v26 + 24 * (v25 & 0x7FFFFF);
    do
    {
      for (j = *(v26 + 8); j != v26; j = *(j + 8))
      {
        v29 = j - 8;
        if (!j)
        {
          v29 = 0;
        }

        v30 = *(v29 + 48);
        v31 = *(v29 + 56);
        while (v30 != v31)
        {
          if (!a4)
          {
            goto LABEL_87;
          }

          v32 = *(*v30 + 32);
          v33 = *(result + 64);
          if (!v33)
          {
            goto LABEL_137;
          }

          v34 = *(result + 48);
          v35 = ((v32 >> 4) ^ (v32 >> 9)) & (v33 - 1);
          v36 = (v34 + 16 * v35);
          v37 = *v36;
          if (v32 == *v36)
          {
LABEL_62:
            v38 = *(v34 + 16 * v35 + 8);
            if (v38)
            {
              goto LABEL_85;
            }

            goto LABEL_87;
          }

          v66 = 0;
          v67 = 1;
          while (v37 != -4096)
          {
            if (v66)
            {
              v68 = 0;
            }

            else
            {
              v68 = v37 == -8192;
            }

            if (v68)
            {
              v66 = v36;
            }

            v69 = v35 + v67++;
            v35 = v69 & (v33 - 1);
            v36 = (v34 + 16 * v35);
            v37 = *v36;
            if (v32 == *v36)
            {
              goto LABEL_62;
            }
          }

          v74 = v66 ? v66 : v36;
          v75 = *(result + 56);
          if (4 * v75 + 4 >= 3 * v33)
          {
LABEL_137:
            v33 *= 2;
LABEL_138:
            llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result + 48, v33);
            v76 = *(result + 64);
            if (v76)
            {
              v77 = *(result + 48);
              v78 = v76 - 1;
              v79 = (v76 - 1) & ((v32 >> 4) ^ (v32 >> 9));
              v74 = (v77 + 16 * v79);
              v80 = *v74;
              if (v32 != *v74)
              {
                v81 = 0;
                v82 = 1;
                while (v80 != -4096)
                {
                  if (v81)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v83 = v80 == -8192;
                  }

                  if (v83)
                  {
                    v81 = v74;
                  }

                  v84 = v79 + v82++;
                  v79 = v84 & v78;
                  v74 = (v77 + 16 * (v84 & v78));
                  v80 = *v74;
                  if (v32 == *v74)
                  {
                    goto LABEL_166;
                  }
                }

                if (v81)
                {
                  v74 = v81;
                }
              }
            }

            else
            {
              v74 = 0;
            }

LABEL_166:
            ++*(result + 56);
            if (*v74 == -4096)
            {
              goto LABEL_68;
            }

LABEL_67:
            --*(result + 60);
            goto LABEL_68;
          }

          if (v33 + ~v75 - *(result + 60) <= v33 >> 3)
          {
            goto LABEL_138;
          }

          *(result + 56) = v75 + 1;
          if (*v74 != -4096)
          {
            goto LABEL_67;
          }

LABEL_68:
          *v74 = v32;
          v74[1] = v32;
          v38 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(result, v32);
          v39 = *(result + 64);
          if (!v39)
          {
            goto LABEL_174;
          }

          v40 = *(result + 48);
          v41 = v39 - 1;
          v42 = (v39 - 1) & ((v32 >> 4) ^ (v32 >> 9));
          v43 = (v40 + 16 * v42);
          v44 = *v43;
          if (v32 == *v43)
          {
            goto LABEL_84;
          }

          v45 = 0;
          v46 = 1;
          while (v44 != -4096)
          {
            if (v45)
            {
              v47 = 0;
            }

            else
            {
              v47 = v44 == -8192;
            }

            if (v47)
            {
              v45 = v43;
            }

            v48 = v42 + v46++;
            v42 = v48 & v41;
            v43 = (v40 + 16 * (v48 & v41));
            v44 = *v43;
            if (v32 == *v43)
            {
              goto LABEL_84;
            }
          }

          if (v45)
          {
            v43 = v45;
          }

          v96 = *(result + 56);
          if (4 * v96 + 4 >= 3 * v39)
          {
LABEL_174:
            v97 = v38;
            llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result + 48, 2 * v39);
            v98 = *(result + 64);
            if (v98)
            {
              goto LABEL_175;
            }

LABEL_200:
            v43 = 0;
            goto LABEL_201;
          }

          if (v39 + ~v96 - *(result + 60) <= v39 >> 3)
          {
            v97 = v38;
            llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result + 48, v39);
            v98 = *(result + 64);
            if (!v98)
            {
              goto LABEL_200;
            }

LABEL_175:
            v99 = *(result + 48);
            v100 = v98 - 1;
            v101 = (v98 - 1) & ((v32 >> 4) ^ (v32 >> 9));
            v43 = (v99 + 16 * v101);
            v102 = *v43;
            if (v32 == *v43)
            {
LABEL_201:
              v38 = v97;
            }

            else
            {
              v103 = 0;
              v104 = 1;
              v38 = v97;
              while (v102 != -4096)
              {
                if (v103)
                {
                  v105 = 0;
                }

                else
                {
                  v105 = v102 == -8192;
                }

                if (v105)
                {
                  v103 = v43;
                }

                v106 = v101 + v104++;
                v101 = v106 & v100;
                v43 = (v99 + 16 * (v106 & v100));
                v102 = *v43;
                if (v32 == *v43)
                {
                  goto LABEL_202;
                }
              }

              if (v103)
              {
                v43 = v103;
              }
            }

LABEL_202:
            ++*(result + 56);
            if (*v43 == -4096)
            {
              goto LABEL_83;
            }

LABEL_82:
            --*(result + 60);
            goto LABEL_83;
          }

          *(result + 56) = v96 + 1;
          if (*v43 != -4096)
          {
            goto LABEL_82;
          }

LABEL_83:
          *v43 = v32;
          v43[1] = 0;
LABEL_84:
          v43[1] = v38;
          if (v38)
          {
LABEL_85:
            if (v38 != v32)
            {
              *(*v30 + 32) = v38;
            }
          }

LABEL_87:
          if (!a5)
          {
            goto LABEL_57;
          }

          v49 = (*(*v30 + 8) & 0xFFFFFFFFFFFFFFF8);
          v50 = *(result + 64);
          if (!v50)
          {
            goto LABEL_153;
          }

          v51 = *(result + 48);
          v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v50 - 1);
          v53 = (v51 + 16 * v52);
          v54 = *v53;
          if (*v53 == v49)
          {
LABEL_90:
            v55 = *(v51 + 16 * v52 + 8);
            if (!v55)
            {
              goto LABEL_57;
            }

            goto LABEL_113;
          }

          v70 = 0;
          v71 = 1;
          while (v54 != -4096)
          {
            if (v70)
            {
              v72 = 0;
            }

            else
            {
              v72 = v54 == -8192;
            }

            if (v72)
            {
              v70 = v53;
            }

            v73 = v52 + v71++;
            v52 = v73 & (v50 - 1);
            v53 = (v51 + 16 * v52);
            v54 = *v53;
            if (*v53 == v49)
            {
              goto LABEL_90;
            }
          }

          v85 = v70 ? v70 : v53;
          v86 = *(result + 56);
          if (4 * v86 + 4 >= 3 * v50)
          {
LABEL_153:
            v50 *= 2;
LABEL_154:
            llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result + 48, v50);
            v87 = *(result + 64);
            if (v87)
            {
              v88 = *(result + 48);
              v89 = v87 - 1;
              v90 = (v87 - 1) & ((v49 >> 4) ^ (v49 >> 9));
              v85 = (v88 + 16 * v90);
              v91 = *v85;
              if (*v85 != v49)
              {
                v92 = 0;
                v93 = 1;
                while (v91 != -4096)
                {
                  if (v92)
                  {
                    v94 = 0;
                  }

                  else
                  {
                    v94 = v91 == -8192;
                  }

                  if (v94)
                  {
                    v92 = v85;
                  }

                  v95 = v90 + v93++;
                  v90 = v95 & v89;
                  v85 = (v88 + 16 * (v95 & v89));
                  v91 = *v85;
                  if (*v85 == v49)
                  {
                    goto LABEL_169;
                  }
                }

                if (v92)
                {
                  v85 = v92;
                }
              }
            }

            else
            {
              v85 = 0;
            }

LABEL_169:
            ++*(result + 56);
            if (*v85 == -4096)
            {
              goto LABEL_96;
            }

LABEL_95:
            --*(result + 60);
            goto LABEL_96;
          }

          if (v50 + ~v86 - *(result + 60) <= v50 >> 3)
          {
            goto LABEL_154;
          }

          *(result + 56) = v86 + 1;
          if (*v85 != -4096)
          {
            goto LABEL_95;
          }

LABEL_96:
          *v85 = v49;
          v85[1] = v49;
          v55 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(result, v49);
          v56 = *(result + 64);
          if (!v56)
          {
            goto LABEL_188;
          }

          v57 = *(result + 48);
          v58 = v56 - 1;
          v59 = (v56 - 1) & ((v49 >> 4) ^ (v49 >> 9));
          v60 = (v57 + 16 * v59);
          v61 = *v60;
          if (*v60 == v49)
          {
            goto LABEL_112;
          }

          v62 = 0;
          v63 = 1;
          while (v61 != -4096)
          {
            if (v62)
            {
              v64 = 0;
            }

            else
            {
              v64 = v61 == -8192;
            }

            if (v64)
            {
              v62 = v60;
            }

            v65 = v59 + v63++;
            v59 = v65 & v58;
            v60 = (v57 + 16 * (v65 & v58));
            v61 = *v60;
            if (*v60 == v49)
            {
              goto LABEL_112;
            }
          }

          if (v62)
          {
            v60 = v62;
          }

          v107 = *(result + 56);
          if (4 * v107 + 4 >= 3 * v56)
          {
LABEL_188:
            v108 = v55;
            llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result + 48, 2 * v56);
            v109 = *(result + 64);
            if (v109)
            {
              goto LABEL_189;
            }

LABEL_205:
            v60 = 0;
            goto LABEL_206;
          }

          if (v56 + ~v107 - *(result + 60) <= v56 >> 3)
          {
            v108 = v55;
            llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result + 48, v56);
            v109 = *(result + 64);
            if (!v109)
            {
              goto LABEL_205;
            }

LABEL_189:
            v110 = *(result + 48);
            v111 = v109 - 1;
            v112 = (v109 - 1) & ((v49 >> 4) ^ (v49 >> 9));
            v60 = (v110 + 16 * v112);
            v113 = *v60;
            if (*v60 == v49)
            {
LABEL_206:
              v55 = v108;
            }

            else
            {
              v114 = 0;
              v115 = 1;
              v55 = v108;
              while (v113 != -4096)
              {
                if (v114)
                {
                  v116 = 0;
                }

                else
                {
                  v116 = v113 == -8192;
                }

                if (v116)
                {
                  v114 = v60;
                }

                v117 = v112 + v115++;
                v112 = v117 & v111;
                v60 = (v110 + 16 * (v117 & v111));
                v113 = *v60;
                if (*v60 == v49)
                {
                  goto LABEL_207;
                }
              }

              if (v114)
              {
                v60 = v114;
              }
            }

LABEL_207:
            ++*(result + 56);
            if (*v60 == -4096)
            {
              goto LABEL_111;
            }

LABEL_110:
            --*(result + 60);
            goto LABEL_111;
          }

          *(result + 56) = v107 + 1;
          if (*v60 != -4096)
          {
            goto LABEL_110;
          }

LABEL_111:
          *v60 = v49;
          v60[1] = 0;
LABEL_112:
          v60[1] = v55;
          if (!v55)
          {
            goto LABEL_57;
          }

LABEL_113:
          if (v55 != v49)
          {
            *(*v30 + 8) = *(*v30 + 8) & 7 | v55;
          }

LABEL_57:
          v30 += 8;
        }
      }

      v26 += 24;
    }

    while (v26 != v27);
  }
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(a1, a2);
    a1[1] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[1] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[1] = v3 + 32;
    }
  }

  return result;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractAttribute::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractAttribute::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t mlir::AttrTypeImmediateSubElementWalker::walk(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*result)(*(result + 8));
  }

  return result;
}

{
  if (a2)
  {
    return (*(result + 16))(*(result + 24));
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = *result;
  v6 = *(a2 + 8);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v8 = v4 - 1;
  v9 = (v4 - 1) & ((v7 >> 31) ^ v7);
  v10 = *result + 24 * v9;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*a2 != *v10 || v6 != v12)
  {
    v16 = 0;
    v17 = 1;
    while (v11 != -4096 || v12 != 0x7FFFFFFF)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == 0x80000000;
      }

      if (v18 && v11 == -8192)
      {
        v16 = v10;
      }

      v20 = v9 + v17++;
      v9 = v20 & v8;
      v10 = v5 + 24 * (v20 & v8);
      v11 = *v10;
      v12 = *(v10 + 8);
      if (*a2 == *v10 && v6 == v12)
      {
        goto LABEL_7;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

LABEL_9:
    v26 = v10;
    v15 = *(result + 2);
    if (4 * v15 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v15 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v15 + 1;
      if (*v10 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v22, v23, &v26);
    a2 = v23;
    a3 = v25;
    result = v22;
    a4 = v24;
    v10 = v26;
    ++*(v22 + 2);
    if (*v10 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*(v10 + 8) == 0x7FFFFFFF)
    {
LABEL_14:
      *v10 = *a2;
      *(v10 + 8) = *(a2 + 8);
      *(v10 + 16) = *a3;
      v5 = *result;
      v4 = *(result + 4);
      v14 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 3);
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
LABEL_15:
  *a4 = v10;
  *(a4 + 8) = v5 + 24 * v4;
  *(a4 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = 0xBF58476D1CE4E5B9 * ((37 * v3) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v5 = v2 - 1;
    v6 = (v2 - 1) & ((v4 >> 31) ^ v4);
    v7 = *a1 + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*a2 == *v7 && v3 == v9)
    {
      return v7 + 16;
    }

    v13 = 0;
    v14 = 1;
    while (v8 != -4096 || v9 != 0x7FFFFFFF)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == 0x80000000;
      }

      if (v15 && v8 == -8192)
      {
        v13 = v7;
      }

      v17 = v6 + v14++;
      v6 = v17 & v5;
      v7 = *a1 + 24 * (v17 & v5);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (*a2 == *v7 && v3 == v9)
      {
        return v7 + 16;
      }
    }

    if (v13)
    {
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v19 = a2;
    v2 *= 2;
    goto LABEL_35;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v19 = a2;
LABEL_35:
    v20 = a1;
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v20, v19, &v21);
    a1 = v20;
    a2 = v19;
    v7 = v21;
    ++*(v20 + 8);
    if (*v7 != -4096)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a1 + 8) = v12 + 1;
  if (*v7 != -4096)
  {
LABEL_13:
    --*(a1 + 12);
    goto LABEL_14;
  }

LABEL_12:
  if (*(v7 + 8) != 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = 1;
  return v7 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a2 + 8);
    v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = (v6 >> 31) ^ v6;
    v8 = v3 - 1;
    v9 = (v3 - 1) & v7;
    v10 = *a1 + 24 * v9;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*a2 == *v10 && v5 == v12)
    {
      result = 1;
      *a3 = v10;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      result = 1;
      while (v11 != -4096 || v12 != 0x7FFFFFFF)
      {
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v12 == 0x80000000;
        }

        if (v17 && v11 == -8192)
        {
          v14 = v10;
        }

        v19 = v9 + v15++;
        v9 = v19 & v8;
        v10 = v4 + 24 * (v19 & v8);
        v11 = *v10;
        v12 = *(v10 + 8);
        if (*a2 == *v10 && v5 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v14)
      {
        v10 = v14;
      }

      *a3 = v10;
    }
  }

  else
  {
    v10 = 0;
    result = 0;
LABEL_9:
    *a3 = v10;
  }

  return result;
}

char *llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    v13 = result;
    if (v12 < 0x18)
    {
      goto LABEL_13;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[24 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result + 24;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v15 - 3) = -4096;
      *v15 = -4096;
      *(v15 - 4) = 0x7FFFFFFF;
      *(v15 + 2) = 0x7FFFFFFF;
      v15 += 48;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_13:
      v17 = &result[24 * v11];
      do
      {
        *v13 = -4096;
        *(v13 + 2) = 0x7FFFFFFF;
        v13 += 24;
      }

      while (v13 != v17);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::moveFromOldBuckets(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  result[1] = 0;
  v3 = *(result + 4);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    v6 = *result;
    if (v5 < 0x18)
    {
      goto LABEL_6;
    }

    v7 = v5 / 0x18 + 1;
    v6 = v4 + 24 * (v7 & 0x1FFFFFFFFFFFFFFELL);
    v8 = v4 + 24;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v8 - 24) = -4096;
      *v8 = -4096;
      *(v8 - 16) = 0x7FFFFFFF;
      *(v8 + 8) = 0x7FFFFFFF;
      v8 += 48;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_6:
      v10 = v4 + 24 * v3;
      do
      {
        *v6 = -4096;
        *(v6 + 8) = 0x7FFFFFFF;
        v6 += 24;
      }

      while (v6 != v10);
    }
  }

  for (; a2 != a3; a2 += 3)
  {
    v21 = *a2;
    v22 = *(a2 + 2);
    if ((*a2 != -4096 || v22 != 0x7FFFFFFF) && (v21 != -8192 || v22 != 0x80000000))
    {
      v25 = 0xBF58476D1CE4E5B9 * ((37 * v22) | (((v21 >> 4) ^ (v21 >> 9)) << 32));
      v26 = (v25 >> 31) ^ v25;
      v27 = *(result + 4) - 1;
      v16 = v27 & v26;
      v17 = *result + 24 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v21 != *v17 || v22 != v19)
      {
        v13 = 0;
        v15 = 1;
        while (v18 != -4096 || v19 != 0x7FFFFFFF)
        {
          if (v13)
          {
            v11 = 0;
          }

          else
          {
            v11 = v19 == 0x80000000;
          }

          if (v11 && v18 == -8192)
          {
            v13 = v17;
          }

          v14 = v16 + v15++;
          v16 = v14 & v27;
          v17 = *result + 24 * (v14 & v27);
          v18 = *v17;
          v19 = *(v17 + 8);
          if (v21 == *v17 && v22 == v19)
          {
            goto LABEL_27;
          }
        }

        if (v13)
        {
          v17 = v13;
        }
      }

LABEL_27:
      *v17 = v21;
      *(v17 + 8) = v22;
      *(v17 + 16) = *(a2 + 4);
      ++*(result + 2);
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8), a2, *(result + 8), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8), a2, (*(result + 8) + 24), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8), a2, *(result + 8), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8), a2, (*(result + 8) + 24), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void updateSubElementImpl<mlir::Attribute,mlir::AttrTypeReplacer>(uint64_t *result, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  if (*(a4 + 1) != 1)
  {
    return;
  }

  v18[7] = v4;
  v18[8] = v5;
  if (result)
  {
    v8 = a3;
    v18[0] = result;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a2 + 6, v18, v18, &v16);
    if (v17)
    {
      v10 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a2, result);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[]((a2 + 6), v18) = v10;
      v11 = a4;
      if (v10)
      {
LABEL_5:
        v12 = v8;
        v13 = v8[2];
        if (v13 >= v8[3])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 4, v13 + 1, 8);
          v11 = a4;
          v12 = v8;
          LODWORD(v13) = v8[2];
        }

        *(*v12 + 8 * v13) = v10;
        ++v12[2];
        if (v10 != result)
        {
          *v11 = 257;
        }

        return;
      }
    }

    else
    {
      v10 = *(v16 + 8);
      v11 = a4;
      if (v10)
      {
        goto LABEL_5;
      }
    }

    *v11 = 0;
    return;
  }

  v14 = a3[2];
  if (v14 >= a3[3])
  {
    v15 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v14 + 1, 8);
    a3 = v15;
    LODWORD(v14) = *(v15 + 8);
  }

  *(*a3 + 8 * v14) = 0;
  ++a3[2];
}

void updateSubElementImpl<mlir::Type,mlir::AttrTypeReplacer>(uint64_t *result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (*(a4 + 1) != 1)
  {
    return;
  }

  v18[7] = v4;
  v18[8] = v5;
  if (result)
  {
    v8 = a3;
    v18[0] = result;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>((a2 + 48), v18, v18, &v16);
    if (v17)
    {
      v10 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a2, result);
      *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a2 + 48, v18) = v10;
      v11 = a4;
      if (v10)
      {
LABEL_5:
        v12 = v8;
        v13 = v8[2];
        if (v13 >= v8[3])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 4, v13 + 1, 8);
          v11 = a4;
          v12 = v8;
          LODWORD(v13) = v8[2];
        }

        *(*v12 + 8 * v13) = v10;
        ++v12[2];
        if (v10 != result)
        {
          *v11 = 257;
        }

        return;
      }
    }

    else
    {
      v10 = *(v16 + 8);
      v11 = a4;
      if (v10)
      {
        goto LABEL_5;
      }
    }

    *v11 = 0;
    return;
  }

  v14 = a3[2];
  if (v14 >= a3[3])
  {
    v15 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v14 + 1, 8);
    a3 = v15;
    LODWORD(v14) = *(v15 + 8);
  }

  *(*a3 + 8 * v14) = 0;
  ++a3[2];
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = (*a1 + 16 * v25);
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = (*a1 + 16 * (v30 & v16));
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (*(v2 + 24))
    {
      return result;
    }

    v3 = *(v2 + 16);
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = *(v2 + 8);
        v11 = *v10;
        *(v2 + 8) = *v10;
        v12 = v2;
        if (v11)
        {
          *(v11 + 16) = v2;
          v3 = *(v2 + 16);
          v12 = *v3;
        }

        *(v10 + 16) = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        *(v2 + 16) = v10;
        v3 = *(v10 + 16);
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      *(v4 + 8) = v3;
      *(v4 + 16) = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = (v4 + 24);
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = v15[1];
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = *(v2 + 16);
    }

    v3[*v3 != v2] = v15;
    v15[1] = v2;
    v15[2] = v3;
    *(v2 + 16) = v15;
    v3 = v15[2];
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void mlir::Block::~Block(ZinIrHalH13g **this)
{
  mlir::Block::clear(this);
  v2 = this[6];
  v3 = this[7];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1AC55A070](*v2, 0x1020C401BF16FDDLL);
      }

      v2 = (v2 + 8);
    }

    while (v2 != v3);
    v2 = this[6];
  }

  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v4 = this[5];
  if (v4 != (this + 4))
  {
    do
    {
      v5 = *(v4 + 1);
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      v7 = v6;
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList((this + 4), v6);
      ZinIrHalH13g::~ZinIrHalH13g(v7);
      v9 = *v8;
      v10 = v8[1];
      *v10 = *v8;
      *(v9 + 8) = v10;
      *v8 = 0;
      v8[1] = 0;
      mlir::Operation::destroy(v7, v11);
      v4 = v5;
    }

    while (v5 != this + 4);
  }
}

ZinIrHalH13g *mlir::Block::clear(mlir::Block *this)
{
  v1 = (this + 32);
  v2 = *(this + 5);
  if (v2 != (this + 32))
  {
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v2);
      mlir::Operation::dropAllReferences(v3);
      v2 = v2[1];
    }

    while (v2 != v1);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    ZinIrHalH13g::~ZinIrHalH13g(result);
    v5 = v4;
    llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v1, v4);
    ZinIrHalH13g::~ZinIrHalH13g(v5);
    v7 = *v6;
    v8 = v6[1];
    *v8 = *v6;
    *(v7 + 8) = v8;
    *v6 = 0;
    v6[1] = 0;
    mlir::Operation::destroy(v5, v9);
  }

  return result;
}

uint64_t mlir::Block::getParentOp(mlir::Block *this)
{
  if ((*(this + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    return *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::Block::isEntryBlock(mlir::Block *this)
{
  v1 = *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v1)
  {
    v2 = (v1 - 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 == this;
}

uint64_t *mlir::Block::moveBefore(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = result + 1;
  v4 = result[2];
  if (result + 1 != a3 && v4 != a3 && v4 != a3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(a2, result[3] & 0xFFFFFFFFFFFFFFF8, v3, v4);
    if (v4 != v3)
    {
      v8 = *v4;
      v9 = *v3;
      *(v9 + 8) = v4;
      *v4 = v9;
      v10 = *a3;
      *(v8 + 8) = a3;
      *v3 = v10;
      *(v10 + 8) = v3;
      *a3 = v8;
    }
  }

  return result;
}

void mlir::Block::erase(mlir::Block *this)
{
  v1 = this + 8;
  if (!this)
  {
    v1 = 0;
  }

  v2 = (v1 - 8);
  if (this)
  {
    v3 = (v1 - 8);
  }

  else
  {
    v3 = 0;
  }

  llvm::ilist_traits<mlir::Block>::removeNodeFromList(*(this + 3) & 0xFFFFFFFFFFFFFFF8, v3);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v5 = v4;
  *(v4 + 8) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  mlir::Block::~Block(v2);

  JUMPOUT(0x1AC55A070);
}

Operation *mlir::Block::findAncestorOpInBlock(mlir::Block *this, Operation *a2)
{
  while (1)
  {
    v2 = *(a2 + 2);
    if (v2 == this)
    {
      return a2;
    }

    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 3) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a2 = *(v3 + 16);
    if (!a2)
    {
      return a2;
    }
  }

  return 0;
}

void mlir::Block::dropAllReferences(uint64_t this)
{
  v1 = (this + 32);
  v2 = *(this + 40);
  if (v2 != (this + 32))
  {
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v2);
      mlir::Operation::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != v1);
  }
}

uint64_t **mlir::Block::dropAllDefinedValueUses(uint64_t **this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  while (v2 != v3)
  {
    v4 = *v2;
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      v6 = v5[1];
      if (v6)
      {
        v7 = *v5;
        *v6 = *v5;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }

      *v5 = 0;
      v5[1] = 0;
      v5[3] = 0;
    }

    ++v2;
  }

  v8 = this + 4;
  v9 = this[5];
  if (v9 != (this + 4))
  {
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v9);
      this = mlir::Operation::dropAllDefinedValueUses(v10);
      v9 = v9[1];
    }

    while (v9 != v8);
  }

  while (1)
  {
    v11 = *v1;
    if (!*v1)
    {
      break;
    }

    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      *v12 = *v11;
      if (v13)
      {
        *(v13 + 8) = v12;
      }
    }

    *v11 = 0;
    v11[1] = 0;
    v11[3] = 0;
  }

  return this;
}

void mlir::Block::recomputeOpOrder(mlir::Block *this)
{
  *(this + 3) |= 4uLL;
  v1 = (this + 32);
  v2 = *(this + 5);
  if (v2 != (this + 32))
  {
    v3 = 5;
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v2);
      *(v4 + 32) = v3;
      v2 = *(v2 + 1);
      v3 += 5;
    }

    while (v2 != v1);
  }
}

uint64_t mlir::Block::addArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[6];
  v8 = a1[7] - v5;
  v6 = a3 + (v8 >> 3);
  if (v6 > (a1[8] - v5) >> 3)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (a3 && a5)
  {
    mlir::TypeRange::dereference_iterator(a2, 0);
    operator new();
  }

  return a1[6] + v8;
}

void *mlir::Block::eraseArgument(mlir::Block *this, unsigned int a2)
{
  v2 = a2;
  v4 = a2;
  v5 = *(this + 6);
  result = *(v5 + 8 * a2);
  if (result)
  {
    result = MEMORY[0x1AC55A070](result, 0x1020C401BF16FDDLL);
    v5 = *(this + 6);
  }

  v7 = 8 * v4;
  v8 = v5 + 8 * v4;
  v9 = *(this + 7);
  v10 = v9 - (v8 + 8);
  if (v9 != v8 + 8)
  {
    result = memmove(v8, (v8 + 8), v9 - (v8 + 8));
    v5 = *(this + 6);
  }

  *(this + 7) = v8 + v10;
  v11 = (v7 + v5);
  if ((v8 + v10) != v11)
  {
    do
    {
      v12 = *v11++;
      v13 = v2++;
      *(v12 + 24) = v13;
    }

    while (v11 != (v8 + v10));
  }

  return result;
}

uint64_t mlir::Block::eraseArguments(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6 != v7)
  {
    while (1)
    {
      result = a2(a3, *v6);
      if (result)
      {
        break;
      }

      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(v5 + 56);
  }

  if (v6 != v7)
  {
    v8 = v6 + 1;
    v9 = *(*v6 + 24);
    result = MEMORY[0x1AC55A070]();
    v10 = *(v5 + 56);
    if (v10 == v6 + 1)
    {
      if (v6 == v10)
      {
        return result;
      }

LABEL_16:
      *(v5 + 56) = v6;
      return result;
    }

    do
    {
      result = a2(a3, *v8);
      if (result)
      {
        result = *v8;
        if (*v8)
        {
          result = MEMORY[0x1AC55A070](result, 0x1020C401BF16FDDLL);
        }
      }

      else
      {
        *(*v8 + 24) = v9;
        *v6++ = *v8;
        LODWORD(v9) = v9 + 1;
      }

      ++v8;
    }

    while (v8 != v10);
    if (v6 != *(v5 + 56))
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t mlir::Block::getSinglePredecessor(mlir::Block *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*v1)
  {
    return 0;
  }

  return *(v1[2] + 16);
}

void *mlir::SuccessorRange::SuccessorRange(void *this, mlir::Block *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 4);
  if (v2 != (a2 + 32))
  {
    v3 = *(a2 + 3) & 0xFFFFFFFFFFFFFFF8;
    v4 = *(v3 + 8);
    if (v4 == v3 || *(v4 + 8) != v3)
    {
      v5 = this;
      ZinIrHalH13g::~ZinIrHalH13g(v2);
      v7 = v6;
      this = v5;
      v8 = *(v7 + 40);
      v5[1] = v8;
      if (v8)
      {
        *v5 = v7 + 16 * ((*(v7 + 44) >> 23) & 1) + ((*(v7 + 44) >> 21) & 0x7F8) + 64;
      }
    }
  }

  return this;
}

unint64_t *mlir::SuccessorRange::SuccessorRange(unint64_t *this, Operation *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 10);
  this[1] = v2;
  if (v2)
  {
    *this = (a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

uint64_t *mlir::BlockRange::BlockRange(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    *result = a2 | 4;
  }

  return result;
}

unint64_t *mlir::BlockRange::BlockRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFFBLL;
  result[1] = a3;
  return result;
}

uint64_t mlir::BlockRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) == 0)
  {
    v2 = 0;
  }

  v3 = v2 + 8 * a2;
  if (!(((a1 & 4) >> 2) | ((a1 & 0xFFFFFFFFFFFFFFF8) == 0)))
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24;
  }

  return *v3;
}

uint64_t mlir::Builder::getIntegerType(uint64_t **this, uint64_t a2, int a3)
{
  v3 = *this;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return mlir::IntegerType::get(v3, a2, v4);
}

uint64_t mlir::Builder::getNamedAttr(mlir::StringAttr **a1, size_t a2, size_t a3, uint64_t a4)
{
  v8 = 261;
  v7[0] = a2;
  v7[1] = a3;
  v5 = mlir::StringAttr::get(*a1, v7);
  ZinMirCacheTensors::ZinMirCacheTensors(&v9, v5, a4);
  return v9;
}

uint64_t mlir::Builder::getIndexAttr(mlir::IndexType **this, mlir::MLIRContext *a2)
{
  v3 = mlir::IndexType::get(*this, a2);
  v7 = 64;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI64IntegerAttr(uint64_t **this, uint64_t a2)
{
  v3 = mlir::IntegerType::get(*this, 0x40u, 0);
  v7 = 64;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getI32VectorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = mlir::IntegerType::get(*a1, 0x20u, 0);
  v6 = mlir::VectorType::get(&v21, 1uLL, v5, 0, 0);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *v6;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = v7;
    v20 = v6;
    mlir::Builder::getI32VectorAttr();
    v6 = v20;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v17 = v11[1];
    return mlir::DenseElementsAttr::getFromRawBuffer(v6, v17, a2, 4 * a3);
  }

LABEL_14:
  v17 = 0;
  return mlir::DenseElementsAttr::getFromRawBuffer(v6, v17, a2, 4 * a3);
}

uint64_t mlir::Builder::getI32TensorAttr(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v5 = mlir::IntegerType::get(*a1, 0x20u, 0);
  v10 = mlir::RankedTensorType::get(&v9, 1, v5, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v10);
  return mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, a2, 4 * a3);
}

uint64_t mlir::Builder::getI32IntegerAttr(uint64_t **this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 0x20u, 0);
  v7 = 32;
  v6 = a2;
  result = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      v5 = result;
      MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
      return v5;
    }
  }

  return result;
}

uint64_t mlir::Builder::getIntegerAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  isIndex = mlir::Type::isIndex(&v13);
  v5 = v13;
  if (isIndex)
  {
    v12 = 64;
    v11 = a3;
    result = mlir::IntegerAttr::get(v13, &v11);
    if (v12 < 0x41)
    {
      return result;
    }

    goto LABEL_10;
  }

  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v13);
  isSignedInteger = mlir::Type::isSignedInteger(&v13);
  v12 = IntOrFloatBitWidth;
  if (IntOrFloatBitWidth > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a3, isSignedInteger);
  }

  v9 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
  if (!IntOrFloatBitWidth)
  {
    v9 = 0;
  }

  v11 = v9 & a3;
  result = mlir::IntegerAttr::get(v5, &v11);
  if (v12 >= 0x41)
  {
LABEL_10:
    if (v11)
    {
      v10 = result;
      MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
      return v10;
    }
  }

  return result;
}

llvm::APFloatBase *mlir::Builder::getF32FloatAttr(mlir::Float32Type **this, float a2, mlir::MLIRContext *a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = mlir::Float32Type::get(*this, a3);
  v8 = llvm::detail::IEEEFloat::IEEEFloat(v13, a2, v5, v6, v7);
  v9 = llvm::APFloatBase::IEEEsingle(v8);
  llvm::APFloat::Storage::Storage(v15, v13, v9);
  llvm::detail::IEEEFloat::~IEEEFloat(v13);
  v10 = mlir::FloatAttr::get(v4, v14);
  v11 = v15[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
  }

  return v10;
}

llvm::APFloatBase *mlir::Builder::getF16FloatAttr(mlir::Float16Type **this, float a2, mlir::MLIRContext *a3)
{
  v4 = mlir::Float16Type::get(*this, a3);

  return mlir::FloatAttr::get(v4, a2);
}

uint64_t mlir::Builder::getI64ArrayAttr(uint64_t **a1, uint64_t *a2, unint64_t a3)
{
  v22[8] = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v14 = 0;
      v15 = v22;
      goto LABEL_11;
    }

    v6 = 0;
    v7 = v22;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, a3, 8);
    v6 = v21;
    v7 = v20;
  }

  v8 = 8 * a3;
  v9 = &v7[v6];
  do
  {
    v10 = *a2;
    v11 = mlir::IntegerType::get(*a1, 0x40u, 0);
    v19 = 64;
    v18 = v10;
    v12 = mlir::IntegerAttr::get(v11, &v18);
    if (v19 >= 0x41 && v18)
    {
      v13 = v12;
      MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
      v12 = v13;
    }

    *v9++ = v12;
    ++a2;
    v8 -= 8;
  }

  while (v8);
  v14 = v21;
  v15 = v20;
LABEL_11:
  LODWORD(v21) = v14 + a3;
  result = mlir::ArrayAttr::get(*a1, v15, (v14 + a3));
  if (v20 != v22)
  {
    v17 = result;
    free(v20);
    return v17;
  }

  return result;
}

uint64_t mlir::Builder::getStrArrayAttr(mlir::StringAttr **a1, size_t *a2, unint64_t a3)
{
  v21[8] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x800000000;
  if (a3 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, a3, 8);
    v6 = v20;
    v7 = v19;
    goto LABEL_5;
  }

  if (a3)
  {
    v6 = 0;
    v7 = v21;
LABEL_5:
    v8 = &a2[2 * a3];
    v9 = &v7[v6];
    do
    {
      v10 = *a2;
      v11 = a2[1];
      a2 += 2;
      v12 = *a1;
      v18 = 261;
      v17[0] = v10;
      v17[1] = v11;
      *v9++ = mlir::StringAttr::get(v12, v17);
    }

    while (a2 != v8);
    v13 = v20;
    v14 = v19;
    goto LABEL_8;
  }

  v13 = 0;
  v14 = v21;
LABEL_8:
  LODWORD(v20) = v13 + a3;
  result = mlir::ArrayAttr::get(*a1, v14, (v13 + a3));
  if (v19 != v21)
  {
    v16 = result;
    free(v19);
    return v16;
  }

  return result;
}

void *mlir::Builder::getZeroAttr(mlir::IndexType **a1, mlir::MLIRContext *a2, __n128 a3)
{
  v3 = *a2;
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    result = mlir::FloatAttr::get(a2, 0.0);
    if (!result)
    {
      return result;
    }

    v22 = *result;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        return result;
      }
    }

    else
    {
      v70 = result;
      mlir::Builder::getZeroAttr();
      result = v70;
      v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        return result;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
  }

  else
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v32 = a2;
        v76[0] = a2;
        LODWORD(v78) = mlir::IntegerType::getWidth(v76);
        if (v78 > 0x40)
        {
          llvm::APInt::initSlowCase(&v77, 0, 0);
        }

        v77 = 0;
        result = mlir::IntegerAttr::get(v32, &v77);
        if (!result)
        {
          goto LABEL_107;
        }

        v54 = *result;
        {
          v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v56 = *(v54 + 8);
          v57 = *(v54 + 16);
          if (v57)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v72 = result;
          mlir::Builder::getZeroAttr();
          result = v72;
          v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v56 = *(v54 + 8);
          v57 = *(v54 + 16);
          if (v57)
          {
LABEL_92:
            v58 = v56;
            v59 = v57;
            do
            {
              v60 = v59 >> 1;
              v61 = &v58[2 * (v59 >> 1)];
              v63 = *v61;
              v62 = v61 + 2;
              v59 += ~(v59 >> 1);
              if (v63 < v55)
              {
                v58 = v62;
              }

              else
              {
                v59 = v60;
              }
            }

            while (v59);
LABEL_105:
            if (v58 != &v56[2 * v57] && *v58 == v55)
            {
              if (v78 < 0x41)
              {
                return result;
              }

              goto LABEL_108;
            }

LABEL_107:
            if (v78 < 0x41)
            {
              return result;
            }

LABEL_108:
            if (v77)
            {
              v73 = result;
              MEMORY[0x1AC55A040](v77, 0x1000C8000313F17);
              return v73;
            }

            return result;
          }
        }

        v57 = 0;
        v58 = v56;
        goto LABEL_105;
      }

      if (v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        return 0;
      }

      {
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v3 + 8);
        v47 = *(v3 + 16);
        if (v47)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v69 = a1;
        v74 = a2;
        mlir::Builder::getZeroAttr();
        a1 = v69;
        a2 = v74;
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v3 + 8);
        v47 = *(v3 + 16);
        if (v47)
        {
LABEL_82:
          v48 = v46;
          v49 = v47;
          do
          {
            v50 = v49 >> 1;
            v51 = &v48[2 * (v49 >> 1)];
            v53 = *v51;
            v52 = v51 + 2;
            v49 += ~(v49 >> 1);
            if (v53 < v45)
            {
              v48 = v52;
            }

            else
            {
              v49 = v50;
            }
          }

          while (v49);
LABEL_114:
          if (v48 != &v46[2 * v47] && *v48 == v45)
          {
            v64 = a1;
            v65 = v48[1];
          }

          else
          {
            v64 = a1;
            v65 = 0;
          }

          v77 = a2;
          v78 = v65;
          isSplat = mlir::ElementsAttr::isSplat(&v77);
          result = mlir::Builder::getZeroAttr(v64, isSplat, v67);
          v76[0] = result;
          v76[1] = v68;
          if (result)
          {
            v75 = mlir::DenseElementsAttr::get(v77, v78, v76, 1uLL);
            return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v75);
          }

          return result;
        }
      }

      v47 = 0;
      v48 = v46;
      goto LABEL_114;
    }

    v33 = mlir::IndexType::get(*a1, a2);
    LODWORD(v78) = 64;
    v77 = 0;
    result = mlir::IntegerAttr::get(v33, &v77);
    if (v78 >= 0x41 && v77)
    {
      v34 = result;
      MEMORY[0x1AC55A040](v77, 0x1000C8000313F17);
      result = v34;
    }

    if (result)
    {
      v35 = *result;
      {
        v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        if (!v38)
        {
          return result;
        }
      }

      else
      {
        v71 = result;
        mlir::Builder::getZeroAttr();
        result = v71;
        v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        if (!v38)
        {
          return result;
        }
      }

      v39 = v37;
      v40 = v38;
      do
      {
        v41 = v40 >> 1;
        v42 = &v39[2 * (v40 >> 1)];
        v44 = *v42;
        v43 = v42 + 2;
        v40 += ~(v40 >> 1);
        if (v44 < v36)
        {
          v39 = v43;
        }

        else
        {
          v40 = v41;
        }
      }

      while (v40);
    }
  }

  return result;
}

uint64_t mlir::Builder::getConstantAffineMap(mlir::MLIRContext **this, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(a2, *this, a3);

  return mlir::AffineMap::get(0, 0, AffineConstantExpr);
}

uint64_t mlir::Builder::getSymbolIdentityMap(mlir::MLIRContext **this, uint64_t a2, mlir::MLIRContext *a3)
{
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, *this, a3);

  return mlir::AffineMap::get(0, 1, AffineSymbolExpr);
}

mlir::Operation *mlir::OpBuilder::insert(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v3 + 32, a2);
    ZinIrHalH13g::~ZinIrHalH13g(a2);
    v6 = *v4;
    *v7 = *v4;
    v7[1] = v4;
    *(v6 + 8) = v7;
    *v4 = v7;
    ZinIrHalH13g::~ZinIrHalH13g(a2);
    v8 = *(this + 1);
    if (v8)
    {
      (*(*v8 + 16))(v8, a2, 0, 0);
    }
  }

  return a2;
}

ZinIrHalH13g *mlir::OpBuilder::create(mlir::OpBuilder *this, const mlir::OperationState *a2)
{
  v3 = mlir::Operation::create(a2, a2);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v4 + 32, v3);
    ZinIrHalH13g::~ZinIrHalH13g(v3);
    v6 = *v5;
    *v7 = *v5;
    v7[1] = v5;
    *(v6 + 8) = v7;
    *v5 = v7;
    ZinIrHalH13g::~ZinIrHalH13g(v3);
    v8 = *(this + 1);
    if (v8)
    {
      (*(*v8 + 16))(v8, v3, 0, 0);
    }
  }

  return v3;
}

ZinIrHalH13g *mlir::OpBuilder::create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = a3;
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  mlir::OperationState::OperationState(v31, a2, AttrData, v21, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14);
  v23 = mlir::Operation::create(v31, v22);
  v24 = a1[2];
  if (v24)
  {
    v25 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v24 + 32, v23);
    ZinIrHalH13g::~ZinIrHalH13g(v23);
    v26 = *v25;
    *v27 = *v25;
    v27[1] = v25;
    *(v26 + 8) = v27;
    *v25 = v27;
    ZinIrHalH13g::~ZinIrHalH13g(v23);
    v28 = a1[1];
    if (v28)
    {
      (*(*v28 + 16))(v28, v23, 0, 0);
    }
  }

  mlir::OperationState::~OperationState(v31);
  return v23;
}

uint64_t mlir::OpBuilder::tryFold(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v5;
  if (a3[3] < v5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v5, 8);
  }

  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v7 = 0;
    a3[2] = 0;
  }

  else
  {
    v11 = v13;
    v12 = 0x400000000;
    if (mlir::Operation::fold(a2))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      a3[2] = 0;
    }

    if (v11 != v13)
    {
      free(v11);
    }
  }

  return v7;
}

unsigned int *mlir::OpBuilder::clone(uint64_t **this, mlir::Operation *a2, mlir::IRMapping *a3)
{
  v6 = mlir::Operation::CloneOptions::all(this);
  v7 = mlir::Operation::clone(a2, a3, v6);
  v8 = this[2];
  if (v8)
  {
    v9 = this[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList((v8 + 4), v7);
    ZinIrHalH13g::~ZinIrHalH13g(v7);
    v10 = *v9;
    *v11 = *v9;
    v11[1] = v9;
    *(v10 + 8) = v11;
    *v9 = v11;
    ZinIrHalH13g::~ZinIrHalH13g(v7);
    v12 = this[1];
    if (v12)
    {
      (*(*v12 + 16))(v12, v7, 0, 0);
    }
  }

  v13 = this[1];
  if (v13)
  {
    v14 = v7[11];
    if ((v14 & 0x7FFFFF) != 0)
    {
      v15 = ((&v7[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v7[10];
      v16 = v15 + 24 * (v14 & 0x7FFFFF);
      i = *(v15 + 8);
      if (i != v15)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v15 += 24;
        if (v15 == v16)
        {
          break;
        }

        for (i = *(v15 + 8); i != v15; i = *(i + 8))
        {
LABEL_9:
          if (i)
          {
            v18 = i - 8;
          }

          else
          {
            v18 = 0;
          }

          (*(*v13 + 24))(v13, v18, 0, 0);
        }
      }

      v19 = v7[11];
      v29 = this;
      if ((v19 & 0x7FFFFF) != 0)
      {
        v20 = ((&v7[4 * ((v19 >> 23) & 1) + 17] + ((v19 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v7[10];
        v21 = v20 + 24 * (v19 & 0x7FFFFF);
        do
        {
          for (j = *(v20 + 8); j != v20; j = *(j + 8))
          {
            v23 = j - 8;
            if (!j)
            {
              v23 = 0;
            }

            v24 = *(v23 + 40);
            v25 = (v23 + 32);
            if (v24 != (v23 + 32))
            {
              do
              {
                v26 = *(v24 + 1);
                ZinIrHalH13g::~ZinIrHalH13g(v24);
                mlir::detail::walk<mlir::ForwardIterator>(v27, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>, &v29, 0);
                v24 = v26;
              }

              while (v26 != v25);
            }
          }

          v20 += 24;
        }

        while (v20 != v21);
      }
    }
  }

  return v7;
}

void mlir::OpBuilder::clone(uint64_t **this, mlir::Operation *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  mlir::OpBuilder::clone(this, a2, v2);
  llvm::deallocate_buffer(v7, (16 * v9));
}

void mlir::OpBuilder::cloneRegionBefore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  mlir::Region::cloneInto(a2, a3, a4, a5);
  if (!*(a1 + 8))
  {
    return;
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a5 + 40);
  if (v11)
  {
    v12 = *(a5 + 24);
    v13 = ((v10 >> 4) ^ (v10 >> 9)) & (v11 - 1);
    v14 = *(v12 + 16 * v13);
    if (v14 == v10)
    {
LABEL_7:
      if (v13 != v11)
      {
        v15 = *(v12 + 16 * v13 + 8) + 8;
        if (v15 == a4)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v21 = 1;
      while (v14 != -4096)
      {
        v22 = v13 + v21++;
        v13 = v22 & (v11 - 1);
        v14 = *(v12 + 16 * v13);
        if (v14 == v10)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v15 = 8;
  if (a4 == 8)
  {
    return;
  }

  do
  {
LABEL_13:
    if (v15)
    {
      v16 = v15 - 8;
    }

    else
    {
      v16 = 0;
    }

    (*(**(a1 + 8) + 24))(*(a1 + 8), v16, 0, 0);
    v23 = a1;
    v17 = *(v16 + 40);
    v18 = (v16 + 32);
    if (v17 != v18)
    {
      do
      {
        v19 = *(v17 + 1);
        ZinIrHalH13g::~ZinIrHalH13g(v17);
        mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>, &v23, 0);
        v17 = v19;
      }

      while (v19 != v18);
    }

    v15 = *(v15 + 8);
  }

  while (v15 != a4);
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::getElementType(uint64_t a1, uint64_t a2)
{
  v4[0] = (*(a2 + 16))(a2, a1);
  v4[1] = v2;
  return mlir::ElementsAttr::isSplat(v4);
}

uint64_t mlir::ElementsAttr::getNumElements(uint64_t a1, uint64_t a2)
{
  v6[0] = (*(a2 + 16))(a2, a1);
  v6[1] = v2;
  Shape = mlir::ShapedType::getShape(v6);
  return mlir::ShapedType::getNumElements(Shape, v4);
}

uint64_t mlir::ElementsAttr::isValidIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  mlir::ShapedType::getShape(v12);
  if (!v6 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v6 == a4)
  {
    Shape = mlir::ShapedType::getShape(v12);
    if (a4 << 32)
    {
      v8 = 0;
      v9 = a4;
      while (1)
      {
        v10 = *(a3 + (v8 >> 29));
        if (v10 < 0 || v10 >= *(Shape + 8 * (v8 >> 32)))
        {
          break;
        }

        v8 += 0x100000000;
        if (!--v9)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

{
  v13[0] = (*(a2 + 16))(a2, a1);
  v13[1] = v6;
  mlir::ShapedType::getShape(v13);
  if (!v7 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v7 == a4)
  {
    Shape = mlir::ShapedType::getShape(v13);
    if (a4 << 32)
    {
      v9 = 0;
      v10 = a4;
      while (1)
      {
        v11 = *(a3 + (v9 >> 29));
        if (v11 < 0 || v11 >= *(Shape + 8 * (v9 >> 32)))
        {
          break;
        }

        v9 += 0x100000000;
        if (!--v10)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}