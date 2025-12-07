uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, llvm::hashing::detail **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = result;
  v6 = *(result + 16);
  if (!v6)
  {
    v20 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v7 = *result;
  result = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = 0;
  v9 = v6 - 1;
  v10 = *v3;
  v11 = v3[1];
  for (i = 1; ; ++i)
  {
    v13 = result & v9;
    v14 = (v7 + 16 * (result & v9));
    v15 = *v14;
    if (*v14 == -2)
    {
      if (v10 == -2)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    if (v15 == -1)
    {
      break;
    }

    if (v11 == v14[1])
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v16 = v8;
      v24 = a3;
      v25 = v3;
      v17 = v10;
      v18 = i;
      result = memcmp(v10, *v14, v11);
      i = v18;
      v10 = v17;
      a3 = v24;
      v3 = v25;
      v8 = v16;
      if (!result)
      {
        goto LABEL_23;
      }
    }

LABEL_10:
    if (v8)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 + 2 == 0;
    }

    if (v19)
    {
      v8 = (v7 + 16 * v13);
    }

    result = i + v13;
  }

  if (v10 == -1)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (v8)
  {
    v14 = v8;
  }

  v20 = *(v4 + 16);
LABEL_17:
  v26 = v14;
  v21 = *(v4 + 8);
  if (4 * v21 + 4 >= 3 * v20)
  {
    v20 *= 2;
    goto LABEL_26;
  }

  if (v20 + ~v21 - *(v4 + 12) <= v20 >> 3)
  {
LABEL_26:
    llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(v4, v20);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v4, v3, &v26);
    v21 = *(v4 + 8);
    v14 = v26;
  }

  *(v4 + 8) = v21 + 1;
  if (*v14 != -1)
  {
    --*(v4 + 12);
  }

  *v14 = *v3;
  v22 = 1;
LABEL_24:
  v23 = *v4 + 16 * *(v4 + 16);
  *a3 = v14;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZNS1_12_GLOBAL__N_19MPSToANEC27assignANECProcedureNameAttrEvE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESP_E4typeES4_OT1_EUlS4_E_EES2_lS4_(const char ***a1, mlir::Block **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2 && *(a2[6] + 2) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v5 = *a1;
    v25 = a2;
    Context = mlir::Attribute::getContext((a2 + 3));
    SymbolName = mlir::SymbolTable::getSymbolName(a2, v7);
    AttrData = mlir::OpaqueAttr::getAttrData(&SymbolName);
    v23 = 261;
    SymbolName = AttrData;
    v20 = v9;
    v24 = mlir::StringAttr::get(Context, &SymbolName);
    v18 = 0;
    SymbolName = *v5;
    v20 = &v25;
    v21 = &v24;
    v22 = &v18;
    p_SymbolName = &SymbolName;
    mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_12_GLOBAL__N_19MPSToANEC27assignANECProcedureNameAttrEvENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &p_SymbolName, 1);
    if (v18 == 1)
    {
      return 1;
    }

    else
    {
      SymbolName = "Compilation failure: the input is not full ANE resident";
      v23 = 259;
      mlir::Operation::emitError(v25, &SymbolName, v27);
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }

      if (v35)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v10 = __p;
        if (__p)
        {
          v11 = v33;
          v12 = __p;
          if (v33 != __p)
          {
            do
            {
              v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v33 = v10;
          operator delete(v12);
        }

        v13 = v30;
        if (v30)
        {
          v14 = v31;
          v15 = v30;
          if (v31 != v30)
          {
            do
            {
              v17 = *--v14;
              v16 = v17;
              *v14 = 0;
              if (v17)
              {
                operator delete[](v16);
              }
            }

            while (v14 != v13);
            v15 = v30;
          }

          v31 = v13;
          operator delete(v15);
        }

        if (v28 != &v29)
        {
          free(v28);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_12_GLOBAL__N_19MPSToANEC27assignANECProcedureNameAttrEvENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v4 = *a1;
    v25 = a2;
    Callee = mlir::placement::RegionCall::getCallee(&v25);
    v7 = v6;
    v8 = **v4;
    Context = mlir::Attribute::getContext((v8 + 6));
    v28 = 261;
    v26 = Callee;
    v27 = v7;
    v10 = mlir::StringAttr::get(Context, &v26);
    v11 = mlir::SymbolTable::lookupSymbolIn(v8, v10);
    if (v11)
    {
      v12 = **(v4 + 16);
      v13 = v11;
      v14 = mlir::Attribute::getContext((v11 + 24));
      v28 = 261;
      v26 = "procedure_name";
      v27 = 14;
      v15 = mlir::StringAttr::get(v14, &v26);
      mlir::Operation::setAttr(v13, v15, v12);
      result = 0;
      ++**(v4 + 24);
    }

    else
    {
      v16 = **(v4 + 8);
      v26 = "Error: can not find ANE region";
      v28 = 259;
      mlir::Operation::emitError(v16, &v26, v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v35;
          v19 = __p;
          if (v35 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v35 = v17;
          operator delete(v19);
        }

        v20 = v32;
        if (v32)
        {
          v21 = v33;
          v22 = v32;
          if (v33 != v32)
          {
            do
            {
              v24 = *--v21;
              v23 = v24;
              *v21 = 0;
              if (v24)
              {
                operator delete[](v23);
              }
            }

            while (v21 != v20);
            v22 = v32;
          }

          v33 = v20;
          operator delete(v22);
        }

        if (v30 != &v31)
        {
          free(v30);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -2;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 2);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 3) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 2);
    v8 = v18;
  }

  *(result + 2) = v11 + 1;
  if (*v8 != -1)
  {
    --*(result + 3);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 4);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

char *llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = result;
      memset(result, 255, 8 * v10);
      result = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        v17 = *v14;
        if (*v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = v13 & (((0xBF58476D1CE4E5B9 * v17) >> 31) ^ (484763065 * v17));
          v16 = &result[8 * v18];
          v19 = *v16;
          if (v17 != *v16)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &result[8 * (v23 & v13)];
              v19 = *v16;
              if (v17 == *v16)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 8);
      }

      while (v14 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {

    return memset(result, 255, 8 * v15);
  }

  return result;
}

uint64_t mlir::MPSPlacementBase<mlir::anonymous namespace::MPSPlacement>::MPSPlacementBase(uint64_t a1)
{
  v10[20] = *MEMORY[0x1E69E9840];
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F5B0CDD8;
  v2 = a1 + 344;
  *&v8 = "The family to target for ANEC region formation (default A12).";
  *(&v8 + 1) = 61;
  v6 = 0;
  v7 = &v6;
  *&v9 = v10;
  *(&v9 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v9, v10, 8uLL, 40);
  v3 = DWORD2(v9);
  v4 = v9 + 40 * DWORD2(v9);
  *v4 = "A12";
  *(v4 + 8) = 3;
  *(v4 + 16) = 0;
  *(v4 + 24) = "A12 family";
  *(v4 + 32) = 10;
  *(v4 + 40) = "A13";
  *(v4 + 48) = 3;
  *(v4 + 56) = 1;
  *(v4 + 64) = "A13 family";
  *(v4 + 72) = 10;
  *(v4 + 80) = "A14";
  *(v4 + 88) = 3;
  *(v4 + 96) = 2;
  *(v4 + 104) = "A14 family";
  *(v4 + 112) = 10;
  *(v4 + 120) = "A15";
  *(v4 + 128) = 3;
  *(v4 + 136) = 3;
  *(v4 + 144) = "A15 family";
  *(v4 + 152) = 10;
  *(v4 + 160) = "A16";
  *(v4 + 168) = 3;
  *(v4 + 176) = 4;
  *(v4 + 184) = "A16 family";
  *(v4 + 192) = 10;
  *(v4 + 200) = "A17";
  *(v4 + 208) = 3;
  *(v4 + 216) = 5;
  *(v4 + 224) = "A17 family";
  *(v4 + 232) = 10;
  *(v4 + 240) = "A18";
  *(v4 + 248) = 3;
  *(v4 + 256) = 6;
  *(v4 + 264) = "A18 family";
  *(v4 + 272) = 10;
  *(v4 + 280) = "A11Legacy";
  *(v4 + 288) = 9;
  *(v4 + 296) = 7;
  *(v4 + 304) = "A11 Legacy family";
  *(v4 + 312) = 17;
  DWORD2(v9) = v3 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(v2, (a1 + 152), "target-family", 13, &v8, &v7, &v9);
  *(a1 + 344) = &unk_1F5B00EC0;
  *(a1 + 944) = &unk_1F5B00F40;
  if (v9 != v10)
  {
    free(v9);
  }

  *&v9 = "Insert instrumentation to enable performance recording.";
  *(&v9 + 1) = 55;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 960, (a1 + 152), "insert-instrumentation", 22, &v9, &v8);
  *(a1 + 960) = &unk_1F5AFB130;
  *(a1 + 1152) = &unk_1F5AFB1B0;
  *&v9 = "If true the GPU is the host device, otherwise it is the CPU. Defaults to false.";
  *(&v9 + 1) = 79;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1168, (a1 + 152), "gpu-host", 8, &v9, &v8);
  *(a1 + 1168) = &unk_1F5AFB130;
  *(a1 + 1360) = &unk_1F5AFB1B0;
  *&v9 = "The number of gpu cores.";
  *(&v9 + 1) = 24;
  LODWORD(v7) = 1;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1376, (a1 + 152), "gpu-core-count", 14, &v9, &v8);
  *(a1 + 1376) = &unk_1F5AFEE68;
  *(a1 + 1568) = &unk_1F5AFEEE8;
  *&v9 = "Number of thresholds for TA algorithm. Generally expect to use the default value.";
  *(&v9 + 1) = 81;
  v6 = 1;
  LODWORD(v7) = 25;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(a1 + 1584, (a1 + 152), "num-thresholds", 14, &v9, &v8, &v6);
  *(a1 + 1584) = &unk_1F5AFEE68;
  *(a1 + 1776) = &unk_1F5AFEEE8;
  *&v9 = "Number of steps for a single threshold for TA algorithm. Generally expect to use the default value.";
  *(&v9 + 1) = 99;
  v6 = 1;
  LODWORD(v7) = 10;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(a1 + 1792, (a1 + 152), "num-steps", 9, &v9, &v8, &v6);
  *(a1 + 1792) = &unk_1F5AFEE68;
  *(a1 + 1984) = &unk_1F5AFEEE8;
  *&v9 = "Number of steps required for convergence. Generally expect to use the default value.";
  *(&v9 + 1) = 84;
  v6 = 1;
  LODWORD(v7) = 10;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(a1 + 2000, (a1 + 152), "convergence-threshold", 21, &v9, &v8, &v6);
  *(a1 + 2000) = &unk_1F5AFEE68;
  *(a1 + 2192) = &unk_1F5AFEEE8;
  *&v9 = "The seed to use for the RNG. This will ensure that the random numbers can be generated deterministically.";
  *(&v9 + 1) = 105;
  v6 = 1;
  LODWORD(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(a1 + 2208, (a1 + 152), "rng-seed", 8, &v9, &v8, &v6);
  *(a1 + 2208) = &unk_1F5B0CAD0;
  *(a1 + 2408) = &unk_1F5B0CB50;
  return a1;
}

void mlir::anonymous namespace::MPSPlacement::~MPSPlacement(mlir::_anonymous_namespace_::MPSPlacement *this)
{
  *this = &unk_1F5B0CDD8;
  *(this + 276) = &unk_1F5B0CC50;
  v2 = this + 2376;
  v3 = *(this + 300);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 276) = &unk_1F5B3E1D8;
  v4 = *(this + 288);
  if (v4 != *(this + 287))
  {
    free(v4);
  }

  v5 = *(this + 284);
  if (v5 != this + 2288)
  {
    free(v5);
  }

  *(this + 250) = &unk_1F5B3E5A8;
  v6 = *(this + 273);
  if (v6 == (this + 2160))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 250) = &unk_1F5B3E1D8;
  v7 = *(this + 262);
  if (v7 != *(this + 261))
  {
    free(v7);
  }

  v8 = *(this + 258);
  if (v8 != this + 2080)
  {
    free(v8);
  }

  *(this + 224) = &unk_1F5B3E5A8;
  v9 = *(this + 247);
  if (v9 == (this + 1952))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 224) = &unk_1F5B3E1D8;
  v10 = *(this + 236);
  if (v10 != *(this + 235))
  {
    free(v10);
  }

  v11 = *(this + 232);
  if (v11 != this + 1872)
  {
    free(v11);
  }

  *(this + 198) = &unk_1F5B3E5A8;
  v12 = *(this + 221);
  if (v12 == (this + 1744))
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *(this + 198) = &unk_1F5B3E1D8;
  v13 = *(this + 210);
  if (v13 != *(this + 209))
  {
    free(v13);
  }

  v14 = *(this + 206);
  if (v14 != this + 1664)
  {
    free(v14);
  }

  *(this + 172) = &unk_1F5B3E5A8;
  v15 = *(this + 195);
  if (v15 == (this + 1536))
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  *(this + 172) = &unk_1F5B3E1D8;
  v16 = *(this + 184);
  if (v16 != *(this + 183))
  {
    free(v16);
  }

  v17 = *(this + 180);
  if (v17 != this + 1456)
  {
    free(v17);
  }

  *(this + 146) = &unk_1F5B3E720;
  v18 = *(this + 169);
  if (v18 == (this + 1328))
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  *(this + 146) = &unk_1F5B3E1D8;
  v19 = *(this + 158);
  if (v19 != *(this + 157))
  {
    free(v19);
  }

  v20 = *(this + 154);
  if (v20 != this + 1248)
  {
    free(v20);
  }

  *(this + 120) = &unk_1F5B3E720;
  v21 = *(this + 143);
  if (v21 == (this + 1120))
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  *(this + 120) = &unk_1F5B3E1D8;
  v22 = *(this + 132);
  if (v22 != *(this + 131))
  {
    free(v22);
  }

  v23 = *(this + 128);
  if (v23 != this + 1040)
  {
    free(v23);
  }

  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(this + 43);

  mlir::Pass::~Pass(this, v24, v25, v26);
}

{

  operator delete(v1);
}

void *mlir::MPSPlacementBase<mlir::anonymous namespace::MPSPlacement>::getDependentDialects(int a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5B017D8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id, "anec", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::anonymous namespace::MPSPlacement::runOnOperation(mlir::_anonymous_namespace_::MPSPlacement *this)
{
  v79 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  __p = 0u;
  v66 = 0u;
  v64 = Context;
  v67 = &v69;
  v68 = 0x600000000;
  v71 = 0;
  v70 = 0;
  v72 = 0;
  v74 = 0;
  v73 = 0;
  v75 = 0x2800000000;
  v76 = 0;
  v77 = 0;
  v78 = 0x2800000000;
  mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(v63);
  mlir::populateMPSToANECConversionPatterns(*(this + 118), 1, &v64, v63);
  v3 = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v49[2] = 0;
  v49[0] = &unk_1F5AFD7B0;
  v49[1] = 0;
  v50 = 0;
  v56 = 0;
  v55 = 0;
  v51 = v53;
  v52 = 0;
  v53[1] = 0;
  v53[0] = 0;
  v54 = 0;
  v57 = 0x1000000000;
  v58 = 0;
  v59 = 0;
  v60 = 0x2800000000;
  v61 = 0;
  v62 = v3;
  *(&v44 + 1) = "func";
  v45 = 4;
  mlir::ConversionTarget::setDialectAction(v49, &v44 + 8, 1, 2uLL);
  *(&v44 + 1) = "memref";
  v45 = 6;
  mlir::ConversionTarget::setDialectAction(v49, &v44 + 8, 1, 2uLL);
  v43 = &v44 + 8;
  *(&v44 + 1) = "mps";
  v45 = 3;
  *&v44 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v49, &v44 + 8, 1, 2uLL);
  mlir::OperationName::OperationName(&v43, "anec.unrealized_conversion_cast", 31, v62);
  mlir::ConversionTarget::setOpAction(v49, v43, 2);
  mlir::OperationName::OperationName(&v43, "placement.region_call", 21, v62);
  mlir::ConversionTarget::setOpAction(v49, v43, 2);
  v47[0] = &unk_1F5B0CED8;
  v47[1] = this;
  v48 = v47;
  v43 = &v44 + 8;
  *(&v44 + 1) = "anec";
  v45 = 4;
  *&v44 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v49, &v44 + 8, 1, 1uLL);
  mlir::ConversionTarget::setLegalityCallback(v49, v43, v44, v47);
  if (v43 != &v44 + 8)
  {
    free(v43);
  }

  if (v48 == v47)
  {
    (*(*v48 + 32))(v48);
  }

  else if (v48)
  {
    (*(*v48 + 40))();
  }

  v43 = &unk_1F5B0CF20;
  LOBYTE(v44) = 0;
  v45 = &v43;
  mlir::OperationName::OperationName(&v27, "mps.constant", 12, v62);
  v4 = v27;
  mlir::ConversionTarget::setOpAction(v49, v27, 1);
  mlir::ConversionTarget::setLegalityCallback(v49, v4, &v43);
  if (v45 == &v43)
  {
    (*(*v45 + 32))(v45);
  }

  else if (v45)
  {
    (*(*v45 + 40))();
  }

  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v19, &v64, 0, 0, 0, 0);
  v5 = *(this + 118);
  v6 = v19;
  v19 = 0uLL;
  v43 = &unk_1F5B0CFA0;
  v44 = v6;
  v27 = 0;
  v28 = 0;
  v45 = v49;
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v27);
  v43 = &unk_1F5B0CF68;
  mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(v46);
  v46[134] = v5;
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v19);
  v7 = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v28 = 0;
  v29 = 0;
  v27 = &unk_1F5AFD7B0;
  v30 = 0;
  v35 = 0;
  v36 = 0;
  v31 = v33;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v37 = 0x1000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x2800000000;
  v41 = 0;
  v42 = v7;
  v23 = &v25;
  v25 = "func";
  v26 = 4;
  v24 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(&v27, &v25, 1, 2uLL);
  if (v23 != &v25)
  {
    free(v23);
  }

  mlir::OperationName::OperationName(&v23, "placement.region_call", 21, v42);
  mlir::ConversionTarget::setOpAction(&v27, v23, 2);
  mlir::OperationName::OperationName(&v23, "placement.tensor_to_memref", 26, v42);
  mlir::ConversionTarget::setOpAction(&v27, v23, 2);
  v23 = &v25;
  v25 = "mps";
  v26 = 3;
  v24 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(&v27, &v25, 1, 0);
  if (v23 != &v25)
  {
    free(v23);
  }

  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v15);
  v8 = v15;
  v15 = 0uLL;
  v16 = &unk_1F5B0CFA0;
  v17 = v8;
  v23 = 0;
  v24 = 0;
  v18 = &v27;
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v23);
  v16 = &unk_1F5B0CFD8;
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v15);
  v9 = *(this + 292);
  mlir::getDeviceInfo(*(this + 118), *(this + 376), &v23);
  LOBYTE(v23) = *(this + 1296);
  v20 = v22;
  v22[0] = &v43;
  v21 = 0x200000001;
  if (v23)
  {
    v10 = 1;
  }

  else
  {
    v22[1] = &v16;
    v10 = 2;
    LODWORD(v21) = 2;
  }

  if (v9 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 | 0x100000000;
  }

  if ((mlir::doPlacement((*(this + 5) & 0xFFFFFFFFFFFFFFF8), *(this + 428), *(this + 480), *(this + 532), v22, v10, &v23, v11, *(this + 1088)) & 1) == 0)
  {
    *(this + 5) |= 4uLL;
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v16 = &unk_1F5B0CFA0;
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v17);
  mlir::ConversionTarget::~ConversionTarget(&v27, v12, v13, v14);
}

uint64_t mlir::MPSPlacementBase<mlir::anonymous namespace::MPSPlacement>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13[20] = *MEMORY[0x1E69E9840];
  v4 = operator new(0x978uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B0CDD8;
  *&v11 = "The family to target for ANEC region formation (default A12).";
  *(&v11 + 1) = 61;
  v9 = 0;
  v10 = &v9;
  *&v12 = v13;
  *(&v12 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v13, 8uLL, 40);
  v6 = DWORD2(v12);
  v7 = v12 + 40 * DWORD2(v12);
  *v7 = "A12";
  *(v7 + 8) = 3;
  *(v7 + 16) = 0;
  *(v7 + 24) = "A12 family";
  *(v7 + 32) = 10;
  *(v7 + 40) = "A13";
  *(v7 + 48) = 3;
  *(v7 + 56) = 1;
  *(v7 + 64) = "A13 family";
  *(v7 + 72) = 10;
  *(v7 + 80) = "A14";
  *(v7 + 88) = 3;
  *(v7 + 96) = 2;
  *(v7 + 104) = "A14 family";
  *(v7 + 112) = 10;
  *(v7 + 120) = "A15";
  *(v7 + 128) = 3;
  *(v7 + 136) = 3;
  *(v7 + 144) = "A15 family";
  *(v7 + 152) = 10;
  *(v7 + 160) = "A16";
  *(v7 + 168) = 3;
  *(v7 + 176) = 4;
  *(v7 + 184) = "A16 family";
  *(v7 + 192) = 10;
  *(v7 + 200) = "A17";
  *(v7 + 208) = 3;
  *(v7 + 216) = 5;
  *(v7 + 224) = "A17 family";
  *(v7 + 232) = 10;
  *(v7 + 240) = "A18";
  *(v7 + 248) = 3;
  *(v7 + 256) = 6;
  *(v7 + 264) = "A18 family";
  *(v7 + 272) = 10;
  *(v7 + 280) = "A11Legacy";
  *(v7 + 288) = 9;
  *(v7 + 296) = 7;
  *(v7 + 304) = "A11 Legacy family";
  *(v7 + 312) = 17;
  DWORD2(v12) = v6 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>((v4 + 344), v4 + 152, "target-family", 13, &v11, &v10, &v12);
  *(v4 + 43) = &unk_1F5B00EC0;
  *(v4 + 118) = &unk_1F5B00F40;
  if (v12 != v13)
  {
    free(v12);
  }

  *&v12 = "Insert instrumentation to enable performance recording.";
  *(&v12 + 1) = 55;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 960), v4 + 152, "insert-instrumentation", 22, &v12, &v11);
  *(v4 + 120) = &unk_1F5AFB130;
  *(v4 + 144) = &unk_1F5AFB1B0;
  *&v12 = "If true the GPU is the host device, otherwise it is the CPU. Defaults to false.";
  *(&v12 + 1) = 79;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 1168), v4 + 152, "gpu-host", 8, &v12, &v11);
  *(v4 + 146) = &unk_1F5AFB130;
  *(v4 + 170) = &unk_1F5AFB1B0;
  *&v12 = "The number of gpu cores.";
  *(&v12 + 1) = 24;
  LODWORD(v10) = 1;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 1376), v4 + 152, "gpu-core-count", 14, &v12, &v11);
  *(v4 + 172) = &unk_1F5AFEE68;
  *(v4 + 196) = &unk_1F5AFEEE8;
  *&v12 = "Number of thresholds for TA algorithm. Generally expect to use the default value.";
  *(&v12 + 1) = 81;
  v9 = 1;
  LODWORD(v10) = 25;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>((v4 + 1584), v4 + 152, "num-thresholds", 14, &v12, &v11, &v9);
  *(v4 + 198) = &unk_1F5AFEE68;
  *(v4 + 222) = &unk_1F5AFEEE8;
  *&v12 = "Number of steps for a single threshold for TA algorithm. Generally expect to use the default value.";
  *(&v12 + 1) = 99;
  v9 = 1;
  LODWORD(v10) = 10;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>((v4 + 1792), v4 + 152, "num-steps", 9, &v12, &v11, &v9);
  *(v4 + 224) = &unk_1F5AFEE68;
  *(v4 + 248) = &unk_1F5AFEEE8;
  *&v12 = "Number of steps required for convergence. Generally expect to use the default value.";
  *(&v12 + 1) = 84;
  v9 = 1;
  LODWORD(v10) = 10;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>((v4 + 2000), v4 + 152, "convergence-threshold", 21, &v12, &v11, &v9);
  *(v4 + 250) = &unk_1F5AFEE68;
  *(v4 + 274) = &unk_1F5AFEEE8;
  *&v12 = "The seed to use for the RNG. This will ensure that the random numbers can be generated deterministically.";
  *(&v12 + 1) = 105;
  v9 = 1;
  LODWORD(v10) = 0;
  *&v11 = &v10;
  result = mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>((v4 + 2208), v4 + 152, "rng-seed", 8, &v12, &v11, &v9);
  *(v4 + 276) = &unk_1F5B0CAD0;
  *(v4 + 301) = &unk_1F5B0CB50;
  *v4 = &unk_1F5B0CD68;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, _WORD *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 200) = 0;
  *v9 = &unk_1F5AFEF28;
  *(v9 + 192) = &unk_1F5AFEFA8;
  v14 = (v9 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v14);
  v12[0] = &unk_1F5B0CE48;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F5B0CE48;
  v15 = a1;
  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](&v14, a1 + 160);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5, _WORD *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
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
  v18 = *(a1 + 72);
  if (v18 >= *(a1 + 76))
  {
    v21 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v18 + 1, 8);
    GeneralCategory = v21;
    LODWORD(v18) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v18) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFEFE8;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E5A8;
  *(a1 + 152) = &unk_1F5B3E440;
  *(a1 + 160) = &unk_1F5AFF008;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v19 = **a5;
  *(a1 + 128) = v19;
  *(a1 + 148) = 1;
  *(a1 + 144) = v19;
  *(a1 + 10) = (32 * (*a6 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKjEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0CE48;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKjEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0CE48;
  a2[1] = v2;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, _WORD *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 208) = 0;
  *v9 = &unk_1F5B0CB90;
  *(v9 + 200) = &unk_1F5B0CC10;
  v14 = (v9 + 200);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v14);
  v12[0] = &unk_1F5B0CE90;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F5B0CE90;
  v15 = a1;
  std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](&v14, a1 + 168);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>,llvm::cl::OptionHidden>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5, _WORD *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
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
  v18 = *(a1 + 72);
  if (v18 >= *(a1 + 76))
  {
    v21 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v18 + 1, 8);
    GeneralCategory = v21;
    LODWORD(v18) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v18) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F5B0CCB8;
  *a1 = &unk_1F5B0CC50;
  *(a1 + 160) = &unk_1F5B3E3E0;
  *(a1 + 168) = &unk_1F5B0CCD8;
  *(a1 + 192) = a1 + 168;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v19 = **a5;
  *(a1 + 128) = v19;
  *(a1 + 152) = 1;
  *(a1 + 144) = v19;
  *(a1 + 10) = (32 * (*a6 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKxEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0CE90;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKxEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0CE90;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<mlir::anonymous namespace::MPSPlacement::runOnOperation(void)::{lambda(mlir::Operation *)#1},std::allocator<mlir::anonymous namespace::MPSPlacement::runOnOperation(void)::{lambda(mlir::Operation *)#1}>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0CED8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::anonymous namespace::MPSPlacement::runOnOperation(void)::{lambda(mlir::Operation *)#1},std::allocator<mlir::anonymous namespace::MPSPlacement::runOnOperation(void)::{lambda(mlir::Operation *)#1}>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0CED8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::anonymous namespace::MPSPlacement::runOnOperation(void)::{lambda(mlir::Operation *)#1},std::allocator<mlir::anonymous namespace::MPSPlacement::runOnOperation(void)::{lambda(mlir::Operation *)#1}>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, mlir::anec **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = mlir::verifyCompatibleTypesWithANE(*a2, *(v3 + 472), 1, 1, 0);
  {
    mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()();
  }

  if ((*(**(v2 + 6) + 32))(*(v2 + 6), mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v6[0] = v2;
    v6[1] = mlir::OpInterface<mlir::anec::VerifyAttributesWithFamilyInterface,mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits>::getInterfaceFor(v2);
    v4 &= mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v6, *(v3 + 472));
  }

  return mlir::anec::isCompatibleWithFamily(v2, *(v3 + 472)) & v4 | 0x100u;
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps10ConstantOpEZNS2_12_GLOBAL__N_112MPSPlacement14runOnOperationEvEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSB_EUlSD_E_NS_9allocatorISH_EEFNS_8optionalIbEESD_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0CF20;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps10ConstantOpEZNS2_12_GLOBAL__N_112MPSPlacement14runOnOperationEvEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSB_EUlSD_E_NS_9allocatorISH_EEFNS_8optionalIbEESD_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5B0CF20;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps10ConstantOpEZNS2_12_GLOBAL__N_112MPSPlacement14runOnOperationEvEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSB_EUlSD_E_NS_9allocatorISH_EEFNS_8optionalIbEESD_EEclEOSD_(uint64_t a1, void *a2)
{
  v2 = *(*a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    mlir::ArrayAttr::getValue(&v6);
    if (v3)
    {
      mlir::ArrayAttr::getValue(&v6);
      LODWORD(v2) = v4 > 3;
    }

    else
    {
      LODWORD(v2) = 1;
    }
  }

  return v2 | 0x100;
}

uint64_t mlir::anonymous namespace::ANEDeviceInterface::getConvertedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = 0;
  if (a3)
  {
    for (i = 0; i != a3; v14 = i)
    {
      v8 = mlir::ValueRange::dereference_iterator(&v13, i);
      v9 = mlir::TypeConverter::convertType(a1 + 32, (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8));
      v10 = *(a4 + 8);
      if (v10 >= *(a4 + 12))
      {
        v11 = v9;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v10 + 1, 8);
        v9 = v11;
        v10 = *(a4 + 8);
      }

      *(*a4 + 8 * v10) = v9;
      ++*(a4 + 8);
      i = v14 + 1;
    }
  }

  return 1;
}

char *mlir::anonymous namespace::ANEDeviceInterface::materializeRegion(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, void *a4, void *a5, mlir::IRMapping *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, mlir::Operation **a16, uint64_t a17, uint64_t a18)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v27[0] = a7;
  v27[1] = a8;
  v26[0] = a9;
  v26[1] = a10;
  v25[0] = a11;
  v25[1] = a12;
  v24[0] = a13;
  v24[1] = a14;
  v22[0] = a15;
  v22[1] = a16;
  v21[0] = a17;
  v21[1] = a18;
  v18 = *(a1 + 568);
  if (v18 > 3)
  {
    if (v18 > 5)
    {
      if (v18 == 6)
      {
        v19 = mlir::OpBuilder::create<mlir::anec::A18,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
        if (!v19)
        {
          return v19;
        }
      }

      else
      {
        v19 = mlir::OpBuilder::create<mlir::anec::A11Legacy,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
        if (!v19)
        {
          return v19;
        }
      }
    }

    else if (v18 == 4)
    {
      v19 = mlir::OpBuilder::create<mlir::anec::A16,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
      if (!v19)
      {
        return v19;
      }
    }

    else
    {
      v19 = mlir::OpBuilder::create<mlir::anec::A17,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
      if (!v19)
      {
        return v19;
      }
    }
  }

  else if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = mlir::OpBuilder::create<mlir::anec::A14,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
      if (!v19)
      {
        return v19;
      }
    }

    else
    {
      v19 = mlir::OpBuilder::create<mlir::anec::A15,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
      if (!v19)
      {
        return v19;
      }
    }
  }

  else if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::A13,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
    if (!v19)
    {
      return v19;
    }
  }

  else
  {
    v19 = mlir::OpBuilder::create<mlir::anec::A12,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
    if (!v19)
    {
      return v19;
    }
  }

  mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
  return v19;
}

char *mlir::anonymous namespace::ANEDeviceInterface::materializeCallOp(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, mlir::SymbolRefAttr *a4, uint64_t a5, uint64_t a6)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a5;
  v9[1] = a6;
  v8 = a4;
  v7 = 1;
  return mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(a2, a3, &v8, &v7, v9);
}

char *mlir::OpBuilder::create<mlir::anec::A12,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A12,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A13,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A13,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A14,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A14,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A15,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A15,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A16,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A16,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A17,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A17,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A18,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A18,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

char *mlir::OpBuilder::create<mlir::anec::A11Legacy,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::A11Legacy,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::anec::A11Legacy::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

uint64_t mlir::anonymous namespace::GPUDeviceInterface::getConvertedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = 0;
  if (a3)
  {
    for (i = 0; i != a3; v11 = i)
    {
      v7 = *(mlir::ValueRange::dereference_iterator(&v10, i) + 8);
      v8 = *(a4 + 8);
      if (v8 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v8 + 1, 8);
        v8 = *(a4 + 8);
      }

      *(*a4 + 8 * v8) = v7 & 0xFFFFFFFFFFFFFFF8;
      ++*(a4 + 8);
      i = v11 + 1;
    }
  }

  return 1;
}

char *mlir::anonymous namespace::GPUDeviceInterface::materializeRegion(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, void *a4, void *a5, mlir::IRMapping *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, mlir::Operation **a16, uint64_t a17, uint64_t a18)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v27[0] = a7;
  v27[1] = a8;
  v26[0] = a9;
  v26[1] = a10;
  v25[0] = a11;
  v25[1] = a12;
  v24[0] = a13;
  v24[1] = a14;
  v22[0] = a15;
  v22[1] = a16;
  v21[0] = a17;
  v21[1] = a18;
  v18 = mlir::OpBuilder::create<mlir::mpsx::GPUOp,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(a2, a3, v23, a6, v27, v26, v25, v24, v22, v21);
  v19 = v18;
  if (v18)
  {
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(v18);
  }

  return v19;
}

uint64_t mlir::anonymous namespace::GPUDeviceInterface::materializeHostTypeConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a7, &v8) = a4;
  return 1;
}

char *mlir::anonymous namespace::GPUDeviceInterface::materializeCallOp(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, mlir::SymbolRefAttr *a4, uint64_t a5, uint64_t a6)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a5;
  v9[1] = a6;
  v8 = a4;
  v7 = 0;
  return mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(a2, a3, &v8, &v7, v9);
}

char *mlir::OpBuilder::create<mlir::mpsx::GPUOp,llvm::StringRef &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute> &>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::GPUOp,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  mlir::mpsx::CPUOp::build(a1, v28, *a3, a3[1], a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

uint64_t mlir::canonicalizeInteger(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::getIntOrFloatBitWidth(&v5) > 7)
  {
    if (mlir::IntegerType::getSignedness(&v5))
    {
      return v5;
    }

    Context = mlir::Attribute::getContext(&v5);
    Width = mlir::IntegerType::getWidth(&v5);
    v1 = Context;
  }

  else
  {
    v1 = mlir::Attribute::getContext(&v5);
    Width = 8;
  }

  return mlir::IntegerType::get(v1, Width, 1u);
}

uint64_t mlir::verifyANECompatibleElementType(void *a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v37 = a1;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v36 = ElementTypeOrSelf;
  if (!ElementTypeOrSelf || *(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v36 = mlir::canonicalizeInteger(ElementTypeOrSelf);
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = mlir::Type::isSignedInteger(&v36, 16) || mlir::Type::isUnsignedInteger(&v36, 16);
LABEL_9:
  if (!mlir::Type::isF16(&v36) && !mlir::Type::isSignedInteger(&v36, 8) && !mlir::Type::isUnsignedInteger(&v36, 8) && !v4)
  {
    if (a2)
    {
      Context = mlir::Attribute::getContext(&v37);
      v8 = mlir::UnknownLoc::get(Context, v7);
      mlir::emitError(v41, v8, v53);
      if (v41[0])
      {
        v38 = 3;
        v39 = "Incompatible element type for ANE: expected fp16, si8, ui8, si16, or ui16";
        v40 = 73;
        v9 = &v38;
        v10 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v43 > &v38)
          {
            v34 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v10 = v42;
            v9 = (v42 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v9 = &v38;
            v10 = v42;
          }
        }

        v11 = &v10[24 * v43];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v43;
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }
      }

      if (v51 != 1)
      {
        return 0;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v49;
        v15 = __p;
        if (v49 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v49 = v13;
        operator delete(v15);
      }

      v16 = v46;
      if (!v46)
      {
LABEL_53:
        if (v42 != v45)
        {
          free(v42);
        }

        return 0;
      }

      v17 = v47;
      v18 = v46;
      if (v47 == v46)
      {
LABEL_52:
        v47 = v16;
        operator delete(v18);
        goto LABEL_53;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v17 != v16);
    }

    else
    {
      v21 = mlir::Attribute::getContext(&v37);
      v23 = mlir::UnknownLoc::get(v21, v22);
      mlir::emitError(v41, v23, v54);
      if (v41[0])
      {
        v38 = 3;
        v39 = "Incompatible element type for ANE: expected fp16, si8, or ui8";
        v40 = 61;
        v24 = &v38;
        v25 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v43 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v25 = v42;
            v24 = (v42 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v24 = &v38;
            v25 = v42;
          }
        }

        v26 = &v25[24 * v43];
        v27 = *v24;
        *(v26 + 2) = *(v24 + 2);
        *v26 = v27;
        ++v43;
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }
      }

      if (v51 != 1)
      {
        return 0;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v49;
        v30 = __p;
        if (v49 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v49 = v28;
        operator delete(v30);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_53;
      }

      v31 = v47;
      v18 = v46;
      if (v47 == v46)
      {
        goto LABEL_52;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v16);
    }

    v18 = v46;
    goto LABEL_52;
  }

  return 1;
}

BOOL mlir::verifyCompatibleTypesWithANE(uint64_t a1, int a2, int a3, int a4, int a5)
{
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return *(*mlir::getElementTypeOrSelf(a1 - 16) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  }

  if (!a3)
  {
    goto LABEL_53;
  }

  v11 = *(a1 + 44);
  if ((v11 & 0x800000) != 0)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 68);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(*(a1 + 48) + 16);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id)
  {
    v16 = 1;
    if (v14 == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
    {
      v16 = 2;
    }

    if (v13 >= v16)
    {
      v13 = v16;
    }

    if ((v11 & 0x800000) != 0)
    {
      v17 = *(a1 + 68);
      v18 = v17 - v16;
      if (v17 == v16)
      {
        goto LABEL_37;
      }

      v39 = v12;
      v19 = *(a1 + 72);
    }

    else
    {
      v39 = v12;
      v19 = 0;
      if (v14 == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
      {
        v18 = -2;
      }

      else
      {
        v18 = -1;
      }
    }

    v20 = v19 + 32 * v16 + 24;
    while (1)
    {
      v21 = (*(*v20 + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
      if (v22)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      v42 = v23;
      v43 = v22;
      if (a2 < 2)
      {
        return 0;
      }

      if (!v23)
      {
        return 0;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v42);
      if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v25) != 1)
      {
        return 0;
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
      v41 = ElementTypeOrSelf;
      if (ElementTypeOrSelf && *(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v41 = mlir::canonicalizeInteger(ElementTypeOrSelf);
      }

      if (!mlir::Type::isSignedInteger(&v41, 32) && !mlir::Type::isUnsignedInteger(&v41, 32) && !mlir::Type::isSignedInteger(&v41, 64))
      {
        result = mlir::Type::isUnsignedInteger(&v41, 64);
        if (!result)
        {
          return result;
        }
      }

      v20 += 32;
      if (!--v18)
      {
        v12 = v39;
        break;
      }
    }
  }

LABEL_37:
  if (v13)
  {
    v27 = (v12 + 24);
    do
    {
      v28 = *v27;
      v42 = *v27;
      DefiningOp = mlir::Value::getDefiningOp(&v42);
      if (!DefiningOp)
      {
        goto LABEL_46;
      }

      {
        v40 = DefiningOp;
        DefiningOp = v40;
      }

      if (!(*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) || *(*mlir::getElementTypeOrSelf(v28) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_46:
        v30 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8))
        {
          v42 = 0;
          v43 = 0;
          return 0;
        }

        v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
        v42 = v30;
        v43 = v31;
        if (!v30)
        {
          return 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v42);
        if (a2 <= 1 && v32 == 5)
        {
          return 0;
        }

        if ((mlir::verifyANECompatibleElementType(v30, a5) & 1) == 0)
        {
          return 0;
        }
      }

      v27 += 4;
      --v13;
    }

    while (v13);
  }

LABEL_53:
  if (!a4)
  {
    return 1;
  }

  v33 = *(a1 + 36);
  v34 = v33 ? a1 - 16 : 0;
  if (!v33)
  {
    return 1;
  }

  v35 = 0;
  while (1)
  {
    v36 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, v35) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8))
    {
      break;
    }

    v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
    v42 = v36;
    v43 = v37;
    if (!v36)
    {
      return 0;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v42);
    if (a2 <= 1 && v38 == 5)
    {
      return 0;
    }

    if ((mlir::verifyANECompatibleElementType(v36, a5) & 1) == 0)
    {
      return 0;
    }

    ++v35;
    result = 1;
    if (v33 == v35)
    {
      return result;
    }
  }

  v42 = 0;
  v43 = 0;
  return 0;
}

uint64_t mlir::getExtraSerializationDialectsForANEC(mlir *this)
{
  if ((atomic_load_explicit(_MergedGlobals_47, memory_order_acquire) & 1) == 0)
  {
    mlir::getExtraSerializationDialectsForANEC();
  }

  return qword_1EE17C9E0;
}

void **llvm::SmallVector<mlir::mps::DialectInfo,2u>::~SmallVector(void **result)
{
  if (*result != result + 2)
  {
    v1 = result;
    free(*result);
    return v1;
  }

  return result;
}

uint64_t mlir::logMatchFailure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = 260;
  v16[0] = a1;
  mlir::emitWarning(a2, v16, v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v24;
      v8 = __p;
      if (v24 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v24 = v6;
      operator delete(v8);
    }

    v9 = v21;
    if (v21)
    {
      v10 = v22;
      v11 = v21;
      if (v22 != v21)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        v11 = v21;
      }

      v22 = v9;
      operator delete(v11);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  if (a3)
  {
    v16[0] = a1;
    v14 = *(a3 + 16);
    if (v14)
    {
      if (mlir::RewriterBase::Listener::classof(v14))
      {
        (*(*v14 + 88))(v14, a2, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::logMatchFailure(std::string const&,mlir::Location,mlir::PatternRewriter *)::$_0>, v16);
      }
    }
  }

  return 0;
}

uint64_t mlir::materializeMPSToANECHostTypeConversion(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t *a6)
{
  v89[1] = a5;
  v90 = a3;
  v89[0] = a4;
  v7 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (a4 == v7)
  {
    v88[0] = a3;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, v88) = a3;
    return 1;
  }

  if (v7)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v10 = 0;
  }

  v88[0] = v7;
  v88[1] = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v89);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v89);
  v15 = mlir::RankedTensorType::get(ArgAttrsAttr, v13, isSplat, 0);
  v87 = 0;
  v16 = v89[0];
  if (*(*v89[0] + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v16 = 0;
  }

  v91 = v16;
  if (v16)
  {
    Value = mlir::ArrayAttr::getValue(&v91);
    v19 = v18;
    v20 = mlir::ElementsAttr::isSplat(v89);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v91);
    v86 = v21;
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&RawStringData);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v91);
    v87 = mlir::MemRefType::get(Value, v19, v20, CallableForCallee, MemorySpace);
  }

  v24 = mlir::ElementsAttr::isSplat(v88);
  v25 = mlir::ElementsAttr::isSplat(v89);
  v26 = *(*v89[0] + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v34 = *(*v88[0] + 136);
    if (v34 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v48 = v90;
      v49 = mlir::ElementsAttr::isSplat(v89);
      RawStringData = v48;
      v91 = v49;
      if (v24 != v25)
      {
        v48 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
      }

      v84 = v48;
      v50 = mlir::CallableOpInterface::getArgAttrsAttr(v88);
      v52 = v51;
      v53 = mlir::CallableOpInterface::getArgAttrsAttr(v89);
      if (v52 != v54 || memcmp(v50, v53, 8 * v52))
      {
        v55 = mlir::ElementsAttr::isSplat(v89);
        RawStringData = v48;
        v91 = v55;
        if (v24 != v25)
        {
          v48 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
        }

        v91 = v48;
        RawStringData = mlir::CallableOpInterface::getArgAttrsAttr(v89);
        v86 = v56;
        v84 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
      }

      v33 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(a1, a2, &v84) - 16;
      RawStringData = v90;
      goto LABEL_50;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
      {
        v69 = *(*(DefiningOp + 72) + 24);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v89[0]);
        RawStringData = v69;
        v91 = ElementTypeOrSelf;
        if (v24 != v25)
        {
          v69 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
        }

        RawStringData = v69;
        v71 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::MemRefType &,mlir::Value>(a1, a2, &v87, &RawStringData) - 16;
        RawStringData = v90;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v71;
      }

      else
      {
        v36 = *v90;
        if (*v90)
        {
          if (!*v36)
          {
            v37 = v36[2];
            if (v37)
            {
              if (*(*(v37 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
              {
                v38 = mlir::CallableOpInterface::getArgAttrsAttr(v88);
                v40 = v39;
                v41 = mlir::ElementsAttr::isSplat(v89);
                v42 = mlir::RankedTensorType::get(v38, v40, v41, 0);
                v43 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(a1, a2, &v90) - 16;
                if (v42 != v15)
                {
                  v44 = mlir::ElementsAttr::isSplat(v89);
                  RawStringData = v43;
                  v91 = v44;
                  if (v24 != v25)
                  {
                    v43 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
                  }

                  v91 = v43;
                  RawStringData = mlir::CallableOpInterface::getArgAttrsAttr(v89);
                  v86 = v45;
                  v43 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
                }

                v46 = v90;
                v47 = mlir::ElementsAttr::isSplat(v89);
                RawStringData = v43;
                v91 = v47;
                if (v24 != v25)
                {
                  v43 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
                }

                RawStringData = v46;
                *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v43;
              }
            }
          }
        }
      }

      v72 = v90;
      v73 = *(a6 + 4);
      v74 = v90;
      if (v73)
      {
        v75 = *a6;
        v76 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
        v77 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v76 >> 47) ^ v76);
        v78 = (-348639895 * ((v77 >> 47) ^ v77)) & (v73 - 1);
        v79 = *(*a6 + 16 * v78);
        if (v79 == v90)
        {
LABEL_56:
          v74 = v90;
          if (v78 != v73)
          {
            v74 = *(v75 + 16 * v78 + 8);
          }
        }

        else
        {
          v82 = 1;
          while (v79 != -4096)
          {
            v83 = v78 + v82++;
            v78 = v83 & (v73 - 1);
            v79 = *(v75 + 16 * v78);
            if (v79 == v90)
            {
              goto LABEL_56;
            }
          }

          v74 = v90;
        }
      }

      v80 = mlir::ElementsAttr::isSplat(v89);
      RawStringData = v74;
      v91 = v80;
      if (v24 != v25)
      {
        v74 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
      }

      RawStringData = v72;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v74;
    }
  }

  else
  {
    if (v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      return 1;
    }

    if (*(*(*(v90 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      if (*(*v88[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        return 1;
      }

      v27 = mlir::CallableOpInterface::getArgAttrsAttr(v88);
      v29 = v28;
      v30 = mlir::ElementsAttr::isSplat(v89);
      v31 = mlir::RankedTensorType::get(v27, v29, v30, 0);
      v32 = v90;
      if (v31 == v15)
      {
        v33 = v90;
      }

      else
      {
        v67 = mlir::ElementsAttr::isSplat(v89);
        RawStringData = v32;
        v91 = v67;
        if (v24 != v25)
        {
          v32 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
        }

        v91 = v32;
        RawStringData = mlir::CallableOpInterface::getArgAttrsAttr(v89);
        v86 = v68;
        v33 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
        v32 = v90;
      }

      RawStringData = v32;
LABEL_50:
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v33;
      return 1;
    }

    v57 = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v59 = v58;
    v60 = mlir::ElementsAttr::isSplat(v89);
    v61 = mlir::RankedTensorType::get(v57, v59, v60, 0);
    v62 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(a1, a2, &v90) - 16;
    if (v61 != v15)
    {
      v63 = mlir::ElementsAttr::isSplat(v89);
      RawStringData = v62;
      v91 = v63;
      if (v24 != v25)
      {
        v62 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
      }

      v91 = v62;
      RawStringData = mlir::CallableOpInterface::getArgAttrsAttr(v89);
      v86 = v64;
      v62 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
    }

    v65 = v90;
    v66 = mlir::ElementsAttr::isSplat(v89);
    RawStringData = v62;
    v91 = v66;
    if (v24 != v25)
    {
      v62 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a1, a2, &RawStringData, &v91) - 16;
    }

    RawStringData = v65;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v62;
  }

  return 1;
}

char *mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::MemRefType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, a3, 1uLL);
  mlir::arith::ExtSIOp::build(a1, v16, v17[0], v17[1], a4, 1uLL, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t *mlir::getMPSVersionFromANEC@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  result = ANECGetMPSDialectSupportedVersion();
  if (!result)
  {
    *a1 = &unk_1F5B01218;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t *mlir::getMPSSPIVersionFromANEC@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  result = ANECGetMPSSPIDialectSupportedVersion();
  if (!result)
  {
    *a1 = &unk_1F5B01238;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void *llvm::SmallVector<mlir::mps::DialectInfo,2u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  v5 = 3 * a3;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3);
  if (v6 >= 3)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3), 24);
    a2 = v7;
    v8 = *(a1 + 2);
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 24 * v8), a2, 8 * v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + v6;
  return a1;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::logMatchFailure(std::string const&,mlir::Location,mlir::PatternRewriter *)::$_0>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  v5 = 260;
  v4[0] = v2;
  return mlir::Diagnostic::operator<<(a2, v4);
}

void mlir::populateMPSToANECConversionPatterns(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  v496[0] = *MEMORY[0x1E69E9840];
  _ZN4mlir12_GLOBAL__N_120addPatternsForTargetIJNS0_14ConvertBiasAddENS0_15ConvertConstantENS0_23ConvertReadDataFromFileENS0_17ConvertCropResizeENS0_22ConvertDepthwiseConv3DENS0_12ConvertStateENS0_19ConvertReadVariableENS0_31ConvertElementwiseBinaryA14PlusINS_3mps5AddOpENS_4anec14ElementwiseAddELNSC_6FamilyE2EEENS9_INSA_10MultiplyOpENSC_15ElementwiseMultELSE_2EEENS9_INSA_10SubtractOpENSC_14ElementwiseSubELSE_2EEENS9_INSA_9MaximumOpENSC_14ElementwiseMaxELSE_2EEENS9_INSA_9MinimumOpENSC_14ElementwiseMinELSE_2EEENS9_INSA_7PowerOpENSC_16ElementwisePowerELSE_2EEENS0_32ConvertElementwiseBinaryA14MinusISB_SD_LSE_1EEENSV_ISG_SH_LSE_1EEENSV_ISJ_SK_LSE_1EEENSV_ISM_SN_LSE_1EEENSV_ISP_SQ_LSE_1EEENSV_ISS_ST_LSE_1EEENSV_ISB_SD_LSE_0EEENSV_ISG_SH_LSE_0EEENSV_ISJ_SK_LSE_0EEENSV_ISM_SN_LSE_0EEENSV_ISP_SQ_LSE_0EEENSV_ISS_ST_LSE_0EEENS0_23ConvertElementwiseUnaryINSA_10AbsoluteOpENSC_14ElementwiseAbsEEENS0_15ConvertExponentENS0_16ConvertLogarithmENS0_13ConvertSelectENS0_16ConvertFlatten2DENS0_13ConvertDivideILSE_0EEENS1G_ILSE_1EEENS1G_ILSE_2EEENS1G_ILSE_3EEENS1G_ILSE_4EEENS1G_ILSE_5EEENS1G_ILSE_6EEENS1G_ILSE_7EEENS0_18ConvertFloorDivideILSE_0EEENS1P_ILSE_1EEENS1P_ILSE_2EEENS1P_ILSE_3EEENS1P_ILSE_4EEENS1P_ILSE_5EEENS1P_ILSE_6EEENS1P_ILSE_7EEENS0_13ConvertMatMulILSE_0EEENS1Y_ILSE_1EEENS1Y_ILSE_2EEENS1Y_ILSE_3EEENS1Y_ILSE_4EEENS1Y_ILSE_5EEENS1Y_ILSE_6EEENS1Y_ILSE_7EEENS18_INSA_9DegammaOpENSC_7DegammaEEENS18_INSA_7DiracOpENSC_5DiracEEENS18_INSA_6GeluOpENSC_4GeluEEENS18_INSA_6ReluOpENSC_4ReluEEENS18_INSA_7RoundOpENSC_12RoundNearestEEENS18_INSA_8SquareOpENSC_17ElementwiseSquareEEENS0_21ConvertSquareA13MinusENS0_20ConvertSquareA14PlusENS18_INSA_12SquareRootOpENSC_4SqrtEEENS18_INSA_7SwishOpENSC_5SwishEEENS18_INSA_6TanhOpENSC_4TanhEEENS0_20ConvertBinaryCompareINSA_9EqualToOpENSC_16ElementwiseEqualEEENS0_26ConvertBinaryCompareToZeroIS31_NSC_20ElementwiseEqualZeroEEENS30_INSA_12NotEqualToOpENSC_19ElementwiseNotEqualEEENS34_IS37_NSC_23ElementwiseNotEqualZeroEEENS30_INSA_13GreaterThanOpENSC_22ElementwiseGreaterThanEEENS34_IS3C_NSC_26ElementwiseGreaterThanZeroEEENS30_INSA_22GreaterThanOrEqualToOpENSC_27ElementwiseGreaterThanEqualEEENS34_IS3H_NSC_31ElementwiseGreaterThanEqualZeroEEENS30_INSA_10LessThanOpENSC_19ElementwiseLessThanEEENS34_IS3M_NSC_23ElementwiseLessThanZeroEEENS30_INSA_19LessThanOrEqualToOpENSC_24ElementwiseLessThanEqualEEENS34_IS3R_NSC_28ElementwiseLessThanEqualZeroEEENS18_INSA_5NotOpES35_EENS0_11ConvertPoolINSA_9PoolAvgOpENSC_11AveragePoolEEENS3Y_INSA_12PoolL2NormOpENSC_10L2NormPoolEEENS3Y_INSA_9PoolMaxOpENSC_7MaxPoolEEENS0_14ConvertStencilENS18_INSA_6CeilOpENSC_4CeilEEENS18_INSA_5ErfOpENSC_3ErfEEENS18_INSA_15ExponentBase2OpENSC_4Exp2EEENS18_INSA_7FloorOpENSC_5FloorEEENS18_INSA_6SignOpENSC_4SignEEENS18_INSA_10TruncateOpENSC_5TruncEEENS0_23ConvertReductionA14PlusINSA_14ReductionMaxOpENSC_9ReduceMaxELSE_2EEENS4R_INSA_15ReductionMeanOpENSC_9ReduceAvgELSE_2EEENS4R_INSA_14ReductionMinOpENSC_9ReduceMinELSE_2EEENS4R_INSA_14ReductionSumOpENSC_9ReduceSumELSE_2EEENS0_24ConvertReductionA14MinusIS4S_S4T_LSE_1EEENS54_IS4V_S4W_LSE_1EEENS54_IS4Y_S4Z_LSE_1EEENS54_IS51_S52_LSE_1EEENS54_IS4S_S4T_LSE_0EEENS54_IS4V_S4W_LSE_0EEENS54_IS4Y_S4Z_LSE_0EEENS54_IS51_S52_LSE_0EEENS0_14ConvertReshapeILSE_0EEENS5D_ILSE_1EEENS5D_ILSE_2EEENS5D_ILSE_3EEENS5D_ILSE_4EEENS5D_ILSE_5EEENS5D_ILSE_6EEENS5D_ILSE_7EEENS0_17ConvertExpandDimsILSE_0EEENS5M_ILSE_1EEENS5M_ILSE_2EEENS5M_ILSE_3EEENS5M_ILSE_4EEENS5M_ILSE_5EEENS5M_ILSE_6EEENS5M_ILSE_7EEENS0_14ConvertSqueezeILSE_0EEENS5V_ILSE_1EEENS5V_ILSE_2EEENS5V_ILSE_3EEENS5V_ILSE_4EEENS5V_ILSE_5EEENS5V_ILSE_6EEENS5V_ILSE_7EEENS0_11ConvertCastENS0_14ConvertSoftmaxENS0_13ConvertConcatENS0_12ConvertSplitENS0_13ConvertResizeILSE_0EEENS68_ILSE_1EEENS68_ILSE_2EEENS68_ILSE_3EEENS68_ILSE_4EEENS68_ILSE_5EEENS68_ILSE_6EEENS68_ILSE_7EEENS0_19ConvertInstanceNormENS0_14ConvertPermuteENS0_15ConvertGatherNDENS0_13ConvertGatherENS0_17ConvertSampleGridENS0_32ConvertScaledDotProductAttentionENS0_21ConvertDepthToSpace2DINSC_12PixelShuffleEEENS6N_INSC_14ChannelToSpaceEEENS0_21ConvertSpaceToDepth2DINSC_14PixelUnshuffleEEENS6S_INSC_14SpaceToChannelEEENS0_19ConvertBatchToSpaceINSA_14BatchToSpaceOpENSC_12BatchToSpaceEEENS6X_INSA_14SpaceToBatchOpENSC_12SpaceToBatchEEENS0_16ConvertTransposeILSE_0EEENS74_ILSE_1EEENS74_ILSE_2EEENS74_ILSE_3EEENS74_ILSE_4EEENS74_ILSE_5EEENS74_ILSE_6EEENS74_ILSE_7EEENS0_16ConvertBroadcastILSE_0EEENS7D_ILSE_1EEENS7D_ILSE_2EEENS7D_ILSE_3EEENS7D_ILSE_4EEENS7D_ILSE_5EEENS7D_ILSE_6EEENS7D_ILSE_7EEENS0_14ConvertPaddingILSE_0EEENS7M_ILSE_1EEENS7M_ILSE_2EEENS7M_ILSE_3EEENS7M_ILSE_4EEENS7M_ILSE_5EEENS7M_ILSE_6EEENS7M_ILSE_7EEENS0_12ConvertSliceILSE_0EEENS7V_ILSE_1EEENS7V_ILSE_2EEENS7V_ILSE_3EEENS7V_ILSE_4EEENS7V_ILSE_5EEENS7V_ILSE_6EEENS7V_ILSE_7EEENS0_19ConvertStridedSliceILSE_0EEENS84_ILSE_1EEENS84_ILSE_2EEENS84_ILSE_3EEENS84_ILSE_4EEENS84_ILSE_5EEENS84_ILSE_6EEENS84_ILSE_7EEENS0_14ConvertReverseILSE_0EEENS8D_ILSE_1EEENS8D_ILSE_2EEENS8D_ILSE_3EEENS8D_ILSE_4EEENS8D_ILSE_5EEENS8D_ILSE_6EEENS8D_ILSE_7EEENS0_11ConvertCropILSE_0EEENS8M_ILSE_1EEENS8M_ILSE_2EEENS8M_ILSE_3EEENS8M_ILSE_4EEENS8M_ILSE_5EEENS8M_ILSE_6EEENS8M_ILSE_7EEENS18_INSA_5CosOpENSC_3CosEEENS18_INSA_5SinOpENSC_3SinEEENS0_13FoldOperationINSA_10IdentityOpEEENS0_20ConvertNormalizationENS0_24ConvertReductionVarianceENS0_19ConvertReductionArgINSA_17ReductionArgMinOpELSE_0EEENS96_IS97_LSE_1EEENS96_IS97_LSE_2EEENS96_IS97_LSE_3EEENS96_IS97_LSE_4EEENS96_IS97_LSE_5EEENS96_IS97_LSE_6EEENS96_INSA_17ReductionArgMaxOpELSE_0EEENS96_IS9F_LSE_1EEENS96_IS9F_LSE_2EEENS96_IS9F_LSE_3EEENS96_IS9F_LSE_4EEENS96_IS9F_LSE_5EEENS96_IS9F_LSE_6EEENS0_14ConvertSignBitENS0_11ConvertTileENS0_15ConvertFusionOpEEEEvSE_RNS_17RewritePatternSetERNS_13TypeConverterE( a1,  a3,  a4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A12", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A13", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A14", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A15", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A16", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A17", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A18", 8, a3, v4);
  mlir::populateFunctionOpInterfaceTypeConversionPattern("anec.A11Legacy", 14, a3, v4);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *a3);
  v477 = v7;
  if (Properties && *(Properties + 1) == 1)
  {
    if (v7 < 0)
    {
      goto LABEL_35;
    }

    v11 = *a3;
    v12 = operator new(0x170uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v12 + 1), "mps.sigmoid", 11, v481, v11, 0, 0);
    v12[12] = v4;
    v13 = v12 + 12;
    *v12 = &unk_1F5B132F0;
    v481 = 0;
    v493 = 0;
    llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v12 + 13), &v481, &v493);
    v12[16] = v12 + 18;
    v12[17] = 0x400000000;
    if (v12[9])
    {
      goto LABEL_18;
    }

    v14 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::SigmoidOp, mlir::anec::Sigmoid>]";
    v15 = 145;
    goto LABEL_9;
  }

  if (v7 < 0)
  {
    goto LABEL_35;
  }

  v16 = *a3;
  v12 = operator new(0x170uLL);
  mlir::PatternBenefit::PatternBenefit(&v481, 1);
  mlir::Pattern::Pattern((v12 + 1), "mps.sigmoid", 11, v481, v16, 0, 0);
  v12[12] = v4;
  v13 = v12 + 12;
  *v12 = &unk_1F5B13360;
  v481 = 0;
  v493 = 0;
  llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v12 + 13), &v481, &v493);
  v12[16] = v12 + 18;
  v12[17] = 0x400000000;
  if (!v12[9])
  {
    v14 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::SigmoidOp, mlir::anec::HighPrecisionSigmoid>]";
    v15 = 158;
LABEL_9:
    v481 = v14;
    v482.n128_u64[0] = v15;
    v17 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
    if (v482.n128_u64[0] >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v482.n128_u64[0];
    }

    v19 = &v481[v18];
    v20 = v482.n128_u64[0] - v18;
    if (v482.n128_u64[0] - v18 >= 0x12)
    {
      v21 = 18;
    }

    else
    {
      v21 = v482.n128_u64[0] - v18;
    }

    v22 = &v19[v21];
    v23 = v20 - v21;
    if (v23 >= v23 - 1)
    {
      --v23;
    }

    v12[8] = v22;
    v12[9] = v23;
  }

LABEL_18:
  v24 = *(v12 + 22);
  if (v24 > *(v12 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v12 + 10), v13, v24, 16);
    LODWORD(v24) = *(v12 + 22);
  }

  *(v12 + 22) = v24;
  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  if (v26 >= v25)
  {
    v28 = *(a3 + 8);
    v29 = v26 - v28;
    v30 = (v26 - v28) >> 3;
    v31 = v30 + 1;
    if ((v30 + 1) >> 61)
    {
      goto LABEL_640;
    }

    v32 = v25 - v28;
    if (v32 >> 2 > v31)
    {
      v31 = v32 >> 2;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      v33 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      if (v33 >> 61)
      {
        goto LABEL_641;
      }

      v34 = operator new(8 * v33);
    }

    else
    {
      v34 = 0;
    }

    v35 = &v34[8 * v30];
    *v35 = v12;
    v27 = v35 + 8;
    memcpy(v34, v28, v29);
    *(a3 + 8) = v34;
    *(a3 + 16) = v27;
    *(a3 + 24) = &v34[8 * v33];
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v26 = v12;
    v27 = v26 + 8;
  }

  *(a3 + 16) = v27;
LABEL_35:
  v36 = *a3;
  v37 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v481, 1);
  mlir::Pattern::Pattern((v37 + 1), "anec.region_return", 18, v481, v36, 0, 0);
  v37[12] = v4;
  *v37 = &unk_1F5B133D0;
  if (!v37[9])
  {
    v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::RegionReturnTypeConversion]";
    v482.n128_u64[0] = 105;
    v40 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
    if (v482.n128_u64[0] >= v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = v482.n128_u64[0];
    }

    v42 = &v481[v41];
    v43 = v482.n128_u64[0] - v41;
    if (v482.n128_u64[0] - v41 >= 0x12)
    {
      v44 = 18;
    }

    else
    {
      v44 = v482.n128_u64[0] - v41;
    }

    v45 = &v42[v44];
    v46 = v43 - v44;
    if (v46 >= v46 - 1)
    {
      --v46;
    }

    v37[8] = v45;
    v37[9] = v46;
  }

  v47 = *(v37 + 22);
  if (v47 > *(v37 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v37 + 10), v37 + 12, v47, 16);
    v47 = *(v37 + 22);
  }

  *(v37 + 22) = v47;
  v49 = *(a3 + 16);
  v48 = *(a3 + 24);
  if (v49 >= v48)
  {
    v51 = *(a3 + 8);
    v52 = v49 - v51;
    v53 = (v49 - v51) >> 3;
    v54 = v53 + 1;
    if ((v53 + 1) >> 61)
    {
      goto LABEL_640;
    }

    v55 = v48 - v51;
    if (v55 >> 2 > v54)
    {
      v54 = v55 >> 2;
    }

    if (v55 >= 0x7FFFFFFFFFFFFFF8)
    {
      v56 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v56 = v54;
    }

    if (v56)
    {
      if (v56 >> 61)
      {
        goto LABEL_641;
      }

      v57 = operator new(8 * v56);
    }

    else
    {
      v57 = 0;
    }

    v58 = &v57[8 * v53];
    *v58 = v37;
    v50 = v58 + 8;
    memcpy(v57, v51, v52);
    *(a3 + 8) = v57;
    *(a3 + 16) = v50;
    *(a3 + 24) = &v57[8 * v56];
    if (v51)
    {
      operator delete(v51);
    }
  }

  else
  {
    *v49 = v37;
    v50 = v49 + 8;
  }

  *(a3 + 16) = v50;
  v495 = 5;
  LODWORD(v493) = 1;
  strcpy(&v494, "slope");
  v59 = llvm::detail::IEEEFloat::IEEEFloat(&v481, 0.0, v38, v47, v39);
  v476 = llvm::APFloatBase::IEEEdouble(v59);
  llvm::APFloat::Storage::Storage(&v492, &v481, v476);
  llvm::detail::IEEEFloat::~IEEEFloat(&v481);
  v60 = std::pair<llvm::APFloat,std::string>::pair[abi:nn200100]<llvm::APFloat,char const(&)[7],0>(&v481, &p_p, "offset");
  v475 = v4;
  v61 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    v62 = *a3;
    v63 = operator new(0x170uLL);
    mlir::PatternBenefit::PatternBenefit(&v478, 1);
    mlir::Pattern::Pattern((v63 + 8), "mps.leaky_relu", 14, v478, v62, 0, 0);
    *(v63 + 12) = v4;
    *v63 = &unk_1F5B13438;
    v478 = &v493;
    v480 = v496;
    llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v63 + 104), &v478, &v480);
    *(v63 + 16) = v63 + 144;
    *(v63 + 17) = 0x400000000;
    llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(v63 + 32, &v481, v486);
    if (!*(v63 + 9))
    {
      v478 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::LeakyReluOp, mlir::anec::LeakyRelu>]";
      v479 = 149;
      v60 = llvm::StringRef::find(&v478, "DesiredTypeName = ", 0x12uLL, 0);
      if (v479 >= v60)
      {
        v64 = v60;
      }

      else
      {
        v64 = v479;
      }

      v65 = &v478[v64];
      v66 = v479 - v64;
      if (v479 - v64 >= 0x12)
      {
        v67 = 18;
      }

      else
      {
        v67 = v479 - v64;
      }

      v68 = &v65[v67];
      v69 = v66 - v67;
      if (v69 >= v69 - 1)
      {
        --v69;
      }

      *(v63 + 8) = v68;
      *(v63 + 9) = v69;
    }

    v70 = *(v63 + 22);
    if (v70 > *(v63 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v63 + 80), v63 + 96, v70, 16);
      LODWORD(v70) = *(v63 + 22);
    }

    *(v63 + 22) = v70;
    v72 = *(a3 + 16);
    v71 = *(a3 + 24);
    if (v72 >= v71)
    {
      v74 = *(a3 + 8);
      v75 = v72 - v74;
      v76 = (v72 - v74) >> 3;
      v77 = v76 + 1;
      if ((v76 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v78 = v71 - v74;
      if (v78 >> 2 > v77)
      {
        v77 = v78 >> 2;
      }

      if (v78 >= 0x7FFFFFFFFFFFFFF8)
      {
        v79 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = v77;
      }

      if (v79)
      {
        if (v79 >> 61)
        {
          goto LABEL_641;
        }

        v80 = operator new(8 * v79);
      }

      else
      {
        v80 = 0;
      }

      v81 = &v80[8 * v76];
      *v81 = v63;
      v73 = v81 + 8;
      v60 = memcpy(v80, v74, v75);
      *(a3 + 8) = v80;
      *(a3 + 16) = v73;
      *(a3 + 24) = &v80[8 * v79];
      if (v74)
      {
        operator delete(v74);
      }

      v4 = v475;
      v61 = v7;
    }

    else
    {
      *v72 = v63;
      v73 = v72 + 8;
    }

    *(a3 + 16) = v73;
  }

  if (SHIBYTE(v485[1]) < 0)
  {
    operator delete(__p);
  }

  v82 = v482.n128_u64[0];
  v83 = llvm::APFloatBase::PPCDoubleDouble(v60);
  if (v83 == v82)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v482);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v482);
  }

  if (v83 == v492.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v492);
    if ((v495 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v492);
  if (v495 < 0)
  {
LABEL_97:
    operator delete(v494.n128_u64[0]);
  }

LABEL_98:
  LODWORD(v481) = 1;
  v483 = 9;
  strcpy(&v482, "min_value");
  LODWORD(__p) = 2;
  v487 = 9;
  v87 = *"max_value";
  strcpy(v485, "max_value");
  v474 = a2;
  if ((v61 & 0x80000000) == 0)
  {
    v88 = *a3;
    v89 = operator new(0x170uLL);
    mlir::PatternBenefit::PatternBenefit(&v493, 1);
    mlir::Pattern::Pattern((v89 + 1), "mps.clamp", 9, v493, v88, 0, 0);
    v89[12] = v4;
    *v89 = &unk_1F5B134A8;
    v493 = &v481;
    p_p = &v488;
    llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v89 + 13), &v493, &p_p);
    v89[16] = v89 + 18;
    v89[17] = 0x400000000;
    if (!v89[9])
    {
      v493 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::ClampOp, mlir::anec::ClampedRelu>]";
      v494.n128_u64[0] = 147;
      v90 = llvm::StringRef::find(&v493, "DesiredTypeName = ", 0x12uLL, 0);
      if (v494.n128_u64[0] >= v90)
      {
        v91 = v90;
      }

      else
      {
        v91 = v494.n128_u64[0];
      }

      v92 = &v493[v91];
      v93 = v494.n128_u64[0] - v91;
      if (v494.n128_u64[0] - v91 >= 0x12)
      {
        v94 = 18;
      }

      else
      {
        v94 = v494.n128_u64[0] - v91;
      }

      v95 = &v92[v94];
      v96 = v93 - v94;
      if (v96 >= v96 - 1)
      {
        --v96;
      }

      v89[8] = v95;
      v89[9] = v96;
    }

    v85 = *(v89 + 22);
    if (v85 > *(v89 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v89 + 10), v89 + 12, v85, 16);
      v85 = *(v89 + 22);
    }

    *(v89 + 22) = v85;
    v98 = *(a3 + 16);
    v97 = *(a3 + 24);
    if (v98 >= v97)
    {
      v100 = *(a3 + 8);
      v101 = v98 - v100;
      v102 = (v98 - v100) >> 3;
      v103 = v102 + 1;
      if ((v102 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v104 = v97 - v100;
      if (v104 >> 2 > v103)
      {
        v103 = v104 >> 2;
      }

      v105 = v104 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v103;
      if (v105)
      {
        if (v105 >> 61)
        {
          goto LABEL_641;
        }

        v106 = operator new(8 * v105);
      }

      else
      {
        v106 = 0;
      }

      v107 = &v106[8 * v102];
      *v107 = v89;
      v99 = v107 + 8;
      memcpy(v106, v100, v101);
      *(a3 + 8) = v106;
      *(a3 + 16) = v99;
      *(a3 + 24) = &v106[8 * v105];
      if (v100)
      {
        operator delete(v100);
      }

      v4 = v475;
      v61 = v7;
    }

    else
    {
      *v98 = v89;
      v99 = v98 + 8;
    }

    *(a3 + 16) = v99;
    if (v487 < 0)
    {
      operator delete(v485[0]);
      if ((v483 & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  if (v483 < 0)
  {
LABEL_130:
    operator delete(v482.n128_u64[0]);
  }

LABEL_131:
  LODWORD(v481) = 1;
  v483 = 9;
  strcpy(&v482, "max_value");
  v487 = 5;
  LODWORD(__p) = 2;
  strcpy(v485, "slope");
  if (v61 < 0)
  {
    goto LABEL_162;
  }

  v108 = *a3;
  v109 = operator new(0x170uLL);
  mlir::PatternBenefit::PatternBenefit(&v493, 1);
  mlir::Pattern::Pattern((v109 + 1), "mps.n_relu", 10, v493, v108, 0, 0);
  v109[12] = v4;
  *v109 = &unk_1F5B13518;
  v493 = &v481;
  p_p = &v488;
  llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v109 + 13), &v493, &p_p);
  v109[16] = v109 + 18;
  v109[17] = 0x400000000;
  if (!v109[9])
  {
    v493 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::NReluOp, mlir::anec::NRelu>]";
    v494.n128_u64[0] = 141;
    v110 = llvm::StringRef::find(&v493, "DesiredTypeName = ", 0x12uLL, 0);
    if (v494.n128_u64[0] >= v110)
    {
      v111 = v110;
    }

    else
    {
      v111 = v494.n128_u64[0];
    }

    v112 = &v493[v111];
    v113 = v494.n128_u64[0] - v111;
    if (v494.n128_u64[0] - v111 >= 0x12)
    {
      v114 = 18;
    }

    else
    {
      v114 = v494.n128_u64[0] - v111;
    }

    v115 = &v112[v114];
    v116 = v113 - v114;
    if (v116 >= v116 - 1)
    {
      --v116;
    }

    v109[8] = v115;
    v109[9] = v116;
  }

  v85 = *(v109 + 22);
  if (v85 > *(v109 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v109 + 10), v109 + 12, v85, 16);
    v85 = *(v109 + 22);
  }

  *(v109 + 22) = v85;
  v118 = *(a3 + 16);
  v117 = *(a3 + 24);
  if (v118 >= v117)
  {
    v120 = *(a3 + 8);
    v121 = v118 - v120;
    v122 = (v118 - v120) >> 3;
    v123 = v122 + 1;
    if ((v122 + 1) >> 61)
    {
      goto LABEL_640;
    }

    v124 = v117 - v120;
    if (v124 >> 2 > v123)
    {
      v123 = v124 >> 2;
    }

    v125 = v124 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v123;
    if (v125)
    {
      if (v125 >> 61)
      {
        goto LABEL_641;
      }

      v126 = operator new(8 * v125);
    }

    else
    {
      v126 = 0;
    }

    v127 = &v126[8 * v122];
    *v127 = v109;
    v119 = v127 + 8;
    memcpy(v126, v120, v121);
    *(a3 + 8) = v126;
    *(a3 + 16) = v119;
    *(a3 + 24) = &v126[8 * v125];
    if (v120)
    {
      operator delete(v120);
    }

    v4 = v475;
  }

  else
  {
    *v118 = v109;
    v119 = v118 + 8;
  }

  *(a3 + 16) = v119;
  if ((v487 & 0x80000000) == 0)
  {
LABEL_162:
    if ((v483 & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  operator delete(v485[0]);
  if (v483 < 0)
  {
LABEL_163:
    operator delete(v482.n128_u64[0]);
  }

LABEL_164:
  v128 = *a3;
  v495 = 5;
  LODWORD(v493) = 1;
  strcpy(&v494, "slope");
  llvm::detail::IEEEFloat::IEEEFloat(&v481, 0.0, v84, v85, v86);
  llvm::APFloat::Storage::Storage(&v492, &v481, v476);
  llvm::detail::IEEEFloat::~IEEEFloat(&v481);
  std::pair<llvm::APFloat,std::string>::pair[abi:nn200100]<llvm::APFloat,char const(&)[7],0>(&v481, &p_p, "offset");
  v129 = operator new(0x170uLL);
  mlir::PatternBenefit::PatternBenefit(&v478, 1);
  mlir::Pattern::Pattern((v129 + 8), "mps.prelu", 9, v478, v128, 0, 0);
  *(v129 + 12) = v4;
  *v129 = &unk_1F5B13588;
  v478 = &v493;
  v480 = v496;
  llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v129 + 104), &v478, &v480);
  *(v129 + 16) = v129 + 144;
  *(v129 + 17) = 0x400000000;
  llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(v129 + 32, &v481, v486);
  if (!*(v129 + 9))
  {
    v478 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::PReluOp, mlir::anec::LeakyRelu>]";
    v479 = 145;
    v130 = llvm::StringRef::find(&v478, "DesiredTypeName = ", 0x12uLL, 0);
    if (v479 >= v130)
    {
      v131 = v130;
    }

    else
    {
      v131 = v479;
    }

    v132 = &v478[v131];
    v133 = v479 - v131;
    if (v479 - v131 >= 0x12)
    {
      v134 = 18;
    }

    else
    {
      v134 = v479 - v131;
    }

    v135 = &v132[v134];
    v136 = v133 - v134;
    if (v136 >= v136 - 1)
    {
      --v136;
    }

    *(v129 + 8) = v135;
    *(v129 + 9) = v136;
  }

  v137 = *(v129 + 22);
  if (v137 > *(v129 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v129 + 80), v129 + 96, v137, 16);
    LODWORD(v137) = *(v129 + 22);
  }

  *(v129 + 22) = v137;
  v139 = *(a3 + 16);
  v138 = *(a3 + 24);
  if (v139 >= v138)
  {
    v141 = *(a3 + 8);
    v142 = v139 - v141;
    v143 = (v139 - v141) >> 3;
    v144 = v143 + 1;
    if ((v143 + 1) >> 61)
    {
      goto LABEL_640;
    }

    v145 = v138 - v141;
    if (v145 >> 2 > v144)
    {
      v144 = v145 >> 2;
    }

    if (v145 >= 0x7FFFFFFFFFFFFFF8)
    {
      v146 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v146 = v144;
    }

    if (v146)
    {
      if (v146 >> 61)
      {
        goto LABEL_641;
      }

      v147 = operator new(8 * v146);
    }

    else
    {
      v147 = 0;
    }

    v148 = &v147[8 * v143];
    *v148 = v129;
    v140 = v148 + 8;
    memcpy(v147, v141, v142);
    *(a3 + 8) = v147;
    *(a3 + 16) = v140;
    *(a3 + 24) = &v147[8 * v146];
    if (v141)
    {
      operator delete(v141);
    }

    v4 = v475;
    v87 = *"max_value";
  }

  else
  {
    *v139 = v129;
    v140 = v139 + 8;
  }

  *(a3 + 16) = v140;
  if (SHIBYTE(v485[1]) < 0)
  {
    operator delete(__p);
  }

  if (v83 == v482.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v482);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v482);
  }

  if (v83 == v492.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v492);
    if ((v495 & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_200;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v492);
  if (v495 < 0)
  {
LABEL_200:
    operator delete(v494.n128_u64[0]);
  }

LABEL_201:
  llvm::detail::IEEEFloat::IEEEFloat(&v481, 6.0, v149, v150, v151);
  llvm::APFloat::Storage::Storage(&v494, &v481, v476);
  llvm::detail::IEEEFloat::~IEEEFloat(&v481);
  if (v83 == v494.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v482, &v494);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v482, &v494);
  }

  HIBYTE(v485[1]) = 9;
  strcpy(v485, "e");
  __p = v87;
  llvm::detail::IEEEFloat::IEEEFloat(&v478, 0.0, v152, v153, v154);
  llvm::APFloat::Storage::Storage(&v492, &v478, v476);
  llvm::detail::IEEEFloat::~IEEEFloat(&v478);
  if (v83 == v492.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v488, &v492);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v488, &v492);
  }

  v490 = 5;
  strcpy(v489, "slope");
  if ((v7 & 0x80000000) == 0)
  {
    v155 = *a3;
    v156 = operator new(0x170uLL);
    mlir::PatternBenefit::PatternBenefit(&v478, 1);
    mlir::Pattern::Pattern((v156 + 8), "mps.relu6", 9, v478, v155, 0, 0);
    *(v156 + 12) = v4;
    *v156 = &unk_1F5B135F8;
    v478 = 0;
    v480 = 0;
    llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v156 + 104), &v478, &v480);
    *(v156 + 16) = v156 + 144;
    *(v156 + 17) = 0x400000000;
    llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(v156 + 32, &v481, &p_p);
    if (!*(v156 + 9))
    {
      v478 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::Relu6Op, mlir::anec::NRelu>]";
      v479 = 141;
      v157 = llvm::StringRef::find(&v478, "DesiredTypeName = ", 0x12uLL, 0);
      if (v479 >= v157)
      {
        v158 = v157;
      }

      else
      {
        v158 = v479;
      }

      v159 = &v478[v158];
      v160 = v479 - v158;
      if (v479 - v158 >= 0x12)
      {
        v161 = 18;
      }

      else
      {
        v161 = v479 - v158;
      }

      v162 = &v159[v161];
      v163 = v160 - v161;
      if (v163 >= v163 - 1)
      {
        --v163;
      }

      *(v156 + 8) = v162;
      *(v156 + 9) = v163;
    }

    v164 = *(v156 + 22);
    if (v164 > *(v156 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v156 + 80), v156 + 96, v164, 16);
      LODWORD(v164) = *(v156 + 22);
    }

    *(v156 + 22) = v164;
    v166 = *(a3 + 16);
    v165 = *(a3 + 24);
    if (v166 >= v165)
    {
      v168 = *(a3 + 8);
      v169 = v166 - v168;
      v170 = (v166 - v168) >> 3;
      v171 = v170 + 1;
      if ((v170 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v172 = v165 - v168;
      if (v172 >> 2 > v171)
      {
        v171 = v172 >> 2;
      }

      if (v172 >= 0x7FFFFFFFFFFFFFF8)
      {
        v173 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v173 = v171;
      }

      if (v173)
      {
        if (v173 >> 61)
        {
          goto LABEL_641;
        }

        v174 = operator new(8 * v173);
      }

      else
      {
        v174 = 0;
      }

      v175 = &v174[8 * v170];
      *v175 = v156;
      v167 = v175 + 8;
      memcpy(v174, v168, v169);
      *(a3 + 8) = v174;
      *(a3 + 16) = v167;
      *(a3 + 24) = &v174[8 * v173];
      if (v168)
      {
        operator delete(v168);
      }

      v4 = v475;
    }

    else
    {
      *v166 = v156;
      v167 = v166 + 8;
    }

    *(a3 + 16) = v167;
    if (v490 < 0)
    {
      operator delete(v489[0]);
    }
  }

  if (v83 == v488.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v488);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v488);
  }

  v176 = v477;
  if (SHIBYTE(v485[1]) < 0)
  {
    operator delete(__p);
  }

  if (v83 == v482.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v482);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v482);
  }

  if (v83 == v492.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v492);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v492);
  }

  if (v83 == v494.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v494);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v494);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v481, 0.0, v177, v178, v179);
  llvm::APFloat::Storage::Storage(&v494, &v481, v476);
  llvm::detail::IEEEFloat::~IEEEFloat(&v481);
  if (v83 == v494.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v482, &v494);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v482, &v494);
  }

  HIBYTE(v485[1]) = 7;
  strcpy(&__p, "epsilon");
  if ((v477 & 0x80000000) == 0)
  {
    v180 = *a3;
    v181 = operator new(0x170uLL);
    mlir::PatternBenefit::PatternBenefit(&p_p, 1);
    mlir::Pattern::Pattern((v181 + 8), "mps.reciprocal", 14, p_p, v180, 0, 0);
    *(v181 + 12) = v4;
    *v181 = &unk_1F5B13668;
    p_p = 0;
    v478 = 0;
    llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v181 + 104), &p_p, &v478);
    *(v181 + 16) = v181 + 144;
    *(v181 + 17) = 0x400000000;
    llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(v181 + 32, &v481, v486);
    if (!*(v181 + 9))
    {
      p_p = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::ReciprocalOp, mlir::anec::Invert>]";
      v492.n128_u64[0] = 147;
      v182 = llvm::StringRef::find(&p_p, "DesiredTypeName = ", 0x12uLL, 0);
      if (v492.n128_u64[0] >= v182)
      {
        v183 = v182;
      }

      else
      {
        v183 = v492.n128_u64[0];
      }

      v184 = p_p + v183;
      v185 = v492.n128_u64[0] - v183;
      if (v492.n128_u64[0] - v183 >= 0x12)
      {
        v186 = 18;
      }

      else
      {
        v186 = v492.n128_u64[0] - v183;
      }

      v187 = &v184[v186];
      v188 = v185 - v186;
      if (v188 >= v188 - 1)
      {
        --v188;
      }

      *(v181 + 8) = v187;
      *(v181 + 9) = v188;
    }

    v189 = *(v181 + 22);
    if (v189 > *(v181 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v181 + 80), v181 + 96, v189, 16);
      LODWORD(v189) = *(v181 + 22);
    }

    *(v181 + 22) = v189;
    v191 = *(a3 + 16);
    v190 = *(a3 + 24);
    if (v191 >= v190)
    {
      v193 = *(a3 + 8);
      v194 = v191 - v193;
      v195 = (v191 - v193) >> 3;
      v196 = v195 + 1;
      if ((v195 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v197 = v190 - v193;
      if (v197 >> 2 > v196)
      {
        v196 = v197 >> 2;
      }

      v198 = v197 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v196;
      if (v198)
      {
        if (v198 >> 61)
        {
          goto LABEL_641;
        }

        v199 = operator new(8 * v198);
      }

      else
      {
        v199 = 0;
      }

      v200 = &v199[8 * v195];
      *v200 = v181;
      v192 = v200 + 8;
      memcpy(v199, v193, v194);
      *(a3 + 8) = v199;
      *(a3 + 16) = v192;
      *(a3 + 24) = &v199[8 * v198];
      if (v193)
      {
        operator delete(v193);
      }

      v4 = v475;
      v176 = v477;
    }

    else
    {
      *v191 = v181;
      v192 = v191 + 8;
      v176 = v477;
    }

    *(a3 + 16) = v192;
    if (v176 >= 2)
    {
      v201 = *a3;
      v202 = operator new(0x170uLL);
      mlir::PatternBenefit::PatternBenefit(&p_p, 1);
      mlir::Pattern::Pattern((v202 + 8), "mps.reciprocal_square_root", 26, p_p, v201, 0, 0);
      *(v202 + 12) = v4;
      *v202 = &unk_1F5B136D8;
      p_p = 0;
      v478 = 0;
      llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v202 + 104), &p_p, &v478);
      *(v202 + 16) = v202 + 144;
      *(v202 + 17) = 0x400000000;
      llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(v202 + 32, &v481, v486);
      if (!*(v202 + 9))
      {
        p_p = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::ReciprocalSquareRootOp, mlir::anec::Rsqrt>]";
        v492.n128_u64[0] = 156;
        v203 = llvm::StringRef::find(&p_p, "DesiredTypeName = ", 0x12uLL, 0);
        if (v492.n128_u64[0] >= v203)
        {
          v204 = v203;
        }

        else
        {
          v204 = v492.n128_u64[0];
        }

        v205 = p_p + v204;
        v206 = v492.n128_u64[0] - v204;
        if (v492.n128_u64[0] - v204 >= 0x12)
        {
          v207 = 18;
        }

        else
        {
          v207 = v492.n128_u64[0] - v204;
        }

        v208 = &v205[v207];
        v209 = v206 - v207;
        if (v209 >= v209 - 1)
        {
          --v209;
        }

        *(v202 + 8) = v208;
        *(v202 + 9) = v209;
      }

      v210 = *(v202 + 22);
      if (v210 > *(v202 + 23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v202 + 80), v202 + 96, v210, 16);
        LODWORD(v210) = *(v202 + 22);
      }

      *(v202 + 22) = v210;
      v212 = *(a3 + 16);
      v211 = *(a3 + 24);
      if (v212 >= v211)
      {
        v214 = *(a3 + 8);
        v215 = v212 - v214;
        v216 = (v212 - v214) >> 3;
        v217 = v216 + 1;
        if ((v216 + 1) >> 61)
        {
          goto LABEL_640;
        }

        v218 = v211 - v214;
        if (v218 >> 2 > v217)
        {
          v217 = v218 >> 2;
        }

        if (v218 >= 0x7FFFFFFFFFFFFFF8)
        {
          v219 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v219 = v217;
        }

        if (v219)
        {
          if (v219 >> 61)
          {
            goto LABEL_641;
          }

          v220 = operator new(8 * v219);
        }

        else
        {
          v220 = 0;
        }

        v221 = &v220[8 * v216];
        *v221 = v202;
        v213 = v221 + 8;
        memcpy(v220, v214, v215);
        *(a3 + 8) = v220;
        *(a3 + 16) = v213;
        *(a3 + 24) = &v220[8 * v219];
        if (v214)
        {
          operator delete(v214);
        }

        v4 = v475;
      }

      else
      {
        *v212 = v202;
        v213 = v212 + 8;
      }

      *(a3 + 16) = v213;
      v222 = *a3;
      v223 = operator new(0x170uLL);
      mlir::PatternBenefit::PatternBenefit(&p_p, 1);
      mlir::Pattern::Pattern((v223 + 8), "mps.logarithm_base_2", 20, p_p, v222, 0, 0);
      *(v223 + 12) = v4;
      *v223 = &unk_1F5B13748;
      p_p = 0;
      v478 = 0;
      llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v223 + 104), &p_p, &v478);
      *(v223 + 16) = v223 + 144;
      *(v223 + 17) = 0x400000000;
      llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(v223 + 32, &v481, v486);
      if (!*(v223 + 9))
      {
        p_p = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::LogarithmBase2Op, mlir::anec::Log2>]";
        v492.n128_u64[0] = 149;
        v224 = llvm::StringRef::find(&p_p, "DesiredTypeName = ", 0x12uLL, 0);
        if (v492.n128_u64[0] >= v224)
        {
          v225 = v224;
        }

        else
        {
          v225 = v492.n128_u64[0];
        }

        v226 = p_p + v225;
        v227 = v492.n128_u64[0] - v225;
        if (v492.n128_u64[0] - v225 >= 0x12)
        {
          v228 = 18;
        }

        else
        {
          v228 = v492.n128_u64[0] - v225;
        }

        v229 = &v226[v228];
        v230 = v227 - v228;
        if (v230 >= v230 - 1)
        {
          --v230;
        }

        *(v223 + 8) = v229;
        *(v223 + 9) = v230;
      }

      v231 = *(v223 + 22);
      if (v231 > *(v223 + 23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v223 + 80), v223 + 96, v231, 16);
        LODWORD(v231) = *(v223 + 22);
      }

      *(v223 + 22) = v231;
      v233 = *(a3 + 16);
      v232 = *(a3 + 24);
      if (v233 >= v232)
      {
        v235 = *(a3 + 8);
        v236 = v233 - v235;
        v237 = (v233 - v235) >> 3;
        v238 = v237 + 1;
        if ((v237 + 1) >> 61)
        {
          goto LABEL_640;
        }

        v239 = v232 - v235;
        if (v239 >> 2 > v238)
        {
          v238 = v239 >> 2;
        }

        if (v239 >= 0x7FFFFFFFFFFFFFF8)
        {
          v240 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v240 = v238;
        }

        if (v240)
        {
          if (v240 >> 61)
          {
            goto LABEL_641;
          }

          v241 = operator new(8 * v240);
        }

        else
        {
          v241 = 0;
        }

        v242 = &v241[8 * v237];
        *v242 = v223;
        v234 = v242 + 8;
        memcpy(v241, v235, v236);
        *(a3 + 8) = v241;
        *(a3 + 16) = v234;
        *(a3 + 24) = &v241[8 * v240];
        if (v235)
        {
          operator delete(v235);
        }

        v4 = v475;
      }

      else
      {
        *v233 = v223;
        v234 = v233 + 8;
      }

      v176 = v477;
      *(a3 + 16) = v234;
    }
  }

  if (SHIBYTE(v485[1]) < 0)
  {
    operator delete(__p);
  }

  if (v83 == v482.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v482);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v482);
  }

  if (v83 == v494.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v494);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v494);
  }

  v483 = 5;
  LODWORD(v481) = 1;
  strcpy(&v482, "alpha");
  if (v176 >= 2)
  {
    v243 = *a3;
    v244 = operator new(0x170uLL);
    mlir::PatternBenefit::PatternBenefit(&v493, 1);
    mlir::Pattern::Pattern((v244 + 1), "mps.elu", 7, v493, v243, 0, 0);
    v244[12] = v4;
    *v244 = &unk_1F5B137B8;
    v493 = &v481;
    p_p = &__p;
    llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>((v244 + 13), &v493, &p_p);
    v244[16] = v244 + 18;
    v244[17] = 0x400000000;
    if (!v244[9])
    {
      v493 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertElementwiseUnary<mlir::mps::EluOp, mlir::anec::Elu>]";
      v494.n128_u64[0] = 137;
      v245 = llvm::StringRef::find(&v493, "DesiredTypeName = ", 0x12uLL, 0);
      if (v494.n128_u64[0] >= v245)
      {
        v246 = v245;
      }

      else
      {
        v246 = v494.n128_u64[0];
      }

      v247 = &v493[v246];
      v248 = v494.n128_u64[0] - v246;
      if (v494.n128_u64[0] - v246 >= 0x12)
      {
        v249 = 18;
      }

      else
      {
        v249 = v494.n128_u64[0] - v246;
      }

      v250 = &v247[v249];
      v251 = v248 - v249;
      if (v251 >= v251 - 1)
      {
        --v251;
      }

      v244[8] = v250;
      v244[9] = v251;
    }

    v252 = *(v244 + 22);
    if (v252 > *(v244 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v244 + 10), v244 + 12, v252, 16);
      LODWORD(v252) = *(v244 + 22);
    }

    *(v244 + 22) = v252;
    v254 = *(a3 + 16);
    v253 = *(a3 + 24);
    if (v254 >= v253)
    {
      v256 = *(a3 + 8);
      v257 = v254 - v256;
      v258 = (v254 - v256) >> 3;
      v259 = v258 + 1;
      if ((v258 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v260 = v253 - v256;
      if (v260 >> 2 > v259)
      {
        v259 = v260 >> 2;
      }

      if (v260 >= 0x7FFFFFFFFFFFFFF8)
      {
        v261 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v261 = v259;
      }

      if (v261)
      {
        if (v261 >> 61)
        {
          goto LABEL_641;
        }

        v262 = operator new(8 * v261);
      }

      else
      {
        v262 = 0;
      }

      v263 = &v262[8 * v258];
      *v263 = v244;
      v255 = v263 + 8;
      memcpy(v262, v256, v257);
      *(a3 + 8) = v262;
      *(a3 + 16) = v255;
      *(a3 + 24) = &v262[8 * v261];
      if (v256)
      {
        operator delete(v256);
      }
    }

    else
    {
      *v254 = v244;
      v255 = v254 + 8;
    }

    *(a3 + 16) = v255;
    if (v483 < 0)
    {
      operator delete(v482.n128_u64[0]);
    }

LABEL_379:
    v264 = *a3;
    v265 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v265 + 1), "mps.dequantize", 14, v481, v264, 0, 0);
    v265[12] = v4;
    *v265 = &unk_1F5B13828;
    *(v265 + 104) = v474;
    if (!v265[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertQuantizationOp<mlir::mps::DequantizeOp>]";
      v482.n128_u64[0] = 125;
      v266 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v266)
      {
        v267 = v266;
      }

      else
      {
        v267 = v482.n128_u64[0];
      }

      v268 = &v481[v267];
      v269 = v482.n128_u64[0] - v267;
      if (v482.n128_u64[0] - v267 >= 0x12)
      {
        v270 = 18;
      }

      else
      {
        v270 = v482.n128_u64[0] - v267;
      }

      v271 = &v268[v270];
      v272 = v269 - v270;
      if (v272 >= v272 - 1)
      {
        --v272;
      }

      v265[8] = v271;
      v265[9] = v272;
    }

    v273 = *(v265 + 22);
    if (v273 > *(v265 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v265 + 10), v265 + 12, v273, 16);
      LODWORD(v273) = *(v265 + 22);
    }

    *(v265 + 22) = v273;
    v275 = *(a3 + 16);
    v274 = *(a3 + 24);
    if (v275 >= v274)
    {
      v277 = *(a3 + 8);
      v278 = v275 - v277;
      v279 = (v275 - v277) >> 3;
      v280 = v279 + 1;
      if ((v279 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v281 = v274 - v277;
      if (v281 >> 2 > v280)
      {
        v280 = v281 >> 2;
      }

      if (v281 >= 0x7FFFFFFFFFFFFFF8)
      {
        v282 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v282 = v280;
      }

      if (v282)
      {
        if (v282 >> 61)
        {
          goto LABEL_641;
        }

        v283 = operator new(8 * v282);
      }

      else
      {
        v283 = 0;
      }

      v284 = &v283[8 * v279];
      *v284 = v265;
      v276 = v284 + 8;
      memcpy(v283, v277, v278);
      *(a3 + 8) = v283;
      *(a3 + 16) = v276;
      *(a3 + 24) = &v283[8 * v282];
      if (v277)
      {
        operator delete(v277);
      }
    }

    else
    {
      *v275 = v265;
      v276 = v275 + 8;
    }

    *(a3 + 16) = v276;
    v285 = *a3;
    v286 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v286 + 1), "mps.quantize", 12, v481, v285, 0, 0);
    v286[12] = v4;
    *v286 = &unk_1F5B13898;
    *(v286 + 104) = v474;
    if (!v286[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertQuantizationOp<mlir::mps::QuantizeOp>]";
      v482.n128_u64[0] = 123;
      v287 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v287)
      {
        v288 = v287;
      }

      else
      {
        v288 = v482.n128_u64[0];
      }

      v289 = &v481[v288];
      v290 = v482.n128_u64[0] - v288;
      if (v482.n128_u64[0] - v288 >= 0x12)
      {
        v291 = 18;
      }

      else
      {
        v291 = v482.n128_u64[0] - v288;
      }

      v292 = &v289[v291];
      v293 = v290 - v291;
      if (v293 >= v293 - 1)
      {
        --v293;
      }

      v286[8] = v292;
      v286[9] = v293;
    }

    v294 = *(v286 + 22);
    if (v294 > *(v286 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v286 + 10), v286 + 12, v294, 16);
      LODWORD(v294) = *(v286 + 22);
    }

    *(v286 + 22) = v294;
    v296 = *(a3 + 16);
    v295 = *(a3 + 24);
    if (v296 >= v295)
    {
      v298 = *(a3 + 8);
      v299 = v296 - v298;
      v300 = (v296 - v298) >> 3;
      v301 = v300 + 1;
      if ((v300 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v302 = v295 - v298;
      if (v302 >> 2 > v301)
      {
        v301 = v302 >> 2;
      }

      if (v302 >= 0x7FFFFFFFFFFFFFF8)
      {
        v303 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v303 = v301;
      }

      if (v303)
      {
        if (v303 >> 61)
        {
          goto LABEL_641;
        }

        v304 = operator new(8 * v303);
      }

      else
      {
        v304 = 0;
      }

      v305 = &v304[8 * v300];
      *v305 = v286;
      v297 = v305 + 8;
      memcpy(v304, v298, v299);
      *(a3 + 8) = v304;
      *(a3 + 16) = v297;
      *(a3 + 24) = &v304[8 * v303];
      if (v298)
      {
        operator delete(v298);
      }
    }

    else
    {
      *v296 = v286;
      v297 = v296 + 8;
    }

    *(a3 + 16) = v297;
    v306 = *a3;
    v307 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v307 + 1), "mps.conv_2d_data_gradient", 25, v481, v306, 0, 0);
    v307[12] = v4;
    *v307 = &unk_1F5B13908;
    *(v307 + 104) = v474;
    if (!v307[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertConv<mlir::mps::Conv2DDataGradientOp, mlir::anec::Deconvolution>]";
      v482.n128_u64[0] = 150;
      v308 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v308)
      {
        v309 = v308;
      }

      else
      {
        v309 = v482.n128_u64[0];
      }

      v310 = &v481[v309];
      v311 = v482.n128_u64[0] - v309;
      if (v482.n128_u64[0] - v309 >= 0x12)
      {
        v312 = 18;
      }

      else
      {
        v312 = v482.n128_u64[0] - v309;
      }

      v313 = &v310[v312];
      v314 = v311 - v312;
      if (v314 >= v314 - 1)
      {
        --v314;
      }

      v307[8] = v313;
      v307[9] = v314;
    }

    v315 = *(v307 + 22);
    if (v315 > *(v307 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v307 + 10), v307 + 12, v315, 16);
      LODWORD(v315) = *(v307 + 22);
    }

    *(v307 + 22) = v315;
    v317 = *(a3 + 16);
    v316 = *(a3 + 24);
    if (v317 >= v316)
    {
      v319 = *(a3 + 8);
      v320 = v317 - v319;
      v321 = (v317 - v319) >> 3;
      v322 = v321 + 1;
      if ((v321 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v323 = v316 - v319;
      if (v323 >> 2 > v322)
      {
        v322 = v323 >> 2;
      }

      if (v323 >= 0x7FFFFFFFFFFFFFF8)
      {
        v324 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v324 = v322;
      }

      if (v324)
      {
        if (v324 >> 61)
        {
          goto LABEL_641;
        }

        v325 = operator new(8 * v324);
      }

      else
      {
        v325 = 0;
      }

      v326 = &v325[8 * v321];
      *v326 = v307;
      v318 = v326 + 8;
      memcpy(v325, v319, v320);
      *(a3 + 8) = v325;
      *(a3 + 16) = v318;
      *(a3 + 24) = &v325[8 * v324];
      if (v319)
      {
        operator delete(v319);
      }
    }

    else
    {
      *v317 = v307;
      v318 = v317 + 8;
    }

    *(a3 + 16) = v318;
    v327 = *a3;
    v328 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v328 + 1), "mps.conv_2d", 11, v481, v327, 0, 0);
    v328[12] = v4;
    *v328 = &unk_1F5B13978;
    *(v328 + 104) = v474;
    if (!v328[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertConv<mlir::mps::Conv2DOp, mlir::anec::Convolution>]";
      v482.n128_u64[0] = 136;
      v329 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v329)
      {
        v330 = v329;
      }

      else
      {
        v330 = v482.n128_u64[0];
      }

      v331 = &v481[v330];
      v332 = v482.n128_u64[0] - v330;
      if (v482.n128_u64[0] - v330 >= 0x12)
      {
        v333 = 18;
      }

      else
      {
        v333 = v482.n128_u64[0] - v330;
      }

      v334 = &v331[v333];
      v335 = v332 - v333;
      if (v335 >= v335 - 1)
      {
        --v335;
      }

      v328[8] = v334;
      v328[9] = v335;
    }

    v336 = *(v328 + 22);
    if (v336 > *(v328 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v328 + 10), v328 + 12, v336, 16);
      LODWORD(v336) = *(v328 + 22);
    }

    *(v328 + 22) = v336;
    v338 = *(a3 + 16);
    v337 = *(a3 + 24);
    if (v338 >= v337)
    {
      v340 = *(a3 + 8);
      v341 = v338 - v340;
      v342 = (v338 - v340) >> 3;
      v343 = v342 + 1;
      if ((v342 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v344 = v337 - v340;
      if (v344 >> 2 > v343)
      {
        v343 = v344 >> 2;
      }

      if (v344 >= 0x7FFFFFFFFFFFFFF8)
      {
        v345 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v345 = v343;
      }

      if (v345)
      {
        if (v345 >> 61)
        {
          goto LABEL_641;
        }

        v346 = operator new(8 * v345);
      }

      else
      {
        v346 = 0;
      }

      v347 = &v346[8 * v342];
      *v347 = v328;
      v339 = v347 + 8;
      memcpy(v346, v340, v341);
      *(a3 + 8) = v346;
      *(a3 + 16) = v339;
      *(a3 + 24) = &v346[8 * v345];
      if (v340)
      {
        operator delete(v340);
      }
    }

    else
    {
      *v338 = v328;
      v339 = v338 + 8;
    }

    *(a3 + 16) = v339;
    v348 = *a3;
    v349 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v349 + 1), "mps.conv_3d_data_gradient", 25, v481, v348, 0, 0);
    v349[12] = v4;
    *v349 = &unk_1F5B139E8;
    *(v349 + 104) = v474;
    if (!v349[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertConv<mlir::mps::Conv3DDataGradientOp, mlir::anec::Deconvolution>]";
      v482.n128_u64[0] = 150;
      v350 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v350)
      {
        v351 = v350;
      }

      else
      {
        v351 = v482.n128_u64[0];
      }

      v352 = &v481[v351];
      v353 = v482.n128_u64[0] - v351;
      if (v482.n128_u64[0] - v351 >= 0x12)
      {
        v354 = 18;
      }

      else
      {
        v354 = v482.n128_u64[0] - v351;
      }

      v355 = &v352[v354];
      v356 = v353 - v354;
      if (v356 >= v356 - 1)
      {
        --v356;
      }

      v349[8] = v355;
      v349[9] = v356;
    }

    v357 = *(v349 + 22);
    if (v357 > *(v349 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v349 + 10), v349 + 12, v357, 16);
      LODWORD(v357) = *(v349 + 22);
    }

    *(v349 + 22) = v357;
    v359 = *(a3 + 16);
    v358 = *(a3 + 24);
    if (v359 >= v358)
    {
      v361 = *(a3 + 8);
      v362 = v359 - v361;
      v363 = (v359 - v361) >> 3;
      v364 = v363 + 1;
      if ((v363 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v365 = v358 - v361;
      if (v365 >> 2 > v364)
      {
        v364 = v365 >> 2;
      }

      if (v365 >= 0x7FFFFFFFFFFFFFF8)
      {
        v366 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v366 = v364;
      }

      if (v366)
      {
        if (v366 >> 61)
        {
          goto LABEL_641;
        }

        v367 = operator new(8 * v366);
      }

      else
      {
        v367 = 0;
      }

      v368 = &v367[8 * v363];
      *v368 = v349;
      v360 = v368 + 8;
      memcpy(v367, v361, v362);
      *(a3 + 8) = v367;
      *(a3 + 16) = v360;
      *(a3 + 24) = &v367[8 * v366];
      if (v361)
      {
        operator delete(v361);
      }
    }

    else
    {
      *v359 = v349;
      v360 = v359 + 8;
    }

    *(a3 + 16) = v360;
    v369 = *a3;
    v370 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v370 + 1), "mps.conv_3d", 11, v481, v369, 0, 0);
    v370[12] = v4;
    *v370 = &unk_1F5B13A58;
    *(v370 + 104) = v474;
    if (!v370[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertConv<mlir::mps::Conv3DOp, mlir::anec::Convolution>]";
      v482.n128_u64[0] = 136;
      v371 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v371)
      {
        v372 = v371;
      }

      else
      {
        v372 = v482.n128_u64[0];
      }

      v373 = &v481[v372];
      v374 = v482.n128_u64[0] - v372;
      if (v482.n128_u64[0] - v372 >= 0x12)
      {
        v375 = 18;
      }

      else
      {
        v375 = v482.n128_u64[0] - v372;
      }

      v376 = &v373[v375];
      v377 = v374 - v375;
      if (v377 >= v377 - 1)
      {
        --v377;
      }

      v370[8] = v376;
      v370[9] = v377;
    }

    v378 = *(v370 + 22);
    if (v378 > *(v370 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v370 + 10), v370 + 12, v378, 16);
      LODWORD(v378) = *(v370 + 22);
    }

    *(v370 + 22) = v378;
    v380 = *(a3 + 16);
    v379 = *(a3 + 24);
    if (v380 >= v379)
    {
      v382 = *(a3 + 8);
      v383 = v380 - v382;
      v384 = (v380 - v382) >> 3;
      v385 = v384 + 1;
      if ((v384 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v386 = v379 - v382;
      if (v386 >> 2 > v385)
      {
        v385 = v386 >> 2;
      }

      if (v386 >= 0x7FFFFFFFFFFFFFF8)
      {
        v387 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v387 = v385;
      }

      if (v387)
      {
        if (v387 >> 61)
        {
          goto LABEL_641;
        }

        v388 = operator new(8 * v387);
      }

      else
      {
        v388 = 0;
      }

      v389 = &v388[8 * v384];
      *v389 = v370;
      v381 = v389 + 8;
      memcpy(v388, v382, v383);
      *(a3 + 8) = v388;
      *(a3 + 16) = v381;
      *(a3 + 24) = &v388[8 * v387];
      if (v382)
      {
        operator delete(v382);
      }
    }

    else
    {
      *v380 = v370;
      v381 = v380 + 8;
    }

    *(a3 + 16) = v381;
    v390 = *a3;
    v391 = operator new(0x70uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v391 + 1), "mps.depthwise_conv_2d", 21, v481, v390, 0, 0);
    v391[12] = v4;
    *v391 = &unk_1F5B13AC8;
    *(v391 + 104) = v474;
    if (!v391[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertConv<mlir::mps::DepthwiseConv2DOp, mlir::anec::Convolution>]";
      v482.n128_u64[0] = 145;
      v392 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v392)
      {
        v393 = v392;
      }

      else
      {
        v393 = v482.n128_u64[0];
      }

      v394 = &v481[v393];
      v395 = v482.n128_u64[0] - v393;
      if (v482.n128_u64[0] - v393 >= 0x12)
      {
        v396 = 18;
      }

      else
      {
        v396 = v482.n128_u64[0] - v393;
      }

      v397 = &v394[v396];
      v398 = v395 - v396;
      if (v398 >= v398 - 1)
      {
        --v398;
      }

      v391[8] = v397;
      v391[9] = v398;
    }

    v399 = *(v391 + 22);
    if (v399 > *(v391 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v391 + 10), v391 + 12, v399, 16);
      LODWORD(v399) = *(v391 + 22);
    }

    *(v391 + 22) = v399;
    v401 = *(a3 + 16);
    v400 = *(a3 + 24);
    if (v401 >= v400)
    {
      v403 = *(a3 + 8);
      v404 = v401 - v403;
      v405 = (v401 - v403) >> 3;
      v406 = v405 + 1;
      if ((v405 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v407 = v400 - v403;
      if (v407 >> 2 > v406)
      {
        v406 = v407 >> 2;
      }

      if (v407 >= 0x7FFFFFFFFFFFFFF8)
      {
        v408 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v408 = v406;
      }

      if (v408)
      {
        if (v408 >> 61)
        {
          goto LABEL_641;
        }

        v409 = operator new(8 * v408);
      }

      else
      {
        v409 = 0;
      }

      v410 = &v409[8 * v405];
      *v410 = v391;
      v402 = v410 + 8;
      memcpy(v409, v403, v404);
      *(a3 + 8) = v409;
      *(a3 + 16) = v402;
      *(a3 + 24) = &v409[8 * v408];
      if (v403)
      {
        operator delete(v403);
      }
    }

    else
    {
      *v401 = v391;
      v402 = v401 + 8;
    }

    *(a3 + 16) = v402;
    v411 = *a3;
    v412 = operator new(0x68uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v412 + 1), "silc.all_slice", 14, v481, v411, 0, 0);
    v412[12] = v4;
    *v412 = &unk_1F5B13B38;
    if (!v412[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertSilcAllSlice]";
      v482.n128_u64[0] = 98;
      v413 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v413)
      {
        v414 = v413;
      }

      else
      {
        v414 = v482.n128_u64[0];
      }

      v415 = &v481[v414];
      v416 = v482.n128_u64[0] - v414;
      if (v482.n128_u64[0] - v414 >= 0x12)
      {
        v417 = 18;
      }

      else
      {
        v417 = v482.n128_u64[0] - v414;
      }

      v418 = &v415[v417];
      v419 = v416 - v417;
      if (v419 >= v419 - 1)
      {
        --v419;
      }

      v412[8] = v418;
      v412[9] = v419;
    }

    v420 = *(v412 + 22);
    if (v420 > *(v412 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v412 + 10), v412 + 12, v420, 16);
      LODWORD(v420) = *(v412 + 22);
    }

    *(v412 + 22) = v420;
    v422 = *(a3 + 16);
    v421 = *(a3 + 24);
    if (v422 >= v421)
    {
      v424 = *(a3 + 8);
      v425 = v422 - v424;
      v426 = (v422 - v424) >> 3;
      v427 = v426 + 1;
      if ((v426 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v428 = v421 - v424;
      if (v428 >> 2 > v427)
      {
        v427 = v428 >> 2;
      }

      if (v428 >= 0x7FFFFFFFFFFFFFF8)
      {
        v429 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v429 = v427;
      }

      if (v429)
      {
        if (v429 >> 61)
        {
          goto LABEL_641;
        }

        v430 = operator new(8 * v429);
      }

      else
      {
        v430 = 0;
      }

      v431 = &v430[8 * v426];
      *v431 = v412;
      v423 = v431 + 8;
      memcpy(v430, v424, v425);
      *(a3 + 8) = v430;
      *(a3 + 16) = v423;
      *(a3 + 24) = &v430[8 * v429];
      if (v424)
      {
        operator delete(v424);
      }
    }

    else
    {
      *v422 = v412;
      v423 = v422 + 8;
    }

    *(a3 + 16) = v423;
    v432 = *a3;
    v433 = operator new(0x68uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v433 + 1), "silc.all_gather", 15, v481, v432, 0, 0);
    v433[12] = v4;
    *v433 = &unk_1F5B13BA8;
    if (!v433[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertSilcAllGather]";
      v482.n128_u64[0] = 99;
      v434 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v434)
      {
        v435 = v434;
      }

      else
      {
        v435 = v482.n128_u64[0];
      }

      v436 = &v481[v435];
      v437 = v482.n128_u64[0] - v435;
      if (v482.n128_u64[0] - v435 >= 0x12)
      {
        v438 = 18;
      }

      else
      {
        v438 = v482.n128_u64[0] - v435;
      }

      v439 = &v436[v438];
      v440 = v437 - v438;
      if (v440 >= v440 - 1)
      {
        --v440;
      }

      v433[8] = v439;
      v433[9] = v440;
    }

    v441 = *(v433 + 22);
    if (v441 > *(v433 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v433 + 10), v433 + 12, v441, 16);
      LODWORD(v441) = *(v433 + 22);
    }

    *(v433 + 22) = v441;
    v443 = *(a3 + 16);
    v442 = *(a3 + 24);
    if (v443 >= v442)
    {
      v445 = *(a3 + 8);
      v446 = v443 - v445;
      v447 = (v443 - v445) >> 3;
      v448 = v447 + 1;
      if ((v447 + 1) >> 61)
      {
        goto LABEL_640;
      }

      v449 = v442 - v445;
      if (v449 >> 2 > v448)
      {
        v448 = v449 >> 2;
      }

      if (v449 >= 0x7FFFFFFFFFFFFFF8)
      {
        v450 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v450 = v448;
      }

      if (v450)
      {
        if (v450 >> 61)
        {
          goto LABEL_641;
        }

        v451 = operator new(8 * v450);
      }

      else
      {
        v451 = 0;
      }

      v452 = &v451[8 * v447];
      *v452 = v433;
      v444 = v452 + 8;
      memcpy(v451, v445, v446);
      *(a3 + 8) = v451;
      *(a3 + 16) = v444;
      *(a3 + 24) = &v451[8 * v450];
      if (v445)
      {
        operator delete(v445);
      }
    }

    else
    {
      *v443 = v433;
      v444 = v443 + 8;
    }

    *(a3 + 16) = v444;
    v453 = *a3;
    v454 = operator new(0x68uLL);
    mlir::PatternBenefit::PatternBenefit(&v481, 1);
    mlir::Pattern::Pattern((v454 + 1), "silc.all_reduce", 15, v481, v453, 0, 0);
    v454[12] = v4;
    *v454 = &unk_1F5B13C18;
    if (!v454[9])
    {
      v481 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertSilcAllReduce]";
      v482.n128_u64[0] = 99;
      v455 = llvm::StringRef::find(&v481, "DesiredTypeName = ", 0x12uLL, 0);
      if (v482.n128_u64[0] >= v455)
      {
        v456 = v455;
      }

      else
      {
        v456 = v482.n128_u64[0];
      }

      v457 = &v481[v456];
      v458 = v482.n128_u64[0] - v456;
      if (v482.n128_u64[0] - v456 >= 0x12)
      {
        v459 = 18;
      }

      else
      {
        v459 = v482.n128_u64[0] - v456;
      }

      v460 = &v457[v459];
      v461 = v458 - v459;
      if (v461 >= v461 - 1)
      {
        --v461;
      }

      v454[8] = v460;
      v454[9] = v461;
    }

    v462 = *(v454 + 22);
    if (v462 > *(v454 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v454 + 10), v454 + 12, v462, 16);
      LODWORD(v462) = *(v454 + 22);
    }

    *(v454 + 22) = v462;
    v464 = *(a3 + 16);
    v463 = *(a3 + 24);
    if (v464 < v463)
    {
      *v464 = v454;
      v465 = v464 + 8;
LABEL_639:
      *(a3 + 16) = v465;
      return;
    }

    v466 = *(a3 + 8);
    v467 = v464 - v466;
    v468 = (v464 - v466) >> 3;
    v469 = v468 + 1;
    if (!((v468 + 1) >> 61))
    {
      v470 = v463 - v466;
      if (v470 >> 2 > v469)
      {
        v469 = v470 >> 2;
      }

      if (v470 >= 0x7FFFFFFFFFFFFFF8)
      {
        v471 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v471 = v469;
      }

      if (!v471)
      {
        v472 = 0;
LABEL_637:
        v473 = &v472[8 * v468];
        *v473 = v454;
        v465 = v473 + 8;
        memcpy(v472, v466, v467);
        *(a3 + 8) = v472;
        *(a3 + 16) = v465;
        *(a3 + 24) = &v472[8 * v471];
        if (v466)
        {
          operator delete(v466);
        }

        goto LABEL_639;
      }

      if (!(v471 >> 61))
      {
        v472 = operator new(8 * v471);
        goto LABEL_637;
      }

LABEL_641:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

LABEL_640:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if ((v176 & 0x80000000) == 0)
  {
    goto LABEL_379;
  }
}

uint64_t std::pair<llvm::APFloat,std::string>::pair[abi:nn200100]<llvm::APFloat,char const(&)[7],0>(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), v5);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, v5);
  }

  v7 = strlen(a3);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *(a1 + 40) = v8;
    *(a1 + 48) = v10 | 0x8000000000000000;
    *(a1 + 32) = v9;
  }

  else
  {
    v9 = (a1 + 32);
    *(a1 + 55) = v7;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  memmove(v9, a3, v8);
LABEL_13:
  *(v9 + v8) = 0;
  return a1;
}

void mlir::populateMPSToANECFusionOpsConversionPatterns(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v130, 1);
  mlir::Pattern::Pattern((v5 + 1), "mps.conv_2d", 11, v130, v4, 0, 0);
  v5[12] = a2;
  *v5 = &unk_1F5B13C88;
  if (!v5[9])
  {
    v130 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertPalettizedConvPatternToFusionOp]";
    v131 = 117;
    v6 = llvm::StringRef::find(&v130, "DesiredTypeName = ", 0x12uLL, 0);
    if (v131 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v131;
    }

    v8 = &v130[v7];
    v9 = v131 - v7;
    if (v131 - v7 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v131 - v7;
    }

    v11 = &v8[v10];
    v12 = v9 - v10;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v5[8] = v11;
    v5[9] = v12;
  }

  v13 = *(v5 + 22);
  if (v13 > *(v5 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v5 + 10), v5 + 12, v13, 16);
    LODWORD(v13) = *(v5 + 22);
  }

  *(v5 + 22) = v13;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  if (v15 >= v14)
  {
    v17 = *(a1 + 8);
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      goto LABEL_158;
    }

    v21 = v14 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 >> 61)
      {
        goto LABEL_159;
      }

      v23 = operator new(8 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[8 * v19];
    *v24 = v5;
    v16 = v24 + 8;
    memcpy(v23, v17, v18);
    *(a1 + 8) = v23;
    *(a1 + 16) = v16;
    *(a1 + 24) = &v23[8 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = v5;
    v16 = v15 + 8;
  }

  *(a1 + 16) = v16;
  v25 = *a1;
  v26 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v130, 1);
  mlir::Pattern::Pattern((v26 + 1), "mps.matmul", 10, v130, v25, 0, 0);
  v26[12] = a2;
  *v26 = &unk_1F5B13CE8;
  if (!v26[9])
  {
    v130 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertPalettizedLinearPatternToFusionOp]";
    v131 = 119;
    v27 = llvm::StringRef::find(&v130, "DesiredTypeName = ", 0x12uLL, 0);
    if (v131 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v131;
    }

    v29 = &v130[v28];
    v30 = v131 - v28;
    if (v131 - v28 >= 0x12)
    {
      v31 = 18;
    }

    else
    {
      v31 = v131 - v28;
    }

    v32 = &v29[v31];
    v33 = v30 - v31;
    if (v33 >= v33 - 1)
    {
      --v33;
    }

    v26[8] = v32;
    v26[9] = v33;
  }

  v34 = *(v26 + 22);
  if (v34 > *(v26 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v26 + 10), v26 + 12, v34, 16);
    LODWORD(v34) = *(v26 + 22);
  }

  *(v26 + 22) = v34;
  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  if (v36 >= v35)
  {
    v38 = *(a1 + 8);
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 3;
    v41 = v40 + 1;
    if ((v40 + 1) >> 61)
    {
      goto LABEL_158;
    }

    v42 = v35 - v38;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (v43 >> 61)
      {
        goto LABEL_159;
      }

      v44 = operator new(8 * v43);
    }

    else
    {
      v44 = 0;
    }

    v45 = &v44[8 * v40];
    *v45 = v26;
    v37 = v45 + 8;
    memcpy(v44, v38, v39);
    *(a1 + 8) = v44;
    *(a1 + 16) = v37;
    *(a1 + 24) = &v44[8 * v43];
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v36 = v26;
    v37 = v36 + 8;
  }

  *(a1 + 16) = v37;
  v46 = *a1;
  v47 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v130, 1);
  mlir::Pattern::Pattern((v47 + 1), "mps.conv_2d", 11, v130, v46, 0, 0);
  v47[12] = a2;
  *v47 = &unk_1F5B13D48;
  if (!v47[9])
  {
    v130 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertQuantizedConvPatternToFusionOp]";
    v131 = 116;
    v48 = llvm::StringRef::find(&v130, "DesiredTypeName = ", 0x12uLL, 0);
    if (v131 >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = v131;
    }

    v50 = &v130[v49];
    v51 = v131 - v49;
    if (v131 - v49 >= 0x12)
    {
      v52 = 18;
    }

    else
    {
      v52 = v131 - v49;
    }

    v53 = &v50[v52];
    v54 = v51 - v52;
    if (v54 >= v54 - 1)
    {
      --v54;
    }

    v47[8] = v53;
    v47[9] = v54;
  }

  v55 = *(v47 + 22);
  if (v55 > *(v47 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v47 + 10), v47 + 12, v55, 16);
    LODWORD(v55) = *(v47 + 22);
  }

  *(v47 + 22) = v55;
  v57 = *(a1 + 16);
  v56 = *(a1 + 24);
  if (v57 >= v56)
  {
    v59 = *(a1 + 8);
    v60 = v57 - v59;
    v61 = (v57 - v59) >> 3;
    v62 = v61 + 1;
    if ((v61 + 1) >> 61)
    {
      goto LABEL_158;
    }

    v63 = v56 - v59;
    if (v63 >> 2 > v62)
    {
      v62 = v63 >> 2;
    }

    if (v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      v64 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v64 = v62;
    }

    if (v64)
    {
      if (v64 >> 61)
      {
        goto LABEL_159;
      }

      v65 = operator new(8 * v64);
    }

    else
    {
      v65 = 0;
    }

    v66 = &v65[8 * v61];
    *v66 = v47;
    v58 = v66 + 8;
    memcpy(v65, v59, v60);
    *(a1 + 8) = v65;
    *(a1 + 16) = v58;
    *(a1 + 24) = &v65[8 * v64];
    if (v59)
    {
      operator delete(v59);
    }
  }

  else
  {
    *v57 = v47;
    v58 = v57 + 8;
  }

  *(a1 + 16) = v58;
  v67 = *a1;
  v68 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v130, 1);
  mlir::Pattern::Pattern((v68 + 1), "mps.assign_variable", 19, v130, v67, 0, 0);
  v68[12] = a2;
  *v68 = &unk_1F5B13DA8;
  if (!v68[9])
  {
    v130 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertRingBufferWriterPatternToFusionOp]";
    v131 = 119;
    v69 = llvm::StringRef::find(&v130, "DesiredTypeName = ", 0x12uLL, 0);
    if (v131 >= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = v131;
    }

    v71 = &v130[v70];
    v72 = v131 - v70;
    if (v131 - v70 >= 0x12)
    {
      v73 = 18;
    }

    else
    {
      v73 = v131 - v70;
    }

    v74 = &v71[v73];
    v75 = v72 - v73;
    if (v75 >= v75 - 1)
    {
      --v75;
    }

    v68[8] = v74;
    v68[9] = v75;
  }

  v76 = *(v68 + 22);
  if (v76 > *(v68 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v68 + 10), v68 + 12, v76, 16);
    LODWORD(v76) = *(v68 + 22);
  }

  *(v68 + 22) = v76;
  v78 = *(a1 + 16);
  v77 = *(a1 + 24);
  if (v78 >= v77)
  {
    v80 = *(a1 + 8);
    v81 = v78 - v80;
    v82 = (v78 - v80) >> 3;
    v83 = v82 + 1;
    if ((v82 + 1) >> 61)
    {
      goto LABEL_158;
    }

    v84 = v77 - v80;
    if (v84 >> 2 > v83)
    {
      v83 = v84 >> 2;
    }

    if (v84 >= 0x7FFFFFFFFFFFFFF8)
    {
      v85 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v85 = v83;
    }

    if (v85)
    {
      if (v85 >> 61)
      {
        goto LABEL_159;
      }

      v86 = operator new(8 * v85);
    }

    else
    {
      v86 = 0;
    }

    v87 = &v86[8 * v82];
    *v87 = v68;
    v79 = v87 + 8;
    memcpy(v86, v80, v81);
    *(a1 + 8) = v86;
    *(a1 + 16) = v79;
    *(a1 + 24) = &v86[8 * v85];
    if (v80)
    {
      operator delete(v80);
    }
  }

  else
  {
    *v78 = v68;
    v79 = v78 + 8;
  }

  *(a1 + 16) = v79;
  v88 = *a1;
  v89 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v130, 1);
  mlir::Pattern::Pattern((v89 + 1), "mps.strided_slice", 17, v130, v88, 0, 0);
  v89[12] = a2;
  *v89 = &unk_1F5B13E08;
  if (!v89[9])
  {
    v130 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertRingBufferReaderPatternToFusionOp]";
    v131 = 119;
    v90 = llvm::StringRef::find(&v130, "DesiredTypeName = ", 0x12uLL, 0);
    if (v131 >= v90)
    {
      v91 = v90;
    }

    else
    {
      v91 = v131;
    }

    v92 = &v130[v91];
    v93 = v131 - v91;
    if (v131 - v91 >= 0x12)
    {
      v94 = 18;
    }

    else
    {
      v94 = v131 - v91;
    }

    v95 = &v92[v94];
    v96 = v93 - v94;
    if (v96 >= v96 - 1)
    {
      --v96;
    }

    v89[8] = v95;
    v89[9] = v96;
  }

  v97 = *(v89 + 22);
  if (v97 > *(v89 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v89 + 10), v89 + 12, v97, 16);
    LODWORD(v97) = *(v89 + 22);
  }

  *(v89 + 22) = v97;
  v99 = *(a1 + 16);
  v98 = *(a1 + 24);
  if (v99 >= v98)
  {
    v101 = *(a1 + 8);
    v102 = v99 - v101;
    v103 = (v99 - v101) >> 3;
    v104 = v103 + 1;
    if ((v103 + 1) >> 61)
    {
      goto LABEL_158;
    }

    v105 = v98 - v101;
    if (v105 >> 2 > v104)
    {
      v104 = v105 >> 2;
    }

    if (v105 >= 0x7FFFFFFFFFFFFFF8)
    {
      v106 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v106 = v104;
    }

    if (v106)
    {
      if (v106 >> 61)
      {
        goto LABEL_159;
      }

      v107 = operator new(8 * v106);
    }

    else
    {
      v107 = 0;
    }

    v108 = &v107[8 * v103];
    *v108 = v89;
    v100 = v108 + 8;
    memcpy(v107, v101, v102);
    *(a1 + 8) = v107;
    *(a1 + 16) = v100;
    *(a1 + 24) = &v107[8 * v106];
    if (v101)
    {
      operator delete(v101);
    }
  }

  else
  {
    *v99 = v89;
    v100 = v99 + 8;
  }

  *(a1 + 16) = v100;
  v109 = *a1;
  v110 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(&v130, 1);
  mlir::Pattern::Pattern((v110 + 1), "mpsx.buffer_to_tensor", 21, v130, v109, 0, 0);
  v110[12] = a2;
  *v110 = &unk_1F5B13E68;
  if (!v110[9])
  {
    v130 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::(anonymous namespace)::ConvertTensorBufferPatternToFusionOp]";
    v131 = 115;
    v111 = llvm::StringRef::find(&v130, "DesiredTypeName = ", 0x12uLL, 0);
    if (v131 >= v111)
    {
      v112 = v111;
    }

    else
    {
      v112 = v131;
    }

    v113 = &v130[v112];
    v114 = v131 - v112;
    if (v131 - v112 >= 0x12)
    {
      v115 = 18;
    }

    else
    {
      v115 = v131 - v112;
    }

    v116 = &v113[v115];
    v117 = v114 - v115;
    if (v117 >= v117 - 1)
    {
      --v117;
    }

    v110[8] = v116;
    v110[9] = v117;
  }

  v118 = *(v110 + 22);
  if (v118 > *(v110 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v110 + 10), v110 + 12, v118, 16);
    LODWORD(v118) = *(v110 + 22);
  }

  *(v110 + 22) = v118;
  v120 = *(a1 + 16);
  v119 = *(a1 + 24);
  if (v120 < v119)
  {
    *v120 = v110;
    v121 = v120 + 8;
    goto LABEL_157;
  }

  v122 = *(a1 + 8);
  v123 = v120 - v122;
  v124 = (v120 - v122) >> 3;
  v125 = v124 + 1;
  if ((v124 + 1) >> 61)
  {
LABEL_158:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v126 = v119 - v122;
  if (v126 >> 2 > v125)
  {
    v125 = v126 >> 2;
  }

  if (v126 >= 0x7FFFFFFFFFFFFFF8)
  {
    v127 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v127 = v125;
  }

  if (v127)
  {
    if (!(v127 >> 61))
    {
      v128 = operator new(8 * v127);
      goto LABEL_155;
    }

LABEL_159:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v128 = 0;
LABEL_155:
  v129 = &v128[8 * v124];
  *v129 = v110;
  v121 = v129 + 8;
  memcpy(v128, v122, v123);
  *(a1 + 8) = v128;
  *(a1 + 16) = v121;
  *(a1 + 24) = &v128[8 * v127];
  if (v122)
  {
    operator delete(v122);
  }

LABEL_157:
  *(a1 + 16) = v121;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void mlir::anonymous namespace::ConvertBiasAdd::~ConvertBiasAdd(mlir::_anonymous_namespace_::ConvertBiasAdd *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::BiasAddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v33 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBiasAdd::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v37 = *(a3 + 48);
  v5 = mlir::ValueRange::dereference_iterator(&v37, 0);
  v6 = mlir::ValueRange::dereference_iterator(&v37, 1);
  v7 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v35[0] = mlir::getRankPromotionTypeForANE(v7, v8);
  v35[1] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(v35);
  v11 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(v35);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v15 = IndexFromDim;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v36);
  if (StorageType)
  {
    if (StorageType == 1)
    {
      v17 = -1;
      goto LABEL_9;
    }

    v21 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v36);
    v22 = mlir::mps::stringifyTensorDataLayout(v21);
    if (!v22)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_29:
      v28 = std::string::insert(&__dst, 0, "BiasAdd unsupported data format ");
      v29 = v28->__r_.__value_.__r.__words[2];
      *__p = *&v28->__r_.__value_.__l.__data_;
      *&__p[16] = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      result = mlir::logMatchFailure(__p, *(v36 + 24), a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        v30 = result;
        operator delete(*__p);
        result = v30;
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v20 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_34;
    }

    v24 = v23;
    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v25 = v22;
    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v23 | 7) + 1;
      }

      p_dst = operator new(v27);
      __dst.__r_.__value_.__l.__size_ = v24;
      __dst.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v23;
      p_dst = &__dst;
      if (!v23)
      {
        goto LABEL_28;
      }
    }

    memmove(p_dst, v25, v24);
LABEL_28:
    p_dst->__r_.__value_.__s.__data_[v24] = 0;
    goto LABEL_29;
  }

  v17 = -3;
LABEL_9:
  if (v11 + v17 == v15)
  {
    *__p = v6;
    DefiningOp = mlir::Value::getDefiningOp(__p);
    if (DefiningOp)
    {
      {
        v32 = DefiningOp;
        DefiningOp = v32;
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
      }
    }
  }

  *__p = operator new(0x30uLL);
  *&__p[8] = xmmword_1E0982690;
  strcpy(*__p, "BiasAdd invalid channel or not a constant bias");
  result = mlir::logMatchFailure(__p, *(v36 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v20 = *__p;
LABEL_34:
    v31 = result;
    operator delete(v20);
    return v31;
  }

  return result;
}

uint64_t mlir::anonymous namespace::anonymous namespace::makeGOC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (GOC)
  {
    if (*(GOC + 36))
    {
      v10 = GOC - 16;
    }

    else
    {
      v10 = 0;
    }

    __p = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a1, a2, &__p, 1);
  }

  else
  {
    __p = operator new(0x20uLL);
    v14 = xmmword_1E09826A0;
    strcpy(__p, "Cannot create a valid GOC");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a1);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::anonymous namespace::anonymous namespace::makeGOC(uint64_t a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, void *a5, uint64_t isSplat, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v45 = *MEMORY[0x1E69E9840];
  v35 = a4;
  v36 = a3;
  v34 = a5;
  v15 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v33[0] = mlir::getRankPromotionTypeForANE(v15, v16);
  v33[1] = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v33);
  mlir::anec::getIndexFromDim(1, v18);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v42 = v44;
  v43 = 0xC00000000;
  v32 = 0;
  if (a4)
  {
    {
      goto LABEL_22;
    }

    v20 = v32;
  }

  else
  {
    v20 = 0;
    v44[0] = 1065353216;
    LODWORD(v43) = 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v33);
  if (v23)
  {
    v35 = (GOCConstant - 16);
    v39 = v41;
    v40 = 0xC00000000;
    v31 = 0;
    if (a5)
    {
      {
LABEL_20:
        if (v39 != v41)
        {
          free(v39);
        }

        goto LABEL_22;
      }

      v24 = v31;
    }

    else
    {
      v24 = 0;
      v41[0] = 0;
      LODWORD(v40) = 1;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v33);
    if (v27)
    {
      v34 = (v26 - 16);
      if (!isSplat)
      {
        isSplat = mlir::ElementsAttr::isSplat(v33);
      }

      LOBYTE(v37) = 0;
      v38 = 0;
      v28 = mlir::ShapedType::cloneWith(v33, &v37, isSplat);
    }

    goto LABEL_20;
  }

LABEL_22:
  if (v42 != v44)
  {
    free(v42);
  }

  return 0;
}

uint64_t mlir::anonymous namespace::anonymous namespace::getGOCConstantValue(void *a1, uint64_t *a2, int a3, int a4, uint64_t *a5)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = a1;
  v39 = 0;
  __p = &v39;
  ArgOperands = a1;
  result = mlir::Value::getDefiningOp(&ArgOperands);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__p, result);
    if (result)
    {
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v39);
      v43 = v11;
      __p = mlir::ElementsAttr::isSplat(&ArgOperands);
      if (mlir::Type::isF32(&__p) || a3)
      {
        ArgOperands = (a1[1] & 0xFFFFFFFFFFFFFFF8);
        Context = mlir::Attribute::getContext(&ArgOperands);
        v14 = mlir::Float32Type::get(Context, v16);
      }

      else
      {
        ArgOperands = (a1[1] & 0xFFFFFFFFFFFFFFF8);
        v12 = mlir::Attribute::getContext(&ArgOperands);
        v14 = mlir::Float16Type::get(v12, v13);
      }

      *a5 = v14;
      ArgOperands = v44;
      v43 = 0x400000000;
      __p = mlir::CallOpInterface::getArgOperands(&v39);
      *&v38 = v17;
      if (*(*mlir::ElementsAttr::isSplat(&__p) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (__p = mlir::CallOpInterface::getArgOperands(&v39), *&v38 = v18, v19 = *(*mlir::ElementsAttr::isSplat(&__p) + 136), v19 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) || v19 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        mlir::getFloatValues<float>(v39, v40, &ArgOperands, 1);
        v23 = v43;
        v24 = *(a2 + 2);
        if (v24 != v43)
        {
          if (v24 <= v43)
          {
            if (*(a2 + 3) < v43)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v43, 4);
              v24 = *(a2 + 2);
            }

            if (v24 != v23)
            {
              bzero((*a2 + 4 * v24), 4 * (v23 - v24));
            }
          }

          *(a2 + 2) = v23;
          v23 = v43;
        }

        v22 = ArgOperands;
        if (v23)
        {
          v25 = 0;
          v26 = *a2;
          if (v23 < 4 || (v26 - ArgOperands) < 0x10)
          {
            goto LABEL_58;
          }

          v27 = 0;
          v25 = v23 & 0xFFFFFFFC;
          __asm { FMOV            V0.4S, #1.0 }

          do
          {
            if (a3)
            {
              v33 = -1;
            }

            else
            {
              v33 = 0;
            }

            v34 = vbslq_s8(vdupq_n_s32(v33), vdivq_f32(_Q0, *&v22[v27 / 4]), *&v22[v27 / 4]);
            if (a4)
            {
              v35 = -1;
            }

            else
            {
              v35 = 0;
            }

            *(v26 + v27) = vbslq_s8(vdupq_n_s32(v35), vnegq_f32(v34), v34);
            v27 += 16;
          }

          while (((4 * v23) & 0x3FFFFFFF0) != v27);
          if (v23 != v25)
          {
LABEL_58:
            do
            {
              v36 = v22[v25];
              if (a3)
              {
                v36 = 1.0 / v36;
              }

              if (a4)
              {
                v36 = -v36;
              }

              *(v26 + 4 * v25++) = v36;
            }

            while (v23 != v25);
          }
        }

        matched = 1;
      }

      else
      {
        __p = operator new(0x58uLL);
        v38 = xmmword_1E09826B0;
        strcpy(__p, "Unable to get the GOC constant value. Only integer or float element type are allowed");
        DefiningOp = mlir::Value::getDefiningOp(&v41);
        matched = mlir::logMatchFailure(&__p, *(DefiningOp + 24), 0);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }

        v22 = ArgOperands;
      }

      if (v22 != v44)
      {
        free(v22);
      }

      return matched;
    }
  }

  return result;
}

unint64_t mlir::anonymous namespace::anonymous namespace::makeGOCConstant(uint64_t a1, mlir::MLIRContext *a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v73[5] = *MEMORY[0x1E69E9840];
  F16Type = a8;
  if (!a8)
  {
    F16Type = mlir::Builder::getF16Type((a1 + 8), a2);
  }

  if (mlir::Type::isF16(&F16Type) || mlir::Type::isF32(&F16Type))
  {
    if (a7)
    {
      goto LABEL_8;
    }

    IndexFromDim = mlir::anec::getIndexFromDim(1, a3);
    if (v16)
    {
      a6 = IndexFromDim;
LABEL_8:
      __b = v73;
      v72 = 5;
      if (a3 < 6)
      {
        if (a3)
        {
          memset_pattern16(v73, &unk_1E096FAE0, 8 * a3);
        }

        v17 = v73;
      }

      else
      {
        v71 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v73, a3, 8);
        v17 = __b;
        memset_pattern16(__b, &unk_1E096FAE0, 8 * a3);
      }

      v71 = a3;
      *(v17 + a6) = a5;
      v18 = mlir::RankedTensorType::get(v17, a3, F16Type, 0);
      v19 = __b;
      v20 = v71;
      v22 = mlir::Builder::getF16Type((a1 + 8), v21);
      v68 = mlir::MemRefType::get(v19, v20, v22, 0, 0, 0);
      if (v18)
      {
        v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      }

      else
      {
        v23 = 0;
      }

      mlir::mps::CPUNDArray::CPUNDArray(&__p, v18, v23, 0);
      isF32 = mlir::Type::isF32(&F16Type);
      v25 = v67;
      if (isF32)
      {
        if (a5 >= 1)
        {
          v26 = 0;
          if (a5 < 8)
          {
            goto LABEL_24;
          }

          if ((v67 - a4) < 0x20)
          {
            goto LABEL_24;
          }

          v26 = a5 & 0x7FFFFFFFFFFFFFF8;
          v27 = (a4 + 16);
          v28 = (v67 + 16);
          v29 = a5 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v30 = *v27;
            *(v28 - 1) = *(v27 - 1);
            *v28 = v30;
            v27 += 2;
            v28 += 2;
            v29 -= 8;
          }

          while (v29);
          if (a5 != v26)
          {
LABEL_24:
            v31 = a5 - v26;
            v32 = 4 * v26;
            v33 = (v25 + v32);
            v34 = (a4 + v32);
            do
            {
              v35 = *v34++;
              *v33++ = v35;
              --v31;
            }

            while (v31);
          }
        }

        goto LABEL_45;
      }

      if (a5 < 1)
      {
LABEL_45:
        v64[0] = mlir::mps::CPUNDArray::getElementsAttr(&__p, 0, 1);
        v64[1] = v60;
        v61 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), a2, &v68, v64);
        v62 = v61;
        v38 = v61 & 0xFFFFFFFFFFFFFF00;
        mlir::mps::CPUNDArray::~CPUNDArray(&__p);
        if (__b != v73)
        {
          free(__b);
        }

        v37 = v62;
        return v38 | v37;
      }

      if (a5 < 4)
      {
        v36 = 0;
LABEL_43:
        v51 = a5 - v36;
        v52 = (v25 + 2 * v36);
        v53 = (a4 + 4 * v36);
        do
        {
          v54 = *v53++;
          _S0 = v54;
          __asm { FCVT            H0, S0 }

          *v52++ = _S0;
          --v51;
        }

        while (v51);
        goto LABEL_45;
      }

      if (a5 >= 0x10)
      {
        v36 = a5 & 0x7FFFFFFFFFFFFFF0;
        v39 = (a4 + 32);
        v40 = (v67 + 16);
        v41 = a5 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v43 = v39[-2];
          v42 = v39[-1];
          v45 = *v39;
          v44 = v39[1];
          v39 += 4;
          v40[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(v43), v42);
          *v40 = vcvt_hight_f16_f32(vcvt_f16_f32(v45), v44);
          v40 += 2;
          v41 -= 16;
        }

        while (v41);
        if (a5 == v36)
        {
          goto LABEL_45;
        }

        if ((a5 & 0xC) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v36 = 0;
      }

      v46 = v36;
      v36 = a5 & 0x7FFFFFFFFFFFFFFCLL;
      v47 = (a4 + 4 * v46);
      v48 = (v25 + 2 * v46);
      v49 = v46 - (a5 & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v50 = *v47++;
        *v48++ = vcvt_f16_f32(v50);
        v49 += 4;
      }

      while (v49);
      if (a5 == v36)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    __p = operator new(0x20uLL);
    v66 = xmmword_1E09826D0;
    strcpy(__p, "Cannot get channel index");
  }

  else
  {
    __p = operator new(0x28uLL);
    v66 = xmmword_1E09826C0;
    strcpy(__p, "Unsupported GOC scale/bias data type");
  }

  mlir::logMatchFailure(&__p, a2, a1);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
  }

  v37 = 0;
  v38 = 0;
  return v38 | v37;
}

char *mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::GOC::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::anonymous namespace::canonicalizeType(void *a1, uint64_t a2)
{
  v23[67] = *MEMORY[0x1E69E9840];
  v18 = a1;
  v19 = a2;
  mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(v23);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v18);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v3) == 1 && (mlir::CallableOpInterface::getArgAttrsAttr(&v18), v4 <= 3))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v18);
    v6 = mlir::TypeConverter::convertType(v23, isSplat);
    if (!v6)
    {
      v6 = mlir::ElementsAttr::isSplat(&v18);
    }

    mlir::getRankPromotionShapeForANE(v18, v19, 0, &v20);
    mlir::MemRefType::get(v20, v21, v6, 0, 0, 0);
    if (v20 != &v22)
    {
      free(v20);
    }
  }

  else
  {
    v7 = mlir::TypeConverter::convertType(v23, v18);
    v17 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
      v7 = v8;
    }

    else
    {
      v9 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v7, v9);
    v11 = RankPromotionTypeForANE;
    if (RankPromotionTypeForANE)
    {
      RankPromotionTypeForANE = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*RankPromotionTypeForANE + 8);
    }

    v20 = v11;
    v21 = RankPromotionTypeForANE;
    v12 = mlir::CallableOpInterface::getArgAttrsAttr(&v20);
    v14 = v13;
    v15 = mlir::ElementsAttr::isSplat(&v20);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v17);
    mlir::MemRefType::get(v12, v14, v15, 0, MemorySpace);
  }

  mlir::TypeConverter::~TypeConverter(v23);
}

void mlir::anonymous namespace::ConvertConstant::~ConvertConstant(mlir::_anonymous_namespace_::ConvertConstant *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 **mlir::OpConversionPattern<mlir::mps::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v13[5] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v12, a2);
  v13[3] = v8;
  v13[4] = v9;
  (*(*a1 + 72))(a1, a2, v12, a5);
  return mlir::mps::AttributeHandler::decrementRefCount(v13);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v14[5] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v12, a3, a4);
  v8 = v12[0];
  v9 = v12[1];
  mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v13, a2);
  v14[3] = v8;
  v14[4] = v9;
  v10 = (*(*a1 + 80))(a1, a2, v13, a5);
  mlir::mps::AttributeHandler::decrementRefCount(v14);
  return v10;
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 7);
  v9 = a3 + 3;
  v42 = *(a3 + 6);
  v43 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v43 = i)
    {
      v11 = (*(mlir::ValueRange::dereference_iterator(&v42, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
        v33 = v11;
        v34 = v12;
        if (v11)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
          if (v14)
          {
            v15 = 8 * v14;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v15 -= 8;
              if (!v15)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            __p = operator new(0x48uLL);
            v36 = xmmword_1E0982670;
            strcpy(__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

LABEL_3:
      i = v43 + 1;
    }
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = a2 - 16;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      v19 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19->n128_u64[0] + 8))
      {
        v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19->n128_u64[0] + 8);
        v42 = v19;
        v43 = v20;
        if (v19)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v42) || !mlir::CallOpInterface::getArgOperands(&v42))
          {
            goto LABEL_33;
          }

          v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v42);
          if (v22)
          {
            v23 = 8 * v22;
            while (*v21 != 0x8000000000000000)
            {
              ++v21;
              v23 -= 8;
              if (!v23)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            __p = operator new(0x50uLL);
            v36 = xmmword_1E0982680;
            strcpy(__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
            result = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
            if (SHIBYTE(v36) < 0)
            {
              v25 = result;
              operator delete(__p);
              return v25;
            }

            return result;
          }
        }
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v37 = *a3;
  v38 = *(a3 + 16);
  v26 = *(a3 + 3);
  v39 = v26;
  if (v26)
  {
    v27 = *(v26->n128_u64[0] + 136);
    if (v27 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v26 = 0;
    }

    v42 = v26;
    if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      mlir::mps::MPSBufferTensorAttr::getHandle(&__p, &v42);
      Context = mlir::Attribute::getContext(&v42);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v29);
      v31 = __p;
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++v31[11];
      llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    }
  }

  v32 = *v9;
  v40 = a3[2];
  v41 = v32;
  v25 = (*(*a1 + 88))(a1, a2, &v37, a4);
  mlir::mps::AttributeHandler::decrementRefCount(&v39);
  return v25;
}

void mlir::anonymous namespace::ConvertConstant::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[67] = *MEMORY[0x1E69E9840];
  v24 = a2;
  mlir::TypeConverter::TypeConverter(v28, *(a1 + 96));
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v24);
  v22 = v9;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&AsAttribute);
  v26 = v10;
  isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
  v12 = mlir::TypeConverter::convertType(v28, isSplat);
  v13 = AsAttribute;
  v14 = v22;
  LOBYTE(ArgOperands) = 0;
  v27 = 0;
  v15 = mlir::BaseMemRefType::cloneWith(&v23, &ArgOperands, v12);
  v16 = v15;
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  ArgOperands = mlir::rewriteElementsAttr(v13, v14, v16, v17, 0);
  v26 = v18;
  v19 = v24;
  v20 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), *(v24 + 24), &v23, &ArgOperands);
  (*(*a4 + 8))(a4, v19, v20);
  mlir::TypeConverter::~TypeConverter(v28);
}

__n128 **mlir::mps::AttributeHandler::decrementRefCount(__n128 **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1->n128_u64[0] + 136);
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v1 = 0;
    }

    v12 = v1;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      mlir::mps::MPSBufferTensorAttr::getHandle(v11, &v12);
      Context = mlir::Attribute::getContext(&v12);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v4);
      v6 = v11[0];
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      if (*(v6 + 88) == 1)
      {
        *(v6 + 88) = 0;
        if (*(v6 + 80) == 1)
        {
          v7 = *(v6 + 64);
          if (v7 >= 8)
          {
            v8 = (v6 + 40);
            v9 = (v6 + 40);
            if ((v7 & 2) == 0)
            {
              v9 = *v8;
            }

            (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, *(v6 + 16), *(v6 + 24), *(v6 + 32));
            v10 = *(v6 + 64);
            if (v10 >= 8)
            {
              if ((v10 & 4) != 0)
              {
                if ((v10 & 2) == 0)
                {
                  v8 = *v8;
                }

                (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
              }

              if ((v10 & 2) == 0)
              {
                llvm::deallocate_buffer(*(v6 + 40), *(v6 + 48));
              }
            }
          }

          *(v6 + 80) = 0;
        }
      }

      else
      {
        --*(v6 + 88);
      }

      return llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    }
  }

  return this;
}

uint64_t mlir::anonymous namespace::anonymous namespace::canonicalizeType(uint64_t a1, void *a2, uint64_t a3)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  v23 = a3;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v22);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v5) == 1 && (mlir::CallableOpInterface::getArgAttrsAttr(&v22), v6 <= 3))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v22);
    v8 = mlir::TypeConverter::convertType(a1, isSplat);
    if (!v8)
    {
      v8 = mlir::ElementsAttr::isSplat(&v22);
    }

    mlir::getRankPromotionShapeForANE(v22, v23, 0, &v24);
    result = mlir::MemRefType::get(v24, v25, v8, 0, 0, 0);
    if (v24 != v26)
    {
      v10 = result;
      free(v24);
      return v10;
    }
  }

  else
  {
    v11 = mlir::TypeConverter::convertType(a1, v22);
    v21 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      v11 = v12;
    }

    else
    {
      v13 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v11, v13);
    v15 = RankPromotionTypeForANE;
    if (RankPromotionTypeForANE)
    {
      RankPromotionTypeForANE = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*RankPromotionTypeForANE + 8);
    }

    v24 = v15;
    v25 = RankPromotionTypeForANE;
    v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v24);
    v18 = v17;
    v19 = mlir::ElementsAttr::isSplat(&v24);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v21);
    return mlir::MemRefType::get(v16, v18, v19, 0, MemorySpace);
  }

  return result;
}

mlir::TypeConverter *mlir::TypeConverter::TypeConverter(mlir::TypeConverter *this, const mlir::TypeConverter *a2)
{
  *this = &unk_1F5AFD910;
  *(this + 1) = this + 24;
  v4 = (this + 8);
  *(this + 2) = 0x400000000;
  if (*(a2 + 4))
  {
    llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::operator=(v4, a2 + 1);
  }

  *(this + 19) = this + 168;
  *(this + 20) = 0x200000000;
  if (*(a2 + 40))
  {
    llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(this + 19, a2 + 19);
  }

  *(this + 29) = this + 248;
  *(this + 30) = 0x200000000;
  if (*(a2 + 60))
  {
    llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(this + 29, a2 + 29);
  }

  *(this + 39) = this + 328;
  *(this + 40) = 0x200000000;
  if (*(a2 + 80))
  {
    llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(this + 39, a2 + 39);
  }

  *(this + 49) = this + 408;
  *(this + 50) = 0x200000000;
  if (*(a2 + 100))
  {
    llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::operator=(this + 49, a2 + 49);
  }

  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 520));
  *(this + 66) = 0;
  return this;
}

uint64_t *llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 32 * v4;
        v13 = *a2;
        do
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (v13 == v14)
            {
              v32 = v31;
              (*(*v14 + 24))(v14, v31);
            }

            else
            {
              v32 = (*(*v14 + 16))(v14);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::swap[abi:nn200100](v31, v11);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v13 += 32;
          v11 += 32;
          v10 += 32;
          v12 -= 32;
        }

        while (v12);
        v15 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v15 = *a1;
        v11 = *a1;
      }

      v27 = v15 + 32 * v5;
      if (v27 != v11)
      {
        v28 = v27 - 32;
        do
        {
          v29 = *(v27 - 8);
          v27 -= 32;
          if (v27 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v28 -= 32;
        }

        while (v27 != v11);
      }

      goto LABEL_54;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        v16 = *a2;
        v17 = *a1;
        v18 = 32 * v5;
        v19 = *a2;
        do
        {
          v20 = *(v19 + 24);
          if (v20)
          {
            if (v19 == v20)
            {
              v32 = v31;
              (*(*v20 + 24))(v20, v31);
            }

            else
            {
              v32 = (*(*v20 + 16))(v20);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::swap[abi:nn200100](v31, v17);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v19 += 32;
          v17 += 32;
          v16 += 32;
          v18 -= 32;
        }

        while (v18);
        goto LABEL_38;
      }
    }

    else
    {
      if (v5)
      {
        v6 = 32 * v5 + *a1 - 32;
        v7 = -32 * v5;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 32;
          v6 -= 32;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_38:
    v21 = *(a2 + 2);
    if (v5 != v21)
    {
      v22 = *a2;
      v23 = *a1 + 32 * v5;
      v24 = v22 + 32 * v5;
      v25 = 32 * v21 - 32 * v5;
      do
      {
        v26 = *(v24 + 24);
        if (v26)
        {
          if (v24 == v26)
          {
            *(v23 + 24) = v23;
            (*(**(v24 + 24) + 24))(*(v24 + 24), v23);
          }

          else
          {
            *(v23 + 24) = (*(*v26 + 16))(v26);
          }
        }

        else
        {
          *(v23 + 24) = 0;
        }

        v24 += 32;
        v23 += 32;
        v25 -= 32;
      }

      while (v25);
    }

LABEL_54:
    *(a1 + 2) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      v10 = v6[3];
      if (v10)
      {
        if (v6 == v10)
        {
          v9[3] = v9;
          (*(*v6[3] + 24))(v6[3], v9);
        }

        else
        {
          v9[3] = v10;
          v6[3] = 0;
        }
      }

      else
      {
        v9[3] = 0;
      }

      v9 += 4;
      v6 += 4;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 4 * v11;
      v13 = &v6[v12 - 4];
      v14 = -(v12 * 8);
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t *llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 32 * v4;
        v13 = *a2;
        do
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (v13 == v14)
            {
              v32 = v31;
              (*(*v14 + 24))(v14, v31);
            }

            else
            {
              v32 = (*(*v14 + 16))(v14);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::swap[abi:nn200100](v31, v11);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v13 += 32;
          v11 += 32;
          v10 += 32;
          v12 -= 32;
        }

        while (v12);
        v15 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v15 = *a1;
        v11 = *a1;
      }

      v27 = v15 + 32 * v5;
      if (v27 != v11)
      {
        v28 = v27 - 32;
        do
        {
          v29 = *(v27 - 8);
          v27 -= 32;
          if (v27 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v28 -= 32;
        }

        while (v27 != v11);
      }

      goto LABEL_54;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        v16 = *a2;
        v17 = *a1;
        v18 = 32 * v5;
        v19 = *a2;
        do
        {
          v20 = *(v19 + 24);
          if (v20)
          {
            if (v19 == v20)
            {
              v32 = v31;
              (*(*v20 + 24))(v20, v31);
            }

            else
            {
              v32 = (*(*v20 + 16))(v20);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::swap[abi:nn200100](v31, v17);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v19 += 32;
          v17 += 32;
          v16 += 32;
          v18 -= 32;
        }

        while (v18);
        goto LABEL_38;
      }
    }

    else
    {
      if (v5)
      {
        v6 = 32 * v5 + *a1 - 32;
        v7 = -32 * v5;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 32;
          v6 -= 32;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_38:
    v21 = *(a2 + 2);
    if (v5 != v21)
    {
      v22 = *a2;
      v23 = *a1 + 32 * v5;
      v24 = v22 + 32 * v5;
      v25 = 32 * v21 - 32 * v5;
      do
      {
        v26 = *(v24 + 24);
        if (v26)
        {
          if (v24 == v26)
          {
            *(v23 + 24) = v23;
            (*(**(v24 + 24) + 24))(*(v24 + 24), v23);
          }

          else
          {
            *(v23 + 24) = (*(*v26 + 16))(v26);
          }
        }

        else
        {
          *(v23 + 24) = 0;
        }

        v24 += 32;
        v23 += 32;
        v25 -= 32;
      }

      while (v25);
    }

LABEL_54:
    *(a1 + 2) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      v10 = v6[3];
      if (v10)
      {
        if (v6 == v10)
        {
          v9[3] = v9;
          (*(*v6[3] + 24))(v6[3], v9);
        }

        else
        {
          v9[3] = v10;
          v6[3] = 0;
        }
      }

      else
      {
        v9[3] = 0;
      }

      v9 += 4;
      v6 += 4;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 4 * v11;
      v13 = &v6[v12 - 4];
      v14 = -(v12 * 8);
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t std::__function::__value_func<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t *llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 32 * v4;
        v13 = *a2;
        do
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (v13 == v14)
            {
              v32 = v31;
              (*(*v14 + 24))(v14, v31);
            }

            else
            {
              v32 = (*(*v14 + 16))(v14);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::swap[abi:nn200100](v31, v11);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v13 += 32;
          v11 += 32;
          v10 += 32;
          v12 -= 32;
        }

        while (v12);
        v15 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v15 = *a1;
        v11 = *a1;
      }

      v27 = v15 + 32 * v5;
      if (v27 != v11)
      {
        v28 = v27 - 32;
        do
        {
          v29 = *(v27 - 8);
          v27 -= 32;
          if (v27 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v28 -= 32;
        }

        while (v27 != v11);
      }

      goto LABEL_54;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        v16 = *a2;
        v17 = *a1;
        v18 = 32 * v5;
        v19 = *a2;
        do
        {
          v20 = *(v19 + 24);
          if (v20)
          {
            if (v19 == v20)
            {
              v32 = v31;
              (*(*v20 + 24))(v20, v31);
            }

            else
            {
              v32 = (*(*v20 + 16))(v20);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::swap[abi:nn200100](v31, v17);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v19 += 32;
          v17 += 32;
          v16 += 32;
          v18 -= 32;
        }

        while (v18);
        goto LABEL_38;
      }
    }

    else
    {
      if (v5)
      {
        v6 = 32 * v5 + *a1 - 32;
        v7 = -32 * v5;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 32;
          v6 -= 32;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_38:
    v21 = *(a2 + 2);
    if (v5 != v21)
    {
      v22 = *a2;
      v23 = *a1 + 32 * v5;
      v24 = v22 + 32 * v5;
      v25 = 32 * v21 - 32 * v5;
      do
      {
        v26 = *(v24 + 24);
        if (v26)
        {
          if (v24 == v26)
          {
            *(v23 + 24) = v23;
            (*(**(v24 + 24) + 24))(*(v24 + 24), v23);
          }

          else
          {
            *(v23 + 24) = (*(*v26 + 16))(v26);
          }
        }

        else
        {
          *(v23 + 24) = 0;
        }

        v24 += 32;
        v23 += 32;
        v25 -= 32;
      }

      while (v25);
    }

LABEL_54:
    *(a1 + 2) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      v10 = v6[3];
      if (v10)
      {
        if (v6 == v10)
        {
          v9[3] = v9;
          (*(*v6[3] + 24))(v6[3], v9);
        }

        else
        {
          v9[3] = v10;
          v6[3] = 0;
        }
      }

      else
      {
        v9[3] = 0;
      }

      v9 += 4;
      v6 += 4;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 4 * v11;
      v13 = &v6[v12 - 4];
      v14 = -(v12 * 8);
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void mlir::anonymous namespace::ConvertReadDataFromFile::~ConvertReadDataFromFile(mlir::_anonymous_namespace_::ConvertReadDataFromFile *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReadDataFromFileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReadDataFromFileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReadDataFromFileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 72);
  v33 = *(a3 + 64);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v25;
    v32 = *(a3 + 64);
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v33 = v18;
    v34 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

void mlir::anonymous namespace::ConvertReadDataFromFile::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[67] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v15, *(a1 + 96));
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v13 = v9[8];
  v12 = v9[10];
  v11 = v9[9];
  v10 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((a4 + 8), *(a2 + 24), &v14, &v13, &v12, &v11);
  (*(*a4 + 8))(a4, a2, v10);
  mlir::TypeConverter::~TypeConverter(v15);
}

char *mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReadDataFromFileOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertCropResize::~ConvertCropResize(mlir::_anonymous_namespace_::ConvertCropResize *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::mps::CropResizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::CropResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CropResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v29 = v10;
        v30 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v29) || !mlir::CallOpInterface::getArgOperands(&v29))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

LABEL_3:
      i = v38 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 96);
    v35 = *(a3 + 80);
    v36 = v25;
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = v26;
    v32 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v37 = v18;
    v38 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v37) || !mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertCropResize::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v168 = *MEMORY[0x1E69E9840];
  v136 = a2;
  v164 = *(a3 + 96);
  v6 = *(a2 + 24);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v164, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v5 = v136;
  }

  else
  {
    v8 = 0;
  }

  v135[0] = v7;
  v135[1] = v8;
  v9 = (*(*(*(v5 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  __p = v9;
  *&v167[0] = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v13 = v12;
  v161 = v163;
  v162 = 0x500000000;
  v14 = (8 * v12) >> 3;
  if (v14 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v163, v14, 8);
    v15 = v162;
    v16 = v161;
    v17 = 8 * v13;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  v16 = v163;
  v17 = 8 * v13;
  if (v13)
  {
LABEL_11:
    memcpy(&v16[8 * v15], ArgAttrsAttr, v17);
    v15 = v162;
    v16 = v161;
  }

LABEL_12:
  LODWORD(v162) = v15 + (v17 >> 3);
  llvm::SmallVectorImpl<unsigned long long>::insert(&v161, v16, 3uLL, 1uLL);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v162);
  if ((v19 & 1) == 0)
  {
    goto LABEL_130;
  }

  v20 = IndexFromDim;
  v21 = mlir::anec::getIndexFromDim(3, v162);
  if ((v22 & 1) == 0)
  {
    goto LABEL_130;
  }

  v23 = v161;
  v24 = *(v161 + v20);
  *(v161 + v20) = *(v161 + v21);
  v23[v21] = v24;
  v25 = v162;
  isSplat = mlir::ElementsAttr::isSplat(v135);
  v134 = mlir::MemRefType::get(v23, v25, isSplat, 0, 0, 0);
  __p = mlir::ValueRange::dereference_iterator(&v164, 1);
  v133 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v6, &v134, &__p) - 16;
  v27 = (*(*(*(v136 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  v132[0] = v27;
  v132[1] = v28;
  mlir::mps::CropResizeOp::getSpatialScale(&__p, &v136);
  v32 = llvm::detail::IEEEFloat::IEEEFloat(&__src, 1.0, v29, v30, v31);
  v33 = llvm::APFloatBase::IEEEsingle(v32);
  llvm::APFloat::Storage::Storage(&v156, &__src, v33);
  llvm::detail::IEEEFloat::~IEEEFloat(&__src);
  v34 = *&v167[0];
  v35 = v156;
  v37 = llvm::APFloatBase::PPCDoubleDouble(v36);
  if (v34 == v35)
  {
    if (v37 == v34)
    {
      IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(v167, &v156);
    }

    else
    {
      IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(v167, &v156);
    }

    v38 = IsEqual;
  }

  else
  {
    v38 = 0;
  }

  if (v37 == v156)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v156);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v156);
  }

  if (v37 == *&v167[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v167);
    if (v38)
    {
      goto LABEL_46;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v167);
    if (v38)
    {
      goto LABEL_46;
    }
  }

  mlir::mps::CropResizeOp::getSpatialScale(&__p, &v136);
  v43 = llvm::APFloat::convertToFloat(&__p, v40, v41, v42);
  if (v37 == *&v167[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v167);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v167);
  }

  mlir::ArrayAttr::getValue(&v134);
  *&__p = v43;
  LOBYTE(v156) = v45;
  mlir::ArrayAttr::getValue(&v134);
  LODWORD(__p) = 0;
  LOBYTE(v159) = v47;
  if (v156 == 1 && (v47 & 1) != 0)
  {
    mlir::ArrayAttr::getValue(&v134);
    v49 = mlir::anec::getIndexFromDim(4, v48);
    if ((v50 & 1) == 0)
    {
      goto LABEL_130;
    }

    v145 = v49;
    if (*(mlir::ArrayAttr::getValue(&v134) + 8 * v49) == 5)
    {
      LODWORD(__p) = 4;
      LODWORD(v148) = 1;
      v51 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>((a4 + 8), v6, &v133, &v145, &__p, &v148);
      LODWORD(__p) = 0;
      LODWORD(v148) = 4;
      v133 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>((a4 + 8), v6, &v133, &v145, &__p, &v148) - 16;
      if ((v156 & 1) == 0 || (v159 & 1) == 0)
      {
        goto LABEL_130;
      }

      v133 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>((a4 + 8), v6, &v133, &GOCConstant, &__src) - 16;
      v148 = v133;
      v149 = (v51 - 16);
      mlir::ValueRange::ValueRange(&__p, &v148, 2uLL);
      LOBYTE(v142) = 0;
      v52 = mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>((a4 + 8), v6, &__p, &v145, &v142);
    }

    else
    {
      if ((v156 & 1) == 0 || (v159 & 1) == 0)
      {
        goto LABEL_130;
      }

      v52 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>((a4 + 8), v6, &v133, &GOCConstant, &__src);
    }

    v133 = v52 - 16;
LABEL_46:
    v54 = (*(mlir::ValueRange::dereference_iterator(&v164, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v54)
    {
      v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
    }

    else
    {
      v55 = 0;
    }

    v131[0] = v54;
    v131[1] = v55;
    v57 = mlir::CallableOpInterface::getArgAttrsAttr(v131);
    v58 = v56;
    __src = v160;
    v159 = 0x500000000;
    v59 = (8 * v56) >> 3;
    if (v59 < 6)
    {
      v60 = 0;
      v61 = 8 * v56;
      if (!v56)
      {
        goto LABEL_54;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v160, v59, 8);
      v60 = v159;
      v61 = 8 * v58;
      if (!v58)
      {
LABEL_54:
        LODWORD(v159) = v60 + (v61 >> 3);
        v62 = mlir::anec::getIndexFromDim(4, v162);
        if (v63)
        {
          v64 = *(v161 + v62);
          __p = 1;
          llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&__src, __src + 8 * (v64 == 5), &__p);
          v65 = __src;
          v66 = v159;
          v67 = mlir::ElementsAttr::isSplat(v131);
          v130 = mlir::MemRefType::get(v65, v66, v67, 0, 0, 0);
          v68 = *(v136 + 24);
          __p = mlir::ValueRange::dereference_iterator(&v164, 0);
          v129 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v68, &v130, &__p) - 16;
          if (v64 == 5)
          {
            goto LABEL_65;
          }

          __p = v167 + 8;
          *&v167[0] = 0x500000000;
          v69 = v159;
          if (!v159)
          {
LABEL_63:
            v72 = mlir::CallableOpInterface::getArgAttrsAttr(v132);
            v73 = __p;
            *__p = *v72;
            v74 = LODWORD(v167[0]);
            v75 = mlir::ElementsAttr::isSplat(v131);
            GOCConstant = mlir::MemRefType::get(v73, v74, v75, 0, 0, 0);
            v129 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), v6, &GOCConstant, &v129) - 16;
            if (__p != v167 + 8)
            {
              free(__p);
            }

LABEL_65:
            GOCConstant = v157;
            v156 = 0x400000000;
            v157[8] = 4;
            ResizeHeight = mlir::mps::CropResizeOp::getResizeHeight(&v136);
            WindowHeight = mlir::mps::CostVolumeOp::getWindowHeight(&v136);
            v152 = v154;
            v154[0] = ResizeHeight;
            v154[1] = WindowHeight;
            v153 = 0x200000002;
            __p = 2;
            IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v79 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
            if (v79)
            {
              v80 = v79;
              v81 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v79 + 8);
              v79 = v80;
            }

            else
            {
              v81 = 0;
            }

            v82 = mlir::DenseElementsAttr::getFromRawBuffer(v79, v81, v152, 8 * v153);
            mlir::NamedAttrList::set(&GOCConstant, "output_dims", 0xBuLL, v82);
            v148 = v150;
            memset(v150, 0, sizeof(v150));
            v151 = 0;
            v149 = 0x500000005;
            v83 = 0;
            if (mlir::mps::GRUOp::getResetAfter(&v136))
            {
              v83 = 2 * (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v136) == 1);
            }

            if (mlir::mps::GRUOp::getResetAfter(&v136) && mlir::mps::MaterializeSparseTensorOp::getStorageType(&v136) == 2)
            {
              v83 = 1;
            }

            v145 = v147;
            v147[0] = v83;
            v147[1] = v83;
            v147[2] = v83;
            v147[3] = v83;
            v147[4] = v83;
            v146 = 0x500000005;
            __p = 5;
            v84 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v85 = mlir::RankedTensorType::get(&__p, 1, v84, 0);
            if (v85)
            {
              v86 = v85;
              v87 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v85 + 8);
              v85 = v86;
            }

            else
            {
              v87 = 0;
            }

            v88 = mlir::DenseElementsAttr::getFromRawBuffer(v85, v87, v148, 8 * v149);
            __p = 5;
            v89 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v90 = mlir::RankedTensorType::get(&__p, 1, v89, 0);
            if (v90)
            {
              v91 = v90;
              v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8);
              v90 = v91;
            }

            else
            {
              v92 = 0;
            }

            v93 = mlir::DenseElementsAttr::getFromRawBuffer(v90, v92, v145, 8 * v146);
            mlir::NamedAttrList::set(&GOCConstant, "normalized_range", 0x10uLL, v88);
            mlir::NamedAttrList::set(&GOCConstant, "coordinate_mode", 0xFuLL, v93);
            GateLayout = mlir::mps::LSTMOp::getGateLayout(&v136);
            if (GateLayout == 1)
            {
              v95 = 0;
            }

            else
            {
              if (GateLayout)
              {
              }

              v95 = 1;
            }

            v142 = v144;
            v144[0] = v95;
            v144[1] = v95;
            v144[2] = v95;
            v144[3] = v95;
            v144[4] = v95;
            v143 = 0x500000005;
            __p = 5;
            v96 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v97 = mlir::RankedTensorType::get(&__p, 1, v96, 0);
            if (v97)
            {
              v98 = v97;
              v99 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
              v97 = v98;
            }

            else
            {
              v99 = 0;
            }

            v100 = mlir::DenseElementsAttr::getFromRawBuffer(v97, v99, v142, 8 * v143);
            mlir::NamedAttrList::set(&GOCConstant, "sampling_method", 0xFuLL, v100);
            StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v136);
            if (StorageType >= 3)
            {
            }

            v102 = qword_1E0982BA0[StorageType];
            v140[0] = v141;
            v141[0] = v102;
            v141[1] = v102;
            v141[2] = v102;
            v141[3] = v102;
            v141[4] = v102;
            v140[1] = 0x500000005;
            __p = 5;
            v103 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v104 = mlir::RankedTensorType::get(&__p, 1, v103, 0);
            if (v104)
            {
              v105 = v104;
              v106 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
              v104 = v105;
            }

            else
            {
              v106 = 0;
            }

            v107 = mlir::DenseElementsAttr::getFromRawBuffer(v104, v106, v142, 8 * v143);
            mlir::NamedAttrList::set(&GOCConstant, "sampling_mode", 0xDuLL, v107);
            v137 = v139;
            memset_pattern16(v139, &unk_1E0982A40, 0x28uLL);
            v138 = 0x500000005;
            __p = 5;
            v108 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v109 = mlir::RankedTensorType::get(&__p, 1, v108, 0);
            if (v109)
            {
              v110 = v109;
              v111 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v109 + 8);
              v109 = v110;
            }

            else
            {
              v111 = 0;
            }

            v112 = mlir::DenseElementsAttr::getFromRawBuffer(v109, v111, v137, 8 * v138);
            mlir::NamedAttrList::set(&GOCConstant, "padding_modes", 0xDuLL, v112);
            F16FloatAttr = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v113);
            mlir::NamedAttrList::set(&GOCConstant, "background_value", 0x10uLL, F16FloatAttr);
            v115 = (*(*(*(v136 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (v115)
            {
              v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v115 + 8);
            }

            else
            {
              v116 = 0;
            }

            v128[0] = v115;
            v128[1] = v116;
            v117 = *(mlir::CallableOpInterface::getArgAttrsAttr(v128) + 8);
            Context = mlir::Attribute::getContext((v136 + 24));
            Layout = mlir::mps::SampleGridOp::getLayout(&v136);
            if (Layout <= 1)
            {
              if (!Layout)
              {
                v120 = 8 * (v117 != 5);
LABEL_110:
                v124 = mlir::arith::AtomicRMWKindAttr::get(Context, v120);
                mlir::NamedAttrList::set(&GOCConstant, "box_coordinate_mode", 0x13uLL, v124);
                v125 = v136;
                v165[0] = v129;
                v165[1] = v133;
                mlir::ValueRange::ValueRange(&__p, v165, 2uLL);
                v126 = mlir::OpBuilder::create<mlir::anec::CropResize,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 8), *(v125 + 24), &__p, &GOCConstant);
                (*(*a4 + 8))(a4, v125, v126);
                if (v137 != v139)
                {
                  free(v137);
                }

                if (v140[0] != v141)
                {
                  free(v140[0]);
                }

                if (v142 != v144)
                {
                  free(v142);
                }

                if (v145 != v147)
                {
                  free(v145);
                }

                if (v148 != v150)
                {
                  free(v148);
                }

                if (v152 != v154)
                {
                  free(v152);
                }

                if (GOCConstant != v157)
                {
                  free(GOCConstant);
                }

                if (__src != v160)
                {
                  free(__src);
                }

                matched = 1;
                goto LABEL_127;
              }

              if (Layout == 1)
              {
                if (v117 == 5)
                {
                  v120 = 1;
                }

                else
                {
                  v120 = 9;
                }

                goto LABEL_110;
              }

LABEL_133:
            }

            if (Layout == 2)
            {
              v121 = v117 == 5;
              v122 = 10;
              v123 = 2;
            }

            else
            {
              if (Layout != 3)
              {
                goto LABEL_133;
              }

              v121 = v117 == 5;
              v122 = 11;
              v123 = 3;
            }

            if (v121)
            {
              v120 = v123;
            }

            else
            {
              v120 = v122;
            }

            goto LABEL_110;
          }

          if (v159 < 6)
          {
            v71 = v167 + 8;
            v70 = v159;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v167 + 8, v159, 8);
            v70 = v159;
            if (!v159)
            {
LABEL_62:
              LODWORD(v167[0]) = v69;
              goto LABEL_63;
            }

            v71 = __p;
          }

          memcpy(v71, __src, 8 * v70);
          goto LABEL_62;
        }

LABEL_130:
        std::__throw_bad_optional_access[abi:nn200100]();
      }
    }

    memcpy(__src + 8 * v60, v57, v61);
    v60 = v159;
    goto LABEL_54;
  }

  __p = operator new(0x38uLL);
  v167[0] = xmmword_1E09826E0;
  strcpy(__p, "failed to create GOC constants out of scalar values.");
  matched = mlir::logMatchFailure(&__p, *(v136 + 24), a4);
  if (SHIBYTE(v167[0]) < 0)
  {
    operator delete(__p);
  }

LABEL_127:
  if (v161 != v163)
  {
    free(v161);
  }

  return matched;
}