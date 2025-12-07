uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayWithResults@<X0>(llvm::ConstantInt **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  v51 = *a2;
  v52 = *(a2 + 16);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v51);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 119))(a1);
  v54 = "vrid";
  LOWORD(v58) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 168))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  memset(v50, 0, sizeof(v50));
  v20 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v50, a1, a5, v13, v19 | 0x100000000, v20, 1);
  v21 = (*(*a1 + 182))(a1, a6);
  v49[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v13, v50, v21, (a6 >> 5) & 1, 0);
  v49[1] = v22;
  v46 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (a1 + 1));
  v48 = *(a1 + 26);
  v41 = a6;
  v42 = a3;
  v23 = a4;
  v40 = v13;
  v38 = (*(*a1 + 129))(a1, &v46, a3, v23, v13, v17, v16, v19, v49, a5, a6);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = a1[25];
  v25 = a1[21];
  v26 = llvm::PointerType::get();
  v27 = a1[25];
  v28 = a1[23];
  v29 = a1[28];
  v30 = a1[21];
  v31 = llvm::ArrayType::get(a1[34], 4);
  v32 = llvm::ArrayType::get(a1[34], 4);
  v54 = v24;
  v55 = v25;
  v56 = v24;
  v57 = v24;
  v58 = v26;
  *&v59 = v27;
  *(&v59 + 1) = v27;
  v60 = v28;
  v61 = v29;
  v62 = v28;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  v33 = llvm::StructType::get();
  v54 = v49[0];
  (*(*a1 + 182))(a1, v41);
  v55 = llvm::ConstantInt::get();
  v56 = llvm::ConstantInt::get();
  v57 = v40;
  v58 = v38;
  v59 = *(v42 + 144);
  v34 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v33, &v54, 7uLL);
  a7[10] = 0;
  a7[11] = 0;
  a7[12] = 0;
  v43[0] = 0;
  LOWORD(v58) = 257;
  *a7 = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 1;
  LOWORD(v58) = 257;
  a7[1] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 2;
  LOWORD(v58) = 257;
  a7[2] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 3;
  LOWORD(v58) = 257;
  a7[3] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 4;
  LOWORD(v58) = 257;
  a7[4] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 5;
  LOWORD(v58) = 257;
  a7[5] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 6;
  LOWORD(v58) = 257;
  a7[6] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 7;
  LOWORD(v58) = 257;
  a7[7] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 8;
  LOWORD(v58) = 257;
  a7[8] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v45 = 9;
  LOWORD(v58) = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, &v45, 1, &v54);
  v36 = a1[22];
  v44 = 257;
  a7[9] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Value, v36, v43);
  v43[0] = 10;
  LOWORD(v58) = 257;
  a7[10] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 11;
  LOWORD(v58) = 257;
  a7[11] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 12;
  LOWORD(v58) = 257;
  result = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  a7[12] = result;
  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRay(uint64_t a1, uint64_t a2, __int128 *a3, llvm::Type **a4, uint64_t a5, unsigned int a6, llvm::IntegerType *a7, unsigned int a8, void *a9, uint64_t a10, unsigned __int16 a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v53 = *a2;
  v54 = *(a2 + 16);
  if (v54)
  {
    llvm::MetadataTracking::track();
  }

  v55 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v53);
  if (v54)
  {
    llvm::MetadataTracking::untrack();
  }

  LOWORD(v57) = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v56);
  v56[0] = "bvh_state_words_heap_base";
  LOWORD(v57) = 259;
  llvm::Value::setName();
  LODWORD(v18) = *(a3 + 34);
  if (v18 <= 4)
  {
    v19 = 4;
  }

  else
  {
    v19 = v18;
  }

  if (*(a3 + 112) == 1)
  {
    v20 = *(a3 + 15);
    if (v20 && *(v20 + 16) == 59)
    {
      v18 = 1 << *(v20 + 18);
    }

    v21 = __clz(v19);
    v22 = __clz(v18) ^ 0x13F;
    if (v18)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, a9[1], v21 ^ 0x13F, v20, v23, a7);
  }

  if ((a11 & 0x100) != 0)
  {
    v24 = llvm::PointerType::get();
    v25 = *(a10 + 16);
    LOWORD(v57) = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v25, v24, v56, v26);
    PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, a5, PointerCast);
    v29 = *(a1 + 200);
    (*(**(a1 + 920) + 1128))();
    v30 = llvm::ConstantInt::get();
    LOWORD(v57) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v29, PerVridSetDataPtr, v30, v56);
    (*(*a1 + 1456))(a1, a11);
    v32 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v32, GEP, 0, 0);
  }

  v33 = *(a1 + 176);
  v56[0] = *a9;
  v56[1] = Load;
  v56[2] = a5;
  v56[3] = llvm::ConstantInt::get();
  v57 = llvm::ConstantInt::get();
  v58 = llvm::ConstantInt::get();
  (*(*a1 + 1456))(a1, a11);
  v34 = llvm::ConstantInt::get();
  v35 = a3[1];
  v60 = *a3;
  v61 = v35;
  v36 = *(a3 + 6);
  v37 = *(a3 + 7);
  v59 = v34;
  v62 = v36;
  v38 = llvm::PointerType::get();
  v52 = 257;
  v63 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v37, v38, v51, v39);
  v40 = a3[5];
  v64 = a3[4];
  v65 = v40;
  v66 = a3[6];
  v41 = *(a3 + 4);
  v42 = *(a1 + 200);
  v50 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v41, v42, v49);
  v43 = a3[11];
  v68 = a3[10];
  v69 = v43;
  v44 = *(a3 + 5);
  v70 = *(a3 + 24);
  v71 = v44;
  v72 = a3[15];
  v73 = *(a3 + 32);
  v74 = llvm::ConstantInt::get();
  v75 = llvm::ConstantInt::get();
  v45 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray", 17, v33, v56, 0x1FuLL);
  if (*(a3 + 112) == 1 && (*(a3 + 264) & 1) == 0)
  {
    v46 = __clz(v18) ^ 0x13F;
    if (v18)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a3 + 15), v47, a9[1], 0x103u, a7);
  }

  return v45;
}

uint64_t llvm::IRBuilderBase::CreateMemCpy(uint64_t a1, llvm::LLVMContext *a2, unsigned __int16 a3, uint64_t a4, unsigned __int16 a5, llvm::IntegerType *a6)
{
  llvm::Type::getInt64Ty(*(a1 + 64), a2);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateMemTransferInst();
}

uint64_t *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, llvm::Type **a12, uint64_t a13, llvm::Type **a14, llvm::Type **a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v206 = *MEMORY[0x277D85DE8];
  v200 = *a2;
  v201 = *(a2 + 16);
  if (v201)
  {
    llvm::MetadataTracking::track();
  }

  v202 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v200);
  if (v201)
  {
    llvm::MetadataTracking::untrack();
  }

  v198 = 0u;
  v199 = 0u;
  v197 = 0u;
  v194 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v195, (a1 + 8));
  v196 = *(a1 + 104);
  (*(*a1 + 1080))(&v197, a1, &v194, a12, a13);
  if (v195)
  {
    llvm::MetadataTracking::untrack();
  }

  v184 = a6;
  v24 = llvm::PointerType::get();
  v189 = llvm::PointerType::get();
  v183 = llvm::PointerType::get();
  TypeByName = llvm::StructType::getTypeByName();
  v25 = llvm::PointerType::get();
  v180 = llvm::PointerType::get();
  v182 = a9;
  if ((a19 & 1) == 0)
  {
    llvm::BasicBlock::splitBasicBlock();
    v192[0] = "scs.config";
    v193 = 259;
    operator new();
  }

  v26 = v197;
  v193 = 257;
  v27 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v26, v27, v192);
  v29 = v197;
  v30 = llvm::ConstantInt::get();
  v193 = 257;
  v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v30, v192);
  v32 = *(a1 + 144);
  v204[0] = LShr;
  v33 = a3[3];
  v193 = 257;
  v204[1] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v33, v24, v192, v34);
  v204[2] = v31;
  v35 = a3[5];
  v191 = 257;
  v204[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v35, v25, v190, v36);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.kick.scoped.ray.data.stride.driver.user.data", 54, v32, v204, 4uLL);
  v37 = a3[2];
  v193 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v37, v183, v192, v38);
  v40 = llvm::ConstantInt::get();
  v41 = *(a1 + 208);
  (*(**(a1 + 920) + 888))();
  v42 = llvm::ConstantInt::get();
  v193 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v41, PointerCast, v42, v192);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v40, GEP, 0, 0);
  v44 = *(a1 + 208);
  (*(**(a1 + 920) + 896))();
  v45 = llvm::ConstantInt::get();
  v193 = 257;
  v46 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v44, PointerCast, v45, v192);
  v47 = *(a1 + 208);
  v193 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a12, v192);
  v191 = 257;
  v50 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v180, v190, v49);
  (*(**(a1 + 920) + 1032))();
  v51 = llvm::ConstantInt::get();
  v205 = 257;
  v52 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v47, v50, v51, v204);
  v53 = *(a1 + 208);
  v193 = 257;
  llvm::Type::isOpaquePointerTy(*v52);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v53, v52, 0, v192);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), AlignedLoad, v46, 0, 0);
  v193 = 257;
  v55 = AGCLLVMBuilder::CreateLoad(a1, a12, v192);
  v203[0] = llvm::ConstantInt::get();
  v203[1] = llvm::ConstantInt::get();
  v191 = 257;
  llvm::Type::isOpaquePointerTy(*v55);
  v56 = llvm::IRBuilderBase::CreateGEP(a1 + 8, TypeByName, v55, v203, 2, v190);
  v205 = 257;
  v57 = AGCLLVMBuilder::CreateLoad(a1, v56, v204);
  v58 = *(a1 + 208);
  v193 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v57, v58, v192);
  v60 = *(a1 + 208);
  (*(**(a1 + 920) + 952))();
  v61 = llvm::ConstantInt::get();
  v191 = 257;
  v62 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v60, PointerCast, v61, v190);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, v62, 0, 0);
  if (a14)
  {
    v63 = *(a1 + 208);
    (*(**(a1 + 920) + 976))(*(a1 + 920));
    v64 = llvm::ConstantInt::get();
    v193 = 257;
    v65 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v63, PointerCast, v64, v192);
    v191 = 257;
    v67 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v65, v189, v190, v66);
    v193 = 257;
    v68 = AGCLLVMBuilder::CreateLoad(a1, a14, v192);
    v190[0] = 0;
    v192[0] = "user_data_start";
    v193 = 259;
    Value = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v68, v190, 1, v192);
    v190[0] = 1;
    v192[0] = "user_data_end";
    v193 = 259;
    v70 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v68, v190, 1, v192);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Value, v67, 0, 0);
    v71 = *(a1 + 200);
    v72 = llvm::ConstantInt::get();
    v193 = 257;
    v73 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v71, v67, v72, v192);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v70, v73, 0, 0);
  }

  if (a15)
  {
    v74 = *(a1 + 208);
    (*(**(a1 + 920) + 984))(*(a1 + 920));
    v75 = llvm::ConstantInt::get();
    v193 = 257;
    v76 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v74, PointerCast, v75, v192);
    v191 = 257;
    v78 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v76, v189, v190, v77);
    v193 = 257;
    v79 = AGCLLVMBuilder::CreateLoad(a1, a15, v192);
    v190[0] = 0;
    v192[0] = "driver_data_start";
    v193 = 259;
    v80 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v79, v190, 1, v192);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v80, v78, 0, 0);
  }

  v81 = (*(*a1 + 952))(a1);
  v82 = *(a1 + 200);
  v192[0] = "vrid";
  v193 = 259;
  v83 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v81, v82, v192);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v83, PointerCast);
  v85 = *(&v197 + 1);
  v86 = *(a1 + 200);
  (*(**(a1 + 920) + 1072))();
  v87 = llvm::ConstantInt::get();
  v193 = 257;
  v88 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v86, PerVridSetDataPtr, v87, v192);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v85, v88, 0, 0);
  v89 = *(&v198 + 1);
  v90 = *(a1 + 200);
  (*(**(a1 + 920) + 1080))();
  v91 = llvm::ConstantInt::get();
  v193 = 257;
  v92 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v90, PerVridSetDataPtr, v91, v192);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v89, v92, 0, 0);
  v93 = v198;
  v94 = *(a1 + 200);
  (*(**(a1 + 920) + 1088))();
  v95 = llvm::ConstantInt::get();
  v193 = 257;
  v96 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v94, PerVridSetDataPtr, v95, v192);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v93, v96, 0, 0);
  v97 = llvm::ConstantInt::get();
  v98 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v99 = llvm::ConstantInt::get();
  v193 = 257;
  v100 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v98, PerVridSetDataPtr, v99, v192);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v97, v100, 0, 0);
  if (a16)
  {
    v101 = *(a1 + 200);
    (*(**(a1 + 920) + 1104))(*(a1 + 920));
    v102 = llvm::ConstantInt::get();
    v193 = 257;
    v103 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v101, PerVridSetDataPtr, v102, v192);
    v193 = 257;
    v105 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v103, v183, v192, v104);
    v106 = *(a1 + 208);
    v193 = 257;
    v107 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a16, v106, v192);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v107, v105, 0, 0);
  }

  if (a17)
  {
    v108 = *(a1 + 200);
    (*(**(a1 + 920) + 1120))(*(a1 + 920));
    v109 = llvm::ConstantInt::get();
    v193 = 257;
    v110 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v108, PerVridSetDataPtr, v109, v192);
    v193 = 257;
    v112 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v110, v183, v192, v111);
    v113 = *(a1 + 208);
    v193 = 257;
    v114 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a17, v113, v192);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, v112, 0, 0);
  }

  if (v184)
  {
    v115 = *(a1 + 200);
    (*(**(a1 + 920) + 1112))(*(a1 + 920));
    v116 = llvm::ConstantInt::get();
    v193 = 257;
    v117 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v115, PerVridSetDataPtr, v116, v192);
    v191 = 257;
    v119 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v117, v183, v190, v118);
    v193 = 257;
    v120 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v184 + 24), v184, 0, 0, v192);
    v121 = *(a1 + 208);
    v191 = 257;
    v122 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v120, v121, v190);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v122, v119, 0, 0);
  }

  v123 = a4[2];
  v193 = 257;
  v124 = AGCLLVMBuilder::CreateLoad(a1, v123, v192);
  v125 = *(a1 + 208);
  v191 = 257;
  v126 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v124, v125, v190);
  v127 = *(a1 + 208);
  (*(**(a1 + 920) + 904))();
  v128 = llvm::ConstantInt::get();
  v205 = 257;
  v129 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v127, PointerCast, v128, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v126, v129, 0, 0);
  v130 = a4[5];
  v193 = 257;
  v131 = AGCLLVMBuilder::CreateLoad(a1, v130, v192);
  v132 = *(a1 + 208);
  v191 = 257;
  v133 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v131, v132, v190);
  v134 = *(a1 + 208);
  (*(**(a1 + 920) + 912))();
  v135 = llvm::ConstantInt::get();
  v205 = 257;
  v136 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v134, PointerCast, v135, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v133, v136, 0, 0);
  v137 = a4[8];
  v193 = 257;
  v138 = AGCLLVMBuilder::CreateLoad(a1, v137, v192);
  v139 = *(a1 + 208);
  v191 = 257;
  v140 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v138, v139, v190);
  v141 = *(a1 + 208);
  (*(**(a1 + 920) + 920))();
  v142 = llvm::ConstantInt::get();
  v205 = 257;
  v143 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v141, PointerCast, v142, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v140, v143, 0, 0);
  v144 = *(a5 + 16);
  v193 = 257;
  v145 = AGCLLVMBuilder::CreateLoad(a1, v144, v192);
  v146 = *(a1 + 208);
  v191 = 257;
  v147 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v145, v146, v190);
  v148 = *(a1 + 208);
  (*(**(a1 + 920) + 928))();
  v149 = llvm::ConstantInt::get();
  v205 = 257;
  v150 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v148, PointerCast, v149, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v147, v150, 0, 0);
  v151 = *(a7 + 16);
  v193 = 257;
  v152 = AGCLLVMBuilder::CreateLoad(a1, v151, v192);
  v153 = *(a1 + 208);
  v191 = 257;
  v154 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v152, v153, v190);
  v155 = *(a1 + 208);
  (*(**(a1 + 920) + 936))();
  v156 = llvm::ConstantInt::get();
  v205 = 257;
  v157 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v155, PointerCast, v156, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v154, v157, 0, 0);
  v158 = *(a8 + 16);
  v193 = 257;
  v159 = AGCLLVMBuilder::CreateLoad(a1, v158, v192);
  v160 = *(a1 + 208);
  v191 = 257;
  v161 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v159, v160, v190);
  v162 = *(a1 + 208);
  (*(**(a1 + 920) + 944))();
  v163 = llvm::ConstantInt::get();
  v205 = 257;
  v164 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v162, PointerCast, v163, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v161, v164, 0, 0);
  v165 = *(a10 + 16);
  v193 = 257;
  v166 = AGCLLVMBuilder::CreateLoad(a1, v165, v192);
  v167 = *(a1 + 208);
  v191 = 257;
  v168 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v166, v167, v190);
  v169 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v170 = llvm::ConstantInt::get();
  v205 = 257;
  v171 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v169, PointerCast, v170, v204);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v168, v171, 0, 0);
  if (*(a1 + 1946) == 1)
  {
    v172 = *(a11 + 16);
    v193 = 257;
    v173 = AGCLLVMBuilder::CreateLoad(a1, v172, v192);
    v174 = *(a1 + 208);
    v191 = 257;
    v175 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v173, v174, v190);
    v176 = *(a1 + 208);
    (*(**(a1 + 920) + 1008))();
    v177 = llvm::ConstantInt::get();
    v205 = 257;
    v178 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v176, PointerCast, v177, v204);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v175, v178, 0, 0);
  }

  *v182 = *(a1 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((v182 + 16), (a1 + 8));
  *(v182 + 24) = *(a1 + 104);
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSGOTPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v19, v7);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1112))();
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v13, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v19, v15);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSPerEncoderIndirectionTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v16, v7);
  v9 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v10 = llvm::ConstantInt::get();
  v17 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v9, PointerCast, v10, v16);
  v17 = 257;
  v13 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v16, v12);
  v14 = *(a1 + 208);
  v17 = 257;
  llvm::Type::isOpaquePointerTy(*v13);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v13, 0, v16);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSDispatchPrivateBufferPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v19, v7);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1120))();
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v13, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v19, v15);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSGlobalBindingTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v19, v7);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1104))();
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v13, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v19, v15);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getRayTraversalDepth(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x1F)
  {
    v2 = 31;
  }

  else
  {
    v2 = a2;
  }

  v3 = 114 * v2;
  if (v3 >= 0x388)
  {
    v3 = 904;
  }

  return (v3 + 119) & 0x7F8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::readRayPointerT@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v10[0] = *(a1 + 192);
    v10[1] = v10[0];
    TypeByName = llvm::StructType::create();
  }

  v5 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.read_ray_pointer", 20, TypeByName, 0, 0);
  v9 = 0;
  v11 = 257;
  *a2 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v5, &v9, 1, v10);
  v8 = 1;
  v7[16] = 257;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v5, &v8, 1, v7);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::readRayPointerSR(uint64_t a1)
{
  v2 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ray.pointer", 21, *(a1 + 192), 0, 0);
  v3 = *(a1 + 200);
  v6 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v2, v3, v5);
}

llvm::Type **AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectionShaderArgument(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, unsigned int a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = 1;
  v13 = llvm::PointerType::get();
  v28 = llvm::PointerType::get();
  v14 = 0;
  switch(a3)
  {
    case 0u:
    case 1u:
    case 9u:
    case 0xAu:
      v14 = *(a1 + 272);
      break;
    case 2u:
    case 3u:
    case 0xDu:
    case 0xEu:
    case 0x15u:
    case 0x17u:
    case 0x18u:
      v14 = *(a1 + 168);
      break;
    case 4u:
    case 5u:
    case 6u:
    case 0x10u:
    case 0x11u:
    case 0x16u:
    case 0x1Bu:
      goto LABEL_8;
    case 7u:
    case 8u:
      if ((a5 & 0x40) != 0)
      {
        v12 = a6;
      }

      else
      {
        v12 = 1;
      }

LABEL_8:
      v14 = *(a1 + 200);
      break;
    case 0xBu:
      v14 = *(a1 + 224);
      break;
    case 0xCu:
    case 0xFu:
      v14 = *(a1 + 184);
      break;
    case 0x13u:
    case 0x14u:
      v14 = *(a1 + 272);
      v12 = 4;
      break;
    case 0x19u:
    case 0x1Au:
      v14 = v13;
      break;
    default:
      break;
  }

  v15 = *(*(*(a1 + 56) + 56) + 80);
  if (v15)
  {
    v16 = (v15 - 24);
  }

  else
  {
    v16 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v16);
  if (FirstInsertionPt)
  {
    v18 = (FirstInsertionPt - 24);
  }

  else
  {
    v18 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v18);
  v19 = llvm::ConstantInt::get();
  LOWORD(PointerCast) = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca((a1 + 8), v14, v19, v38);
  v35 = *a2;
  v36 = *(a2 + 16);
  if (v36)
  {
    llvm::MetadataTracking::track();
  }

  v37 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v35);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1940))
  {
    v21 = "agx.get_intersection_shader_argument_legacy";
  }

  else
  {
    v21 = "agx.get_intersection_shader_argument";
  }

  std::string::basic_string[abi:nn200100]<0>(v31, v21);
  v22 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v31, a4);
  if (v34 < 0)
  {
    v22 = __p[0];
  }

  if (v34 >= 0)
  {
    v23 = v34;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = *(a1 + 144);
  v25 = *(a4 + 8);
  v38[0] = *(a4 + 24);
  v38[1] = v25;
  v38[2] = llvm::ConstantInt::get();
  v38[3] = llvm::ConstantInt::get();
  v30 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Alloca, v28, v29, v26);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v22, v23, v24, v38, 5uLL);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v12 <= 1)
  {
    LOWORD(PointerCast) = 257;
    return AGCLLVMBuilder::CreateLoad(a1, Alloca, v38);
  }

  return Alloca;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::createGPUVAMasks(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildConvertHFP8_Vector(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v93[4] = *MEMORY[0x277D85DE8];
  v84 = *a2;
  v85 = *(a2 + 16);
  if (v85)
  {
    llvm::MetadataTracking::track();
  }

  v86 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v84);
  if (v85)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *(*a3 + 32);
  std::string::basic_string[abi:nn200100]<0>(&v87, "f32");
  v88 = *(a1 + 168);
  std::string::basic_string[abi:nn200100]<0>(v89, "f16");
  v89[3] = *(a1 + 152);
  std::string::basic_string[abi:nn200100]<0>(v90, "bf16");
  v90[3] = *(a1 + 160);
  std::string::basic_string[abi:nn200100]<0>(v91, "f8e5m2");
  v91[3] = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v92, "f8e4m3");
  v92[3] = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v93, "f8e4m3fn");
  v12 = 0;
  v93[3] = *(a1 + 184);
  v83[0] = 0;
  v83[1] = 0;
  v82 = v83;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v82, v83, &v87.__r_.__value_.__r.__words[v12], &v87 + v12 * 8);
    v12 += 4;
  }

  while (v12 != 24);
  for (i = 0; i != -24; i -= 4)
  {
    if (SHIBYTE(v93[i + 2]) < 0)
    {
      operator delete(v93[i]);
    }
  }

  if (*(a4 + 23) < 0)
  {
    if (**a4 != 118)
    {
      std::string::__init_copy_ctor_external(&v87, *a4, *(a4 + 8));
      goto LABEL_20;
    }
  }

  else if (*a4 != 118)
  {
    v87 = *a4;
    goto LABEL_20;
  }

  if (v11 <= 0xA)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  std::string::basic_string(&v87, a4, v14, 0xFFFFFFFFFFFFFFFFLL, v79);
LABEL_20:
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v87;
  if (*(a5 + 23) < 0)
  {
    if (**a5 != 118)
    {
      std::string::__init_copy_ctor_external(&v87, *a5, *(a5 + 8));
      goto LABEL_31;
    }
  }

  else if (*a5 != 118)
  {
    v87 = *a5;
    goto LABEL_31;
  }

  if (v11 <= 0xA)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  std::string::basic_string(&v87, a5, v15, 0xFFFFFFFFFFFFFFFFLL, v79);
LABEL_31:
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v87;
  std::map<std::string,unsigned short>::at(&v82, a5);
  v16 = llvm::FixedVectorType::get();
  memset(__p, 0, sizeof(__p));
  if (v11 != 1)
  {
    v17 = 0;
    do
    {
      v87.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
      std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v87);
      ++v17;
    }

    while (v11 - 1 != v17);
  }

  v18 = v11 >> 1;
  if (a6)
  {
    v87.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
    std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v87);
  }

  v60 = __p[0];
  v19 = llvm::ConstantVector::get();
  v61 = v11;
  if (a6)
  {
    v58 = v19;
    v59 = v16;
    llvm::FixedVectorType::get();
    v20 = llvm::UndefValue::get();
    if (v11 >= 2)
    {
      v21 = 0;
      v22 = 1;
      do
      {
        std::map<std::string,unsigned short>::at(&v82, a4);
        llvm::FixedVectorType::get();
        v23 = llvm::UndefValue::get();
        LOWORD(v89[0]) = 257;
        v24 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v24, &v87);
        v80 = 257;
        v26 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v23, Element, v26, v79);
        LOWORD(v89[0]) = 257;
        v28 = llvm::ConstantInt::get();
        v29 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v28, &v87);
        v80 = 257;
        v30 = llvm::ConstantInt::get();
        v31 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v29, v30, v79);
        v76 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (a1 + 8));
        v78 = *(a1 + 104);
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *a4, *(a4 + 8));
        }

        else
        {
          v75 = *a4;
        }

        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v74, *a5, *(a5 + 8));
        }

        else
        {
          v74 = *a5;
        }

        v32 = (*(*a1 + 768))(a1, &v76, v31, &v75, &v74, 1, 1);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        if (v77)
        {
          llvm::MetadataTracking::untrack();
        }

        LOWORD(v89[0]) = 257;
        v33 = llvm::ConstantInt::get();
        v20 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v20, v32, v33, &v87);
        ++v21;
        v22 += 2;
      }

      while (v18 != v21);
    }

    if ((v61 & 1) == 0)
    {
      LOWORD(v89[0]) = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v20, v59, &v87);
      v35 = v60;
      goto LABEL_89;
    }

    std::map<std::string,unsigned short>::at(&v82, a5);
    v51 = llvm::FixedVectorType::get();
    LOWORD(v89[0]) = 257;
    v52 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v20, v51, &v87);
    LOWORD(v89[0]) = 257;
    Cast = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v52, v52, v58, &v87);
    goto LABEL_76;
  }

  ShuffleVector = a3;
  if (v11)
  {
    LOWORD(v89[0]) = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), a3, a3, v19, &v87);
  }

  v37 = llvm::FixedVectorType::get();
  LOWORD(v89[0]) = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, ShuffleVector, v37, &v87);
  Cast = llvm::UndefValue::get();
  if (v11 >= 2)
  {
    v38 = 0;
    v39 = 1;
    v40 = v18;
    do
    {
      LOWORD(v89[0]) = 257;
      v41 = llvm::ConstantInt::get();
      v42 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v62, v41, &v87);
      v71 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v72, (a1 + 8));
      v73 = *(a1 + 104);
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v70, *a4, *(a4 + 8));
      }

      else
      {
        v70 = *a4;
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v69, *a5, *(a5 + 8));
      }

      else
      {
        v69 = *a5;
      }

      v43 = (*(*a1 + 768))(a1, &v71, v42, &v70, &v69, 0, 1);
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v72)
      {
        llvm::MetadataTracking::untrack();
      }

      LOWORD(v89[0]) = 257;
      v44 = llvm::ConstantInt::get();
      v45 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v43, v44, &v87);
      v80 = 257;
      v46 = llvm::ConstantInt::get();
      v47 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v45, v46, v79);
      LOWORD(v89[0]) = 257;
      v48 = llvm::ConstantInt::get();
      v49 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v43, v48, &v87);
      v80 = 257;
      v50 = llvm::ConstantInt::get();
      Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v47, v49, v50, v79);
      ++v38;
      v39 += 2;
    }

    while (v40 != v38);
  }

  v35 = v60;
  if (v61)
  {
LABEL_76:
    LOWORD(v89[0]) = 257;
    v53 = llvm::ConstantInt::get();
    v54 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v53, &v87);
    v66 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v67, (a1 + 8));
    v68 = *(a1 + 104);
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v65, *a4, *(a4 + 8));
    }

    else
    {
      v65 = *a4;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, *a5, *(a5 + 8));
    }

    else
    {
      v64 = *a5;
    }

    v55 = (*(*a1 + 768))(a1, &v66, v54, &v65, &v64, a6, 0);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v67)
    {
      llvm::MetadataTracking::untrack();
    }

    LOWORD(v89[0]) = 257;
    v56 = llvm::ConstantInt::get();
    Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v55, v56, &v87);
    v35 = __p[0];
  }

LABEL_89:
  if (v35)
  {
    operator delete(v35);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v83[0]);
  return Cast;
}

uint64_t *std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(uint64_t *result, uint64_t *a2, void *a3, uint64_t a4)
{
  v6 = result;
  v7 = result + 1;
  if (result + 1 == a2 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, a2 + 4), result))
  {
    v8 = *a2;
    if (*v6 == a2)
    {
      v10 = a2;
LABEL_17:
      if (!v8)
      {
        v17 = a2;
        goto LABEL_31;
      }

      v17 = v10;
      v13 = v10 + 1;
LABEL_30:
      if (!*v13)
      {
        goto LABEL_31;
      }

      return result;
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v10 + 4, a3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:
    result = std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(v6, &v17, a3);
    v13 = result;
    goto LABEL_30;
  }

  result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2 + 4, a3);
  if (result)
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 == v7 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, v13 + 4), result))
    {
      if (v11)
      {
        v17 = v13;
      }

      else
      {
        v17 = a2;
        v13 = a2 + 1;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v17 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildConvertHFP8_F2F(void *a1, uint64_t a2, llvm::Value *Cast, uint64_t *a4, unsigned __int16 *a5, int a6, int a7)
{
  v82 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v74, "f8e4m3");
  LOWORD(v77) = 0;
  std::string::basic_string[abi:nn200100]<0>(v78, "f8e4m3fn");
  LOWORD(v79) = 1;
  std::string::basic_string[abi:nn200100]<0>(v80, "f8e5m2");
  v13 = 0;
  LOWORD(v81) = 2;
  v70[0] = 0;
  v70[1] = 0;
  v69 = v70;
  do
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(&v69, v70, (&v74 + v13), &v74 + v13);
    v13 += 32;
  }

  while (v13 != 96);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v80[i + 2]) < 0)
    {
      operator delete(v80[i]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v74, "f32");
  v15 = (a1 + 21);
  v77 = a1[21];
  std::string::basic_string[abi:nn200100]<0>(v78, "f16");
  v79 = a1[19];
  std::string::basic_string[abi:nn200100]<0>(v80, "bf16");
  v16 = 0;
  v81 = a1[20];
  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v67, v68, (&v74 + v16), &v74 + v16);
    v16 += 32;
  }

  while (v16 != 96);
  for (j = 0; j != -12; j -= 4)
  {
    if (SHIBYTE(v80[j + 2]) < 0)
    {
      operator delete(v80[j]);
    }
  }

  v64 = *a2;
  v65 = *(a2 + 16);
  if (v65)
  {
    llvm::MetadataTracking::track();
  }

  v66 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v64);
  if (v65)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = llvm::ConstantInt::get();
  v19 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  v21 = llvm::IRBuilderBase::CreateOr((a1 + 1), v19, v18, &v74);
  if (!a6)
  {
    std::map<std::string,unsigned short>::at(&v69, a4);
    v31 = llvm::ConstantInt::get();
    LOWORD(v78[0]) = 257;
    v32 = llvm::IRBuilderBase::CreateOr((a1 + 1), v31, v21, &v74);
    v33 = *(a5 + 23);
    if (v33 < 0)
    {
      if (*(a5 + 1) != 3)
      {
        goto LABEL_38;
      }

      v34 = *a5;
    }

    else
    {
      v34 = a5;
      if (v33 != 3)
      {
        goto LABEL_38;
      }
    }

    v36 = *v34;
    v37 = *(v34 + 2);
    if (v36 == 12646 && v37 == 54)
    {
LABEL_39:
      v39 = *v15;
      if ((a7 & 1) == 0)
      {
        v40 = a1[24];
        LOWORD(v78[0]) = 257;
        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, Cast, v40, &v74);
      }

      v41 = &v63;
      std::string::basic_string[abi:nn200100]<0>(&v63, "llvm.agx3.unpack.hfp8.");
      if (v39 == a1[21])
      {
        v42 = "f32";
      }

      else
      {
        v42 = "bf16";
      }

      std::string::append(&v63, v42);
      llvm::FixedVectorType::get();
      __src = a1[24];
      v72 = __src;
      v74 = &v76;
      v75 = 0x200000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v74, &__src, &v73);
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v41 = v63.__r_.__value_.__r.__words[0]) != 0)
      {
        strlen(v41);
      }

      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v44 = v43;
      if (v74 != &v76)
      {
        free(v74);
      }

      __src = v32;
      v72 = Cast;
      LOWORD(v78[0]) = 257;
      Element = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v44 + 24), v44, &__src, 2, &v74);
      if (a7)
      {
        v46 = *(a5 + 23);
        if (v46 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v46 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v59 = llvm::FixedVectorType::get();
      }

      else
      {
        LOWORD(v78[0]) = 257;
        v47 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Element, v47, &v74);
        v48 = *(a5 + 23);
        if (v48 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v48 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v59 = a1[19];
      }

      LOWORD(v78[0]) = 257;
      FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), Element, v59, &v74);
      goto LABEL_87;
    }

LABEL_38:
    v15 = std::map<std::string,unsigned short>::at(&v67, a5);
    goto LABEL_39;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_HFP8_ENABLE_SATURATE", v20);
    if (Value)
    {
      if (*Value != 48)
      {
        atoi(Value);
      }
    }
  }

  v23 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  v24 = llvm::IRBuilderBase::CreateOr((a1 + 1), v23, v21, &v74);
  std::map<std::string,unsigned short>::at(&v69, a5);
  v25 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  v26 = llvm::IRBuilderBase::CreateOr((a1 + 1), v25, v24, &v74);
  if (a7)
  {
    LOWORD(v78[0]) = 257;
    v27 = llvm::ConstantInt::get();
    v28 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v27, &v74);
    LOWORD(v78[0]) = 257;
    v29 = llvm::ConstantInt::get();
    FPExt = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v29, &v74);
    Cast = v28;
  }

  else
  {
    FPExt = llvm::ConstantFP::get();
  }

  v35 = *(a4 + 23);
  if (v35 < 0)
  {
    if (a4[1] != 3)
    {
LABEL_62:
      v50 = *v15;
      LOWORD(v78[0]) = 257;
      Cast = llvm::IRBuilderBase::CreateFPExt((a1 + 1), Cast, v50, &v74);
      v51 = *v15;
      LOWORD(v78[0]) = 257;
      FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1), FPExt, v51, &v74);
      goto LABEL_63;
    }

    a4 = *a4;
  }

  else if (v35 != 3)
  {
    goto LABEL_62;
  }

  if (*a4 != 13158 || *(a4 + 2) != 50)
  {
    goto LABEL_62;
  }

LABEL_63:
  v52 = &v63;
  std::string::basic_string[abi:nn200100]<0>(&v63, "llvm.agx3.pack.hfp8");
  v53 = a1[21];
  __src = a1[24];
  v72 = v53;
  v73 = v53;
  v74 = &v76;
  v75 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v74, &__src, &v74);
  if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v52 = v63.__r_.__value_.__r.__words[0]) != 0)
  {
    strlen(v52);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v55 = v54;
  if (v74 != &v76)
  {
    free(v74);
  }

  __src = v26;
  v72 = Cast;
  v73 = FPExt;
  LOWORD(v78[0]) = 257;
  Element = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v55 + 24), v55, &__src, 3, &v74);
  if ((a7 & 1) == 0)
  {
    v56 = a1[23];
    LOWORD(v78[0]) = 257;
    FPTrunc = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v56, &v74);
LABEL_87:
    Element = FPTrunc;
  }

LABEL_88:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v68[0]);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v70[0]);
  return Element;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v6 = result;
  v7 = (result + 8);
  if ((result + 8) == a2 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, a2 + 4), result))
  {
    v8 = *a2;
    if (*v6 == a2)
    {
      v10 = a2;
LABEL_17:
      if (!v8)
      {
        v17 = a2;
        goto LABEL_31;
      }

      v17 = v10;
      v13 = v10 + 1;
LABEL_30:
      if (!*v13)
      {
        goto LABEL_31;
      }

      return result;
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v10 + 4, a3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:
    result = std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(v6, &v17, a3);
    v13 = result;
    goto LABEL_30;
  }

  result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2 + 4, a3);
  if (result)
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 == v7 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, v13 + 4), result))
    {
      if (v11)
      {
        v17 = v13;
      }

      else
      {
        v17 = a2;
        v13 = a2 + 1;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v17 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

uint64_t std::map<std::string,unsigned short>::at(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 56;
}

unint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildConvertHFP8_ParseArgTypes@<X0>(unint64_t result@<X0>, void *a3@<X8>)
{
  if (*(result + 1947))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdYield(uint64_t a1, uint64_t a2, llvm::CmpInst **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantInt::get();
  v13 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 37, a3, v6, v12);
  llvm::ConstantInt::get();
  v18 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v8 = *(a1 + 192);
  v13 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v8, v12);
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.yield", 15, *(a1 + 144), *(a1 + 192));
  v17[0] = Cast;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, v17, 1, v12);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(unsigned int **a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v63 = v5;
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() != -1 && ((llvm::CallBase::arg_end(a2) - (a2 + 32 * -(*(a2 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0xA0)
    {
      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map = 0u;
        *algn_27C8DB2B0 = 0u;
        dword_27C8DB2C0 = 1065353216;
        v41 = &dword_277E22068;
        v42 = 48;
        v43 = &dword_277E22068;
        do
        {
          v44 = *v43;
          v43 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, v44, v41);
          v41 = v43;
          v42 -= 16;
        }

        while (v42);
        __cxa_atexit(std::unordered_map<AIR::MemoryOrder,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map = 0u;
        unk_27C8DB2E0 = 0u;
        dword_27C8DB2F0 = 1065353216;
        v45 = &dword_277E22098;
        v46 = 32;
        v47 = &dword_277E22098;
        do
        {
          v48 = *v47;
          v47 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, v48, v45);
          v45 = v47;
          v46 -= 16;
        }

        while (v46);
        __cxa_atexit(std::unordered_map<AIR::MemoryScope,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map = 0u;
        *algn_27C8DB310 = 0u;
        dword_27C8DB320 = 1065353216;
        v49 = &byte_277E220B8;
        v50 = 32;
        v51 = &byte_277E220B8;
        do
        {
          v52 = *v51;
          v51 += 16;
          std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, v52, v49);
          v49 = v51;
          v50 -= 16;
        }

        while (v50);
        __cxa_atexit(std::unordered_map<BOOL,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, &dword_20E4E1000);
      }

      v7 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
      v8 = *v7;
      v9 = v7[8];
      v10 = v7[16];
      v11 = **v7;
      v12 = *(v11 + 8);
      if ((v12 & 0xFE) == 0x12)
      {
        v12 = *(**(v11 + 16) + 8);
      }

      v13 = v7[4];
      v14 = v7[12];
      v15 = v12 & 0xFFFFFF00;
      std::string::basic_string[abi:nn200100]<0>(&v56, "air.simdgroup_atomic.wait.i32.");
      if (v15 == 256)
      {
        v16 = "device.";
      }

      else
      {
        v16 = "threadgroup.";
      }

      v17 = std::string::append(&v56, v16);
      v18 = v17->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<BOOL,char const*>::unordered_map(v55, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map);
      v19 = *(v10 + 8);
      if (v19 > 0x40)
      {
        v20 = *v10[3];
      }

      else
      {
        v20 = (v10[3] << -v19) >> -v19;
      }

      v21 = std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::find<BOOL>(v55[0], v55[1], v20 != 0);
      v22 = std::string::append(&v57, v21[3]);
      v23 = v22->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v58, ".");
      v25 = v24->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v54, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map);
      v26 = *(v9 + 8);
      if (v26 > 0x40)
      {
        v27 = *v9[3];
      }

      else
      {
        v27 = (v9[3] << -v26) >> -v26;
      }

      v28 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v54[0], v54[1], v27);
      v29 = std::string::append(&v59, v28[3]);
      v30 = v29->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v66, ".");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v53, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map);
      v33 = *(v14 + 8);
      if (v33 > 0x40)
      {
        v34 = *v14[3];
      }

      else
      {
        v34 = (v14[3] << -v33) >> -v33;
      }

      v35 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v53[0], v53[1], v34);
      v36 = std::string::append(&v64, v35[3]);
      v37 = v36->__r_.__value_.__r.__words[2];
      v60 = *&v36->__r_.__value_.__l.__data_;
      v61 = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v53);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v54);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v55);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
      v38 = *v13;
      v64.__r_.__value_.__r.__words[0] = *v8;
      v64.__r_.__value_.__l.__size_ = v38;
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v66.__r_.__value_.__r.__words[0] = v8;
      v66.__r_.__value_.__l.__size_ = v13;
      v65 = 257;
      llvm::IRBuilderBase::CreateCall(a1 + 1, *(v39 + 24), v39, &v66, 2, &v64);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(a2);
      AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(a1, "spin_limit", 6.0);
    }

    return 0;
  }

  else
  {
    llvm::Instruction::eraseFromParent(a2);
    return 1;
  }
}

void std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(void *a1, int a2, _OWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

void std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(void *a1, unsigned __int8 a2, _OWORD *a3)
{
  v3 = a1[1];
  if (!v3 || ((v4 = vcnt_s8(v3), v4.i16[0] = vaddlv_u8(v4), v3 <= a2) ? (v5 = 0) : (v5 = a2), v4.u32[0] >= 2uLL ? (v6 = v5) : (v6 = ~*(a1 + 2) & a2), (v7 = *(*a1 + 8 * v6)) == 0 || (v8 = *v7) == 0))
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= v3)
      {
        v9 %= v3;
      }
    }

    else
    {
      v9 &= v3 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_19;
    }

LABEL_18:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  if (*(v8 + 16) != a2)
  {
    goto LABEL_18;
  }
}

uint64_t std::unordered_map<BOOL,char const*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(a1, *(i + 16), i + 1);
  }

  return a1;
}

uint64_t std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(a1, *(i + 4), i + 1);
  }

  return a1;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(void *a1, char *__s, float a3)
{
  {
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix, "translator.agx3.simdgroup_atomic_wait.get_");
    __cxa_atexit(MEMORY[0x277D82640], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix, &dword_20E4E1000);
  }

  {
    v13 = byte_27C8DB347;
    if (byte_27C8DB347 < 0)
    {
      v13 = qword_27C8DB338;
    }

    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix_length = v13;
  }

  if (byte_27C8DB347 >= 0)
  {
    v5 = byte_27C8DB347;
  }

  else
  {
    v5 = qword_27C8DB338;
  }

  v6 = strlen(__s);
  v7 = v14;
  std::string::basic_string[abi:nn200100](v14, v5 + v6);
  if (v15 < 0)
  {
    v7 = v14[0];
  }

  if (v5)
  {
    if (byte_27C8DB347 >= 0)
    {
      v8 = &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix;
    }

    else
    {
      v8 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::addYieldLoopParameter(char const*,float)::prefix;
    }

    memmove(v7, v8, v5);
  }

  v9 = v7 + v5;
  if (v6)
  {
    memmove(v9, __s, v6);
  }

  v9[v6] = 0;
  if (v15 >= 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = v14[0];
  }

  if (v15 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v14[1];
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v10, v11, a1[21]);
  *(inserted + 18) &= 0xC00Fu;
  operator new();
}

uint64_t *std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ***std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::find<BOOL>(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  v4 = ~a2 & a3;
  if (a3 >= a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if (v3.u32[0] >= 2uLL)
  {
    v4 = v5;
  }

  v6 = *(a1 + 8 * v4);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == a3)
    {
      if (*(result + 16) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      if (v8 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMemCpy2D(uint64_t a1, llvm::Instruction *a2)
{
  v11[12] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v10[0] = v11;
  v10[1] = 0xC00000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1968))(a1, v10);
  v8 = *a2;
  v9[16] = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v9);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v10[0] != v11)
  {
    free(v10[0]);
  }
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMemCpy1D(uint64_t a1, llvm::Instruction *a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v11[0] = v12;
  v11[1] = 0x500000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1928))(a1, v11);
  v8 = *a2;
  v10 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v9);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildImageBaseLevelExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v16 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v15);
  v14[16] = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, GEP, 0, v14);
  v12 = (*(*a1 + 248))(a1, AlignedLoad);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v12, a4, 0, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildImageMipCountExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v21 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v20);
  v19 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, GEP, 0, v18);
  v12 = (*(*a1 + 248))(a1, AlignedLoad);
  v13 = (*(*a1 + 249))(a1, AlignedLoad);
  v21 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v13, v12, v20);
  v15 = llvm::ConstantInt::get();
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Sub, v15, v18);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Add, a4, 0, 0);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMeshVaryingWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = llvm::PointerType::get();
  v16 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v10, v15, v11);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.varying.write", 28, *(a1 + 144), *(a1 + 192), *(a1 + 192), v10);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = PointerCast;
  v16 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v20, 3, v15);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMeshPrimattrWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = llvm::PointerType::get();
  v16 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v10, v15, v11);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.primattr.write", 29, *(a1 + 144), *(a1 + 192), *(a1 + 192), v10);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = PointerCast;
  v16 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v20, 3, v15);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMeshIndexWrite(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = llvm::PointerType::get();
  v14 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a4, v8, v13, v9);
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.mesh.index.write", 26, *(a1 + 144), *(a1 + 192), v8);
  v18[0] = a3;
  v18[1] = PointerCast;
  v14 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v11 + 24), v11, v18, 2, v13);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildWaitFence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v10);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.wait.fence", 20, *(a1 + 144), *(a1 + 192));
  v13[0] = a3;
  v9 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v6 + 24), v6, v13, 1, v8);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildAllocateUVB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.allocate.uvb", 22, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v15[0] = a3;
  v15[1] = a4;
  v11 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v15, 2, v10);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetMeshPrimitivePointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx3.mesh.primdata.ptr", 27, v4);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetPayloadPointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx3.object.payload.ptr", 28, v4);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildEnableAllThreads(uint64_t a1, uint64_t a2)
{
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx3.enable.all.threads", 28, *(a1 + 144));
  v8 = *a2;
  v9 = *(a2 + 16);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v8);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v6);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildWriteChildcount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.object.childcount.write", 33, *(a1 + 144), *(a1 + 200));
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v10);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v13[0] = a3;
  v9 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v6 + 24), v6, v13, 1, v8);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildStoreChildcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 336);
  v9 = llvm::PointerType::get();
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.object.childcount.store", 33, *(a1 + 144), v8, v9);
  v17[0] = a4;
  v17[1] = a3;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, v17, 2, v12);
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v77[16] = *MEMORY[0x277D85DE8];
  v70 = *a2;
  v71 = *(a2 + 16);
  if (v71)
  {
    llvm::MetadataTracking::track();
  }

  v72 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v70);
  if (v71)
  {
    llvm::MetadataTracking::untrack();
  }

  *__s = 0;
  v68 = 0;
  v69 = 0;
  v76[0] = v77;
  v76[1] = 0x1000000000;
  v73 = v75;
  v74 = 0x1000000000;
  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v18 = llvm::ConstantInt::get();
  v64 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (a1 + 8));
  v66 = *(a1 + 104);
  v19 = (*(*a1 + 1680))(a1, &v64, v18, a10);
  if (v65)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, v19);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, *(a1 + 192));
  v20 = *(a1 + 192);
  v63 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v20, v62);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, Cast);
  v22 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, v22);
  v23 = llvm::PointerType::get();
  v63 = 257;
  v24 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v23, v62);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, v24);
  v61 = 0;
  (*(*a1 + 1736))(__s, a1, a8, &v61);
  v25 = llvm::PointerType::get();
  v63 = 257;
  v26 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, a4, v25, v62);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, v25);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, v26);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.dispatch.threadgroup.x.size", 37, *(a1 + 200));
  v28 = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.threadgroup.x", 23, *(a1 + 200));
  v29 = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.dispatch.threadgroup.y.size", 37, *(a1 + 200));
  v30 = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.threadgroup.y", 23, *(a1 + 200));
  v63 = 257;
  v31 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v28 + 24), v28, 0, 0, v62);
  v60 = 257;
  v32 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v59);
  v58 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v31, v32, v57);
  v63 = 257;
  v34 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v30 + 24), v30, 0, 0, v62);
  v60 = 257;
  v35 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v29 + 24), v29, 0, 0, v59);
  v58 = 257;
  v36 = llvm::IRBuilderBase::CreateMul((a1 + 8), v34, v35, v57);
  v37 = 0;
  if ((v61 - 1) <= 1 && ((v38 = *(a1 + 1728)) == 0 ? (v39 = 0) : (v39 = strlen(*(a1 + 1728))), v40 = AGCLLVMBuilder::getOrInsertFunction<>(a1, v38, v39, *(a1 + 200)), v63 = 257, v37 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v40 + 24), v40, 0, 0, v62), v61 == 2))
  {
    v41 = llvm::UndefValue::get();
    v63 = 257;
    v42 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v41, Mul, v42, v62);
    v63 = 257;
    v44 = llvm::ConstantInt::get();
    v45 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v36, v44, v62);
    v63 = 257;
    v46 = llvm::ConstantInt::get();
    v47 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v45, v37, v46, v62);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, *(a1 + 336));
    v48 = v47;
  }

  else
  {
    v49 = llvm::UndefValue::get();
    v63 = 257;
    v50 = llvm::ConstantInt::get();
    v51 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v49, Mul, v50, v62);
    v63 = 257;
    v52 = llvm::ConstantInt::get();
    v53 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v51, v36, v52, v62);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, *(a1 + 248));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, v53);
    if (!v37)
    {
      goto LABEL_16;
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v76, *(a1 + 192));
    v54 = *(a1 + 192);
    v63 = 257;
    v48 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v37, v54, v62);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v73, v48);
LABEL_16:
  llvm::FunctionType::get();
  if ((SHIBYTE(v69) & 0x80000000) == 0)
  {
    v55 = __s;
LABEL_19:
    strlen(v55);
    goto LABEL_20;
  }

  v55 = *__s;
  if (*__s)
  {
    goto LABEL_19;
  }

LABEL_20:
  llvm::Module::getOrInsertFunction();
  v63 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v56 + 24), v56, v73, v74, v62);
  if (v73 != v75)
  {
    free(v73);
  }

  if (v76[0] != v77)
  {
    free(v76[0]);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(*__s);
  }
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRawRayPointers@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, llvm::Value **a6@<X8>)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v34 = *a2;
  v35 = *(a2 + 16);
  if (v35)
  {
    llvm::MetadataTracking::track();
  }

  v36 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v34);
  if (v35)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = llvm::PointerType::get();
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a1 + 200);
  v32[0] = "vrid_ext";
  v33 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a4, v15, v32);
  v39[0] = llvm::ConstantInt::get();
  v39[1] = Cast;
  v17 = *(v14 + 24);
  v32[0] = "ray_core";
  v33 = 259;
  llvm::Type::isOpaquePointerTy(*v14);
  GEP = llvm::IRBuilderBase::CreateGEP(a1 + 8, v17, v14, v39, 2, v32);
  v20 = llvm::ConstantPointerNull::get(v12, v19);
  if (a5)
  {
    v22 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ria.token.id", 22, *(a1 + 192), 0, 0);
    v37[0] = llvm::ConstantInt::get();
    v23 = *(a1 + 200);
    v33 = 257;
    v37[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v22, v23, v32);
    v24 = *(v13 + 24);
    v32[0] = "token_buffer";
    v33 = 259;
    llvm::Type::isOpaquePointerTy(*v13);
    v20 = llvm::IRBuilderBase::CreateGEP(a1 + 8, v24, v13, v37, 2, v32);
  }

  v33 = 257;
  *a6 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v20, v12, v32, v21);
  a6[1] = llvm::ConstantPointerNull::get(v12, v25);
  a6[2] = llvm::ConstantPointerNull::get(v12, v26);
  v38 = 257;
  a6[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v12, v37, v27);
  a6[4] = llvm::ConstantPointerNull::get(v12, v28);
  a6[5] = llvm::ConstantPointerNull::get(v12, v29);
  result = llvm::ConstantPointerNull::get(v12, v30);
  a6[6] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMemCpy2DConditionalLoadStoreExpansion(uint64_t a1, uint64_t ***a2, uint64_t a3, BOOL a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = (*a2)[8];
  v7 = (*a2)[10];
  v67 = (*a2)[2];
  v8 = *(*v67 + 8);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(*v67 + 16) + 8);
  }

  v69 = *v5;
  v9 = v5[9];
  v10 = v5[11];
  v70 = v5[3];
  v11 = v5[5];
  v66 = v5[6];
  v12 = v5[7];
  if (*(v6 + 16) != 16)
  {
    goto LABEL_11;
  }

  v13 = v5[4];
  v14 = *(v6 + 8);
  if (v14 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v6 + 3)) != v14 - 1)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  else if (v6[3] != 1)
  {
    goto LABEL_11;
  }

  if (*(v13 + 16) != 16)
  {
    goto LABEL_11;
  }

  v15 = *(v13 + 8);
  if (v15 > 0x40)
  {
    v16 = llvm::APInt::countLeadingZerosSlowCase((v13 + 3)) == v15 - 1;
  }

  else
  {
    v16 = v13[3] == 1;
  }

  v17 = v16;
LABEL_12:
  v18 = v8 & 0xFFFFFF00;
  if (v7[16] > 0x14u)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v73 = 257;
  v19 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v19, &v72);
  if (Element[16] == 16)
  {
    v21 = Element;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 8);
  if (v22 > 0x40)
  {
    if (**(v21 + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v21 + 3) << -v22) >> -v22)
  {
    goto LABEL_18;
  }

  v73 = 257;
  v38 = llvm::ConstantInt::get();
  v39 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v7, v38, &v72);
  if (v39[16] == 16)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(v40 + 8);
  if (v41 > 0x40)
  {
    v42 = **(v40 + 3);
  }

  else
  {
    v42 = (*(v40 + 3) << -v41) >> -v41;
  }

  if (v42)
  {
    v65 = 0;
  }

  else
  {
    v65 = v11 == v9;
  }

  v23 = v65;
LABEL_19:
  v73 = 257;
  v24 = llvm::ConstantInt::get();
  v25 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v11, v24, &v72);
  v73 = 257;
  v26 = llvm::ConstantInt::get();
  v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v26, &v72);
  v73 = 257;
  v28 = llvm::ConstantInt::get();
  v29 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v28, &v72);
  v31 = v25 == v70 && v27 == v12;
  v32 = v31 & v17;
  if (v23)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&v72, *(a1 + 2616));
  if (v18 == 768)
  {
    v34 = ".read";
  }

  else
  {
    v34 = ".write";
  }

  v35 = std::string::append(&v72, v34);
  v36 = v35->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (*(v10 + 16) == 16)
  {
    v37 = *(v10 + 8);
    if (v37 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v10 + 3)) != v37 - 1)
      {
        goto LABEL_45;
      }
    }

    else if (v10[3] != 1)
    {
      goto LABEL_45;
    }

    std::string::append(&v71, ".edgeclamped");
  }

LABEL_45:
  if (v33)
  {
    v73 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v27, v29, &v72);
    *&__src.__r_.__value_.__l.__data_ = v69;
    __src.__r_.__value_.__r.__words[2] = v67;
    v75 = v66;
    v76 = Mul;
    v72.__r_.__value_.__r.__words[0] = &v72.__r_.__value_.__r.__words[2];
    v72.__r_.__value_.__l.__size_ = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v72, &__src, &v77);
    v44 = (*(*a1 + 1928))(a1, &v72);
    v45 = v72.__r_.__value_.__r.__words[0];
    if (v72.__r_.__value_.__l.__data_ == &v72.__r_.__value_.__r.__words[2])
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v17)
  {
    std::string::append(&v71, ".noholes");
    v47 = a2;
  }

  else
  {
    v48 = (v69 + 24);
    if (*(v69 + 32) >= 0x41u)
    {
      v48 = *v48;
    }

    v49 = *v48;
    v50 = (*(&v69 + 1) + 24);
    if (*(*(&v69 + 1) + 32) >= 0x41u)
    {
      v50 = *v50;
    }

    v47 = a2;
    v51 = *v50;
    if (v51 > 4 && v49 == v51)
    {
      v53 = v51 >> 2;
    }

    else
    {
      v53 = v49 / v51;
    }

    std::to_string(&__src, v53);
    v54 = std::string::insert(&__src, 0, ".withholes.v");
    v55 = v54->__r_.__value_.__r.__words[2];
    *&v72.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
    v72.__r_.__value_.__r.__words[2] = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v72;
    }

    else
    {
      v56 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v56, size);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  v72.__r_.__value_.__r.__words[0] = &v72.__r_.__value_.__r.__words[2];
  v72.__r_.__value_.__l.__size_ = 0xC00000000;
  v58 = *(v47 + 2);
  if (v58)
  {
    v59 = *v47;
    v60 = 8 * v58;
    do
    {
      v61 = *v59++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v72, *v61);
      v60 -= 8;
    }

    while (v60);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v62 = *v47;
  v63 = *(v47 + 2);
  LOWORD(v76) = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v64 + 24), v64, v62, v63, &__src);
  v44 = *(a1 + 2648);
  v45 = v72.__r_.__value_.__r.__words[0];
  if (v72.__r_.__value_.__l.__data_ != &v72.__r_.__value_.__r.__words[2])
  {
LABEL_47:
    free(v45);
  }

LABEL_48:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  return v44;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::programTypeSpecialRegisterValueForShaderType(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
    v2 = 3;
  }

  else
  {
    v2 = a2 == 9;
  }

  if ((a2 - 27) >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (a2 == 2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if (a2 <= 6)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getImageBlockWriteIntrinsicFromDimension@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, void *a4@<X8>)
{
  *a3 = 0;
  result = std::string::basic_string[abi:nn200100]<0>(a4, *(a1 + 2064));
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v7 = ".coords.2d.array";
LABEL_13:
        result = std::string::append(result, v7);
        v9 = 1;
LABEL_16:
        *a3 = v9;
        return result;
      }

      v8 = ".coords.2d";
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v8 = ".coords.1d.array";
    }

    else
    {
      v8 = ".coords.1d";
    }
  }

  else if (a2 <= 5)
  {
    if (a2 != 4)
    {
      result = std::string::append(result, ".coords.3d");
      v9 = 2;
      goto LABEL_16;
    }

    v8 = ".coords.2d.msaa";
  }

  else
  {
    switch(a2)
    {
      case 6:
        v8 = ".coords.cubestf";
        break;
      case 7:
        v8 = ".coords.cubestf.array";
        break;
      case 8:
        v7 = ".coords.2d.msaa.array";
        goto LABEL_13;
      default:
        return result;
    }
  }

  return std::string::append(result, v8);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v5 = *(a3 + 8) & 0xFE;
  if (*(a1 + 1889) == 1)
  {
    v6 = a3;
    if (v5 == 18)
    {
      v6 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = a2;
    }

    if (a2 == 12)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    if (a2 == 13)
    {
      v9 = 15;
    }

    else
    {
      v9 = v8;
    }

    if (a5)
    {
      v9 = a2;
    }

    if (v6 == *(a1 + 168) && a4 != 0)
    {
      a2 = v9;
    }
  }

  if (v5 == 18)
  {
    a3 = **(a3 + 16);
  }

  v12 = a2 == 1 && a3 == *(a1 + 168);
  return v12 | (a2 << 16);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v18 = *a2;
  v19 = *(a2 + 2);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 6);
  v8 = AGCLLVMGen5TargetLowerer::buildSimdShuffleDown(a1, &v18, a3, a4);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v9 = llvm::ConstantInt::get();
    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    v10 = (*(*a1 + 1624))(a1, &v15, *(a1 + 192));
    v14 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v9, v10, v13);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }

    v14 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Sub, a4, v13);
    v14 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v8 = AGCLLVMGen5TargetLowerer::buildSimdShuffleUp(a1, &v16, a3, a4);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    if (v14)
    {
      llvm::MetadataTracking::track();
    }

    v15 = *(a2 + 6);
    v9 = (*(*a1 + 1624))(a1, &v13, *(a1 + 192));
    if (v14)
    {
      llvm::MetadataTracking::untrack();
    }

    v12 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v9, a4, v11);
    v12 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildQuadShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v18 = *a2;
  v19 = *(a2 + 2);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(a1, &v18, a3, a4);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v9 = llvm::ConstantInt::get();
    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    v10 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v15, *(a1 + 192));
    v14 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v9, v10, v13);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }

    v14 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Sub, a4, v13);
    v14 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildQuadShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleUp(a1, &v16, a3, a4);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1918) == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    if (v14)
    {
      llvm::MetadataTracking::track();
    }

    v15 = *(a2 + 6);
    v9 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v13, *(a1 + 192));
    if (v14)
    {
      llvm::MetadataTracking::untrack();
    }

    v12 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v9, a4, v11);
    v12 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v8;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildWriteImageBlockIntrinsic(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, int a6)
{
  v58[16] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v53, *(a1 + 2064));
  if (a6)
  {
    std::string::append(&v53, ".subset");
  }

  std::string::append(&v53, ".coords");
  v57[0] = v58;
  v57[1] = 0x1000000000;
  v54 = v56;
  v55 = 0x1000000000;
  if (*(a1 + 1948) == 1 && *(a2 + 26) == 1)
  {
    v12 = llvm::ConstantInt::get();
    v52 = 257;
    a3 = llvm::IRBuilderBase::CreateOr((a1 + 8), a3, v12, v51);
  }

  v48 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (a1 + 8));
  v50 = *(a1 + 104);
  v13 = (*(*a1 + 1680))(a1, &v48, a3, a5);
  if (v49)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v13);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, a4);
  v14 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, v14);
  v15 = *(a2 + 56);
  v16 = llvm::PointerType::get();
  v52 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v15, v16, v51);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, Cast);
  v18 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, v18);
  v19 = *(a2 + 32);
  if (!v19)
  {
    v20 = llvm::ConstantInt::get();
    v52 = 257;
    v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v20, v18, v51);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v19);
  v21 = *(a2 + 4);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = ".cubestf";
LABEL_19:
      std::string::append(&v53, v22);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 248));
      v24 = *(a2 + 136);
      v25 = *(a1 + 248);
      goto LABEL_20;
    }

    if (v21 != 3)
    {
      goto LABEL_21;
    }

    std::string::append(&v53, ".3d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 336));
    v24 = *(a2 + 136);
    v25 = *(a1 + 336);
  }

  else
  {
    if (v21)
    {
      if (v21 != 1)
      {
        goto LABEL_21;
      }

      v22 = ".2d";
      goto LABEL_19;
    }

    std::string::append(&v53, ".1d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 200));
    v24 = *(a2 + 136);
    v25 = *(a1 + 200);
  }

LABEL_20:
  v52 = 257;
  ZExtOrBitCast = llvm::IRBuilderBase::CreateZExtOrBitCast((a1 + 8), v24, v25, v51, v23);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, ZExtOrBitCast);
LABEL_21:
  if (*(a2 + 152))
  {
    std::string::append(&v53, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
    v27 = *(a2 + 152);
    v28 = *(a1 + 192);
    v52 = 257;
    v29 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v27, v28, v51);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v29);
  }

  if (*(a2 + 232))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
    v30 = *(a2 + 232);
    v31 = *(a1 + 192);
    v52 = 257;
    v32 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v30, v31, v51);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v32);
  }

  if (*(a2 + 168))
  {
    std::string::append(&v53, ".lod");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
    v33 = *(a2 + 168);
    v34 = *(a1 + 192);
    v52 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v51);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v35);
  }

  if (a6)
  {
    v36 = **(a2 + 120);
    if ((*(v36 + 8) & 0xFE) == 0x12)
    {
      v37 = *(v36 + 32);
      if (!v37)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v37 = 1;
    }

    v38 = 0;
    v39 = v37;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
      v40 = *(a2 + 120);
      v52 = 257;
      v41 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v40, v41, v51);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, Element);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v57, *(a1 + 192));
      v43 = *(a2 + 128);
      v52 = 257;
      v44 = llvm::ConstantInt::get();
      v45 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v43, v44, v51);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v45);
      ++v38;
    }

    while (v39 != v38);
  }

LABEL_34:
  if (*(a2 + 16) == 1)
  {
    std::string::append(&v53, ".rtz");
  }

  llvm::FunctionType::get();
  if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v46 = &v53;
LABEL_39:
    strlen(v46);
    goto LABEL_40;
  }

  v46 = v53.__r_.__value_.__r.__words[0];
  if (v53.__r_.__value_.__r.__words[0])
  {
    goto LABEL_39;
  }

LABEL_40:
  llvm::Module::getOrInsertFunction();
  v52 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v47 + 24), v47, v54, v55, v51);
  if (v54 != v56)
  {
    free(v54);
  }

  if (v57[0] != v58)
  {
    free(v57[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPackMXU(uint64_t a1, int a2, uint64_t *a3, unsigned int a4)
{
  v25[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v18 = 0;
  v19 = 0;
  if (a2 == 9)
  {
    v6 = *a3;
    v7 = *(a1 + 296);
    v8 = "llvm.agx3.pack.4xi4.v4f32";
    v9 = "llvm.agx3.pack.4xi4.v4f16";
  }

  else
  {
    if (a2 != 10)
    {
      goto LABEL_9;
    }

    v6 = *a3;
    v7 = *(a1 + 216);
    v8 = "llvm.agx3.pack.2xi8.v2f32";
    v9 = "llvm.agx3.pack.2xi8.v2f16";
  }

  if (v6 == v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  MEMORY[0x20F331AA0](__s, v10);
LABEL_9:
  v11 = *a3;
  __src[0] = *(a1 + 192);
  __src[1] = v11;
  v24[0] = v25;
  v24[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v24, __src, v21);
  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    v12 = __s;
LABEL_12:
    strlen(v12);
    goto LABEL_13;
  }

  v12 = *__s;
  if (*__s)
  {
    goto LABEL_12;
  }

LABEL_13:
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v14 = v13;
  v23[0] = llvm::ConstantInt::get();
  v23[1] = a3;
  v22 = 257;
  v15 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v14 + 24), v14, v23, 2, __src);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(*__s);
  }

  return v15;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildUnpackMXU(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  *__s = 0;
  v17 = 0;
  v18 = 0;
  if (a2 == 10)
  {
    v9 = "llvm.agx3.unpack.2xi8.v2f16";
    v10 = 224;
  }

  else
  {
    v8 = 0;
    if (a2 != 9)
    {
      goto LABEL_6;
    }

    v9 = "llvm.agx3.unpack.4xi4.v4f16";
    v10 = 312;
  }

  MEMORY[0x20F331AA0](__s, v9, a3, a4, a5);
  v8 = *(a1 + v10);
LABEL_6:
  __src[0] = *(a1 + 192);
  __src[1] = __src[0];
  v23[0] = v24;
  v23[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v23, __src, v20);
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    v11 = __s;
LABEL_9:
    strlen(v11);
    goto LABEL_10;
  }

  v11 = *__s;
  if (*__s)
  {
    goto LABEL_9;
  }

LABEL_10:
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v13 = v12;
  v22[0] = llvm::ConstantInt::get();
  v22[1] = a3;
  v21 = 257;
  FPExt = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v22, 2, __src);
  if (*(a1 + 168) == a4)
  {
    v21 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 8), FPExt, v8, __src);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(*__s);
  }

  return FPExt;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::IntersectionQueryAnalysisGen6::intersectionQueryResidencyForQueryAtInstruction(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Value *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Value *>>>::find<llvm::Value *>((a1 + 8), a2);
  if (v4)
  {
    v2 = v4[3];
  }

  if (*(a1 + 80) != 1)
  {
    return 2;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    return 2;
  }

  while (1)
  {
    v6 = v5[4];
    if (v2 >= v6)
    {
      break;
    }

LABEL_8:
    v5 = *v5;
    if (!v5)
    {
      return 2;
    }
  }

  if (v6 < v2)
  {
    ++v5;
    goto LABEL_8;
  }

  if ((*(a1 + 51) & 1) != 0 || (*(a1 + 48) & 1) != 0 || *(a1 + 53) == 1)
  {
    return 2;
  }

  return 0;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BC7A8;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BC7A8;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getPayloadVariant(uint64_t a1, int a2)
{
  if ((~a2 & 0x44) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  v3 = a2 & 1;
  if ((a2 & 0x40) != 0)
  {
    v3 = 2;
  }

  if ((a2 & 4) != 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

llvm::Function *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::replacePayloadSupportFunctions(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  result = llvm::Module::getFunction();
  if (result)
  {
    v12 = result;
    v32 = a4;
    v13 = *(result + 1);
    while (v13)
    {
      v14 = *(v13 + 24);
      v13 = *(v13 + 8);
      if (a6 == 8)
      {
        llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v14);
        v15 = (*(*a1 + 117))(a1);
        v16 = llvm::ConstantInt::get();
        v36 = 257;
        v17 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v15, v16, v35);
        v18 = llvm::PointerType::get();
        v19 = *(a2 + 16);
        v36 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v19, v18, v35, v20);
        PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v17, PointerCast);
        v23 = a1[25];
        (*(*a1[115] + 1128))();
        v24 = llvm::ConstantInt::get();
        v36 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v23, PerVridSetDataPtr, v24, v35);
        v36 = 257;
        Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v35);
        v27 = a1[23];
        v34 = 257;
        llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Load, v27, v33);
      }

      else
      {
        llvm::ConstantInt::get();
      }

      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v14);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v29 = *(Function + 8);
      if (v29)
      {
        do
        {
          v30 = *(v29 + 8);
          v31 = *(v29 + 24);
          llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v31);
          llvm::ConstantInt::get();
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v31);
          v29 = v30;
        }

        while (v30);
      }
    }

    llvm::Function::eraseFromParent(v12);
    return (*(*a1 + 180))(a1, a2, a3, v32);
  }

  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::replacePayloadSupportFunctions(_BYTE *a1, uint64_t a2, void *a3, llvm::Value *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v7 = Function;
    v8 = *(Function + 8);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        llvm::ConstantInt::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
        v8 = v9;
      }

      while (v9);
    }

    llvm::Function::eraseFromParent(v7);
  }

  v11 = llvm::Module::getFunction();
  v29 = a1;
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 8);
    if (v13)
    {
      do
      {
        v14 = (*(*a1 + 1456))(a1, 1);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(a1, 6, 1uLL, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(v29, v14, 1uLL, 0);
        v15 = *(v13 + 8);
        v16 = *(v13 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v29 + 8), v16);
        llvm::ConstantInt::get();
        a1 = v29;
        llvm::ConstantInt::get();
        LOWORD(v32) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v16);
        v13 = v15;
      }

      while (v15);
    }

    llvm::Function::eraseFromParent(v12);
  }

  v17 = llvm::Module::getFunction();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 8);
    if (v19)
    {
      do
      {
        v20 = (*(*a1 + 1456))(a1, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(a1, 5, 0, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(v29, v20, 0, 0);
        v21 = *(v19 + 8);
        v22 = *(v19 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v29 + 8), v22);
        llvm::ConstantInt::get();
        a1 = v29;
        llvm::ConstantInt::get();
        LOWORD(v32) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v22);
        v19 = v21;
      }

      while (v21);
    }

    llvm::Function::eraseFromParent(v18);
  }

  v23 = llvm::Module::getFunction();
  if (v23)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      do
      {
        v25 = *(v24 + 8);
        v26 = *(v24 + 24);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v26);
        v27 = *(v26 - 4 * (*(v26 + 5) & 0x7FFFFFF));
        v28 = *(a1 + 18);
        v30[0] = a3;
        v30[1] = v27;
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.update.bvh", 20, v28, v30, 2uLL);
        llvm::Instruction::eraseFromParent(v26);
        v24 = v25;
      }

      while (v25);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v30, "agc.query.allocate");
  LOBYTE(v31) = 1;
  std::string::basic_string[abi:nn200100]<0>(&v32, "agc.query.deallocate");
  LOBYTE(v33) = 0;
  operator new();
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = (*(*a1 + 1016))(a1, a2, a4);
  v9 = 0;
  v10 = a1[1940];
  v11 = 6;
  v12 = -104;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v11, v6, v4, v10))
    {
      v13 = RaytracingConstantsGen2::payloadSegmentSize(v11, a1[2872]);
      if ((v11 - 19) <= 4)
      {
        v14 = (0x201010101uLL >> v12) & 3;
        if (a3 >= v14)
        {
          v15 = (a3 - v14) / (((v14 << 8) & 0xFFFCFFFF | (((0x201010101uLL >> v12) & 3) << 16)) >> 16) + 1;
        }

        else
        {
          v15 = 0;
        }

        v13 *= v15;
      }

      v16 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v8 >= v16;
      v18 = v8 - v16;
      if (!v17)
      {
        v18 = 0;
      }

      if (v13 - 1 >= v8)
      {
        v9 += v13;
      }

      else
      {
        v8 = v18;
      }
    }

    v11 = (v11 + 1);
    v12 += 8;
  }

  while (v11 != 26);
  return v9;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getRaytracingShaderType(uint64_t a1, int a2, char a3)
{
  if (a2 > 8)
  {
    if (a2 == 11)
    {
      return 3;
    }

    if (a2 == 10 || a2 == 9)
    {
      return (a3 & 0xFD) != 0;
    }

    return 4;
  }

  if (!a2)
  {
    return 5;
  }

  if (a2 != 1)
  {
    if (a2 == 4)
    {
      return 7;
    }

    return 4;
  }

  return 6;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSDoneRayTraceSCSFlagSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a3 + 16);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v6, v7, v19, v8);
  v10 = (*(*a1 + 952))(a1);
  v11 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v10, v11, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  v14 = llvm::ConstantInt::get();
  v15 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v16 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v15, PerVridSetDataPtr, v16, v19);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v14, GEP, 0, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSDoneRayTraceSCSFlagRead(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a3 + 16);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v6, v7, v19, v8);
  v10 = (*(*a1 + 119))(a1);
  v11 = a1[25];
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v10, v11, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  v14 = a1[25];
  (*(*a1[115] + 1096))();
  v15 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, PerVridSetDataPtr, v15, v19);
  v18[16] = 257;
  return AGCLLVMBuilder::CreateLoad(a1, GEP, v18);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v23);
  v13 = *(a1 + 144);
  v14 = llvm::PointerType::get();
  v24 = 257;
  v28[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v14, v23, v15);
  v16 = llvm::PointerType::get();
  v22 = 257;
  v28[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v16, v21);
  v17 = *(a1 + 208);
  v20 = 257;
  v28[2] = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a5, v17, v19);
  v28[3] = a6;
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.set_buffer_intersection_function_table", 42, v13, v28, 4uLL);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v23);
  v13 = *(a1 + 208);
  v14 = llvm::PointerType::get();
  v24 = 257;
  v28[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v14, v23, v15);
  v16 = llvm::PointerType::get();
  v22 = 257;
  v28[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v16, v21);
  v28[2] = a5;
  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_buffer_intersection_function_table", 42, v13, v28, 3uLL);
  v20 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v17, a6, v19);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetSizeIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v15);
  v9 = *(a1 + 200);
  v10 = llvm::PointerType::get();
  v16 = 257;
  v20[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v10, v15, v11);
  v12 = llvm::PointerType::get();
  v14[16] = 257;
  v20[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Load, v12, v14);
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_size_intersection_function_table", 40, v9, v20, 2uLL);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::createDriverParameterShaderCoreBinding(uint64_t a1, uint64_t a2)
{
  llvm::StructType::create();
  v2 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  inserted = llvm::Module::getOrInsertNamedMetadata();
  if (!llvm::NamedMDNode::getNumOperands(inserted))
  {
    RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(0x1000000uLL, 1);
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  return v2;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::createShaderCoreBindings@<X0>(llvm::ArrayType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(*a1 + 245))(a1);
  v9 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(v8, 0x1000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v10 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v11 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v12 = llvm::User::operator new(0x58);
  v13 = llvm::ArrayType::get(a1[23], 0x200);
  llvm::ArrayType::get(v13, 0x30);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  *a4 = v12;
  a4[1] = v9;
  a4[3] = v10;
  a4[5] = v11;
  result = (*(*a1 + 171))(a1, a2);
  a4[2] = result;
  a4[4] = a3;
  return result;
}

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getIntersectionMainFunctionName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  if ((*(*a1 + 1424))(a1, a2, a4) == 4)
  {
    v9 = "agc.intersection";
  }

  else
  {
    v9 = "agc.cliqueS";
  }

  result = std::string::basic_string[abi:nn200100]<0>(a5, v9);
  if (a3 <= 7)
  {
    result = std::string::append(a5, off_277E220F0[a3]);
  }

  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 11)
      {
        if (v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22170;
      }

      else if (v7 == 10)
      {
        if (v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22150;
      }

      else
      {
        if (v7 != 9 || v5 >= 4)
        {
          return result;
        }

        v12 = off_277E22130;
      }

      goto LABEL_39;
    }

    if (v7 == 6)
    {
      goto LABEL_26;
    }

    if (v7 != 7)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v11 = ".gin1122SWWA";
        goto LABEL_40;
      }

LABEL_18:
      result = std::string::append(a5, ".box");
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v11 = ".box_motion_leaf";
      }

      else
      {
        v11 = ".box_leaf";
      }

      goto LABEL_40;
    }

LABEL_27:
    result = std::string::append(a5, ".curve");
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v11 = ".curve_motion_leaf";
    }

    else
    {
      v11 = ".curve_leaf";
    }

    goto LABEL_40;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v13 = ".early_termination";
      goto LABEL_34;
    }

    if (v7 != 2)
    {
      return result;
    }

LABEL_26:
    v13 = ".triangle";
LABEL_34:
    result = std::string::append(a5, v13);
    if (v5 >= 8)
    {
      return result;
    }

    v12 = off_277E22190;
LABEL_39:
    v11 = v12[v5];
    goto LABEL_40;
  }

  v11 = ".miss";
LABEL_40:

  return std::string::append(a5, v11);
}

unint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSizeAndUserPayloadSize(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v6 = a4;
  if (a3)
  {
    if (a4)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    if ((a4 & 0x40) != 0)
    {
      v9 = 7;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = (*(*a1 + 1456))(a1, a4);
  }

  return (AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::computeDriverPayloadSize(a1, v9, a5, (v6 >> 5) & 1) + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSGeneral(llvm::ConstantInt **a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 2);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v17, (a1 + 1));
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(v16, 0, sizeof(v16));
  (*(*a1 + 118))(v16, a1);
  memset(v15, 0, sizeof(v15));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v15, a1, a3, *&v16[0], 0, 0, 0);
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, *&v16[0], v15, a4, 1u, 1);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSGeneral(AGCLLVMBuilder::InsertPoint,std::array<llvm::GlobalVariable *,6ul> const&,unsigned char,unsigned char)::functionNames[a5];
  v12 = strlen(v11);
  v13 = a1[18];
  v20 = v10;
  v21 = v16[0];
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v11, v12, v13, &v20, 3uLL);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, llvm::Type **a6, char a7)
{
  v55 = llvm::PointerType::get();
  v13 = llvm::PointerType::get();
  v14 = *(a3 + 16);
  v59 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), v14, v13, v58, v15);
  v17 = *(a2 + 208);
  (*(**(a2 + 920) + 896))();
  v18 = llvm::ConstantInt::get();
  v58[0] = "scs.scs_layout.ptr";
  v59 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a2 + 8), v17, PointerCast, v18, v58);
  v20 = llvm::PointerType::get();
  v59 = 257;
  v22 = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), GEP, v20, v58, v21);
  v23 = *(a2 + 200);
  v24 = llvm::ConstantInt::get();
  v59 = 257;
  v25 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v23, v22, v24, v58);
  *a1 = AGCLLVMBuilder::CreateLoad(a2, v25, "global_stride");
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a2, a4, PointerCast);
  v27 = *(a2 + 200);
  (*(**(a2 + 920) + 1072))();
  v28 = llvm::ConstantInt::get();
  v59 = 257;
  v29 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v27, PerVridSetDataPtr, v28, v58);
  v30 = *(a2 + 200);
  (*(**(a2 + 920) + 1080))();
  v31 = llvm::ConstantInt::get();
  v59 = 257;
  v32 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v30, PerVridSetDataPtr, v31, v58);
  v33 = *(a2 + 200);
  (*(**(a2 + 920) + 1088))();
  v34 = llvm::ConstantInt::get();
  v59 = 257;
  v35 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v33, PerVridSetDataPtr, v34, v58);
  v36 = *(a2 + 200);
  v59 = 257;
  llvm::Type::isOpaquePointerTy(*v35);
  a1[2] = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v36, v35, 0, v58);
  v37 = *(a2 + 200);
  if ((a5 & 0x100000000) != 0)
  {
    Cast = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), Cast, v29, 0, 0);
  }

  else
  {
    v59 = 257;
    llvm::Type::isOpaquePointerTy(*v29);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v37, v29, 0, v58);
    v39 = *(a2 + 200);
    v57 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 38, AlignedLoad, v39, v56);
  }

  a1[1] = Cast;
  if (a7)
  {
    llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), a6, v32, 0, 0);
  }

  else
  {
    v41 = *(a2 + 200);
    v59 = 257;
    llvm::Type::isOpaquePointerTy(*v32);
    a6 = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v41, v32, 0, v58);
  }

  a1[3] = a6;
  v42 = *(a2 + 208);
  (*(**(a2 + 920) + 960))(*(a2 + 920));
  v43 = llvm::ConstantInt::get();
  v59 = 257;
  v44 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v42, PointerCast, v43, v58);
  v57 = 257;
  v46 = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), v44, v55, v56, v45);
  v47 = *(a2 + 200);
  v48 = llvm::ConstantInt::get();
  v59 = 257;
  v49 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v47, v46, v48, v58);
  v57 = 257;
  llvm::Type::isOpaquePointerTy(*v49);
  a1[4] = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v47, v49, 0, v56);
  v50 = *(a2 + 200);
  v51 = llvm::ConstantInt::get();
  v59 = 257;
  v52 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v50, v46, v51, v58);
  v57 = 257;
  llvm::Type::isOpaquePointerTy(*v52);
  result = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v50, v52, 0, v56);
  a1[5] = result;
  return result;
}

unsigned __int8 *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(llvm::ConstantInt **a1, uint64_t a2, uint64_t a3, llvm::Value **a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v135 = *MEMORY[0x277D85DE8];
  v109 = *(a1 + 477);
  v110 = llvm::PointerType::get();
  v12 = llvm::PointerType::get();
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v15 = a1[25];
  *&v129 = "vrid_ext";
  LOWORD(v131) = 259;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, a3, v15, &v129);
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v126 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v127, (a1 + 1));
  v128 = *(a1 + 26);
  (*(*a1 + 247))(&v129, a1, &v126, a2, a3, a7);
  if (v127)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v109 < 4)
  {
    Add = 0;
  }

  else
  {
    v121 = *(a1 + 7);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v122, (a1 + 1));
    v123 = *(a1 + 26);
    (*(*a1 + 137))(v124, a1, &v121);
    v17 = v124[1];
    v18 = v124[2];
    if (v122)
    {
      llvm::MetadataTracking::untrack();
    }

    v19 = llvm::ConstantInt::get();
    v124[0] = "scs.num_vrids";
    v125 = 259;
    llvm::IRBuilderBase::CreateMul((a1 + 1), v18, v19, v124);
    v20 = llvm::ConstantInt::get();
    v124[0] = "scs.max_level_depth";
    v125 = 259;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), v17, v20, v124);
  }

  v22 = llvm::ConstantInt::get();
  v124[0] = "vrid_level_1";
  v125 = 259;
  v108 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v22, v124);
  v23 = llvm::ConstantInt::get();
  v124[0] = "vrid_level_2";
  v125 = 259;
  v107 = Cast;
  v114 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v23, v124);
  llvm::ArrayType::get(v110, 0x1A);
  v24 = llvm::UndefValue::get();
  LODWORD(v133[0]) = 2;
  v125 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v24, *(&v129 + 1), v133, 1, v124);
  LODWORD(v133[0]) = 3;
  v125 = 257;
  v26 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), InsertValue, v130, v133, 1, v124);
  LODWORD(v133[0]) = 0;
  v125 = 257;
  v27 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v26, *(&v130 + 1), v133, 1, v124);
  LODWORD(v133[0]) = 4;
  v125 = 257;
  v28 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v27, *(&v131 + 1), v133, 1, v124);
  LODWORD(v133[0]) = 5;
  v125 = 257;
  v29 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v28, v132, v133, 1, v124);
  if (a7)
  {
    LODWORD(v133[0]) = 1;
    v125 = 257;
    v29 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v29, v129, v133, 1, v124);
  }

  v118 = v29;
  if (a5 <= 6 && (((1 << a5) & 0x4A) != 0 || ((1 << a5) & 0x21) != 0))
  {
    v30 = v12;
    v112 = llvm::ConstantInt::get();
    llvm::ConstantInt::get();
  }

  else
  {
    v30 = v12;
    v99 = a4[3];
    v100 = llvm::ConstantInt::get();
    v125 = 257;
    v112 = v99;
    llvm::IRBuilderBase::CreateAdd((a1 + 1), v99, v100, v124);
  }

  v125 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v13, v110, v124, v31);
  v125 = 257;
  v106 = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v14, v30, v124, v33);
  v34 = *a4;
  v124[0] = "global_vrid_size";
  v125 = 259;
  v35 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v34, v35, v124);
  v117 = (*(*a1 + 127))(a1, a5, a6);
  v37 = a1[23];
  v125 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v108, LShr, v124);
  v133[0] = "segment_start";
  v134 = 259;
  v105 = PointerCast;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v37, PointerCast, Mul, v133);
  v39 = a1[23];
  v40 = *(&v130 + 1);
  v41 = llvm::ConstantInt::get();
  v125 = 257;
  v42 = v39;
  v43 = a6;
  v115 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v42, v40, v41, v124);
  v44 = 6;
  v45 = -104;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v44, a5, v43, *(a1 + 1940)))
    {
      v47 = RaytracingConstantsGen2::payloadSegmentSize(v44, *(a1 + 2872));
      if (v47)
      {
        v48 = v47;
        if (v47 <= v117)
        {
          LODWORD(v133[0]) = v44;
          v125 = 257;
          v118 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v118, v115, v133, 1, v124);
          v63 = (v48 + 3) & 0x3FFC;
          v64 = a1[23];
          v65 = llvm::ConstantInt::get();
          v125 = 257;
          v115 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v64, v115, v65, v124);
          v66 = v117 - v63;
          if (v117 < v63)
          {
            v66 = 0;
          }

          v117 = v66;
        }

        else
        {
          v49 = llvm::ConstantInt::get();
          if ((v44 - 19) <= 4)
          {
            v50 = llvm::ConstantInt::get();
            v125 = 257;
            llvm::IRBuilderBase::CreateICmp(a1 + 1, 35, v112, v50, v124);
            v51 = llvm::ConstantInt::get();
            v125 = 257;
            Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v112, v51, v124);
            v43 = a6;
            v53 = llvm::ConstantInt::get();
            v134 = 257;
            UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 1), Sub, v53, v133);
            v55 = llvm::ConstantInt::get();
            v120 = 257;
            llvm::IRBuilderBase::CreateAdd((a1 + 1), UDiv, v55, v119);
            llvm::ConstantInt::get();
            Select = llvm::IRBuilderBase::CreateSelect();
            v125 = 257;
            v49 = llvm::IRBuilderBase::CreateMul((a1 + 1), v49, Select, v124);
          }

          v125 = 257;
          v57 = llvm::IRBuilderBase::CreateMul((a1 + 1), v114, v49, v124);
          v58 = a1[23];
          v125 = 257;
          v59 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v58, GEP, v57, v124);
          v119[0] = v44;
          v134 = 257;
          v118 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v118, v59, v119, 1, v133);
          v60 = a1[23];
          v61 = llvm::ConstantInt::get();
          v125 = 257;
          v62 = llvm::IRBuilderBase::CreateMul((a1 + 1), v49, v61, v124);
          v134 = 257;
          GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v60, GEP, v62, v133);
        }
      }
    }

    v44 = (v44 + 1);
    v45 += 8;
  }

  while (v44 != 26);
  if (a5 <= 7 && ((1 << a5) & 0xDE) != 0)
  {
    v67 = a4;
    if (v109 <= 3)
    {
      v82 = a1[23];
      v83 = a4[4];
      v124[0] = "instance_leaf_start";
      v125 = 259;
      v84 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v82, v105, v83, v124);
      v85 = a4[5];
      v124[0] = "vrid_instance_leaf_offset";
      v125 = 259;
      v86 = llvm::IRBuilderBase::CreateMul((a1 + 1), v107, v85, v124);
      v87 = a1[23];
      v125 = 257;
      v81 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v87, v84, v86, v124);
      v119[0] = 21;
      v134 = 257;
      v78 = a1 + 1;
      v79 = v119;
      v80 = v133;
      v77 = v118;
    }

    else
    {
      v68 = llvm::ConstantInt::get();
      v125 = 257;
      v69 = llvm::IRBuilderBase::CreateSub((a1 + 1), Add, v68, v124);
      v70 = llvm::ConstantInt::get();
      v134 = 257;
      v71 = llvm::IRBuilderBase::CreateMul((a1 + 1), v69, v70, v133);
      v72 = llvm::ConstantInt::get();
      v125 = 257;
      v73 = llvm::IRBuilderBase::CreateMul((a1 + 1), v71, v72, v124);
      v125 = 257;
      v74 = llvm::IRBuilderBase::CreateMul((a1 + 1), v73, v107, v124);
      v75 = a1[23];
      v124[0] = "scs.instance_leaf_ptrs.a";
      v125 = 259;
      v76 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v75, v131, v74, v124);
      LODWORD(v133[0]) = 21;
      v125 = 257;
      v77 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v118, v76, v133, 1, v124);
      LODWORD(v133[0]) = 19;
      v125 = 257;
      v78 = a1 + 1;
      v79 = v133;
      v80 = v124;
      v81 = v76;
    }

    v88 = llvm::IRBuilderBase::CreateInsertValue(v78, v77, v81, v79, 1, v80);
  }

  else
  {
    v101 = llvm::ConstantPointerNull::get(v110, v46);
    LODWORD(v133[0]) = 21;
    v125 = 257;
    v102 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v118, v101, v133, 1, v124);
    v104 = llvm::ConstantPointerNull::get(v110, v103);
    LODWORD(v133[0]) = 19;
    v125 = 257;
    v88 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v102, v104, v133, 1, v124);
    v67 = a4;
  }

  if (*(v67 + 8))
  {
    v89 = *v67;
    v90 = llvm::ConstantInt::get();
    v125 = 257;
    v91 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v89, v90, v124);
    v134 = 257;
    v92 = llvm::IRBuilderBase::CreateMul((a1 + 1), v108, v91, v133);
    v93 = *(v67 + 8);
    v125 = 257;
    v94 = llvm::IRBuilderBase::CreateMul((a1 + 1), v114, v93, v124);
    v125 = 257;
    v95 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v92, v94, v124);
    v96 = *v106;
    v97 = a1[23];
    v124[0] = "ray_user_data_as_i8";
    v125 = 259;
    v133[0] = llvm::IRBuilderBase::CreateGEP((a1 + 1), v97, v106, v95, v124);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.in.user.payload.section.bounds", 40, v96, v133, 1uLL);
  }

  return v88;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSPop(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 2);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v13, a1 + 8);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v12, a1);
  v8 = *&v12[0];
  memset(v12, 0, sizeof(v12));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v12, a1, a3, v8, 0, 0, 0);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v8, v12, a4, 1u, 1);
  v10 = *(a1 + 144);
  v16[0] = v9;
  v16[1] = v8;
  v16[2] = llvm::ConstantInt::get();
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_pop_commit_end", 26, v10, v16, 3uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSPush(uint64_t a1, __int128 *a2, uint64_t a3, llvm::Type **a4, int a5, uint64_t a6, unsigned int a7)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 2);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v19, a1 + 8);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(v18, 0, sizeof(v18));
  (*(*a1 + 944))(v18, a1);
  memset(v17, 0, sizeof(v17));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v17, a1, a3, *&v18[0], 0, 0, 0);
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, *&v18[0], v17, a6, 1u, 1);
  v13 = *(a1 + 144);
  v22[0] = v12;
  v16 = 257;
  v22[1] = AGCLLVMBuilder::CreateLoad(a1, a4, v15);
  v22[2] = *&v18[0];
  v22[3] = llvm::ConstantInt::get();
  v22[4] = llvm::ConstantInt::get();
  v22[5] = llvm::ConstantInt::get();
  v22[6] = llvm::ConstantInt::get();
  v22[7] = llvm::ConstantInt::get();
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_transform_and_commit", 32, v13, v22, 8uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayDriverTestHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "agx.ray_driver_test_hit");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v13, a3);
  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v16 >= 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 176);
  v20[0] = *(a3 + 24);
  v20[1] = a4;
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v20, 2uLL);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v11;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayHasMoreResults(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v11, "agx.ray_has_more_results");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v11, a3);
  if (v14 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v14 >= 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = *(a1 + 176);
  v18[0] = *(a3 + 24);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v6, v7, v8, v18, 1uLL);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayRunThisThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v12, "agx.ray_run_this_thread");
  v6 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v12, a3);
  if (v15 < 0)
  {
    v6 = __p[0];
  }

  if (v15 >= 0)
  {
    v7 = v15;
  }

  else
  {
    v7 = __p[1];
  }

  v19 = *(a1 + 184);
  v20 = v19;
  v8 = llvm::StructType::get();
  v9 = *(a3 + 8);
  v19 = *(a3 + 24);
  v20 = v9;
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v6, v7, v8, &v19, 2uLL);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v10;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayEndSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v12, "agx.end_serial");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v12, a3);
  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v15 >= 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 144);
  v11 = *(a3 + 8);
  v19[0] = *(a3 + 24);
  v19[1] = v11;
  v19[2] = a4;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v19, 3uLL);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayHasTerminated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "agx.ray_has_terminated");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v13, a3);
  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v16 >= 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 176);
  v20[0] = *(a3 + 24);
  v20[1] = a4;
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v20, 2uLL);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v11;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRiaCliqueEnd(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.ria_clique_end", 18, *(a1 + 144), 0, 0);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::commitIntersectionTestSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v18, "agx.commit_serial");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v18, a3);
  if (v21 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v21 >= 0)
  {
    v13 = v21;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = *(a1 + 192);
  v15 = *(a3 + 8);
  v25[0] = *(a3 + 24);
  v25[1] = v15;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v16 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v12, v13, v14, v25, 5uLL);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return v16;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::commitIntersectionTestParallel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v26[7] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(a3 + 8);
  v26[0] = *(a3 + 24);
  v26[1] = v14;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = llvm::ConstantInt::get();
  v26[6] = llvm::ConstantInt::get();
  std::string::basic_string[abi:nn200100]<0>(v19, "agx.commit_parallel");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v19, a3);
  if (v22 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v22 >= 0)
  {
    v16 = v22;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v15, v16, *(a1 + 176), v26, 7uLL);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return v17;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIFBEmulationWrapper(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v24[10] = *MEMORY[0x277D85DE8];
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v24, a1);
  v10 = v24[0];
  memset(v20, 0, sizeof(v20));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v20, a1, a4, v24[0], 0, 0, 0);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v10, v20, 0, 1u, 1);
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v10, v20, 1, 1u, 1);
  v13 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v10, v20, 2, 1u, 1);
  v14 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v10, v20, 3, 1u, 1);
  v15 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v10, v20, 4, 1u, 1);
  v16 = *(a1 + 144);
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = v15;
  v19 = 257;
  v24[5] = AGCLLVMBuilder::CreateLoad(a1, a3, v18);
  v24[6] = v10;
  v24[7] = llvm::ConstantInt::get();
  v24[8] = llvm::ConstantInt::get();
  v24[9] = llvm::ConstantInt::get();
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.ifb_wrapper", 15, v16, v24, 0xAuLL);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionGin1122SWWA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v11, a1);
  v6 = *&v11[0];
  memset(v11, 0, sizeof(v11));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v11, a1, a3, v6, 0, 0, 0);
  v15[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v6, v11, 8, 1u, 1);
  v15[1] = v6;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_parallel_gin1122swwa", 31, *(a1 + 144), v15, 2uLL);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v10 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v8);
  if (v9)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionEarlyTermination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v13, a1);
  v8 = *&v13[0];
  memset(v13, 0, sizeof(v13));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v13, a1, a3, v8, 0, 0, 0);
  v17[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v8, v13, a4, 1u, 1);
  v17[1] = v8;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_early_termination", 28, *(a1 + 144), v17, 2uLL);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v10);
  if (v11)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionMiss(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v11, a1);
  v6 = *&v11[0];
  memset(v11, 0, sizeof(v11));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v11, a1, a3, v6, 0, 0, 0);
  v15[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v6, v11, 8, 1u, 1);
  v15[1] = v6;
  v15[2] = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_parallel_miss", 24, *(a1 + 144), v15, 3uLL);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v10 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v8);
  if (v9)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionTest(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = a4 - 6 < 3 || (a6 - 5) < 3;
  if (a4 > 8)
  {
    goto LABEL_19;
  }

  if (((1 << a4) & 0x44) == 0)
  {
    if (((1 << a4) & 0x88) != 0)
    {
      v34 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (a1 + 8));
      v36 = *(a1 + 104);
      (*(*a1 + 1208))(&v40, a1, &v34, a3, a5, a6, 1, a7, 0, v15);
      v42 = v40;
      v43 = v41;
      if (!v35)
      {
LABEL_19:
        v16 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (((1 << a4) & 0x120) == 0)
      {
        goto LABEL_19;
      }

      v31 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 8));
      v33 = *(a1 + 104);
      (*(*a1 + 1200))(&v40, a1, &v31, a3, a5, a6, 1, a7, 0, v15);
      v42 = v40;
      v43 = v41;
      if (!v32)
      {
        goto LABEL_19;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_19;
  }

  v37 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
  v39 = *(a1 + 104);
  HIBYTE(v21) = v15;
  LOBYTE(v21) = 0;
  (*(*a1 + 1192))(&v40, a1, &v37, a3, a5, a6, 1, a7, !v15, v21);
  v42 = v40;
  v43 = v41;
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = 1;
LABEL_23:
  v28 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
  v30 = *(a1 + 104);
  v17 = llvm::ConstantInt::get();
  v18 = llvm::ConstantInt::get();
  v19 = llvm::ConstantFP::get();
  (*(*a1 + 1256))(a1, &v28, &v42, v17, v18, v19, (a6 - 5) < 3u, 0);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    v25 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (a1 + 8));
    v27 = *(a1 + 104);
    (*(*a1 + 1112))(a1, &v25, a3, a5, a6, 1);
    if (v26)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v22 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (a1 + 8));
  v24 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v22);
  if (v23)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCurveIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, unsigned int a6@<W5>, char a7@<W7>, uint64_t a8@<X8>, unsigned __int8 a9)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = *a2;
  v40 = *(a2 + 16);
  if (v40)
  {
    llvm::MetadataTracking::track();
  }

  v41 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v39);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v42, a1);
  v16 = v42;
  memset(v38, 0, sizeof(v38));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v38, a1, a3, v42, 0, 0, 0);
  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v16, v38, a5, a6, 1);
  v19 = v18;
  v20 = *(a1 + 168);
  v21 = *(a1 + 200);
  v22 = *(a1 + 184);
  v23 = llvm::PointerType::get();
  v24 = *(a1 + 200);
  v42 = v20;
  v43 = v20;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  v45 = v21;
  v46.i64[0] = v21;
  v46.i64[1] = v23;
  v47 = v24;
  v48 = v24;
  v25 = llvm::StructType::get();
  v37 = *(a1 + 192);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + 192);
  v42 = v26;
  v43 = v27;
  *&v44 = v27;
  *(&v44 + 1) = v27;
  v28 = llvm::StructType::get();
  v42 = v25;
  v43 = v37;
  v44 = v37;
  v45 = v28;
  v46 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v29 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v29);
  v31 = result;
  if ((a7 & 1) == 0)
  {
    v32 = *(a1 + 1940);
    v42 = v17;
    v43 = llvm::ConstantInt::get();
    v33 = llvm::ConstantInt::get();
    if (v32)
    {
      v34 = 21;
    }

    else
    {
      v34 = 14;
    }

    *&v44 = v33;
    if (v32)
    {
      v35 = "agx.curve_test_legacy";
    }

    else
    {
      v35 = "agx.curve_test";
    }

    v36 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v35, v34, v29, &v42, 3uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v36, v31, 0, 0);
  }

  *a8 = 3;
  *(a8 + 8) = v17;
  *(a8 + 16) = v19;
  *(a8 + 24) = v31;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildBoundingBoxIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, unsigned int a6@<W5>, char a7@<W7>, uint64_t a8@<X8>, unsigned __int8 a9)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = *a2;
  v40 = *(a2 + 16);
  if (v40)
  {
    llvm::MetadataTracking::track();
  }

  v41 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v39);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v42, a1);
  v16 = v42;
  memset(v38, 0, sizeof(v38));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v38, a1, a3, v42, 0, 0, 0);
  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v16, v38, a5, a6, 1);
  v19 = v18;
  v20 = *(a1 + 168);
  v21 = *(a1 + 200);
  v22 = *(a1 + 184);
  v23 = llvm::PointerType::get();
  v24 = *(a1 + 200);
  v42 = v20;
  v43 = v20;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  v45 = v21;
  v46.i64[0] = v21;
  v46.i64[1] = v23;
  v47 = v24;
  v48 = v24;
  v25 = llvm::StructType::get();
  v37 = *(a1 + 192);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + 192);
  v42 = v26;
  v43 = v27;
  *&v44 = v27;
  *(&v44 + 1) = v27;
  v28 = llvm::StructType::get();
  v42 = v25;
  v43 = v37;
  v44 = v37;
  v45 = v28;
  v46 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v29 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v29);
  v31 = result;
  if ((a7 & 1) == 0)
  {
    v32 = *(a1 + 1940);
    v42 = v17;
    v43 = llvm::ConstantInt::get();
    v33 = llvm::ConstantInt::get();
    if (v32)
    {
      v34 = 28;
    }

    else
    {
      v34 = 21;
    }

    *&v44 = v33;
    if (v32)
    {
      v35 = "agx.bounding_box_test_legacy";
    }

    else
    {
      v35 = "agx.bounding_box_test";
    }

    v36 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v35, v34, v29, &v42, 3uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v36, v31, 0, 0);
  }

  *a8 = 2;
  *(a8 + 8) = v17;
  *(a8 + 16) = v19;
  *(a8 + 24) = v31;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildTriangleIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a9@<X8>, char a10, unsigned __int8 a11)
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v47, a1);
  v17 = v47;
  memset(v43, 0, sizeof(v43));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v43, a1, a3, v47, 0, 0, 0);
  v18 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v17, v43, a5, a6, 1);
  v20 = v19;
  v21 = *(a1 + 168);
  v22 = *(a1 + 200);
  v23 = llvm::PointerType::get();
  v24 = *(a1 + 224);
  v25 = *(a1 + 184);
  v47 = v21;
  v48 = v22;
  *&v49 = v22;
  *(&v49 + 1) = v23;
  v50 = v24;
  v51.i64[0] = v25;
  v26 = llvm::StructType::get();
  v27 = llvm::ArrayType::get(v26, 2);
  v28 = *(a1 + 200);
  v29 = *(a1 + 184);
  v47 = v27;
  v48 = v28;
  *&v49 = v28;
  *(&v49 + 1) = v28;
  v50 = v28;
  v51.i64[0] = v29;
  v30 = llvm::StructType::get();
  v42 = *(a1 + 192);
  v31 = llvm::PointerType::get();
  v32 = *(a1 + 192);
  v47 = v31;
  v48 = v32;
  *&v49 = v32;
  *(&v49 + 1) = v32;
  v33 = llvm::StructType::get();
  v47 = v30;
  v48 = v42;
  v49 = v42;
  v50 = v33;
  v51 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v34 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v34);
  v36 = result;
  if ((a10 & 1) == 0)
  {
    v37 = *(a1 + 1940);
    v47 = v18;
    v48 = llvm::ConstantInt::get();
    *&v49 = llvm::ConstantInt::get();
    *(&v49 + 1) = llvm::ConstantInt::get();
    v38 = llvm::ConstantInt::get();
    if (v37)
    {
      v39 = 24;
    }

    else
    {
      v39 = 17;
    }

    v50 = v38;
    if (v37)
    {
      v40 = "agx.triangle_test_legacy";
    }

    else
    {
      v40 = "agx.triangle_test";
    }

    v41 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v40, v39, v34, &v47, 5uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v41, v36, 0, 0);
  }

  *a9 = 1;
  *(a9 + 8) = v18;
  *(a9 + 16) = v20;
  *(a9 + 24) = v36;
  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectionQueryAccessor(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, std::string::size_type a8, uint64_t a9, unsigned __int16 a10)
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = a5;
  v41 = a6;
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = llvm::PointerType::get();
  v18 = 4;
  if (a6 < 4)
  {
    v18 = a6;
  }

  v31.__r_.__value_.__r.__words[0] = a5 + v18;
  v31.__r_.__value_.__l.__size_ = a6 - v18;
  llvm::StringRef::str(&__str, &v31);
  v19 = std::string::find(&__str, 46, 0);
  if (v19 != -1)
  {
    std::string::basic_string(&v31, &__str, 0, v19, &v42);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v31;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 42 && !memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query", 0x2AuLL) && llvm::StringRef::find() != -1)
  {
    std::string::append(&__str, "_instancing");
  }

  std::string::basic_string[abi:nn200100]<0>(&v35, "_preCurves");
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __str.__r_.__value_.__l.__size_ != 42)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 53 && !memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query_instancing", 0x35uLL))
    {
      v30 = *(a7 + 12);
      std::operator+<char>();
      if (v30 == 8)
      {
        goto LABEL_50;
      }

      goto LABEL_25;
    }

LABEL_24:
    std::operator+<char>();
    goto LABEL_25;
  }

  if (memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query", 0x2AuLL))
  {
    goto LABEL_24;
  }

  v20 = *(a7 + 12);
  std::operator+<char>();
  if (v20 == 7)
  {
LABEL_50:
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      v42 = v35;
    }

    goto LABEL_26;
  }

LABEL_25:
  std::string::basic_string[abi:nn200100]<0>(&v42, &unk_20E75F419);
LABEL_26:
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v42;
  }

  else
  {
    v21 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v31, v21, size);
  v25 = v23->__r_.__value_.__r.__words[2];
  *__p = *&v23->__r_.__value_.__l.__data_;
  v34 = v25;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v34 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (v34 >= 0)
  {
    v27 = SHIBYTE(v34);
  }

  else
  {
    v27 = __p[1];
  }

  v32 = 257;
  v42.__r_.__value_.__r.__words[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v17, &v31, v24);
  v42.__r_.__value_.__l.__size_ = a8;
  v42.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
  v43 = llvm::ConstantInt::get();
  v28 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v26, v27, a7, &v42, 4uLL);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v28;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCommitCurveIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = llvm::PointerType::get();
  v10 = *(a1 + 168);
  v18 = 257;
  v22[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v9, v17, v11);
  v22[1] = llvm::ConstantInt::get();
  v22[2] = llvm::ConstantInt::get();
  v22[3] = llvm::ConstantInt::get();
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_candidate_curve_distance_intersection_query", 51, v10, v22, 4uLL);
  v14 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
  v16 = *(a1 + 104);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v14, a3, v12);
  if (v15)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDeallocateIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v7 = *(a1 + 144);
  v11 = 257;
  v15[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v10, v8);
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.deallocate", 33, v7, v15, 1uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCommitBoundingBoxIntersectionQuery(uint64_t a1, __int128 *a2, llvm::Type **a3, uint64_t a4)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 6);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v9, a3, a4);
  if (v10)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCommitTriangleIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = llvm::PointerType::get();
  v10 = *(a1 + 168);
  v18 = 257;
  v22[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v9, v17, v11);
  v22[1] = llvm::ConstantInt::get();
  v22[2] = llvm::ConstantInt::get();
  v22[3] = llvm::ConstantInt::get();
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_candidate_triangle_distance_intersection_query", 54, v10, v22, 4uLL);
  v14 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
  v16 = *(a1 + 104);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v14, a3, v12);
  if (v15)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildAbortIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v7 = *(a1 + 144);
  v11 = 257;
  v15[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v10, v8);
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.abort", 28, v7, v15, 1uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildNextIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = llvm::PointerType::get();
  v16 = (*(*a1 + 952))(a1);
  v35[0] = "vrid";
  LOWORD(v36) = 259;
  llvm::Value::setName();
  v17 = *(a1 + 200);
  LOWORD(v36) = 257;
  *&v39 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v15, v35, v18);
  *(&v39 + 1) = llvm::ConstantInt::get();
  *&v40 = llvm::ConstantInt::get();
  *(&v40 + 1) = llvm::ConstantInt::get();
  v19 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_instance_levels_intersection_query", 42, v17, &v39, 4uLL);
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(&v39, a1, a5, v16, 0x100000000, v19, 1);
  if (a8)
  {
    v20 = (*(*a1 + 1456))(a1, a6);
    v21 = v20;
  }

  else
  {
    if (a6)
    {
      v22 = 6;
    }

    else
    {
      v22 = 5;
    }

    if ((a6 & 0x40) != 0)
    {
      LOBYTE(v20) = 7;
    }

    else
    {
      LOBYTE(v20) = v22;
    }

    if ((a6 & 0x40) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a6 & 1;
    }
  }

  v23 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v16, &v39, v20, 0, 0);
  v24 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v16, &v39, v21, 0, 0);
  v25 = *(a1 + 176);
  v31 = 257;
  v35[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v15, v30, v26);
  v35[1] = v23;
  v35[2] = v24;
  v29 = 257;
  v35[3] = AGCLLVMBuilder::CreateLoad(a1, a4, v28);
  v36 = v16;
  v37 = llvm::ConstantInt::get();
  v38 = llvm::ConstantInt::get();
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.next", 27, v25, v35, 7uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildResetIntersectionQuery(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = llvm::PointerType::get();
  v9 = *(a1 + 144);
  v10 = *a3;
  v23 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v10, v8, v22, v11);
  v28 = *(a3 + 8);
  v29 = *(a3 + 24);
  v12 = *(a3 + 40);
  v13 = *(a1 + 200);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v12, v13, v20);
  v14 = *(a3 + 64);
  v31 = *(a3 + 48);
  v32 = v14;
  v33 = *(a3 + 80);
  v15 = *(a3 + 128);
  v16 = *(a3 + 136);
  v34 = *(a3 + 96);
  v35 = v16;
  if (!v15)
  {
    v15 = llvm::ConstantInt::get();
  }

  v36 = v15;
  v19 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v18);
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.reset", 28, v9, &PointerCast, 0x10uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildAllocateIntersectionQuery(llvm::PointerType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 168))(a1, 0, a6 ^ 1u, a4, a5);
  v11 = llvm::PointerType::get();
  v16[0] = llvm::ConstantInt::get();
  v16[1] = llvm::ConstantInt::get();
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.allocate", 31, v11, v16, 2uLL);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetUnpackedSCSLayout@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v25[0] = *(a1 + 200);
    v25[1] = v25[0];
    v25[2] = v25[0];
    v25[3] = v25[0];
    v26 = v25[0];
    TypeByName = llvm::StructType::create();
  }

  v7 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.scs.get_unpacked_layout", 27, TypeByName, 0, 0);
  v21 = 0;
  v25[0] = "scs.traversal_depth";
  LOWORD(v26) = 259;
  *a3 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v7, &v21, 1, v25);
  v20 = 1;
  v18 = "scs.max_instance_levels";
  v19 = 259;
  a3[1] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v7, &v20, 1, &v18);
  v17 = 2;
  v15 = "scs.num_cliques";
  v16 = 259;
  a3[2] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v7, &v17, 1, &v15);
  v14 = 3;
  v12 = "scs.per_ray_user_payload_size";
  v13 = 259;
  a3[3] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v7, &v14, 1, &v12);
  v11 = 4;
  v9 = "scs.per_ray_driver_payload_size";
  v10 = 259;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v7, &v11, 1, &v9);
  a3[4] = result;
  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = v11;
  v8 = v11;
  v9 = 8;
  v10 = 0;
  operator new();
}

uint64_t std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  llvm::SmallPtrSetImpl<void *>::insert(v24, *(a1 + 8), *a2);
  if (v24[16] != 1)
  {
    return 1;
  }

  v4 = v3[1];
  v5 = 1;
  if (v4)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      v7 = *(v6 + 16);
      if (v6 && v7 == 92)
      {
        if (**(a1 + 16) == 1)
        {
          if (!**(v6 + 64) && (std::function<BOOL ()(llvm::Value const*)>::operator()(*(*(a1 + 24) + 24), v6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (*(v6 + 72) != 1 || **(v6 + 64))
        {
          return 0;
        }
      }

      else if (v6 && v7 == 84)
      {
        v8 = *(v6 - 32);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v6 + 72))
        {
          return 0;
        }

        Name = llvm::Value::getName(*(v6 - 32));
        if (v10 < 0x20 || (*Name == 0x5F7465672E726961 ? (v11 = Name[1] == 0x746E695F65707974) : (v11 = 0), v11 ? (v12 = Name[2] == 0x6F69746365737265) : (v12 = 0), v12 ? (v13 = Name[3] == 0x746C757365725F6ELL) : (v13 = 0), !v13))
        {
          v14 = llvm::Value::getName(v8);
          if (v15 < 0x1F)
          {
            return 0;
          }

          v16 = *v14 == 0x656C65722E726961 && v14[1] == 0x65746E695F657361;
          v17 = v16 && v14[2] == 0x6E6F697463657372;
          if (!v17 || *(v14 + 23) != 0x746C757365725F6ELL)
          {
            return 0;
          }
        }
      }

      else
      {
        v19 = (((v7 - 75) >> 1) | ((v7 - 75) << 7));
        v20 = v19 > 5;
        v21 = (1 << v19) & 0x33;
        v22 = v20 || v21 == 0;
        if (v22 || !std::function<BOOL ()(llvm::Value const*)>::operator()(*(*(a1 + 24) + 24), v6))
        {
          return 0;
        }
      }

      v4 = *(v4 + 8);
      if (!v4)
      {
        return 1;
      }
    }
  }

  return v5;
}

__n128 std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BCE68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromConfigurationBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::Type **a3@<X2>, llvm::Type **a4@<X3>, uint64_t *a5@<X8>)
{
  v42 = *a2;
  v43 = *(a2 + 16);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v42);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = llvm::PointerType::get();
  v11 = llvm::PointerType::get();
  v41 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a3, v40);
  v39 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v10, v38, v13);
  v15 = *(a1 + 208);
  (*(**(a1 + 920) + 1032))();
  v16 = llvm::ConstantInt::get();
  v40[0] = "scs.scs_layout.ptr";
  v41 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v15, PointerCast, v16, v40);
  v18 = llvm::PointerType::get();
  v41 = 257;
  v20 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v18, v40, v19);
  v21 = *(a1 + 200);
  v22 = llvm::ConstantInt::get();
  v41 = 257;
  v23 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v21, v20, v22, v40);
  *a5 = AGCLLVMBuilder::CreateLoad(a1, v21, v23, "global_stride");
  v24 = *(a1 + 200);
  v41 = 257;
  llvm::Type::isOpaquePointerTy(*a4);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, a4, 0, v40);
  a5[2] = AGCLLVMBuilder::CreateLoad(a1, v24, AlignedLoad, "shader_stride");
  a5[1] = llvm::ConstantInt::get();
  a5[3] = llvm::ConstantInt::get();
  v26 = *(a1 + 208);
  (*(**(a1 + 920) + 1056))();
  v27 = llvm::ConstantInt::get();
  v41 = 257;
  v28 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v26, PointerCast, v27, v40);
  v39 = 257;
  v30 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v28, v11, v38, v29);
  v31 = *(a1 + 200);
  v32 = llvm::ConstantInt::get();
  v41 = 257;
  v33 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v31, v30, v32, v40);
  v39 = 257;
  a5[4] = AGCLLVMBuilder::CreateLoad(a1, v33, v38);
  v34 = *(a1 + 200);
  v35 = llvm::ConstantInt::get();
  v41 = 257;
  v36 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v34, v30, v35, v40);
  v39 = 257;
  result = AGCLLVMBuilder::CreateLoad(a1, v36, v38);
  a5[5] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildReleaseIntersectPayload(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  result = AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildReleaseIntersectionResult(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  result = AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectionResultAccessor(llvm::ConstantInt **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  v73 = *MEMORY[0x277D85DE8];
  v65 = *a2;
  v66 = *(a2 + 16);
  if (v66)
  {
    llvm::MetadataTracking::track();
  }

  v67 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v65);
  if (v66)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = a1[26];
  LOWORD(v63) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, a3, v15, v62);
  v17 = llvm::ConstantInt::get();
  LOWORD(v63) = 257;
  v18 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v17, v62);
  v19 = a1[24];
  LOWORD(v63) = 257;
  v20 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v18, v19, v62);
  LOWORD(v63) = 257;
  v21 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), Cast, v21, v62);
  v23 = llvm::ConstantInt::get();
  v72 = 257;
  v24 = llvm::IRBuilderBase::CreateAnd((a1 + 1), LShr, v23, &v70);
  v25 = a1[25];
  LOWORD(v63) = 257;
  v26 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v24, v25, v62);
  LOWORD(v63) = 257;
  v27 = llvm::ConstantInt::get();
  v28 = llvm::IRBuilderBase::CreateLShr((a1 + 1), Cast, v27, v62);
  v29 = llvm::ConstantInt::get();
  LOWORD(v63) = 257;
  v30 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v28, v29, v62);
  v72 = 257;
  v31 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v30, v31, &v70);
  v33 = a1[25];
  v69 = 257;
  v62[0] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Shl, v33, &__str);
  v72 = 257;
  v34 = llvm::ConstantInt::get();
  v35 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v28, v34, &v70);
  v36 = llvm::ConstantInt::get();
  v72 = 257;
  v37 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v35, v36, &v70);
  v38 = a1[25];
  v72 = 257;
  v62[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, &v70);
  v72 = 257;
  v39 = llvm::ConstantInt::get();
  v40 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v39, &v70);
  v41 = llvm::ConstantInt::get();
  v72 = 257;
  v42 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v40, v41, &v70);
  v43 = a1[25];
  v72 = 257;
  v63 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v42, v43, &v70);
  v72 = 257;
  v44 = llvm::ConstantInt::get();
  v45 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v40, v44, &v70);
  v46 = llvm::ConstantInt::get();
  v72 = 257;
  v47 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v45, v46, &v70);
  v48 = a1[25];
  v72 = 257;
  v64 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v47, v48, &v70);
  v72 = 257;
  v49 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateLShr((a1 + 1), v45, v49, &v70);
  v62[1] = 0;
  v62[2] = 0;
  v50 = (*(*a1 + 182))(a1, a9);
  v51 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a8, v20, v62, v50, (a9 >> 5) & 1, 0);
  v52 = 4;
  if (a6 < 4)
  {
    v52 = a6;
  }

  v70.__r_.__value_.__r.__words[0] = v52 + a5;
  v70.__r_.__value_.__l.__size_ = a6 - v52;
  llvm::StringRef::str(&__str, &v70);
  v53 = std::string::find(&__str, 46, 0);
  if (v53 != -1)
  {
    std::string::basic_string(&v70, &__str, 0, v53, __p);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v70;
  }

  v54 = __p;
  std::operator+<char>();
  if (v61 < 0)
  {
    v54 = __p[0];
  }

  if (v61 >= 0)
  {
    v55 = v61;
  }

  else
  {
    v55 = __p[1];
  }

  v70.__r_.__value_.__r.__words[0] = v51;
  v70.__r_.__value_.__l.__size_ = v26;
  (*(*a1 + 182))(a1, a9);
  v70.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
  v71 = a4;
  v56 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v54, v55, a7, &v70, 4uLL);
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v56;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayForDirectAccess(llvm::ConstantInt **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v96 = *MEMORY[0x277D85DE8];
  v79 = *a2;
  v80 = *(a2 + 16);
  if (v80)
  {
    llvm::MetadataTracking::track();
  }

  v81 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v79);
  if (v80)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 119))(a1);
  v84 = "vrid";
  LOWORD(v88) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 168))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  v20 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(&v76, a1, a5, v13, v19 | 0x100000000, v20, 1);
  v21 = (*(*a1 + 182))(a1, a6);
  v75[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v13, &v76, v21, (a6 >> 5) & 1, 0);
  v75[1] = v22;
  v72 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v73, (a1 + 1));
  v74 = *(a1 + 26);
  v23 = (*(*a1 + 129))(a1, &v72, a3, a4, v13, v17, v16, v19, v75, a5, a6);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a7)
  {
    v24 = a1[25];
    v68 = a1[21];
    v25 = llvm::PointerType::get();
    v26 = a1[25];
    v69 = v23;
    v71 = a3;
    v27 = a1[23];
    v28 = a1[28];
    v29 = a6;
    v30 = v13;
    v31 = a1[21];
    v32 = llvm::ArrayType::get(a1[34], 4);
    v33 = llvm::ArrayType::get(a1[34], 4);
    v84 = v24;
    v85 = v68;
    v86 = v24;
    v87 = v24;
    v88 = v25;
    *&v89 = v26;
    *(&v89 + 1) = v26;
    v90 = v27;
    v91 = v28;
    v92 = v27;
    v93 = v31;
    v94 = v32;
    v13 = v30;
    a6 = v29;
    v95 = v33;
    v34 = llvm::StructType::get();
    v84 = v75[0];
    (*(*a1 + 182))(a1, v29);
    v85 = llvm::ConstantInt::get();
    v86 = llvm::ConstantInt::get();
    v87 = v13;
    v88 = v69;
    v89 = *(v71 + 144);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v34, &v84, 7uLL);
  }

  v35 = a1[23];
  v84 = v75[0];
  (*(*a1 + 182))(a1, a6);
  v85 = llvm::ConstantInt::get();
  v36 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.get_core_id", 29, v35, &v84, 2uLL);
  v37 = a1[26];
  LOWORD(v88) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v13, v37, &v84);
  v39 = llvm::ConstantInt::get();
  LOWORD(v88) = 257;
  v40 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v36, v39, &v84);
  v41 = a1[26];
  v83 = 257;
  v42 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v40, v41, v82);
  LOWORD(v88) = 257;
  v43 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v42, v43, &v84);
  LOWORD(v88) = 257;
  v45 = llvm::IRBuilderBase::CreateOr((a1 + 1), Shl, Cast, &v84);
  v46 = v76;
  LOWORD(v88) = 257;
  v47 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v46, v47, &v84);
  v49 = a1[26];
  v83 = 257;
  v50 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, LShr, v49, v82);
  LOWORD(v88) = 257;
  v51 = llvm::ConstantInt::get();
  v52 = llvm::IRBuilderBase::CreateShl((a1 + 1), v50, v51, &v84);
  LOWORD(v88) = 257;
  v53 = llvm::IRBuilderBase::CreateOr((a1 + 1), v52, v45, &v84);
  v54 = a1[26];
  LOWORD(v88) = 257;
  v55 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, *(&v77 + 1), v54, &v84);
  LOWORD(v88) = 257;
  v56 = llvm::ConstantInt::get();
  v57 = llvm::IRBuilderBase::CreateShl((a1 + 1), v55, v56, &v84);
  LOWORD(v88) = 257;
  v58 = llvm::IRBuilderBase::CreateOr((a1 + 1), v57, v53, &v84);
  if (v78)
  {
    v59 = a1[26];
    LOWORD(v88) = 257;
    v60 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v78, v59, &v84);
    LOWORD(v88) = 257;
    v61 = llvm::ConstantInt::get();
    v62 = llvm::IRBuilderBase::CreateShl((a1 + 1), v60, v61, &v84);
    LOWORD(v88) = 257;
    v58 = llvm::IRBuilderBase::CreateOr((a1 + 1), v62, v58, &v84);
  }

  if (*(&v78 + 1))
  {
    v63 = a1[26];
    LOWORD(v88) = 257;
    v64 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, *(&v78 + 1), v63, &v84);
    LOWORD(v88) = 257;
    v65 = llvm::ConstantInt::get();
    v66 = llvm::IRBuilderBase::CreateShl((a1 + 1), v64, v65, &v84);
    LOWORD(v88) = 257;
    return llvm::IRBuilderBase::CreateOr((a1 + 1), v66, v58, &v84);
  }

  return v58;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayWithResults@<X0>(llvm::ConstantInt **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  v51 = *a2;
  v52 = *(a2 + 16);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v51);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 119))(a1);
  v54 = "vrid";
  LOWORD(v58) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 168))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  memset(v50, 0, sizeof(v50));
  v20 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v50, a1, a5, v13, v19 | 0x100000000, v20, 1);
  v21 = (*(*a1 + 182))(a1, a6);
  v49[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v13, v50, v21, (a6 >> 5) & 1, 0);
  v49[1] = v22;
  v46 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (a1 + 1));
  v48 = *(a1 + 26);
  v41 = a6;
  v42 = a3;
  v23 = a4;
  v40 = v13;
  v38 = (*(*a1 + 129))(a1, &v46, a3, v23, v13, v17, v16, v19, v49, a5, a6);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = a1[25];
  v25 = a1[21];
  v26 = llvm::PointerType::get();
  v27 = a1[25];
  v28 = a1[23];
  v29 = a1[28];
  v30 = a1[21];
  v31 = llvm::ArrayType::get(a1[34], 4);
  v32 = llvm::ArrayType::get(a1[34], 4);
  v54 = v24;
  v55 = v25;
  v56 = v24;
  v57 = v24;
  v58 = v26;
  *&v59 = v27;
  *(&v59 + 1) = v27;
  v60 = v28;
  v61 = v29;
  v62 = v28;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  v33 = llvm::StructType::get();
  v54 = v49[0];
  (*(*a1 + 182))(a1, v41);
  v55 = llvm::ConstantInt::get();
  v56 = llvm::ConstantInt::get();
  v57 = v40;
  v58 = v38;
  v59 = *(v42 + 144);
  v34 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v33, &v54, 7uLL);
  a7[10] = 0;
  a7[11] = 0;
  a7[12] = 0;
  v43[0] = 0;
  LOWORD(v58) = 257;
  *a7 = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 1;
  LOWORD(v58) = 257;
  a7[1] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 2;
  LOWORD(v58) = 257;
  a7[2] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 3;
  LOWORD(v58) = 257;
  a7[3] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 4;
  LOWORD(v58) = 257;
  a7[4] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 5;
  LOWORD(v58) = 257;
  a7[5] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 6;
  LOWORD(v58) = 257;
  a7[6] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 7;
  LOWORD(v58) = 257;
  a7[7] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 8;
  LOWORD(v58) = 257;
  a7[8] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v45 = 9;
  LOWORD(v58) = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, &v45, 1, &v54);
  v36 = a1[22];
  v44 = 257;
  a7[9] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Value, v36, v43);
  v43[0] = 10;
  LOWORD(v58) = 257;
  a7[10] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 11;
  LOWORD(v58) = 257;
  a7[11] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  v43[0] = 12;
  LOWORD(v58) = 257;
  result = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v34, v43, 1, &v54);
  a7[12] = result;
  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRay(uint64_t a1, uint64_t a2, __int128 *a3, llvm::Type **a4, uint64_t a5, unsigned int a6, llvm::IntegerType *a7, unsigned int a8, uint64_t a9, uint64_t a10, unsigned __int16 a11)
{
  v67 = *MEMORY[0x277D85DE8];
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  LOWORD(v48) = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v47);
  v47[0] = "bvh_state_words_heap_base";
  LOWORD(v48) = 259;
  llvm::Value::setName();
  LODWORD(v17) = *(a3 + 34);
  if (v17 <= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = v17;
  }

  if (a3[7])
  {
    v19 = *(a3 + 15);
    if (v19 && *(v19 + 16) == 59)
    {
      v17 = 1 << *(v19 + 18);
    }

    v20 = __clz(v18);
    v21 = __clz(v17) ^ 0x13F;
    if (v17)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a9 + 8), v20 ^ 0x13F, v19, v22, a7);
  }

  v23 = *(a1 + 176);
  v47[0] = *a9;
  v47[1] = Load;
  v47[2] = a5;
  v47[3] = llvm::ConstantInt::get();
  v48 = llvm::ConstantInt::get();
  v49 = llvm::ConstantInt::get();
  (*(*a1 + 1456))(a1, a11);
  v24 = llvm::ConstantInt::get();
  v25 = a3[1];
  v51 = *a3;
  v52 = v25;
  v26 = *(a3 + 6);
  v27 = *(a3 + 7);
  v50 = v24;
  v53 = v26;
  v28 = llvm::PointerType::get();
  v43 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v27, v28, v42, v29);
  v30 = a3[5];
  v55 = a3[4];
  v56 = v30;
  v57 = a3[6];
  v31 = *(a3 + 4);
  v32 = *(a1 + 200);
  v41 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v31, v32, v40);
  v33 = a3[11];
  v59 = a3[10];
  v60 = v33;
  v34 = *(a3 + 5);
  v61 = *(a3 + 24);
  v62 = v34;
  v63 = a3[15];
  v64 = *(a3 + 32);
  v65 = llvm::ConstantInt::get();
  v66 = llvm::ConstantInt::get();
  v35 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray", 17, v23, v47, 0x1FuLL);
  if (*(a3 + 112) == 1 && (*(a3 + 264) & 1) == 0)
  {
    v36 = __clz(v17) ^ 0x13F;
    if (v17)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a3 + 15), v37, *(a9 + 8), 0x103u, a7);
  }

  return v35;
}

uint64_t *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, llvm::Type **a12, uint64_t a13, llvm::Type **a14, llvm::Type **a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v219 = *MEMORY[0x277D85DE8];
  v213 = *a2;
  v214 = *(a2 + 16);
  if (v214)
  {
    llvm::MetadataTracking::track();
  }

  v215 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v213);
  if (v214)
  {
    llvm::MetadataTracking::untrack();
  }

  v211 = 0u;
  v212 = 0u;
  v210 = 0u;
  v207 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v208, (a1 + 8));
  v209 = *(a1 + 104);
  (*(*a1 + 1080))(&v210, a1, &v207, a12, a13);
  if (v208)
  {
    llvm::MetadataTracking::untrack();
  }

  v197 = a6;
  v24 = llvm::PointerType::get();
  v202 = llvm::PointerType::get();
  v196 = llvm::PointerType::get();
  TypeByName = llvm::StructType::getTypeByName();
  v25 = llvm::PointerType::get();
  v193 = llvm::PointerType::get();
  v195 = a9;
  if ((a19 & 1) == 0)
  {
    llvm::BasicBlock::splitBasicBlock();
    v205[0] = "scs.config";
    v206 = 259;
    operator new();
  }

  v26 = v210;
  v206 = 257;
  v27 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v26, v27, v205);
  v29 = v210;
  v30 = llvm::ConstantInt::get();
  v206 = 257;
  v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v30, v205);
  v32 = *(a1 + 144);
  v217[0] = LShr;
  v33 = a3[3];
  v206 = 257;
  v217[1] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v33, v24, v205, v34);
  v217[2] = v31;
  v35 = a3[5];
  v204 = 257;
  v217[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v35, v25, v203, v36);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.kick.scoped.ray.data.stride.driver.user.data", 54, v32, v217, 4uLL);
  v37 = a3[2];
  v206 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v37, v196, v205, v38);
  v40 = llvm::ConstantInt::get();
  v41 = *(a1 + 208);
  (*(**(a1 + 920) + 888))();
  v42 = llvm::ConstantInt::get();
  v206 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v41, PointerCast, v42, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v40, GEP, 0, 0);
  v44 = *(a1 + 208);
  (*(**(a1 + 920) + 896))();
  v45 = llvm::ConstantInt::get();
  v206 = 257;
  v46 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v44, PointerCast, v45, v205);
  v47 = *(a1 + 208);
  v206 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a12, v205);
  v204 = 257;
  v50 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v193, v203, v49);
  (*(**(a1 + 920) + 1032))();
  v51 = llvm::ConstantInt::get();
  v218 = 257;
  v52 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v47, v50, v51, v217);
  v53 = *(a1 + 208);
  v206 = 257;
  llvm::Type::isOpaquePointerTy(*v52);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v53, v52, 0, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), AlignedLoad, v46, 0, 0);
  v206 = 257;
  v55 = AGCLLVMBuilder::CreateLoad(a1, a12, v205);
  v216[0] = llvm::ConstantInt::get();
  v216[1] = llvm::ConstantInt::get();
  v204 = 257;
  llvm::Type::isOpaquePointerTy(*v55);
  v56 = llvm::IRBuilderBase::CreateGEP(a1 + 8, TypeByName, v55, v216, 2, v203);
  v218 = 257;
  v57 = AGCLLVMBuilder::CreateLoad(a1, v56, v217);
  v58 = *(a1 + 208);
  v206 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v57, v58, v205);
  v60 = *(a1 + 208);
  (*(**(a1 + 920) + 952))();
  v61 = llvm::ConstantInt::get();
  v204 = 257;
  v62 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v60, PointerCast, v61, v203);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, v62, 0, 0);
  if (a14)
  {
    v63 = *(a1 + 208);
    (*(**(a1 + 920) + 976))(*(a1 + 920));
    v64 = llvm::ConstantInt::get();
    v206 = 257;
    v65 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v63, PointerCast, v64, v205);
    v204 = 257;
    v67 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v65, v202, v203, v66);
    v206 = 257;
    v68 = AGCLLVMBuilder::CreateLoad(a1, a14, v205);
    v203[0] = 0;
    v205[0] = "user_data_start";
    v206 = 259;
    Value = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v68, v203, 1, v205);
    v203[0] = 1;
    v205[0] = "user_data_end";
    v206 = 259;
    v70 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v68, v203, 1, v205);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Value, v67, 0, 0);
    v71 = *(a1 + 200);
    v72 = llvm::ConstantInt::get();
    v206 = 257;
    v73 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v71, v67, v72, v205);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v70, v73, 0, 0);
  }

  if (a15)
  {
    v74 = *(a1 + 208);
    (*(**(a1 + 920) + 984))(*(a1 + 920));
    v75 = llvm::ConstantInt::get();
    v206 = 257;
    v76 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v74, PointerCast, v75, v205);
    v204 = 257;
    v78 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v76, v202, v203, v77);
    v206 = 257;
    v79 = AGCLLVMBuilder::CreateLoad(a1, a15, v205);
    v203[0] = 0;
    v205[0] = "driver_data_start";
    v206 = 259;
    v80 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v79, v203, 1, v205);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v80, v78, 0, 0);
  }

  v81 = *(a1 + 208);
  (*(**(a1 + 920) + 960))(*(a1 + 920));
  v82 = llvm::ConstantInt::get();
  v206 = 257;
  v83 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v81, PointerCast, v82, v205);
  v204 = 257;
  v85 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v83, v202, v203, v84);
  v86 = v212;
  v87 = *(a1 + 200);
  v88 = llvm::ConstantInt::get();
  v206 = 257;
  v89 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v87, v85, v88, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v86, v89, 0, 0);
  v90 = *(&v212 + 1);
  v91 = *(a1 + 200);
  v92 = llvm::ConstantInt::get();
  v206 = 257;
  v93 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v91, v85, v92, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v90, v93, 0, 0);
  v94 = (*(*a1 + 952))(a1);
  v95 = *(a1 + 200);
  v205[0] = "vrid";
  v206 = 259;
  v96 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v94, v95, v205);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v96, PointerCast);
  v98 = *(&v210 + 1);
  v99 = *(a1 + 200);
  (*(**(a1 + 920) + 1072))();
  v100 = llvm::ConstantInt::get();
  v206 = 257;
  v101 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v99, PerVridSetDataPtr, v100, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v98, v101, 0, 0);
  v102 = *(&v211 + 1);
  v103 = *(a1 + 200);
  (*(**(a1 + 920) + 1080))();
  v104 = llvm::ConstantInt::get();
  v206 = 257;
  v105 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v103, PerVridSetDataPtr, v104, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v102, v105, 0, 0);
  v106 = v211;
  v107 = *(a1 + 200);
  (*(**(a1 + 920) + 1088))();
  v108 = llvm::ConstantInt::get();
  v206 = 257;
  v109 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v107, PerVridSetDataPtr, v108, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v106, v109, 0, 0);
  v110 = llvm::ConstantInt::get();
  v111 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v112 = llvm::ConstantInt::get();
  v206 = 257;
  v113 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v111, PerVridSetDataPtr, v112, v205);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v110, v113, 0, 0);
  if (a16)
  {
    v114 = *(a1 + 200);
    (*(**(a1 + 920) + 1104))(*(a1 + 920));
    v115 = llvm::ConstantInt::get();
    v206 = 257;
    v116 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v114, PerVridSetDataPtr, v115, v205);
    v206 = 257;
    v118 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v116, v196, v205, v117);
    v119 = *(a1 + 208);
    v206 = 257;
    v120 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a16, v119, v205);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v120, v118, 0, 0);
  }

  if (a17)
  {
    v121 = *(a1 + 200);
    (*(**(a1 + 920) + 1120))(*(a1 + 920));
    v122 = llvm::ConstantInt::get();
    v206 = 257;
    v123 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v121, PerVridSetDataPtr, v122, v205);
    v206 = 257;
    v125 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v123, v196, v205, v124);
    v126 = *(a1 + 208);
    v206 = 257;
    v127 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a17, v126, v205);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v127, v125, 0, 0);
  }

  if (v197)
  {
    v128 = *(a1 + 200);
    (*(**(a1 + 920) + 1112))(*(a1 + 920));
    v129 = llvm::ConstantInt::get();
    v206 = 257;
    v130 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v128, PerVridSetDataPtr, v129, v205);
    v204 = 257;
    v132 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v130, v196, v203, v131);
    v206 = 257;
    v133 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v197 + 24), v197, 0, 0, v205);
    v134 = *(a1 + 208);
    v204 = 257;
    v135 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v133, v134, v203);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v135, v132, 0, 0);
  }

  v136 = a4[2];
  v206 = 257;
  v137 = AGCLLVMBuilder::CreateLoad(a1, v136, v205);
  v138 = *(a1 + 208);
  v204 = 257;
  v139 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v137, v138, v203);
  v140 = *(a1 + 208);
  (*(**(a1 + 920) + 904))();
  v141 = llvm::ConstantInt::get();
  v218 = 257;
  v142 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v140, PointerCast, v141, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v139, v142, 0, 0);
  v143 = a4[5];
  v206 = 257;
  v144 = AGCLLVMBuilder::CreateLoad(a1, v143, v205);
  v145 = *(a1 + 208);
  v204 = 257;
  v146 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v144, v145, v203);
  v147 = *(a1 + 208);
  (*(**(a1 + 920) + 912))();
  v148 = llvm::ConstantInt::get();
  v218 = 257;
  v149 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v147, PointerCast, v148, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v146, v149, 0, 0);
  v150 = a4[8];
  v206 = 257;
  v151 = AGCLLVMBuilder::CreateLoad(a1, v150, v205);
  v152 = *(a1 + 208);
  v204 = 257;
  v153 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v151, v152, v203);
  v154 = *(a1 + 208);
  (*(**(a1 + 920) + 920))();
  v155 = llvm::ConstantInt::get();
  v218 = 257;
  v156 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v154, PointerCast, v155, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v153, v156, 0, 0);
  v157 = *(a5 + 16);
  v206 = 257;
  v158 = AGCLLVMBuilder::CreateLoad(a1, v157, v205);
  v159 = *(a1 + 208);
  v204 = 257;
  v160 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v158, v159, v203);
  v161 = *(a1 + 208);
  (*(**(a1 + 920) + 928))();
  v162 = llvm::ConstantInt::get();
  v218 = 257;
  v163 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v161, PointerCast, v162, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v160, v163, 0, 0);
  v164 = *(a7 + 16);
  v206 = 257;
  v165 = AGCLLVMBuilder::CreateLoad(a1, v164, v205);
  v166 = *(a1 + 208);
  v204 = 257;
  v167 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v165, v166, v203);
  v168 = *(a1 + 208);
  (*(**(a1 + 920) + 936))();
  v169 = llvm::ConstantInt::get();
  v218 = 257;
  v170 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v168, PointerCast, v169, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v167, v170, 0, 0);
  v171 = *(a8 + 16);
  v206 = 257;
  v172 = AGCLLVMBuilder::CreateLoad(a1, v171, v205);
  v173 = *(a1 + 208);
  v204 = 257;
  v174 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v172, v173, v203);
  v175 = *(a1 + 208);
  (*(**(a1 + 920) + 944))();
  v176 = llvm::ConstantInt::get();
  v218 = 257;
  v177 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v175, PointerCast, v176, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v174, v177, 0, 0);
  v178 = *(a10 + 16);
  v206 = 257;
  v179 = AGCLLVMBuilder::CreateLoad(a1, v178, v205);
  v180 = *(a1 + 208);
  v204 = 257;
  v181 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v179, v180, v203);
  v182 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v183 = llvm::ConstantInt::get();
  v218 = 257;
  v184 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v182, PointerCast, v183, v217);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v181, v184, 0, 0);
  if (*(a1 + 1946) == 1)
  {
    v185 = *(a11 + 16);
    v206 = 257;
    v186 = AGCLLVMBuilder::CreateLoad(a1, v185, v205);
    v187 = *(a1 + 208);
    v204 = 257;
    v188 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v186, v187, v203);
    v189 = *(a1 + 208);
    (*(**(a1 + 920) + 1008))();
    v190 = llvm::ConstantInt::get();
    v218 = 257;
    v191 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v189, PointerCast, v190, v217);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v188, v191, 0, 0);
  }

  *v195 = *(a1 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((v195 + 16), (a1 + 8));
  *(v195 + 24) = *(a1 + 104);
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSGOTPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v19, v7);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1112))();
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v13, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v19, v15);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSPerEncoderIndirectionTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v16, v7);
  v9 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v10 = llvm::ConstantInt::get();
  v17 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v9, PointerCast, v10, v16);
  v17 = 257;
  v13 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v16, v12);
  v14 = *(a1 + 208);
  v17 = 257;
  llvm::Type::isOpaquePointerTy(*v13);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v13, 0, v16);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSDispatchPrivateBufferPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v19, v7);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1120))();
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v13, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v19, v15);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSGlobalBindingTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v6, v19, v7);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1104))();
  v13 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v13, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v6, v19, v15);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getRayTraversalDepth(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x1F)
  {
    v2 = 31;
  }

  else
  {
    v2 = a2;
  }

  v3 = 114 * v2;
  if (v3 >= 0x388)
  {
    v3 = 904;
  }

  return (v3 + 119) & 0x7F8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::readRayPointerT@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v10[0] = *(a1 + 192);
    v10[1] = v10[0];
    TypeByName = llvm::StructType::create();
  }

  v5 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.read_ray_pointer", 20, TypeByName, 0, 0);
  v9 = 0;
  v11 = 257;
  *a2 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v5, &v9, 1, v10);
  v8 = 1;
  v7[16] = 257;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v5, &v8, 1, v7);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::readRayPointerSR(uint64_t a1)
{
  v2 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ray.pointer", 21, *(a1 + 192), 0, 0);
  v3 = *(a1 + 200);
  v6 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v2, v3, v5);
}

llvm::Type **AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectionShaderArgument(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, unsigned int a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = 1;
  v13 = llvm::PointerType::get();
  v28 = llvm::PointerType::get();
  v14 = 0;
  switch(a3)
  {
    case 0u:
    case 1u:
    case 9u:
    case 0xAu:
      v14 = *(a1 + 272);
      break;
    case 2u:
    case 3u:
    case 0xDu:
    case 0xEu:
    case 0x15u:
    case 0x17u:
    case 0x18u:
      v14 = *(a1 + 168);
      break;
    case 4u:
    case 5u:
    case 6u:
    case 0x10u:
    case 0x11u:
    case 0x16u:
    case 0x1Bu:
      goto LABEL_8;
    case 7u:
    case 8u:
      if ((a5 & 0x40) != 0)
      {
        v12 = a6;
      }

      else
      {
        v12 = 1;
      }

LABEL_8:
      v14 = *(a1 + 200);
      break;
    case 0xBu:
      v14 = *(a1 + 224);
      break;
    case 0xCu:
    case 0xFu:
      v14 = *(a1 + 184);
      break;
    case 0x13u:
    case 0x14u:
      v14 = *(a1 + 272);
      v12 = 4;
      break;
    case 0x19u:
    case 0x1Au:
      v14 = v13;
      break;
    default:
      break;
  }

  v15 = *(*(*(a1 + 56) + 56) + 80);
  if (v15)
  {
    v16 = (v15 - 24);
  }

  else
  {
    v16 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v16);
  if (FirstInsertionPt)
  {
    v18 = (FirstInsertionPt - 24);
  }

  else
  {
    v18 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v18);
  v19 = llvm::ConstantInt::get();
  LOWORD(PointerCast) = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca((a1 + 8), v14, v19, v38);
  v35 = *a2;
  v36 = *(a2 + 16);
  if (v36)
  {
    llvm::MetadataTracking::track();
  }

  v37 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v35);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1940))
  {
    v21 = "agx.get_intersection_shader_argument_legacy";
  }

  else
  {
    v21 = "agx.get_intersection_shader_argument";
  }

  std::string::basic_string[abi:nn200100]<0>(v31, v21);
  v22 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v31, a4);
  if (v34 < 0)
  {
    v22 = __p[0];
  }

  if (v34 >= 0)
  {
    v23 = v34;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = *(a1 + 144);
  v25 = *(a4 + 8);
  v38[0] = *(a4 + 24);
  v38[1] = v25;
  v38[2] = llvm::ConstantInt::get();
  v38[3] = llvm::ConstantInt::get();
  v30 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Alloca, v28, v29, v26);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v22, v23, v24, v38, 5uLL);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v12 <= 1)
  {
    LOWORD(PointerCast) = 257;
    return AGCLLVMBuilder::CreateLoad(a1, Alloca, v38);
  }

  return Alloca;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::createGPUVAMasks(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildConvertHFP8_Vector(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v93[4] = *MEMORY[0x277D85DE8];
  v84 = *a2;
  v85 = *(a2 + 16);
  if (v85)
  {
    llvm::MetadataTracking::track();
  }

  v86 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v84);
  if (v85)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *(*a3 + 32);
  std::string::basic_string[abi:nn200100]<0>(&v87, "f32");
  v88 = *(a1 + 168);
  std::string::basic_string[abi:nn200100]<0>(v89, "f16");
  v89[3] = *(a1 + 152);
  std::string::basic_string[abi:nn200100]<0>(v90, "bf16");
  v90[3] = *(a1 + 160);
  std::string::basic_string[abi:nn200100]<0>(v91, "f8e5m2");
  v91[3] = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v92, "f8e4m3");
  v92[3] = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v93, "f8e4m3fn");
  v12 = 0;
  v93[3] = *(a1 + 184);
  v83[0] = 0;
  v83[1] = 0;
  v82 = v83;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v82, v83, &v87.__r_.__value_.__r.__words[v12], &v87 + v12 * 8);
    v12 += 4;
  }

  while (v12 != 24);
  for (i = 0; i != -24; i -= 4)
  {
    if (SHIBYTE(v93[i + 2]) < 0)
    {
      operator delete(v93[i]);
    }
  }

  if (*(a4 + 23) < 0)
  {
    if (**a4 != 118)
    {
      std::string::__init_copy_ctor_external(&v87, *a4, *(a4 + 8));
      goto LABEL_20;
    }
  }

  else if (*a4 != 118)
  {
    v87 = *a4;
    goto LABEL_20;
  }

  if (v11 <= 0xA)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  std::string::basic_string(&v87, a4, v14, 0xFFFFFFFFFFFFFFFFLL, v79);
LABEL_20:
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v87;
  if (*(a5 + 23) < 0)
  {
    if (**a5 != 118)
    {
      std::string::__init_copy_ctor_external(&v87, *a5, *(a5 + 8));
      goto LABEL_31;
    }
  }

  else if (*a5 != 118)
  {
    v87 = *a5;
    goto LABEL_31;
  }

  if (v11 <= 0xA)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  std::string::basic_string(&v87, a5, v15, 0xFFFFFFFFFFFFFFFFLL, v79);
LABEL_31:
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v87;
  std::map<std::string,unsigned short>::at(&v82, a5);
  v16 = llvm::FixedVectorType::get();
  memset(__p, 0, sizeof(__p));
  if (v11 != 1)
  {
    v17 = 0;
    do
    {
      v87.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
      std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v87);
      ++v17;
    }

    while (v11 - 1 != v17);
  }

  v18 = v11 >> 1;
  if (a6)
  {
    v87.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
    std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v87);
  }

  v60 = __p[0];
  v19 = llvm::ConstantVector::get();
  v61 = v11;
  if (a6)
  {
    v58 = v19;
    v59 = v16;
    llvm::FixedVectorType::get();
    v20 = llvm::UndefValue::get();
    if (v11 >= 2)
    {
      v21 = 0;
      v22 = 1;
      do
      {
        std::map<std::string,unsigned short>::at(&v82, a4);
        llvm::FixedVectorType::get();
        v23 = llvm::UndefValue::get();
        LOWORD(v89[0]) = 257;
        v24 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v24, &v87);
        v80 = 257;
        v26 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v23, Element, v26, v79);
        LOWORD(v89[0]) = 257;
        v28 = llvm::ConstantInt::get();
        v29 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v28, &v87);
        v80 = 257;
        v30 = llvm::ConstantInt::get();
        v31 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v29, v30, v79);
        v76 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (a1 + 8));
        v78 = *(a1 + 104);
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *a4, *(a4 + 8));
        }

        else
        {
          v75 = *a4;
        }

        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v74, *a5, *(a5 + 8));
        }

        else
        {
          v74 = *a5;
        }

        v32 = (*(*a1 + 768))(a1, &v76, v31, &v75, &v74, 1, 1);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        if (v77)
        {
          llvm::MetadataTracking::untrack();
        }

        LOWORD(v89[0]) = 257;
        v33 = llvm::ConstantInt::get();
        v20 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v20, v32, v33, &v87);
        ++v21;
        v22 += 2;
      }

      while (v18 != v21);
    }

    if ((v61 & 1) == 0)
    {
      LOWORD(v89[0]) = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v20, v59, &v87);
      v35 = v60;
      goto LABEL_89;
    }

    std::map<std::string,unsigned short>::at(&v82, a5);
    v51 = llvm::FixedVectorType::get();
    LOWORD(v89[0]) = 257;
    v52 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v20, v51, &v87);
    LOWORD(v89[0]) = 257;
    Cast = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v52, v52, v58, &v87);
    goto LABEL_76;
  }

  ShuffleVector = a3;
  if (v11)
  {
    LOWORD(v89[0]) = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), a3, a3, v19, &v87);
  }

  v37 = llvm::FixedVectorType::get();
  LOWORD(v89[0]) = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, ShuffleVector, v37, &v87);
  Cast = llvm::UndefValue::get();
  if (v11 >= 2)
  {
    v38 = 0;
    v39 = 1;
    v40 = v18;
    do
    {
      LOWORD(v89[0]) = 257;
      v41 = llvm::ConstantInt::get();
      v42 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v62, v41, &v87);
      v71 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v72, (a1 + 8));
      v73 = *(a1 + 104);
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v70, *a4, *(a4 + 8));
      }

      else
      {
        v70 = *a4;
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v69, *a5, *(a5 + 8));
      }

      else
      {
        v69 = *a5;
      }

      v43 = (*(*a1 + 768))(a1, &v71, v42, &v70, &v69, 0, 1);
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v72)
      {
        llvm::MetadataTracking::untrack();
      }

      LOWORD(v89[0]) = 257;
      v44 = llvm::ConstantInt::get();
      v45 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v43, v44, &v87);
      v80 = 257;
      v46 = llvm::ConstantInt::get();
      v47 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v45, v46, v79);
      LOWORD(v89[0]) = 257;
      v48 = llvm::ConstantInt::get();
      v49 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v43, v48, &v87);
      v80 = 257;
      v50 = llvm::ConstantInt::get();
      Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v47, v49, v50, v79);
      ++v38;
      v39 += 2;
    }

    while (v40 != v38);
  }

  v35 = v60;
  if (v61)
  {
LABEL_76:
    LOWORD(v89[0]) = 257;
    v53 = llvm::ConstantInt::get();
    v54 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v53, &v87);
    v66 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v67, (a1 + 8));
    v68 = *(a1 + 104);
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v65, *a4, *(a4 + 8));
    }

    else
    {
      v65 = *a4;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, *a5, *(a5 + 8));
    }

    else
    {
      v64 = *a5;
    }

    v55 = (*(*a1 + 768))(a1, &v66, v54, &v65, &v64, a6, 0);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v67)
    {
      llvm::MetadataTracking::untrack();
    }

    LOWORD(v89[0]) = 257;
    v56 = llvm::ConstantInt::get();
    Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v55, v56, &v87);
    v35 = __p[0];
  }

LABEL_89:
  if (v35)
  {
    operator delete(v35);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v83[0]);
  return Cast;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildConvertHFP8_F2F(void *a1, uint64_t a2, llvm::Value *Cast, uint64_t *a4, unsigned __int16 *a5, int a6, int a7)
{
  v82 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v74, "f8e4m3");
  LOWORD(v77) = 0;
  std::string::basic_string[abi:nn200100]<0>(v78, "f8e4m3fn");
  LOWORD(v79) = 1;
  std::string::basic_string[abi:nn200100]<0>(v80, "f8e5m2");
  v13 = 0;
  LOWORD(v81) = 2;
  v70[0] = 0;
  v70[1] = 0;
  v69 = v70;
  do
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(&v69, v70, (&v74 + v13), &v74 + v13);
    v13 += 32;
  }

  while (v13 != 96);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v80[i + 2]) < 0)
    {
      operator delete(v80[i]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v74, "f32");
  v15 = (a1 + 21);
  v77 = a1[21];
  std::string::basic_string[abi:nn200100]<0>(v78, "f16");
  v79 = a1[19];
  std::string::basic_string[abi:nn200100]<0>(v80, "bf16");
  v16 = 0;
  v81 = a1[20];
  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v67, v68, (&v74 + v16), &v74 + v16);
    v16 += 32;
  }

  while (v16 != 96);
  for (j = 0; j != -12; j -= 4)
  {
    if (SHIBYTE(v80[j + 2]) < 0)
    {
      operator delete(v80[j]);
    }
  }

  v64 = *a2;
  v65 = *(a2 + 16);
  if (v65)
  {
    llvm::MetadataTracking::track();
  }

  v66 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v64);
  if (v65)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = llvm::ConstantInt::get();
  v19 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  v21 = llvm::IRBuilderBase::CreateOr((a1 + 1), v19, v18, &v74);
  if (!a6)
  {
    std::map<std::string,unsigned short>::at(&v69, a4);
    v31 = llvm::ConstantInt::get();
    LOWORD(v78[0]) = 257;
    v32 = llvm::IRBuilderBase::CreateOr((a1 + 1), v31, v21, &v74);
    v33 = *(a5 + 23);
    if (v33 < 0)
    {
      if (*(a5 + 1) != 3)
      {
        goto LABEL_38;
      }

      v34 = *a5;
    }

    else
    {
      v34 = a5;
      if (v33 != 3)
      {
        goto LABEL_38;
      }
    }

    v36 = *v34;
    v37 = *(v34 + 2);
    if (v36 == 12646 && v37 == 54)
    {
LABEL_39:
      v39 = *v15;
      if ((a7 & 1) == 0)
      {
        v40 = a1[24];
        LOWORD(v78[0]) = 257;
        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, Cast, v40, &v74);
      }

      v41 = &v63;
      std::string::basic_string[abi:nn200100]<0>(&v63, "llvm.agx3.unpack.hfp8.");
      if (v39 == a1[21])
      {
        v42 = "f32";
      }

      else
      {
        v42 = "bf16";
      }

      std::string::append(&v63, v42);
      llvm::FixedVectorType::get();
      __src = a1[24];
      v72 = __src;
      v74 = &v76;
      v75 = 0x200000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v74, &__src, &v73);
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v41 = v63.__r_.__value_.__r.__words[0]) != 0)
      {
        strlen(v41);
      }

      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v44 = v43;
      if (v74 != &v76)
      {
        free(v74);
      }

      __src = v32;
      v72 = Cast;
      LOWORD(v78[0]) = 257;
      Element = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v44 + 24), v44, &__src, 2, &v74);
      if (a7)
      {
        v46 = *(a5 + 23);
        if (v46 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v46 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v59 = llvm::FixedVectorType::get();
      }

      else
      {
        LOWORD(v78[0]) = 257;
        v47 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Element, v47, &v74);
        v48 = *(a5 + 23);
        if (v48 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v48 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v59 = a1[19];
      }

      LOWORD(v78[0]) = 257;
      FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), Element, v59, &v74);
      goto LABEL_87;
    }

LABEL_38:
    v15 = std::map<std::string,unsigned short>::at(&v67, a5);
    goto LABEL_39;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_HFP8_ENABLE_SATURATE", v20);
    if (Value)
    {
      if (*Value != 48)
      {
        atoi(Value);
      }
    }
  }

  v23 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  v24 = llvm::IRBuilderBase::CreateOr((a1 + 1), v23, v21, &v74);
  std::map<std::string,unsigned short>::at(&v69, a5);
  v25 = llvm::ConstantInt::get();
  LOWORD(v78[0]) = 257;
  v26 = llvm::IRBuilderBase::CreateOr((a1 + 1), v25, v24, &v74);
  if (a7)
  {
    LOWORD(v78[0]) = 257;
    v27 = llvm::ConstantInt::get();
    v28 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v27, &v74);
    LOWORD(v78[0]) = 257;
    v29 = llvm::ConstantInt::get();
    FPExt = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v29, &v74);
    Cast = v28;
  }

  else
  {
    FPExt = llvm::ConstantFP::get();
  }

  v35 = *(a4 + 23);
  if (v35 < 0)
  {
    if (a4[1] != 3)
    {
LABEL_62:
      v50 = *v15;
      LOWORD(v78[0]) = 257;
      Cast = llvm::IRBuilderBase::CreateFPExt((a1 + 1), Cast, v50, &v74);
      v51 = *v15;
      LOWORD(v78[0]) = 257;
      FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1), FPExt, v51, &v74);
      goto LABEL_63;
    }

    a4 = *a4;
  }

  else if (v35 != 3)
  {
    goto LABEL_62;
  }

  if (*a4 != 13158 || *(a4 + 2) != 50)
  {
    goto LABEL_62;
  }

LABEL_63:
  v52 = &v63;
  std::string::basic_string[abi:nn200100]<0>(&v63, "llvm.agx3.pack.hfp8");
  v53 = a1[21];
  __src = a1[24];
  v72 = v53;
  v73 = v53;
  v74 = &v76;
  v75 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v74, &__src, &v74);
  if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v52 = v63.__r_.__value_.__r.__words[0]) != 0)
  {
    strlen(v52);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v55 = v54;
  if (v74 != &v76)
  {
    free(v74);
  }

  __src = v26;
  v72 = Cast;
  v73 = FPExt;
  LOWORD(v78[0]) = 257;
  Element = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v55 + 24), v55, &__src, 3, &v74);
  if ((a7 & 1) == 0)
  {
    v56 = a1[23];
    LOWORD(v78[0]) = 257;
    FPTrunc = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v56, &v74);
LABEL_87:
    Element = FPTrunc;
  }

LABEL_88:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v68[0]);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v70[0]);
  return Element;
}

unint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildConvertHFP8_ParseArgTypes@<X0>(unint64_t result@<X0>, void *a3@<X8>)
{
  if (*(result + 1947))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdYield(uint64_t a1, uint64_t a2, llvm::CmpInst **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantInt::get();
  v13 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 37, a3, v6, v12);
  llvm::ConstantInt::get();
  v18 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v8 = *(a1 + 192);
  v13 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v8, v12);
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.yield", 15, *(a1 + 144), *(a1 + 192));
  v17[0] = Cast;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, v17, 1, v12);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(unsigned int **a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v63 = v5;
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() != -1 && ((llvm::CallBase::arg_end(a2) - (a2 + 32 * -(*(a2 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0xA0)
    {
      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map = 0u;
        *algn_27C8DB390 = 0u;
        dword_27C8DB3A0 = 1065353216;
        v41 = &dword_277E22068;
        v42 = 48;
        v43 = &dword_277E22068;
        do
        {
          v44 = *v43;
          v43 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, v44, v41);
          v41 = v43;
          v42 -= 16;
        }

        while (v42);
        __cxa_atexit(std::unordered_map<AIR::MemoryOrder,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map = 0u;
        unk_27C8DB3C0 = 0u;
        dword_27C8DB3D0 = 1065353216;
        v45 = &dword_277E22098;
        v46 = 32;
        v47 = &dword_277E22098;
        do
        {
          v48 = *v47;
          v47 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, v48, v45);
          v45 = v47;
          v46 -= 16;
        }

        while (v46);
        __cxa_atexit(std::unordered_map<AIR::MemoryScope,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map = 0u;
        *algn_27C8DB3F0 = 0u;
        dword_27C8DB400 = 1065353216;
        v49 = &byte_277E220B8;
        v50 = 32;
        v51 = &byte_277E220B8;
        do
        {
          v52 = *v51;
          v51 += 16;
          std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, v52, v49);
          v49 = v51;
          v50 -= 16;
        }

        while (v50);
        __cxa_atexit(std::unordered_map<BOOL,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, &dword_20E4E1000);
      }

      v7 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
      v8 = *v7;
      v9 = v7[8];
      v10 = v7[16];
      v11 = **v7;
      v12 = *(v11 + 8);
      if ((v12 & 0xFE) == 0x12)
      {
        v12 = *(**(v11 + 16) + 8);
      }

      v13 = v7[4];
      v14 = v7[12];
      v15 = v12 & 0xFFFFFF00;
      std::string::basic_string[abi:nn200100]<0>(&v56, "air.simdgroup_atomic.wait.i32.");
      if (v15 == 256)
      {
        v16 = "device.";
      }

      else
      {
        v16 = "threadgroup.";
      }

      v17 = std::string::append(&v56, v16);
      v18 = v17->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<BOOL,char const*>::unordered_map(v55, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map);
      v19 = *(v10 + 8);
      if (v19 > 0x40)
      {
        v20 = *v10[3];
      }

      else
      {
        v20 = (v10[3] << -v19) >> -v19;
      }

      v21 = std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::find<BOOL>(v55[0], v55[1], v20 != 0);
      v22 = std::string::append(&v57, v21[3]);
      v23 = v22->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v58, ".");
      v25 = v24->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v54, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map);
      v26 = *(v9 + 8);
      if (v26 > 0x40)
      {
        v27 = *v9[3];
      }

      else
      {
        v27 = (v9[3] << -v26) >> -v26;
      }

      v28 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v54[0], v54[1], v27);
      v29 = std::string::append(&v59, v28[3]);
      v30 = v29->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v66, ".");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v53, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map);
      v33 = *(v14 + 8);
      if (v33 > 0x40)
      {
        v34 = *v14[3];
      }

      else
      {
        v34 = (v14[3] << -v33) >> -v33;
      }

      v35 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v53[0], v53[1], v34);
      v36 = std::string::append(&v64, v35[3]);
      v37 = v36->__r_.__value_.__r.__words[2];
      v60 = *&v36->__r_.__value_.__l.__data_;
      v61 = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v53);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v54);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v55);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
      v38 = *v13;
      v64.__r_.__value_.__r.__words[0] = *v8;
      v64.__r_.__value_.__l.__size_ = v38;
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v66.__r_.__value_.__r.__words[0] = v8;
      v66.__r_.__value_.__l.__size_ = v13;
      v65 = 257;
      llvm::IRBuilderBase::CreateCall(a1 + 1, *(v39 + 24), v39, &v66, 2, &v64);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(a2);
      AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(a1, "spin_limit", 6.0);
    }

    return 0;
  }

  else
  {
    llvm::Instruction::eraseFromParent(a2);
    return 1;
  }
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(void *a1, char *__s, float a3)
{
  {
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix, "translator.agx3.simdgroup_atomic_wait.get_");
    __cxa_atexit(MEMORY[0x277D82640], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix, &dword_20E4E1000);
  }

  {
    v13 = byte_27C8DB427;
    if (byte_27C8DB427 < 0)
    {
      v13 = qword_27C8DB418;
    }

    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix_length = v13;
  }

  if (byte_27C8DB427 >= 0)
  {
    v5 = byte_27C8DB427;
  }

  else
  {
    v5 = qword_27C8DB418;
  }

  v6 = strlen(__s);
  v7 = v14;
  std::string::basic_string[abi:nn200100](v14, v5 + v6);
  if (v15 < 0)
  {
    v7 = v14[0];
  }

  if (v5)
  {
    if (byte_27C8DB427 >= 0)
    {
      v8 = &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix;
    }

    else
    {
      v8 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix;
    }

    memmove(v7, v8, v5);
  }

  v9 = v7 + v5;
  if (v6)
  {
    memmove(v9, __s, v6);
  }

  v9[v6] = 0;
  if (v15 >= 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = v14[0];
  }

  if (v15 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v14[1];
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v10, v11, a1[21]);
  *(inserted + 18) &= 0xC00Fu;
  operator new();
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMemCpy2D(uint64_t a1, llvm::Instruction *a2)
{
  v11[12] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v10[0] = v11;
  v10[1] = 0xC00000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1968))(a1, v10);
  v8 = *a2;
  v9[16] = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v9);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v10[0] != v11)
  {
    free(v10[0]);
  }
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMemCpy1D(uint64_t a1, llvm::Instruction *a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v11[0] = v12;
  v11[1] = 0x500000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1928))(a1, v11);
  v8 = *a2;
  v10 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v9);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildImageBaseLevelExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v16 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v15);
  v14[16] = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, GEP, 0, v14);
  v12 = (*(*a1 + 248))(a1, AlignedLoad);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v12, a4, 0, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildImageMipCountExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v21 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v20);
  v19 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, GEP, 0, v18);
  v12 = (*(*a1 + 248))(a1, AlignedLoad);
  v13 = (*(*a1 + 249))(a1, AlignedLoad);
  v21 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v13, v12, v20);
  v15 = llvm::ConstantInt::get();
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Sub, v15, v18);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Add, a4, 0, 0);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getVertexInputCall(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (*(*a1 + 57))(a1, a4);
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 1, *(v7 + 24), v7, 0, 0, v9);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getVertexInputIntrinsic(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    if ((a2 - 1) < 2)
    {
      v2 = "llvm.agx3.instance.id";
      v3 = 21;
    }

    else
    {
      if ((a2 - 3) >= 2)
      {
        return 0;
      }

      v2 = "llvm.agx3.vertex.id";
      v3 = 19;
    }

    goto LABEL_17;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      v2 = "llvm.agx3.position.in.patch.u";
LABEL_14:
      v3 = 29;
      v4 = 168;
      return AGCLLVMBuilder::getOrInsertFunction<>(a1, v2, v3, *(a1 + v4));
    }

    v2 = "llvm.agx3.transform.feedback.vertex.id";
    v3 = 38;
LABEL_17:
    v4 = 200;
    return AGCLLVMBuilder::getOrInsertFunction<>(a1, v2, v3, *(a1 + v4));
  }

  switch(a2)
  {
    case 7:
      v2 = "llvm.agx3.position.in.patch.v";
      goto LABEL_14;
    case 8:
      v2 = "llvm.agx3.patch.id";
      v3 = 18;
      goto LABEL_17;
    case 9:
      v2 = "llvm.agx3.patch.ring.edge.vertex";
      v3 = 32;
      v4 = 192;
      return AGCLLVMBuilder::getOrInsertFunction<>(a1, v2, v3, *(a1 + v4));
  }

  return 0;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMeshVaryingWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = llvm::PointerType::get();
  v16 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v10, v15, v11);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.varying.write", 28, *(a1 + 144), *(a1 + 192), *(a1 + 192), v10);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = PointerCast;
  v16 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v20, 3, v15);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMeshPrimattrWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = llvm::PointerType::get();
  v16 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v10, v15, v11);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.primattr.write", 29, *(a1 + 144), *(a1 + 192), *(a1 + 192), v10);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = PointerCast;
  v16 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v20, 3, v15);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMeshIndexWrite(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = llvm::PointerType::get();
  v14 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a4, v8, v13, v9);
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.mesh.index.write", 26, *(a1 + 144), *(a1 + 192), v8);
  v18[0] = a3;
  v18[1] = PointerCast;
  v14 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v11 + 24), v11, v18, 2, v13);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildWaitFence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v10);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.wait.fence", 20, *(a1 + 144), *(a1 + 192));
  v13[0] = a3;
  v9 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v6 + 24), v6, v13, 1, v8);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildAllocateUVB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.allocate.uvb", 22, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v15[0] = a3;
  v15[1] = a4;
  v11 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v15, 2, v10);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetMeshPrimitivePointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx3.mesh.primdata.ptr", 27, v4);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v7);
}