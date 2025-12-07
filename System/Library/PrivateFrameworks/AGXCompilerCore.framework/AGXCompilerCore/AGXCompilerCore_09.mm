uint64_t AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(int8x8_t *a1, int a2, char a3)
{
  v155 = *MEMORY[0x277D85DE8];
  v6 = llvm::PointerType::get();
  v7 = llvm::PointerType::get();
  if (!*&a1[588])
  {
    v8 = *a1;
    v148 = *(&a1[238] + *(*a1 - 24));
    v149 = *(&a1[238] + *(*&v8 - 24));
    v150 = *(&a1[238] + *(*&v8 - 24));
    v151 = *(&a1[238] + *(*&v8 - 24));
    v152 = *(&a1[238] + *(*&v8 - 24));
    v153 = *(&a1[238] + *(*&v8 - 24));
    v154 = *(&a1[238] + *(*&v8 - 24));
    llvm::StructType::create();
    v9 = llvm::User::operator new(0x58);
    llvm::PointerType::get();
    v148 = "agc.mesh_state_buffer";
    LOWORD(v152) = 259;
    llvm::GlobalVariable::GlobalVariable();
    *(v9 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v10 = a1 + *(*a1 - 24);
    v11 = *(v10 + 268);
    v12 = AGCLLVMBuilder::buildGlobalMetadata(v10 + 213, v9, 0x76u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, v12);
    llvm::ValueHandleBase::operator=(&a1[586], v9);
  }

  if (!*&a1[591])
  {
    v13 = llvm::User::operator new(0x58);
    llvm::PointerType::get();
    llvm::PointerType::get();
    v148 = "agc.gpe_mailbox_state_base";
    LOWORD(v152) = 259;
    llvm::GlobalVariable::GlobalVariable();
    *(v13 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v14 = a1 + *(*a1 - 24);
    v15 = *(v14 + 268);
    v16 = AGCLLVMBuilder::buildGlobalMetadata(v14 + 213, v13, 0x77u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v15, v16);
    llvm::ValueHandleBase::operator=(&a1[589], v13);
  }

  __src = llvm::PointerType::get();
  v148 = &v150;
  v149 = 0x100000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v148, &__src, v146);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v18 = v17;
  if (v148 != &v150)
  {
    free(v148);
  }

  EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(a1);
  TypeByName = llvm::StructType::getTypeByName();
  v21 = a1 + *(*a1 - 24);
  v138 = *(v21 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v139, (v21 + 1712));
  v140 = *(v21 + 452);
  if ((a3 & 1) == 0)
  {
    v22 = a1 + *(*a1 - 24);
    v23 = *(*(*(v22 + 220) + 56) + 80);
    if (v23)
    {
      v24 = (v23 - 24);
    }

    else
    {
      v24 = 0;
    }

    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v24);
    if (FirstInsertionPt)
    {
      v26 = (FirstInsertionPt - 24);
    }

    else
    {
      v26 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((v22 + 1712), v26);
  }

  if (!EmulationStateCacheForCurrentFunction[11])
  {
    v27 = a1 + *(*a1 - 24);
    v28 = a1[588];
    LOWORD(v152) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v27 + 1704), v28, &v148);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 9), Load);
  }

  if (!EmulationStateCacheForCurrentFunction[5])
  {
    llvm::IRBuilderBase::SetInsertPoint(&a1[214] + *(*a1 - 24), *(EmulationStateCacheForCurrentFunction[11] + 40), *(EmulationStateCacheForCurrentFunction[11] + 32));
    v141[0] = 0;
    v30 = (a1 + *(*a1 - 24));
    v31 = a1[591];
    LOWORD(v152) = 257;
    llvm::Type::isOpaquePointerTy(*v31);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, v7, v31, 0, &v148);
    v33 = llvm::ConstantInt::get();
    v147 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v30 + 214), v6, AlignedLoad, v33, &__src);
    v137 = 257;
    llvm::Type::isOpaquePointerTy(*GEP);
    v141[0] = llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, v6, GEP, 0, v136);
    v35 = (a1 + *(*a1 - 24));
    LOWORD(v152) = 257;
    v36 = llvm::IRBuilderBase::CreateCall(v35 + 214, *(v18 + 24), v18, v141, 1, &v148);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 3), v36);
  }

  if (!EmulationStateCacheForCurrentFunction[8])
  {
    llvm::IRBuilderBase::SetInsertPoint(&a1[214] + *(*a1 - 24), *(EmulationStateCacheForCurrentFunction[11] + 40), *(EmulationStateCacheForCurrentFunction[11] + 32));
    v141[0] = 0;
    v37 = (a1 + *(*a1 - 24));
    v38 = a1[591];
    LOWORD(v152) = 257;
    llvm::Type::isOpaquePointerTy(*v38);
    v39 = llvm::IRBuilderBase::CreateAlignedLoad(v37 + 214, v7, v38, 0, &v148);
    v40 = llvm::ConstantInt::get();
    v147 = 257;
    v41 = llvm::IRBuilderBase::CreateGEP((v37 + 214), v6, v39, v40, &__src);
    v137 = 257;
    llvm::Type::isOpaquePointerTy(*v41);
    v141[0] = llvm::IRBuilderBase::CreateAlignedLoad(v37 + 214, v6, v41, 0, v136);
    v42 = (a1 + *(*a1 - 24));
    LOWORD(v152) = 257;
    v43 = llvm::IRBuilderBase::CreateCall(v42 + 214, *(v18 + 24), v18, v141, 1, &v148);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 6), v43);
  }

  v44 = a1 + *(*a1 - 24);
  if (a2 <= 2)
  {
    if (!a2)
    {
      llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[5] + 40), *(EmulationStateCacheForCurrentFunction[5] + 32));
      if (!EmulationStateCacheForCurrentFunction[14])
      {
        v82 = a1 + *(*a1 - 24);
        v83 = EmulationStateCacheForCurrentFunction[5];
        v84 = *(v82 + 238);
        v85 = EmulationStateCacheForCurrentFunction[11];
        v143 = llvm::ConstantInt::get();
        v144 = llvm::ConstantInt::get();
        LOWORD(v152) = 257;
        llvm::Type::isOpaquePointerTy(*v85);
        v86 = llvm::IRBuilderBase::CreateGEP((v82 + 1712), TypeByName, v85, &v143, 2, &v148);
        v147 = 257;
        llvm::Type::isOpaquePointerTy(*v86);
        v87 = llvm::IRBuilderBase::CreateAlignedLoad(v82 + 214, v84, v86, 0, &__src);
        v88 = *(&a1[239] + *(*a1 - 24));
        v137 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v82 + 1712), 39, v87, v88, v136);
        v142 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v82 + 1712), v83, Cast, v141);
        v91 = llvm::PointerType::get();
        v134[0] = "agc.gpe.object_metadata";
        v135 = 259;
        v92 = llvm::IRBuilderBase::CreateCast((v82 + 1712), 48, Add, v91, v134);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 12), v92);
      }

      v56 = a1 + *(*a1 - 24);
      v57 = EmulationStateCacheForCurrentFunction + 12;
      goto LABEL_39;
    }

    if (a2 == 1)
    {
      llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
      if (!EmulationStateCacheForCurrentFunction[17])
      {
        v58 = a1 + *(*a1 - 24);
        v59 = EmulationStateCacheForCurrentFunction[8];
        v60 = *(v58 + 238);
        v61 = EmulationStateCacheForCurrentFunction[11];
        v143 = llvm::ConstantInt::get();
        v144 = llvm::ConstantInt::get();
        LOWORD(v152) = 257;
        llvm::Type::isOpaquePointerTy(*v61);
        v62 = llvm::IRBuilderBase::CreateGEP((v58 + 1712), TypeByName, v61, &v143, 2, &v148);
        v147 = 257;
        llvm::Type::isOpaquePointerTy(*v62);
        v63 = llvm::IRBuilderBase::CreateAlignedLoad(v58 + 214, v60, v62, 0, &__src);
        v64 = *(&a1[239] + *(*a1 - 24));
        v137 = 257;
        v65 = llvm::IRBuilderBase::CreateCast((v58 + 1712), 39, v63, v64, v136);
        v142 = 257;
        v66 = llvm::IRBuilderBase::CreateAdd((v58 + 1712), v59, v65, v141);
        v67 = llvm::PointerType::get();
        v134[0] = "agc.gpe.mesh_metadata";
        v135 = 259;
        v68 = llvm::IRBuilderBase::CreateCast((v58 + 1712), 48, v66, v67, v134);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 15), v68);
      }

      v56 = a1 + *(*a1 - 24);
      v57 = EmulationStateCacheForCurrentFunction + 15;
      goto LABEL_39;
    }

    llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[5] + 40), *(EmulationStateCacheForCurrentFunction[5] + 32));
    if (!EmulationStateCacheForCurrentFunction[20])
    {
      v95 = a1 + *(*a1 - 24);
      v96 = EmulationStateCacheForCurrentFunction[5];
      v97 = *(v95 + 238);
      v98 = EmulationStateCacheForCurrentFunction[11];
      v143 = llvm::ConstantInt::get();
      v144 = llvm::ConstantInt::get();
      LOWORD(v152) = 257;
      llvm::Type::isOpaquePointerTy(*v98);
      v99 = llvm::IRBuilderBase::CreateGEP((v95 + 1712), TypeByName, v98, &v143, 2, &v148);
      v147 = 257;
      llvm::Type::isOpaquePointerTy(*v99);
      v100 = llvm::IRBuilderBase::CreateAlignedLoad(v95 + 214, v97, v99, 0, &__src);
      v101 = *(&a1[239] + *(*a1 - 24));
      v137 = 257;
      v102 = llvm::IRBuilderBase::CreateCast((v95 + 1712), 39, v100, v101, v136);
      v142 = 257;
      v103 = llvm::IRBuilderBase::CreateAdd((v95 + 1712), v96, v102, v141);
      v104 = llvm::PointerType::get();
      v134[0] = "agc.gpe.payload_buffer";
      v135 = 259;
      v105 = llvm::IRBuilderBase::CreateCast((v95 + 1712), 48, v103, v104, v134);
      llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 18), v105);
    }

    v80 = a1 + *(*a1 - 24);
    v81 = EmulationStateCacheForCurrentFunction + 18;
LABEL_49:
    v93 = llvm::ValueHandleBase::ValueHandleBase(&v148, 2u, v81);
    v94 = *(v80 + 236);
    goto LABEL_50;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
      if (!EmulationStateCacheForCurrentFunction[29])
      {
        v69 = a1 + *(*a1 - 24);
        v70 = EmulationStateCacheForCurrentFunction[8];
        v71 = *(v69 + 238);
        v72 = EmulationStateCacheForCurrentFunction[11];
        v143 = llvm::ConstantInt::get();
        v144 = llvm::ConstantInt::get();
        LOWORD(v152) = 257;
        llvm::Type::isOpaquePointerTy(*v72);
        v73 = llvm::IRBuilderBase::CreateGEP((v69 + 1712), TypeByName, v72, &v143, 2, &v148);
        v147 = 257;
        llvm::Type::isOpaquePointerTy(*v73);
        v74 = llvm::IRBuilderBase::CreateAlignedLoad(v69 + 214, v71, v73, 0, &__src);
        v75 = *(&a1[239] + *(*a1 - 24));
        v137 = 257;
        v76 = llvm::IRBuilderBase::CreateCast((v69 + 1712), 39, v74, v75, v136);
        v142 = 257;
        v77 = llvm::IRBuilderBase::CreateAdd((v69 + 1712), v70, v76, v141);
        v78 = llvm::PointerType::get();
        v134[0] = "agc.gpe.vertex_buffer";
        v135 = 259;
        v79 = llvm::IRBuilderBase::CreateCast((v69 + 1712), 48, v77, v78, v134);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 27), v79);
      }

      v80 = a1 + *(*a1 - 24);
      v81 = EmulationStateCacheForCurrentFunction + 27;
    }

    else
    {
      llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
      if (!EmulationStateCacheForCurrentFunction[32])
      {
        v117 = a1 + *(*a1 - 24);
        v118 = EmulationStateCacheForCurrentFunction[8];
        v119 = *(v117 + 238);
        v120 = EmulationStateCacheForCurrentFunction[11];
        v143 = llvm::ConstantInt::get();
        v144 = llvm::ConstantInt::get();
        LOWORD(v152) = 257;
        llvm::Type::isOpaquePointerTy(*v120);
        v121 = llvm::IRBuilderBase::CreateGEP((v117 + 1712), TypeByName, v120, &v143, 2, &v148);
        v147 = 257;
        llvm::Type::isOpaquePointerTy(*v121);
        v122 = llvm::IRBuilderBase::CreateAlignedLoad(v117 + 214, v119, v121, 0, &__src);
        v123 = *(&a1[239] + *(*a1 - 24));
        v137 = 257;
        v124 = llvm::IRBuilderBase::CreateCast((v117 + 1712), 39, v122, v123, v136);
        v142 = 257;
        v125 = llvm::IRBuilderBase::CreateAdd((v117 + 1712), v118, v124, v141);
        v126 = llvm::PointerType::get();
        v134[0] = "agc.gpe.primitive_buffer";
        v135 = 259;
        v127 = llvm::IRBuilderBase::CreateCast((v117 + 1712), 48, v125, v126, v134);
        llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 30), v127);
      }

      v80 = a1 + *(*a1 - 24);
      v81 = EmulationStateCacheForCurrentFunction + 30;
    }

    goto LABEL_49;
  }

  if (a2 != 3)
  {
    llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
    if (!EmulationStateCacheForCurrentFunction[26])
    {
      v106 = a1 + *(*a1 - 24);
      v107 = EmulationStateCacheForCurrentFunction[8];
      v108 = *(v106 + 238);
      v109 = EmulationStateCacheForCurrentFunction[11];
      v143 = llvm::ConstantInt::get();
      v144 = llvm::ConstantInt::get();
      LOWORD(v152) = 257;
      llvm::Type::isOpaquePointerTy(*v109);
      v110 = llvm::IRBuilderBase::CreateGEP((v106 + 1712), TypeByName, v109, &v143, 2, &v148);
      v147 = 257;
      llvm::Type::isOpaquePointerTy(*v110);
      v111 = llvm::IRBuilderBase::CreateAlignedLoad(v106 + 214, v108, v110, 0, &__src);
      v112 = *(&a1[239] + *(*a1 - 24));
      v137 = 257;
      v113 = llvm::IRBuilderBase::CreateCast((v106 + 1712), 39, v111, v112, v136);
      v142 = 257;
      v114 = llvm::IRBuilderBase::CreateAdd((v106 + 1712), v107, v113, v141);
      v115 = llvm::PointerType::get();
      v134[0] = "agc.gpe.index_buffer";
      v135 = 259;
      v116 = llvm::IRBuilderBase::CreateCast((v106 + 1712), 48, v114, v115, v134);
      llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 24), v116);
    }

    v80 = a1 + *(*a1 - 24);
    v81 = EmulationStateCacheForCurrentFunction + 24;
    goto LABEL_49;
  }

  llvm::IRBuilderBase::SetInsertPoint((v44 + 1712), *(EmulationStateCacheForCurrentFunction[8] + 40), *(EmulationStateCacheForCurrentFunction[8] + 32));
  if (!EmulationStateCacheForCurrentFunction[23])
  {
    v45 = a1 + *(*a1 - 24);
    v46 = EmulationStateCacheForCurrentFunction[8];
    v47 = *(v45 + 238);
    v48 = EmulationStateCacheForCurrentFunction[11];
    v143 = llvm::ConstantInt::get();
    v144 = llvm::ConstantInt::get();
    LOWORD(v152) = 257;
    llvm::Type::isOpaquePointerTy(*v48);
    v49 = llvm::IRBuilderBase::CreateGEP((v45 + 1712), TypeByName, v48, &v143, 2, &v148);
    v147 = 257;
    llvm::Type::isOpaquePointerTy(*v49);
    v50 = llvm::IRBuilderBase::CreateAlignedLoad(v45 + 214, v47, v49, 0, &__src);
    v51 = *(&a1[239] + *(*a1 - 24));
    v137 = 257;
    v52 = llvm::IRBuilderBase::CreateCast((v45 + 1712), 39, v50, v51, v136);
    v142 = 257;
    v53 = llvm::IRBuilderBase::CreateAdd((v45 + 1712), v46, v52, v141);
    v54 = llvm::PointerType::get();
    v134[0] = "agc.gpe.vdm_stream";
    v135 = 259;
    v55 = llvm::IRBuilderBase::CreateCast((v45 + 1712), 48, v53, v54, v134);
    llvm::ValueHandleBase::operator=((EmulationStateCacheForCurrentFunction + 21), v55);
  }

  v56 = a1 + *(*a1 - 24);
  v57 = EmulationStateCacheForCurrentFunction + 21;
LABEL_39:
  v93 = llvm::ValueHandleBase::ValueHandleBase(&v148, 2u, v57);
  v94 = *(v56 + 238);
LABEL_50:
  v151 = v94;
  v128 = v150;
  if (v150 != -8192 && v150 != -4096 && v150)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v93);
  }

  v129 = a1 + *(*a1 - 24);
  v131 = v138;
  v132 = v139;
  if (v139)
  {
    llvm::MetadataTracking::track();
  }

  v133 = v140;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v131, (v129 + 1712));
  if (v132)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v139)
  {
    llvm::MetadataTracking::untrack();
  }

  return v128;
}

uint64_t AGCLLVMUserObjectShaderBase::buildQuadElement(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserObjectShaderBase::buildSimdGroupIndexInThreadgroup(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1632))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserObjectShaderBase::buildThreadIndexInSimdGroup(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1624))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserObjectShaderBase::buildQuadGroup(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadGroup(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserObjectShaderBase::buildGroupsPerThreadgroup<5u>(AGCLLVMUserObjectShaderBase *a1, llvm::Type *a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 0);
    v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, a3);
    v12 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 2);
  }

  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v9 + 1712), Mul, v10, v20);
  v14 = a1 + *(*a1 - 24);
  v15 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v20);
  v17 = llvm::ConstantInt::get();
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateLShr((v14 + 1712), Add, v17, v19);
}

uint64_t AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildThreadgroupDispatchSize(v7, &v11, a2, v3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserObjectShaderBase::buildLocalSize(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildLocalSize(v7, &v11, a2, v3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserObjectShaderBase::buildGroupsPerThreadgroup<2u>(AGCLLVMUserObjectShaderBase *a1, llvm::Type *a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 0);
    v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, a3);
    v12 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserObjectShaderBase::buildLocalSize(a1, a2, 2);
  }

  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v9 + 1712), Mul, v10, v20);
  v14 = a1 + *(*a1 - 24);
  v15 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v20);
  v17 = llvm::ConstantInt::get();
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateLShr((v14 + 1712), Add, v17, v19);
}

uint64_t AGCLLVMUserObjectShaderBase::buildGroupID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v7, &v11, a2, v3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserObjectShaderBase::buildLocalLinearID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserObjectShaderBase::buildLocalID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, uint64_t a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = (*(*v7 + 272))(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserObjectShaderBase::buildGlobalID(AGCLLVMUserObjectShaderBase *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildGlobalID(v7, &v11, a2, v3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMUserObjectShaderBase::setupShaderOutputs(AGCLLVMUserObjectShaderBase *this)
{
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t AGCLLVMUserObjectShaderBase::setupShaderInputs(AGCLLVMUserObjectShaderBase *this)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v6 = *(this + 21);
    v5 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v7 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v5 == v7)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0;
    v8 = this + 1704;
    do
    {
      if (*(v5 + 8))
      {
        v9 = *(v4 + 40);
        v10 = v9 ? (v9 - 24) : 0;
        AGCLLVMBuilder::SetInsertPoint(&v8[*(*this - 24)], v10, *(this + 5));
        v11 = *(v5 + 32);
        v12 = *(*(this + 10) + 8 * v11);
        if ((AGCLLVMUserShader::replaceInputArgument(this, v5, v11, v12) & 1) == 0)
        {
          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.payload"))
          {
            v33[0] = 2;
            if (*(v12 + 8) >= 3u)
            {
              do
              {
                if (*(this + 1148) || !parseMDInt("air.arg_type_size", v12, v33, this + 1148))
                {
                  v14 = parseMDInt("air.arg_type_align_size", v12, v33, this + 1149);
                  v13 = v33[0];
                  if ((v14 & 1) == 0)
                  {
                    v13 = ++v33[0];
                  }
                }

                else
                {
                  v13 = v33[0];
                }
              }

              while (v13 < *(v12 + 8));
            }

            v32 = v5;
          }

          else if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_count"))
          {
            v18 = *(*this - 24);
            VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(this, v15, v16, v17);
            AGCLLVMBuilder::truncateToSmall(&v8[v18], VertexAmpCount, *v5);
            llvm::Value::replaceAllUsesWith();
            *(this + 4620) = 1;
          }
        }
      }

      v5 += 40;
    }

    while (v5 != v7);
  }

  v20 = *(this + 1148);
  *(this + 1147) = v20;
  if (*(this + 4600))
  {
    v20 += 16;
    *(this + 1148) = v20;
    v21 = *(this + 1149);
    if (v21 <= 4)
    {
      v21 = 4;
    }

    *(this + 1149) = v21;
    *(this + 1151) = 16;
  }

  if (*(this + 4601) == 1)
  {
    *(this + 1148) = v20 + 16;
    v22 = *(this + 1149);
    if (v22 <= 4)
    {
      v22 = 4;
    }

    *(this + 1149) = v22;
  }

  if (v32)
  {
    (*(*this + 528))(this);
  }

  if ((*(*this + 504))(this) && *(this + 1148))
  {
    v23 = *(v4 + 48);
    if (v23)
    {
      v24 = (v23 - 24);
    }

    else
    {
      v24 = 0;
    }

    AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v24, *(this + 5));
    v25 = (this + *(*this - 24));
    v26 = v25[271];
    v27 = *(v26 + 1056);
    if (v27)
    {
      v28 = strlen(*(v26 + 1056));
    }

    else
    {
      v28 = 0;
    }

    v29 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>((v25 + 213), v27, v28, v25[231], v25[237], v25[237], v25[237]);
    v35[0] = llvm::ConstantInt::get();
    v35[1] = llvm::ConstantInt::get();
    v35[2] = llvm::ConstantInt::get();
    v30 = (this + *(*this - 24));
    v34 = 257;
    llvm::IRBuilderBase::CreateCall(v30 + 214, *(v29 + 24), v29, v35, 3, v33);
  }

  return 1;
}

uint64_t AGCLLVMUserObjectShaderBase::getVertexAmpCount(AGCLLVMUserObjectShaderBase *this, uint64_t a2, unsigned int a3, BOOL a4)
{
  if (*(this + 4621) == 1)
  {
    if (!*(this + 580))
    {
      v6 = llvm::User::operator new(0x58);
      v13 = "agc.driver_constants.amp_count";
      v14 = 259;
      v7 = llvm::GlobalVariable::GlobalVariable();
      *(v7 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v8 = this + *(*this - 24);
      v9 = *(v8 + 268);
      v10 = AGCLLVMBuilder::buildGlobalMetadata(v8 + 213, v6, 0x54u, 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v9, v10);
      llvm::ValueHandleBase::operator=((this + 4624), v6);
    }

    v11 = this + *(*this - 24);
    v12 = *(this + 580);
    v14 = 257;
    return AGCLLVMBuilder::CreateLoad((v11 + 1704), v12, &v13);
  }

  else
  {

    return llvm::ConstantInt::get();
  }
}

void AGCLLVMUserObjectShaderBase::addInitCompilePass(AGCLLVMUserObjectShaderBase *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderBase>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileUserObjectShaderBasePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x55)
  {
    v1 = v0;
  }

  else
  {
    v1 = 85;
  }

  v2 = &aStringrefLlvmG_14[v1];
  v3 = 85 - v1;
  if ((85 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 85 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserObjectShaderBasePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserObjectShaderBasePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderBase>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6B)
  {
    v1 = v0;
  }

  else
  {
    v1 = 107;
  }

  v2 = &aStringrefLlvmG_13[v1];
  v3 = 107 - v1;
  if ((107 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 107 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMUserObjectShader::buildNumGroups(AGCLLVMUserObjectShader *this, llvm::Type *a2, uint64_t a3)
{
  v6 = (*(*this + 512))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v16 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v15);
  v10 = llvm::ConstantInt::get();
  v14[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v10, v14);
  v12 = this + *(*this - 24);
  v16 = 257;
  return llvm::IRBuilderBase::CreateUDiv((v12 + 1712), Sub, v7, v15);
}

uint64_t AGCLLVMUserObjectShader::replaceBuiltins(AGCLLVMUserObjectShader *this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObjectShaderBase::replaceBuiltins(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v25, *v3);
    v31 = this;
    v25 = &unk_28255C528;
    v30[37] = v3;
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v5 = Function;
      v18 = v28;
      v6 = *(Function + 8);
      while (v6)
      {
        v7 = *(v6 + 24);
        v6 = *(v6 + 8);
        v28 = 0;
        llvm::IRBuilderBase::SetInsertPoint(v26, v7);
        llvm::UndefValue::get();
        v33 = 0;
        memset(v32, 0, sizeof(v32));
        v8 = llvm::CallBase::arg_end(v7) - v7 + 32 * (*(v7 + 5) & 0x7FFFFFF);
        if ((v8 & 0x1FFFFFFFE0) != 0)
        {
          v9 = (v8 >> 5);
          v10 = (v7 - 32 * (*(v7 + 5) & 0x7FFFFFF));
          v11 = v32;
          do
          {
            v12 = *v10;
            v10 += 4;
            *v11++ = v12;
            --v9;
          }

          while (v9);
        }

        if (llvm::FPMathOperator::classof(v7))
        {
          llvm::Instruction::getFastMathFlags(v7);
        }

        v13 = v31 + *(*v31 - 24);
        v22 = v27[2];
        llvm::IRBuilderBase::getCurrentDebugLocation(&v23, v26);
        v24 = v28;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v22, (v13 + 1712));
        if (v23)
        {
          llvm::MetadataTracking::untrack();
        }

        AGCLLVMUserObjectShader::buildSetMeshGridProperties(v31, *&v32[0], *(&v32[0] + 1), v14, v15);
        v16 = v31 + *(*v31 - 24);
        v19 = *(v16 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (v16 + 1712));
        v21 = *(v16 + 452);
        AGCLLVMBuilder::InsertPoint::restoreIP(&v19, v26);
        if (v20)
        {
          llvm::MetadataTracking::untrack();
        }

        if (*v7 != v30[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v7);
      }

      v28 = v18;
      llvm::Function::eraseFromParent(v5);
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v30);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v29);
    if (v26[0] != v27)
    {
      free(v26[0]);
    }
  }

  return v2;
}

uint64_t AGCLLVMUserObjectShader::buildSetMeshGridProperties(AGCLLVMUserObjectShader *this, llvm::Type **a2, llvm::Value *a3, uint64_t a4, llvm::Instruction *a5)
{
  v7 = this + 4096;
  v8 = (this + *(*this - 24));
  v9 = *(this + 572);
  v50 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v8 + 214, a2, v9, v49, a5);
  v12 = AGCLLVMBuilder::extendVector((this + *(*this - 24) + 1704), a3, 4, v11);
  v13 = this + *(*this - 24);
  v14 = *(v13 + 271);
  v46 = *(v13 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v13 + 1712));
  v48 = *(v13 + 452);
  (*(*v14 + 320))(v14, &v46, PointerCast, v12);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v7[504] == 1)
  {
    v15 = this + *(*this - 24);
    v16 = *(v15 + 271);
    v43 = *(v15 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v15 + 1712));
    v45 = *(v15 + 452);
    v17 = (*(*v16 + 344))(v16, &v43);
    v18 = llvm::PointerType::get();
    v50 = 257;
    v20 = llvm::IRBuilderBase::CreatePointerCast(v15 + 214, v17, v18, v49, v19);
    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v12, v20, 0, 0);
  }

  if (v7[505] == 1)
  {
    v21 = this + *(*this - 24);
    v22 = *(v21 + 236);
    v23 = *(v21 + 271);
    v40 = *(v21 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (v21 + 1712));
    v42 = *(v21 + 452);
    v24 = (*(*v23 + 344))(v23, &v40);
    v25 = llvm::ConstantInt::get();
    v50 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v21 + 1712), v22, v24, v25, v49);
    v27 = llvm::PointerType::get();
    v39 = 257;
    v29 = llvm::IRBuilderBase::CreatePointerCast(v21 + 214, GEP, v27, v38, v28);
    if (v41)
    {
      llvm::MetadataTracking::untrack();
    }

    for (i = 0; i != 3; ++i)
    {
      v31 = this + *(*this - 24);
      v32 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(v31 + 238), i);
      v33 = this + *(*this - 24);
      v34 = *(v33 + 238);
      v35 = llvm::ConstantInt::get();
      v50 = 257;
      v36 = llvm::IRBuilderBase::CreateGEP((v33 + 1712), v34, v29, v35, v49);
      llvm::IRBuilderBase::CreateAlignedStore(v31 + 214, v32, v36, 0, 0);
    }
  }

  return llvm::UndefValue::get();
}

uint64_t AGCLLVMUserObjectShader::setupShaderInputs(llvm::Function **this)
{
  AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
  v2 = this[21];
  if (*(v2 + 9))
  {
    llvm::Function::BuildLazyArguments(this[21]);
    v4 = this[21];
    v3 = *(v2 + 11);
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(this[21]);
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 11);
  }

  for (i = *(v2 + 11) + 40 * *(v2 + 12); v3 != i; v3 += 40)
  {
    v6 = *(this[10] + *(v3 + 32));
    if (v6 && isStringMDNode(*(v6 - 8 * *(v6 + 8) + 8), "air.mesh_grid_properties"))
    {
      ChildcountGlobal = AGCLLVMUserObjectShader::getOrCreateChildcountGlobal(this, v7, v8);
      v10 = *(*this - 3);
      v11 = *v3;
      v15 = 257;
      llvm::IRBuilderBase::CreatePointerCast((this + v10 + 1712), ChildcountGlobal, v11, v14, v12);
      llvm::Value::replaceAllUsesWith();
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObjectShader::getOrCreateChildcountGlobal(AGCLLVMUserObjectShader *this, uint64_t a2, unsigned int a3)
{
  result = *(this + 595);
  if (!result)
  {
    v5 = *(this + *(*this - 24) + 2040);
    v6 = llvm::User::operator new(0x58);
    llvm::Constant::getNullValue(v5, v7);
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    llvm::ValueHandleBase::operator=((this + 4744), v6);
    return *(this + 595);
  }

  return result;
}

void AGCLLVMUserObjectShader::addWrapperPostfix(llvm::Type **this, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  AGCLLVMUserObjectShader::getOrCreateChildcountGlobal(this, a2, a3);
  v16[0] = llvm::ConstantInt::get();
  v16[1] = llvm::ConstantInt::get();
  AGCLLVMObject::buildWGBarrier(this + *(*this - 3), v16, 2);
  v4 = this + *(*this - 3);
  v5 = *(v4 + 271);
  v13 = *(v4 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (v4 + 1712));
  v15 = *(v4 + 452);
  (*(*v5 + 336))(v5, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::FunctionType::get();
  v16[0] = "agc.object.write_childcount";
  v17 = 259;
  v7 = *(this + *(*this - 3) + 2136);
  v8 = llvm::User::operator new(0x78);
  MEMORY[0x20F331170](v8, v6, 7, 0xFFFFFFFFLL, v16, v7);
  llvm::Function::addFnAttr();
  v9 = (this + *(*this - 3));
  v17 = 257;
  llvm::IRBuilderBase::CreateCall(v9 + 214, *(v8 + 24), v8, 0, 0, v16);
  v10 = this + *(*this - 3);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (v10 + 1712));
  v12 = *(v10 + 452);
  v16[0] = "entry";
  v17 = 259;
  operator new();
}

void AGCLLVMUserObjectShader::addInitCompilePass(AGCLLVMUserObjectShader *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShader>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGObjectShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_16[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGObjectShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGObjectShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x67)
  {
    v1 = v0;
  }

  else
  {
    v1 = 103;
  }

  v2 = &aStringrefLlvmG_15[v1];
  v3 = 103 - v1;
  if ((103 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 103 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void AGCLLVMUserObjectShader::~AGCLLVMUserObjectShader(AGCLLVMUserObjectShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28255AC78;
  v5 = (this + 4784);
  *(this + 598) = &unk_28255AFE0;
  *(this + 811) = &unk_28255B0F0;
  v6 = *(this + 595);
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4744));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D7D0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28255AC78;
  v5 = (this + 4784);
  *(this + 598) = &unk_28255AFE0;
  *(this + 811) = &unk_28255B0F0;
  v6 = *(this + 595);
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4744));
  }

  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, &off_28255D7D0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

BOOL AGCLLVMPassThroughObjectShader::constructReply(AGCLLVMPassThroughObjectShader *this)
{
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v2 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
  v4 = flatbuffers::FlatBufferBuilder::EndTable(v2, v3);
  v5 = this + *(*this - 24);
  v5[4358] = 1;
  v6 = *(v5 + 1082);
  v7 = *(v5 + 1080) - *(v5 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 4288, 4, *(this + 25));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 4288, 6, *(this + 26));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 4288, 8, *(this + 27));
  LODWORD(v5) = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
  v8 = this + *(*this - 24);
  v9 = *(v8 + 1080);
  v8[4358] = 1;
  v10 = *(v8 + 1082);
  v11 = v9 - *(v8 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 4, *(this + 18));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 6, *(this + 19));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 8, *(this + 20));
  LODWORD(v8) = flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v11 + v10);
  v12 = this + *(*this - 24);
  v13 = *(v12 + 1080);
  v12[4358] = 1;
  v14 = *(v12 + 1082);
  v15 = v13 - *(v12 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v12 + 4288), 4, v5);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v12 + 4288), 6, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 8, *(this + 22));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 10, *(this + 23));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 12, *(this + 21));
  LODWORD(v5) = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v15 + v14);
  v16 = this + *(*this - 24);
  v17 = *(v16 + 1080);
  v16[4358] = 1;
  v18 = *(v16 + 1082);
  LODWORD(v12) = v17 - *(v16 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v16 + 4288), v4);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>((v16 + 4288), v5);
  v19 = *(*this - 24);
  v20 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v12 + v18);
  flatbuffers::FlatBufferBuilder::Finish((this + v19 + 4288), v20, v21);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  v22 = *this;
  v23 = this + *(*this - 24);
  v23[4454] = 1;
  v24 = *(v22 - 24);
  v25 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4384), *(v23 + 2208) - *(v23 + 2216) + *(v23 + 2212));
  flatbuffers::FlatBufferBuilder::Finish((this + v24 + 4384), v25, v26);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  v27 = (this + *(*this - 24));
  v28 = v27[104].__r_.__value_.__r.__words[2];
  if (v28)
  {
    v29 = v27[105].__r_.__value_.__r.__words[0] ? &v27[104].__r_.__value_.__r.__words[2] : &v27[128];
  }

  else
  {
    v29 = &v27[128];
  }

  v30 = (v29->__words[0] + *v29->__words[0]);
  v31 = (v30 + *(v30 - *v30 + 4));
  v32 = (v31 + *v31 + *(v31 + *v31 - *(v31 + *v31) + 8));
  if (v28)
  {
    v33 = v27 + 128;
    if (v27[105].__r_.__value_.__r.__words[0])
    {
      v33 = (v27 + 2512);
    }
  }

  else
  {
    v33 = v27 + 128;
  }

  v34 = 0;
  if (v33->__r_.__value_.__r.__words[0] && v33->__r_.__value_.__l.__size_)
  {
    v34 = (v33->__r_.__value_.__r.__words[0] + *v33->__r_.__value_.__l.__data_);
  }

  v35 = (v34 - *v34);
  if (*v35 >= 5u && (v36 = v35[2]) != 0)
  {
    v37 = (v34 + v36 + *(v34 + v36));
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v32 + *v32);
  v39 = (v37 - *v37);
  if (*v39 >= 0x3Du && (v40 = v39[30]) != 0)
  {
    v41 = *(v37 + v40);
  }

  else
  {
    v41 = 0;
  }

  if (v38 > 0x20)
  {
    return 0;
  }

  v42 = *(v27[90].__r_.__value_.__l.__size_ + 952);

  return validateUserLocalMemoryUsage(v41, v42, v27 + 69);
}

void *virtual thunk toAGCLLVMDriverShader::debugName@<X0>(AGCLLVMDriverShader *this@<X0>, void *a2@<X8>)
{
  v3 = this + *(*this - 160) + *(*(this + *(*this - 160)) - 24);
  v4 = (*(*v3 + 48))(v3);

  return std::string::basic_string[abi:nn200100]<0>(a2, v4);
}

void AGCLLVMPassThroughObjectShader::getCompilationKeyDescription(AGCLLVMPassThroughObjectShader *this@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v6, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(__p, "mesh_needs_tgs");
  std::to_string(&v8, *(this + 96));
  _agcFieldString<std::string>(&v9, __p, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  _agcGroupWithHeader(a2, v6, &v9, 1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void virtual thunk toAGCLLVMPassThroughObjectShader::~AGCLLVMPassThroughObjectShader(AGCLLVMPassThroughObjectShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 112));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 112));
}

void AGCLLVMPassThroughObjectShader::~AGCLLVMPassThroughObjectShader(AGCLLVMPassThroughObjectShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 112));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 112));
}

void *AGCLLVMDriverShader::debugName@<X0>(AGCLLVMDriverShader *this@<X0>, void *a2@<X8>)
{
  v3 = (*(*(this + *(*this - 24)) + 48))(this + *(*this - 24));

  return std::string::basic_string[abi:nn200100]<0>(a2, v3);
}

void AGCLLVMUserObjectShaderBase::AGCLLVMUserObjectShaderBase(AGCLLVMUserObjectShaderBase *this, AGCLLVMCtx *a2, llvm::Module *a3, char *a4)
{
  v6 = AGCLLVMUserShader::AGCLLVMUserShader(this, a2 + 1, a3, a4, &default_cs, 0, 0);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 24)) = *(a2 + 7);
  *(this + *(*this - 24) + 1704) = *(a2 + 8);
  *(this + 567) = llvm::PointerType::get();
  *(this + 568) = llvm::PointerType::get();
  *(this + 569) = llvm::PointerType::get();
  *(this + 570) = llvm::PointerType::get();
  *(this + 571) = llvm::PointerType::get();
  *(this + 572) = llvm::PointerType::get();
  *(this + 4584) = xmmword_20E70C590;
  *(this + 4604) = 0u;
  *(this + 2300) = 0;
  *(this + 2310) = 0;
  *(this + 578) = 4;
  *(this + 4632) = 0u;
  *(this + 4648) = 0u;
  *(this + 4664) = 0u;
  *(this + 1170) = 1065353216;
  *(this + 586) = 4;
  *(this + 4696) = 0u;
  *(this + 589) = 4;
  *(this + 295) = 0u;
  Operand = llvm::NamedMDNode::getOperand(*(this + 7));
  v14 = 3;
  if (*(Operand + 8) >= 4u)
  {
    v9 = Operand;
    do
    {
      v10 = parseMDUint3(v9, "air.work_group_size", &v14, this + 1152);
      v11 = v14;
      if ((v10 & 1) == 0)
      {
        v12 = *(v9 - 8 * *(v9 + 8) + 8 * v14);
        v13 = *v12;
        if (v13 <= 0x22 && ((0x7FFFFFFF0uLL >> v13) & 1) != 0 && (v16 = 0, *(v12 + 2)))
        {
          while (1)
          {
            v15 = 0;
            if (parseMDInt("air.max_work_group_size", v12, &v16, &v15))
            {
              break;
            }

            if (++v16 >= *(v12 + 2))
            {
              goto LABEL_9;
            }
          }

          v14 = ++v11;
          *(this + 1146) = v15;
        }

        else
        {
LABEL_9:
          v14 = ++v11;
        }
      }
    }

    while (v11 < *(v9 + 8));
  }
}

uint64_t AGCLLVMUserObjectShaderBase::getVertexAmpId(int8x8_t *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (this[577].i8[5] == 1)
  {
    EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(this);
    result = *(EmulationStateCacheForCurrentFunction + 2);
    if (!result)
    {
      v7 = this + *(*this - 24);
      v29 = *(v7 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (v7 + 1712));
      v31 = *(v7 + 452);
      v8 = this + *(*this - 24);
      v9 = *(*(*(v8 + 220) + 56) + 80);
      if (v9)
      {
        v10 = (v9 - 24);
      }

      else
      {
        v10 = 0;
      }

      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v10);
      llvm::IRBuilderBase::SetInsertPoint((v8 + 1712), v10, FirstInsertionPt);
      VertexAmpCount = AGCLLVMUserObjectShaderBase::getVertexAmpCount(this, v12, v13, v14);
      v15 = this + *(*this - 24);
      v16 = *(v15 + 271);
      v17 = *(v16 + 1600);
      if (v17)
      {
        v18 = strlen(*(v16 + 1600));
      }

      else
      {
        v18 = 0;
      }

      v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v15 + 1704), v17, v18, *(v15 + 238), *(v15 + 238));
      v20 = (this + *(*this - 24));
      v27 = 257;
      v21 = llvm::IRBuilderBase::CreateCall(v20 + 214, *(v19 + 24), v19, &VertexAmpCount, 1, v26);
      llvm::ValueHandleBase::operator=(EmulationStateCacheForCurrentFunction, v21);
      v22 = this + *(*this - 24);
      v23 = v29;
      v24 = v30;
      if (v30)
      {
        llvm::MetadataTracking::track();
      }

      v25 = v31;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v23, (v22 + 1712));
      if (v24)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v30)
      {
        llvm::MetadataTracking::untrack();
      }

      return *(EmulationStateCacheForCurrentFunction + 2);
    }
  }

  else
  {

    return llvm::ConstantInt::get();
  }

  return result;
}

void AGCLLVMUserObjectShaderBase::mutateValueAddressSpace(AGCLLVMUserObjectShaderBase *this, llvm::Value *a2, unsigned int a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*(*a2 + 8) != 15)
  {
    v3 = 0;
  }

  v14 = *(v3 + 8);
  v17 = v21;
  v18 = v21;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 16;
  v20 = 0;
  if (v4)
  {
    do
    {
      v16 = v4[3];
      std::vector<llvm::User *>::push_back[abi:nn200100](&v22, &v16);
      v4 = v4[1];
    }

    while (v4);
    v4 = v22;
    v5 = v23;
    while (v4 != v5)
    {
      v7 = *--v5;
      v6 = v7;
      v23 = v5;
      if (v7)
      {
        imp = llvm::SmallPtrSetImplBase::find_imp(&v17, v6);
        if (v18 == v17)
        {
          v9 = (&v19 + 4);
        }

        else
        {
          v9 = &v19;
        }

        v10 = &v18[*v9];
        if (v10 != imp)
        {
          while (*imp >= 0xFFFFFFFFFFFFFFFELL)
          {
            if (++imp == v10)
            {
              imp = v10;
              break;
            }
          }
        }

        if (v18 == v17)
        {
          v11 = (&v19 + 4);
        }

        else
        {
          v11 = &v19;
        }

        if (&v18[*v11] == imp)
        {
          llvm::SmallPtrSetImplBase::insert_imp(&v17, v6);
          if (llvm::MemCpyInst::classof(v6))
          {
            llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v6);
            llvm::AttributeList::getParamAlignment((v6 + 8));
            llvm::AttributeList::getParamAlignment((v6 + 8));
            llvm::IRBuilderBase::CreateMemTransferInst();
            llvm::Instruction::eraseFromParent(v6);
          }

          else if (*(*v6 + 8) == 15 && (*(*v6 + 8) ^ v14) <= 0xFF)
          {
            *v6 = llvm::PointerType::getWithSamePointeeType(*v6, 1, a3);
            v12 = v6[1];
            if (v12)
            {
              do
              {
                v16 = *(v12 + 24);
                std::vector<llvm::User *>::push_back[abi:nn200100](&v22, &v16);
                v12 = *(v12 + 8);
              }

              while (v12);
              v4 = v22;
              v5 = v23;
            }
          }
        }
      }
    }
  }

  *a2 = llvm::PointerType::getWithSamePointeeType(*a2, 1, a3);
  if (v18 != v17)
  {
    free(v18);
  }

  if (v4)
  {
    v23 = v4;
    operator delete(v4);
  }
}

void std::vector<llvm::User *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

BOOL llvm::MemCpyInst::classof(uint64_t a1)
{
  if (*(a1 + 16) != 84)
  {
    return 0;
  }

  v1 = *(a1 - 32);
  if (!v1 || *(v1 + 16) || *(v1 + 24) != *(a1 + 72) || (*(v1 + 33) & 0x20) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 36);
  return v3 == 194 || v3 == 196;
}

uint64_t llvm::PointerType::getWithSamePointeeType(llvm::PointerType **this, llvm::PointerType *a2, unsigned int a3)
{
  if (this[3])
  {
    return llvm::PointerType::get();
  }

  else
  {
    return llvm::PointerType::get(*this, a2);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(AGCLLVMUserObjectShaderBase *this, int a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  v8 = 0;
  *v3 = 0u;
  *__p = 0u;
  v5 = 1065353216;
  operator new();
}

uint64_t std::__function::__value_func<llvm::Type * ()(llvm::Type *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<llvm::Type * ()(llvm::Type *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(v3, v4);
}

uint64_t std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v7);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::~StringMap(v3, v4, v5, v6);
}

uint64_t llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(*v8, v8, *v8 + 9);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3>,llvm::Type * ()(llvm::Type *)>::operator()(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(v2 + 8);
  switch(v3)
  {
    case 14:
      v7 = a1[3];
      v9 = v2;
      v5 = *(v7 + 24);
      if (v5)
      {
        goto LABEL_5;
      }

LABEL_12:
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3>,llvm::Type * ()(llvm::Type *)>::destroy_deallocate(v8);
      return;
    case 16:
      v6 = *(a1[2] + 24);

      std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(v6, v2);
      break;
    case 15:
      v4 = a1[1];
      v9 = v2;
      v5 = *(v4 + 24);
      if (v5)
      {
LABEL_5:
        (*(*v5 + 48))(v5, &v9);
        return;
      }

      goto LABEL_12;
  }
}

__n128 std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_3>,llvm::Type * ()(llvm::Type *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28255C448;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

llvm::Type *std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2>,llvm::PointerType * ()(llvm::PointerType *)>::operator()(uint64_t a1, llvm::Type **a2)
{
  v3 = *a2;
  v4 = *(*a2 + 2);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(v3 + 2) + 8);
  }

  v5 = v4 >> 8;
  if (llvm::Type::isOpaquePointerTy(*a2))
  {
    if (v5 == **(a1 + 8))
    {
      v7 = **(a1 + 16);

      return llvm::PointerType::getWithSamePointeeType(v3, v7, v6);
    }

    return v3;
  }

  v9 = std::function<llvm::Type * ()(llvm::Type *)>::operator()(*(*(a1 + 24) + 24), **(v3 + 2));
  if (v5 != **(a1 + 8) && !v9)
  {
    return 0;
  }

  return llvm::PointerType::get();
}

__n128 std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_2>,llvm::PointerType * ()(llvm::PointerType *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28255C400;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1>,llvm::FunctionType * ()(llvm::FunctionType *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v14[0] = v15;
  v14[1] = 0x800000000;
  v4 = *(v3 + 16);
  v5 = *v4;
  v6 = *(v3 + 12);
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = v4 + 1;
    v9 = 8 * v6 - 8;
    do
    {
      v10 = std::function<llvm::Type * ()(llvm::Type *)>::operator()(*(*(a1 + 8) + 24), *v8);
      if (v10)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, v10);
        v7 = 1;
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, *v8);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  v11 = std::function<llvm::Type * ()(llvm::Type *)>::operator()(*(*(a1 + 8) + 24), v5);
  if (v11 || (v7 & 1) != 0)
  {
    v12 = llvm::FunctionType::get();
  }

  else
  {
    v12 = 0;
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  return v12;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_1>,llvm::FunctionType * ()(llvm::FunctionType *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28255C3B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0>,llvm::StructType * ()(llvm::StructType *)>::operator()(uint64_t a1, llvm::StructType **a2, unsigned int a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v30 = v4;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v6);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      if (v9 >= *&v6)
      {
        v11 = v9 % *&v6;
      }
    }

    else
    {
      v11 = v9 & (*&v6 - 1);
    }

    v12 = *(*v5 + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == v4)
          {
            v31[0] = &v30;
            return std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v5, v4, v31)[3];
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v6)
            {
              v14 %= *&v6;
            }
          }

          else
          {
            v14 &= *&v6 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    v31[0] = &v30;
    v25 = 0;
    std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v5, v4, v31)[3] = 0;
    return v25;
  }

  v31[0] = v32;
  v31[1] = 0x800000000;
  v15 = *(v4 + 12);
  if (!v15)
  {
LABEL_38:
    __p[0] = &v30;
    v25 = 0;
    std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v5, v4, __p)[3] = 0;
    goto LABEL_44;
  }

  v16 = 0;
  v17 = *(v4 + 16);
  v18 = &v17[v15];
  do
  {
    while (1)
    {
      v19 = *v17;
      v20 = *(*v17 + 2);
      if (v20 == 16)
      {
        break;
      }

      if (v20 != 15)
      {
        goto LABEL_31;
      }

      if ((v20 & 0xFE) == 0x12)
      {
        v20 = *(*v19[2] + 8);
      }

      if (**(a1 + 16) != v20 >> 8)
      {
        goto LABEL_31;
      }

      v21 = llvm::PointerType::getWithSamePointeeType(*v17, **(a1 + 24), a3);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, v21);
      ++v17;
      v16 = 1;
      if (v17 == v18)
      {
        goto LABEL_33;
      }
    }

    v19 = std::function<llvm::StructType * ()(llvm::StructType *)>::operator()(*(*(a1 + 32) + 24), v19);
    v22 = v19 != 0;
    if (!v19)
    {
      v19 = *v17;
    }

    v16 |= v22;
LABEL_31:
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, v19);
    ++v17;
  }

  while (v17 != v18);
  if ((v16 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v4 = v30;
    goto LABEL_38;
  }

LABEL_33:
  if ((*(v30 + 9) & 4) != 0 || !*(v30 + 3))
  {
    v25 = llvm::StructType::get();
  }

  else
  {
    Name = llvm::StructType::getName(v30);
    if (Name)
    {
      std::string::basic_string[abi:nn200100](__p, Name, v24);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v29 = 0;
    }

    llvm::StructType::setName();
    v25 = llvm::StructType::create();
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = *(a1 + 8);
  __p[0] = &v30;
  std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(v26, v30, __p)[3] = v25;
LABEL_44:
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v25;
}

void *std::__hash_table<std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::__unordered_map_hasher<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::hash<llvm::StructType *>,std::equal_to<llvm::StructType *>,true>,std::__unordered_map_equal<llvm::StructType *,std::__hash_value_type<llvm::StructType *,llvm::StructType *>,std::equal_to<llvm::StructType *>,std::hash<llvm::StructType *>,true>,std::allocator<std::__hash_value_type<llvm::StructType *,llvm::StructType *>>>::__emplace_unique_key_args<llvm::StructType *,std::piecewise_construct_t const&,std::tuple<llvm::StructType * const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

__n128 std::__function::__func<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0,std::allocator<AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(unsigned int,unsigned int)::$_0>,llvm::StructType * ()(llvm::StructType *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28255C370;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void AGCLLVMUserObjectShaderBase::replaceEmulatedPayloadBufferAccesses(AGCLLVMUserObjectShaderBase *this, llvm::PointerType ***a2, llvm::Value *a3)
{
  v6 = this + *(*this - 24);
  v7 = llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v6 + 1704), "agc.gpe.get_payload_buffer", 26, v7);
  v9 = this + *(*this - 24);
  v10 = *(v9 + 236);
  v29 = 257;
  v11 = llvm::IRBuilderBase::CreateCall(v9 + 214, *(inserted + 24), inserted, 0, 0, v28);
  v12 = this + *(*this - 24);
  v13 = llvm::ConstantInt::get();
  v27 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v12 + 1712), v13, a3, v26);
  v25 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v9 + 1712), v10, v11, Mul, v24);
  if (*(this + 4601) == 1)
  {
    v17 = this + *(*this - 24);
    v18 = *(v17 + 236);
    v19 = llvm::ConstantInt::get();
    v29 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v17 + 1712), v18, GEP, v19, v28);
  }

  v20 = (this + *(*this - 24));
  v21 = llvm::PointerType::getWithSamePointeeType(*a2, 1, v15);
  v29 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v20 + 214, GEP, v21, v28, v22);
  AGCLLVMUserObjectShaderBase::mutateValueAddressSpace(this, a2, v23);
  llvm::Value::replaceAllUsesWith();
  AGCLLVMUserObjectShaderBase::mutateAllFunctionAddressSpace(this, 6, 1);
}

uint64_t AGCLLVMUserObjectShaderBase::accumulateAPIMeshSize(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v18 = 0;
  v7 = *(result + 8);
  if (!v7)
  {
    v15 = 0;
LABEL_19:
    a3 = a4;
    goto LABEL_20;
  }

  v9 = result;
  v17 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 10;
  do
  {
    result = isStringMDNode(*(v9 - 8 * v7 + 8 * v11), "air.shared");
    if (result)
    {
      v10 = 1;
    }

    else if (isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8 * v11), "air.arg_type_name"))
    {
      String = llvm::MDString::getString(*(v9 - 8 * *(v9 + 8) + 8 * ++v11));
      result = AGCLLVMBuilder::getComponentType(String, v14, &v18);
      v12 = result;
    }

    else
    {
      result = isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8 * v11), "air.primitive_culled");
      if (result)
      {
        return result;
      }
    }

    ++v11;
    v7 = *(v9 + 8);
  }

  while (v11 < v7);
  if (v12 <= 9)
  {
    if (((1 << v12) & 0x89) != 0)
    {
      v7 = v18;
      v15 = 4 * v18;
      goto LABEL_18;
    }

    if (((1 << v12) & 0x112) != 0)
    {
      v7 = v18;
      v15 = 2 * v18;
      goto LABEL_18;
    }

    if (((1 << v12) & 0x224) != 0)
    {
      v15 = v18;
      v7 = v18;
      goto LABEL_18;
    }
  }

  v15 = 0;
  v7 = v18;
LABEL_18:
  a4 = v17;
  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v16 = (*(a3 + 4 * a2) + v15);
  *(a3 + 4 * a2) = v16 + v15 + ~((v16 - 1) % v15);
  *a5 += v7;
  return result;
}

BOOL AGCLLVMUserObjectShaderSW::constructReply(AGCLLVMUserObjectShaderSW *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = this + *(*this - 24);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 4, *(this + 1152));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 6, *(this + 1153));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 8, *(this + 1154));
    LODWORD(v4) = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    v7 = this + *(*this - 24);
    v8 = *(v7 + 1080);
    v7[4358] = 1;
    v9 = *(v7 + 1082);
    v10 = v8 - *(v7 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 4, *(this + 1270));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 6, *(this + 1270));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 8, *(this + 1270));
    LODWORD(v7) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v10 + v9);
    v11 = this + *(*this - 24);
    v12 = *(v11 + 1080);
    v11[4358] = 1;
    v13 = *(v11 + 1082);
    v14 = v12 - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 4, v4);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v11 + 4288), 6, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 8, *(this + 1148));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 10, *(this + 1149));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 12, *(this + 1146));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v11 + 4288, 14, *(this + 12), 0);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v14 + v13);
    v16 = this + *(*this - 24);
    v17 = *(*(v16 + 271) + 960);
    v16[4358] = 1;
    v18 = *(v16 + 1080);
    v19 = *(v16 + 1084);
    v20 = *(v16 + 1082);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v16 + 4288, 12, v17);
    if (v16[4368] == 1)
    {
      v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 14, v21);
    }

    v22 = v18 - v19;
    v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 10, v23);
    if (v16[4368] == 1)
    {
      v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 8, v24);
      if (v16[4368])
      {
        v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 6, v25);
      }
    }

    v26 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v22 + v20);
    v27 = this + *(*this - 24);
    v27[4358] = 1;
    v28 = flatbuffers::FlatBufferBuilder::EndTable((v27 + 4288), *(v27 + 2160) - *(v27 + 2168) + *(v27 + 1082));
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v28, v29);
    v30 = this + *(*this - 24);
    v30[4454] = 1;
    v31 = *(v30 + 1106);
    v32 = *(v30 + 1104) - *(v30 + 1108);
    if (v30[4464] == 1)
    {
      v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v30 + 4384), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v30 + 4384, 4, v33);
      if (v30[4464])
      {
        v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v30 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v30 + 4384, 6, v34);
      }
    }

    v35 = flatbuffers::FlatBufferBuilder::EndTable((v30 + 4384), v32 + v31);
    v36 = this + *(*this - 24);
    v36[4358] = 1;
    v37 = *(v36 + 1082);
    v38 = *(v36 + 1080) - *(v36 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v36 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ObjectShaderInfo>((v36 + 4288), v15);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v36 + 4288), v26);
    v39 = *(*this - 24);
    v40 = flatbuffers::FlatBufferBuilder::EndTable((v36 + 4288), v38 + v37);
    flatbuffers::FlatBufferBuilder::Finish((this + v39 + 4288), v40, v41);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v42 = this + *(*this - 24);
    v42[4454] = 1;
    v43 = *(v42 + 1106);
    v44 = *(v42 + 1104) - *(v42 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v42 + 4384), v35);
    v45 = *(*this - 24);
    v46 = flatbuffers::FlatBufferBuilder::EndTable((v42 + 4384), v44 + v43);
    flatbuffers::FlatBufferBuilder::Finish((this + v45 + 4384), v46, v47);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));

    return AGCLLVMUserObjectShaderBase::validateReply(this);
  }

  return result;
}

void AGCLLVMUserObjectShaderSW::getCompilationKeyDescription(AGCLLVMUserObjectShaderSW *this@<X0>, std::string *a2@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = *(this + 592);
  std::string::basic_string[abi:nn200100]<0>(&v54, "AGCObjectContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v52, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v55);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v55.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v55.__r_.__value_.__r + *(v55.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v55.__r_.__value_.__r + *(v55.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(v68, v52, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v55.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v55.__r_.__value_.__r.__words + *(v55.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v55.__r_.__value_.__r.__words[2] = v6;
  v56 = MEMORY[0x277D82878] + 16;
  if (v58 < 0)
  {
    operator delete(v57[7].__locale_);
  }

  v56 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v59);
  std::string::basic_string[abi:nn200100]<0>(v50, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v68[1], v50, *(v3 + 5));
  std::string::basic_string[abi:nn200100]<0>(v48, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v68[2], v48, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v46, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v68[3], v46, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v44, "customBorderColor");
  _agcFieldString<unsigned int>(&v68[4], v44, v3[2] & 1);
  std::string::basic_string[abi:nn200100]<0>(v42, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v68[5], v42, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v40, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v68[6], v40, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v38, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v68[7], v38, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v36, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v68[8], v36, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v34, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v68[9], v34, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v32, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v68[10], &v32, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v30, "enableStackShadow");
  _agcFieldString<unsigned int>(&v68[11], v30, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v28, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v68[12], v28, (*(v3 + 3) >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v26, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v68[13], v26, (*(v3 + 3) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v24, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v68[14], v24, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v22, "meshNeedsTGCounts");
  _agcFieldString<unsigned int>(&v68[15], v22, (*(v3 + 4) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v20, "meshNeedsOSGridPosition");
  _agcFieldString<unsigned int>(&v68[16], v20, (*(v3 + 4) >> 2) & 1);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v66 = v54;
  }

  _agcIndentedLine(&__p, &v66, 0);
  std::string::basic_string[abi:nn200100]<0>(v61, "{");
  _agcIndentedLine(&v63, v61, 0);
  if ((v65 & 0x80u) == 0)
  {
    v7 = &v63;
  }

  else
  {
    v7 = v63;
  }

  if ((v65 & 0x80u) == 0)
  {
    v8 = v65;
  }

  else
  {
    v8 = v64;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v65 < 0)
  {
    operator delete(v63);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 17; ++i)
  {
    v12 = &v68[i];
    if (SHIBYTE(v68[i].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12->__r_.__value_.__l.__data_, v12->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *v12;
    }

    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v60, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v60 = __p;
    }

    _agcIndentedLine(&v63, &v60, 1);
    if ((v65 & 0x80u) == 0)
    {
      v14 = &v63;
    }

    else
    {
      v14 = v63;
    }

    if ((v65 & 0x80u) == 0)
    {
      v15 = v65;
    }

    else
    {
      v15 = v64;
    }

    std::string::append(&v55, v14, v15);
    if (v65 < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "}");
  _agcIndentedLine(&__p, &v63, 0);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v55;
  }

  else
  {
    v16 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  v18 = std::string::insert(&__p, 0, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v19 = 408;
  do
  {
    if (SHIBYTE(v68[v19 / 0x18 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__r.__words[v19 / 8 + 1]);
    }

    v19 -= 24;
  }

  while (v19);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMUserObjectShaderSW::~AGCLLVMUserObjectShaderSW(AGCLLVMUserObjectShaderSW *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255C548;
  v1[637] = &unk_28255C8B0;
  v1[850] = &unk_28255C9C0;
  v2 = v1[634];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 632));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v1 + 593));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, off_28255C9D0, v4, v5);
  AGCLLVMObject::~AGCLLVMObject((v1 + 637));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_28255C548;
  v1[637] = &unk_28255C8B0;
  v1[850] = &unk_28255C9C0;
  v2 = v1[634];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 632));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((v1 + 593));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(v1, off_28255C9D0, v4, v5);

  AGCLLVMObject::~AGCLLVMObject((v1 + 637));
}

void AGCLLVMUserObjectShaderSW::replacePayloadBufferAccesses(AGCLLVMUserObjectShaderSW *this, llvm::PointerType ***a2)
{
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "agc.gpe.get_payload_id", 22, *(this + *(*this - 24) + 1904));
  v5 = (this + *(*this - 24));
  v8 = 257;
  v6 = llvm::IRBuilderBase::CreateCall(v5 + 214, *(inserted + 24), inserted, 0, 0, v7);
  AGCLLVMUserObjectShaderBase::replaceEmulatedPayloadBufferAccesses(this, a2, v6);
}

uint64_t AGCLLVMUserObjectShaderSW::buildNumGroups(AGCLLVMUserObjectShaderSW *this, llvm::Type *a2, uint64_t a3)
{
  v6 = (*(*this + 512))(this);
  v7 = AGCLLVMUserObjectShaderBase::buildDispatchLocalSize(this, a2, a3);
  v8 = this + *(*this - 24);
  v16 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v15);
  v10 = llvm::ConstantInt::get();
  v14[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v10, v14);
  v12 = this + *(*this - 24);
  v16 = 257;
  return llvm::IRBuilderBase::CreateUDiv((v12 + 1712), Sub, v7, v15);
}

uint64_t AGCLLVMUserObjectShaderSW::buildGlobalSize(llvm::Type ***this, llvm::Type *a2, unsigned int a3)
{
  if (!this[562])
  {
    v5 = llvm::PointerType::get();
    v6 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 464))();
    v37[0] = "agc.indirect_wg_size_buffer_pointer.";
    v38 = v6;
    v39 = 2051;
    v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 464))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v5, v37, v7, 0xCu, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 560), GlobalBufferBinding);
  }

  v9 = *(*this - 3) + this;
  v10 = this[562];
  v39 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), v10, v37);
  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v39 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v37);
  v16 = *(*this - 3) + this;
  v39 = 257;
  v17 = AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v37);
  v36 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 38, v17, a2, v35);
  if (!this[565])
  {
    v19 = llvm::PointerType::get();
    v20 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v37[0] = "agc.indirect_wg_count_buffer_pointer.";
    v38 = v20;
    v39 = 2051;
    v21 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v22 = AGCLLVMUserObject::createGlobalBufferBinding(this, v19, v37, v21, 0xCu, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 563), v22);
  }

  v23 = *(*this - 3) + this;
  v24 = this[565];
  v39 = 257;
  v25 = AGCLLVMBuilder::CreateLoad((v23 + 1704), v24, v37);
  v26 = *(*this - 3) + this;
  v27 = *(v26 + 238);
  v28 = llvm::ConstantInt::get();
  v39 = 257;
  v29 = llvm::IRBuilderBase::CreateGEP((v26 + 1712), v27, v25, v28, v37);
  v30 = *(*this - 3) + this;
  v39 = 257;
  v31 = AGCLLVMBuilder::CreateLoad((v30 + 1704), v29, v37);
  v36 = 257;
  v32 = llvm::IRBuilderBase::CreateCast((v30 + 1712), 38, v31, a2, v35);
  v33 = *(*this - 3) + this;
  v39 = 257;
  return llvm::IRBuilderBase::CreateMul((v33 + 1712), Cast, v32, v37);
}

uint64_t AGCLLVMUserObjectShaderSW::replacePreRuntimeLinkBuiltins(AGCLLVMUserObjectShaderSW *this)
{
  v13[42] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v9, *v2);
  v13[41] = this;
  v9 = &unk_28255D760;
  v13[37] = v2;
  v4 = 1;
  v5 = AGCLLVMUserObjectShaderSW::buildSetMeshGridProperties;
  v6 = 0;
  v7 = 5;
  v8 = 0;
  AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderSW>::doReplacement(&v9, "air.set_threadgroups_per_grid_mesh_properties", 45, &v4);
  v4 = 1;
  v5 = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID;
  v6 = 0;
  v7 = 1;
  v8 = 0;
  AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderSW>::doReplacement(&v9, "agc.gpe.get_payload_id", 22, &v4);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v13);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v12);
  if (v10 != &v11)
  {
    free(v10);
  }

  return 1;
}

llvm::Function *AGCLLVMAirBuiltinReplacement<AGCLLVMUserObjectShaderSW>::doReplacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = *MEMORY[0x277D85DE8];
  result = llvm::Module::getFunction();
  if (result)
  {
    v7 = *(a4 + 24);
    v80 = result;
    if (v7 == 12)
    {
      for (i = *(result + 1); i; *(a1 + 64) = 0)
      {
        v11 = *(i + 24);
        i = *(i + 8);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v11);
        v12 = *(a1 + 464) + *(**(a1 + 464) - 24);
        *v94 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v94[2], (a1 + 8));
        LODWORD(v94[3]) = *(a1 + 104);
        AGCLLVMBuilder::InsertPoint::restoreIP(v94, v12 + 1712);
        if (v94[2])
        {
          llvm::MetadataTracking::untrack();
        }

        v13 = *(a4 + 8);
        v14 = *(a4 + 16);
        v15 = (*(a1 + 464) + (v14 >> 1));
        if (v14)
        {
          v13 = *(*v15 + v13);
        }

        v13(v15, v11);
        *(a1 + 56) = 0;
      }

      return llvm::Function::eraseFromParent(v80);
    }

    if (v7 == 11)
    {
      v8 = *(a4 + 8);
      if (v8)
      {
        v9 = strlen(*(a4 + 8));
        v94[0] = &v94[3];
        *&v94[1] = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v94, v8, &v8[v9]);
      }

      else
      {
        v94[2] = 64;
        v94[0] = &v94[3];
        v94[1] = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v94, ".", "");
      if (v94[2] < v94[1])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (v94[0] != &v94[3])
      {
        free(v94[0]);
      }

      return llvm::Function::eraseFromParent(v80);
    }

    v16 = **(*(result + 3) + 16);
    v17 = ((*(v16 + 8) & 0xFE) == 18) & *(a4 + 29);
    if (v17 == 1)
    {
      v18 = *(v16 + 32);
    }

    else
    {
      v18 = 1;
    }

    v81 = v18;
    v79 = *(a1 + 104);
    v19 = *(result + 1);
    if (!v19)
    {
LABEL_112:
      *(a1 + 104) = v79;
      return llvm::Function::eraseFromParent(v80);
    }

    v83 = a4;
    while (1)
    {
      v20 = *(v19 + 24);
      v21 = *(v19 + 8);
      if (*a4 == 1)
      {
        v22 = 0;
      }

      else
      {
        if (*a4 != 2)
        {
          goto LABEL_23;
        }

        v22 = 121;
      }

      *(a1 + 104) = v22;
LABEL_23:
      v82 = v21;
      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v20);
      v23 = llvm::UndefValue::get();
      if (v81)
      {
        for (j = 0; j != v81; ++j)
        {
          v84 = v23;
          v96 = 0;
          v95 = 0u;
          memset(v94, 0, sizeof(v94));
          v25 = llvm::CallBase::arg_end(v20) - v20 + 32 * (*(v20 + 5) & 0x7FFFFFF);
          if ((v25 & 0x1FFFFFFFE0) != 0)
          {
            v26 = (v25 >> 5);
            v27 = v94;
            v28 = v20;
            do
            {
              v29 = (v28 - 32 * (*(v20 + 5) & 0x7FFFFFF));
              v30 = *v29;
              *v27 = *v29;
              if (v17 && (*(*v30 + 8) & 0xFE) == 0x12)
              {
                v93 = 257;
                v31 = llvm::ConstantInt::get();
                *v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v30, v31, &PrimitiveSizeInBits);
              }

              ++v27;
              v28 = (v28 + 32);
              --v26;
            }

            while (v26);
          }

          if (*(v83 + 28))
          {
            v32 = *v94[0];
            if ((*(*v94[0] + 8) & 0xFE) == 0x12)
            {
              v32 = **(v32 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v32);
            v92 = v33;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v34 = 0;
            }

            else
            {
              v35 = *(a1 + 168);
              if ((*(*v94[0] + 8) & 0xFE) == 0x12)
              {
                v35 = llvm::FixedVectorType::get();
              }

              if ((v25 & 0x1FFFFFFFE0) != 0)
              {
                v36 = (v25 >> 5);
                v37 = v94;
                do
                {
                  v38 = *v37;
                  v93 = 257;
                  *v37++ = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v38, v35, &PrimitiveSizeInBits);
                  --v36;
                }

                while (v36);
              }

              v34 = 1;
            }
          }

          else
          {
            v34 = 0;
          }

          if (llvm::FPMathOperator::classof(v20))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v20);
          }

          else
          {
            FastMathFlags = 0;
          }

          v40 = *(a1 + 464) + *(**(a1 + 464) - 24);
          v88 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (a1 + 8));
          v90 = *(a1 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v88, v40 + 1712);
          if (v89)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v42 = *(v83 + 24);
          if (v42 > 5)
          {
            if (v42 <= 7)
            {
              if (v42 != 6)
              {
                v55 = *(v83 + 8);
                v56 = *(v83 + 16);
                v57 = v94[0];
                v58 = v94[1];
                v59 = v94[2];
                v60 = (*(a1 + 464) + (v56 >> 1));
                if ((v56 & 1) == 0)
                {
                  goto LABEL_97;
                }

                v68 = (*(*v60 + v55))(v60, v94[0], v94[1], v94[2]);
LABEL_98:
                FPTrunc = v68;
                goto LABEL_99;
              }

              v64 = *(v83 + 8);
              v65 = *(v83 + 16);
              v66 = (*(a1 + 464) + (v65 >> 1));
              if (v65)
              {
                v64 = *(*v66 + v64);
              }

              v75 = v64(v66, v94[0], v94[1], FastMathFlags);
              goto LABEL_89;
            }

            switch(v42)
            {
              case 8:
                v69 = *(v83 + 8);
                v70 = *(v83 + 16);
                v71 = (*(a1 + 464) + (v70 >> 1));
                if (v70)
                {
                  v69 = *(*v71 + v69);
                }

                v75 = v69(v71, v94[0], v94[1], v94[2], FastMathFlags);
LABEL_89:
                FPTrunc = v75;
                break;
              case 9:
                v55 = *(v83 + 8);
                v74 = *(v83 + 16);
                v60 = (*(a1 + 464) + (v74 >> 1));
                if (v74)
                {
                  v55 = *(*v60 + v55);
                }

                v57 = v94;
                v58 = &unk_20E75F419;
                v59 = 0;
LABEL_97:
                v68 = v55(v60, v57, v58, v59);
                goto LABEL_98;
              case 10:
                v48 = *(v83 + 8);
                v49 = *(v83 + 16);
                v50 = (*(a1 + 464) + (v49 >> 1));
                if (v49)
                {
                  v48 = *(*v50 + v48);
                }

                v68 = v48(v50, *v20, v94, &unk_20E75F419, 0);
                goto LABEL_98;
            }
          }

          else
          {
            if (v42 > 2)
            {
              if (v42 != 3)
              {
                if (v42 == 4)
                {
                  v72 = (v94[0] + 24);
                  if (*(v94[0] + 8) >= 0x41u)
                  {
                    v72 = *v72;
                  }

                  v46 = *v72;
                  v43 = *(v83 + 8);
                  v73 = *(v83 + 16);
                  v45 = *v20;
                  v47 = (*(a1 + 464) + (v73 >> 1));
                  if (v73)
                  {
                    v43 = *(*v47 + v43);
                  }
                }

                else
                {
                  v43 = *(v83 + 8);
                  v44 = *(v83 + 16);
                  v45 = v94[0];
                  v46 = v94[1];
                  v47 = (*(a1 + 464) + (v44 >> 1));
                  if (v44)
                  {
                    v43 = *(*v47 + v43);
                  }
                }

                v68 = v43(v47, v45, v46);
                goto LABEL_98;
              }

              v51 = *(v83 + 8);
              v67 = *(v83 + 16);
              v53 = v94[0];
              v54 = (*(a1 + 464) + (v67 >> 1));
              if ((v67 & 1) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }

            if (v42 == 1)
            {
              v61 = *(v83 + 8);
              v62 = *(v83 + 16);
              v63 = (*(a1 + 464) + (v62 >> 1));
              if (v62)
              {
                v61 = *(*v63 + v61);
              }

              v68 = v61(v63);
              goto LABEL_98;
            }

            if (v42 == 2)
            {
              v51 = *(v83 + 8);
              v52 = *(v83 + 16);
              v53 = *v20;
              v54 = (*(a1 + 464) + (v52 >> 1));
              if ((v52 & 1) == 0)
              {
LABEL_73:
                v68 = v51(v54, v53);
                goto LABEL_98;
              }

LABEL_72:
              v51 = *(*v54 + v51);
              goto LABEL_73;
            }
          }

LABEL_99:
          v76 = *(a1 + 464) + *(**(a1 + 464) - 24);
          v85 = *(v76 + 1760);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v76 + 1712));
          v87 = *(v76 + 1808);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v85, a1 + 8);
          if (v86)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v34)
          {
            v77 = *v20;
            if (v17 && (*(v77 + 8) & 0xFE) == 0x12)
            {
              v77 = **(v77 + 16);
            }

            v93 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), FPTrunc, v77, &PrimitiveSizeInBits);
          }

          if (v17)
          {
            v93 = 257;
            v78 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v84, FPTrunc, v78, &PrimitiveSizeInBits);
          }

          v23 = FPTrunc;
        }
      }

      if (*v20 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v20);
      a4 = v83;
      v19 = v82;
      if (!v82)
      {
        goto LABEL_112;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(int8x8_t *this)
{
  EmulationStateCacheForCurrentFunction = AGCLLVMUserObjectShaderBase::getEmulationStateCacheForCurrentFunction(this);
  v3 = EmulationStateCacheForCurrentFunction[38];
  if (!v3)
  {
    v4 = EmulationStateCacheForCurrentFunction;
    v5 = this + *(*this - 24);
    v34 = *(v5 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (v5 + 1712));
    v36 = *(v5 + 452);
    v6 = this + *(*this - 24);
    v7 = *(*(*(v6 + 220) + 56) + 80);
    if (v7)
    {
      v8 = (v7 - 24);
    }

    else
    {
      v8 = 0;
    }

    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
    if (FirstInsertionPt)
    {
      v10 = (FirstInsertionPt - 24);
    }

    else
    {
      v10 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((v6 + 1712), v10);
    v11 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 0);
    v12 = (*(*this + 520))(this, *(&this[238] + *(*this - 24)), 1);
    v13 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 0);
    v14 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 1);
    v15 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(&this[238] + *(*this - 24)), 2);
    v16 = this + *(*this - 24);
    v33 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v16 + 1712), v15, v12, v32);
    v31 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v16 + 1712), Mul, v14, v30);
    v29 = 257;
    v19 = llvm::IRBuilderBase::CreateMul((v16 + 1712), Add, v11, v28);
    v27 = 257;
    v20 = llvm::IRBuilderBase::CreateAdd((v16 + 1712), v19, v13, v26);
    llvm::ValueHandleBase::operator=((v4 + 36), v20);
    v21 = this + *(*this - 24);
    v23 = v34;
    v24 = v35;
    if (v35)
    {
      llvm::MetadataTracking::track();
    }

    v25 = v36;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v23, (v21 + 1712));
    if (v24)
    {
      llvm::MetadataTracking::untrack();
    }

    v3 = v4[38];
    if (v35)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v3;
}

uint64_t AGCLLVMUserObjectShaderSW::buildSetMeshGridProperties(int8x8_t *this, llvm::Value *a2, llvm::Value *a3)
{
  if (this[575].i8[1])
  {
    EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 2, 0);
    v7 = v6;
    v8 = this + *(*this - 24);
    v9 = llvm::ConstantInt::get();
    LinearThreadgroupID = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(this);
    v63 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v8 + 1712), v9, LinearThreadgroupID, v62);
    v61 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v8 + 1712), v7, EmulationStateBuffer, Mul, v60);
    v13 = (this + *(*this - 24));
    v14 = llvm::PointerType::get();
    v63 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v13 + 214, GEP, v14, v62, v15);
    for (i = 0; i != 3; ++i)
    {
      v18 = this + *(*this - 24);
      v19 = AGCLLVMUserObjectShaderBase::buildGroupID(this, *(v18 + 238), i);
      v20 = this + *(*this - 24);
      v21 = *(v20 + 238);
      v22 = llvm::ConstantInt::get();
      v63 = 257;
      v23 = llvm::IRBuilderBase::CreateGEP((v20 + 1712), v21, PointerCast, v22, v62);
      llvm::IRBuilderBase::CreateAlignedStore(v18 + 214, v19, v23, 0, 0);
    }
  }

  v24 = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 0, 0);
  v26 = v25;
  v27 = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(this);
  v28 = this + *(*this - 24);
  v63 = 257;
  v29 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v28 + 1712), a3, v29, v62);
  v61 = 257;
  v31 = llvm::ConstantInt::get();
  v32 = llvm::IRBuilderBase::CreateAnd((v28 + 1712), Element, v31, v60);
  v33 = this + *(*this - 24);
  v63 = 257;
  v34 = llvm::ConstantInt::get();
  v35 = llvm::IRBuilderBase::CreateExtractElement((v33 + 1712), a3, v34, v62);
  v61 = 257;
  v36 = llvm::ConstantInt::get();
  v37 = llvm::IRBuilderBase::CreateAnd((v33 + 1712), v35, v36, v60);
  v38 = llvm::ConstantInt::get();
  v59 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((v33 + 1712), v37, v38, v58);
  v40 = this + *(*this - 24);
  v63 = 257;
  v41 = llvm::ConstantInt::get();
  v42 = llvm::IRBuilderBase::CreateExtractElement((v40 + 1712), a3, v41, v62);
  v43 = llvm::ConstantInt::get();
  v44 = AGCLLVMBuilder::buildICmpSel((v40 + 1704), v42, v43, 34);
  v45 = llvm::ConstantInt::get();
  v61 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v40 + 1712), v44, v45, v60);
  v59 = 257;
  v47 = llvm::ConstantInt::get();
  v48 = llvm::IRBuilderBase::CreateAnd((v40 + 1712), Sub, v47, v58);
  v49 = this + *(*this - 24);
  v50 = llvm::ConstantInt::get();
  v63 = 257;
  v51 = llvm::IRBuilderBase::CreateShl((v49 + 1712), v48, v50, v62);
  v52 = (this + *(*this - 24));
  v63 = 257;
  v53 = llvm::IRBuilderBase::CreateOr((v52 + 214), v32, Shl, v62);
  v61 = 257;
  v54 = llvm::IRBuilderBase::CreateOr((v52 + 214), v53, v51, v60);
  v55 = this + *(*this - 24);
  v59 = 257;
  v56 = llvm::IRBuilderBase::CreateGEP((v55 + 1712), v26, v24, v27, v58);
  return llvm::IRBuilderBase::CreateAlignedStore(v52 + 214, v54, v56, 0, 0);
}

uint64_t AGCLLVMUserObjectShaderSW::setupShaderInputs(llvm::Function **this)
{
  AGCLLVMUserObjectShaderBase::setupShaderInputs(this);
  v2 = this[21];
  if (*(v2 + 9))
  {
    llvm::Function::BuildLazyArguments(this[21]);
    v4 = this[21];
    v3 = *(v2 + 11);
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(this[21]);
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 11);
  }

  v5 = *(v2 + 11) + 40 * *(v2 + 12);
  if (v3 != v5)
  {
    v6 = this + 214;
    v7 = this + 255;
    do
    {
      v8 = *(this[10] + *(v3 + 32));
      if (v8)
      {
        v9 = *(v8 - 8 * *(v8 + 8) + 8);
        if (!*v9)
        {
          String = llvm::MDString::getString(v9);
          if (v12 == 24)
          {
            v13 = *String == 0x6873656D2E726961 && String[1] == 0x72705F646972675FLL;
            if (v13 && String[2] == 0x736569747265706FLL)
            {
              v15 = this[634];
              if (!v15)
              {
                v23 = v6;
                v16 = *(v7 + *(*this - 3));
                v25 = "agc.ms_childcount";
                v26 = 259;
                v24 = v7;
                v17 = llvm::User::operator new(0x58);
                llvm::Constant::getNullValue(v16, v18);
                v6 = v23;
                llvm::GlobalVariable::GlobalVariable();
                llvm::GlobalObject::setSection();
                v19 = v17;
                v7 = v24;
                llvm::ValueHandleBase::operator=((this + 632), v19);
                v15 = this[634];
              }

              v20 = *(*this - 3);
              v21 = *v3;
              v26 = 257;
              llvm::IRBuilderBase::CreatePointerCast((v6 + v20), v15, v21, &v25, v11);
              llvm::Value::replaceAllUsesWith();
            }
          }
        }
      }

      v3 += 40;
    }

    while (v3 != v5);
  }

  return 1;
}

uint64_t AGCLLVMUserObjectShaderSW::wrapperPrefixData(AGCLLVMUserObjectShaderSW *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = *(*(*(this + *(*this - 24) + 2168) + 912) + 60);
  if (!v4)
  {
    return 0;
  }

  v5 = llvm::ConstantInt::get();

  return MEMORY[0x2821F23D8](v4, v5);
}

uint64_t AGCLLVMUserObjectShaderSW::addWrapperPrefix(int8x8_t *this)
{
  EmulationStateBuffer = AGCLLVMUserObjectShaderBase::getEmulationStateBuffer(this, 0, 1);
  v4 = v3;
  LinearThreadgroupID = AGCLLVMUserObjectShaderSW::getLinearThreadgroupID(this);
  v6 = (this + *(*this - 24));
  v7 = llvm::ConstantInt::get();
  v8 = this + *(*this - 24);
  v12 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v8 + 1712), v4, EmulationStateBuffer, LinearThreadgroupID, v11);
  llvm::IRBuilderBase::CreateAlignedStore(v6 + 214, v7, GEP, 0, 0);
  AGCLLVMTargetBuilder::CreateBarrier(&this[213] + *(*this - 24));
  return 1;
}

void AGCLLVMUserObjectShaderSW::addInitCompilePass(AGCLLVMUserObjectShaderSW *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderSW>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGObjectSWShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x54)
  {
    v1 = v0;
  }

  else
  {
    v1 = 84;
  }

  v2 = &aStringrefLlvmG_18[v1];
  v3 = 84 - v1;
  if ((84 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 84 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGObjectSWShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGObjectSWShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserObjectShaderSW>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x69)
  {
    v1 = v0;
  }

  else
  {
    v1 = 105;
  }

  v2 = &aStringrefLlvmG_17[v1];
  v3 = 105 - v1;
  if ((105 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 105 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void AGCLLVMUserObjectShaderSW::~AGCLLVMUserObjectShaderSW(AGCLLVMUserObjectShaderSW *this)
{
  *this = &unk_28255C548;
  v2 = (this + 5096);
  *(this + 637) = &unk_28255C8B0;
  *(this + 850) = &unk_28255C9C0;
  v3 = *(this + 634);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 5056));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((this + 4744));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, off_28255C9D0, v5, v6);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28255C548;
  v2 = (this + 5096);
  *(this + 637) = &unk_28255C8B0;
  *(this + 850) = &unk_28255C9C0;
  v3 = *(this + 634);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 5056));
  }

  AGCLLVMUserObjectShaderBase::FunctionStateCache::~FunctionStateCache((this + 4744));
  AGCLLVMUserObjectShaderBase::~AGCLLVMUserObjectShaderBase(this, off_28255C9D0, v5, v6);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLPostTessellationInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 16, v4);
  }

  return result;
}

uint64_t AGCLLVMBuilder::CreateLoad(unsigned int **this, llvm::Type *a2, llvm::Type **a3, const char *a4)
{
  llvm::Type::isOpaquePointerTy(*a3);
  v8 = 1;
  v12 = 1;
  if (*a4)
  {
    v10 = a4;
    v8 = 3;
  }

  v11 = v8;
  return llvm::IRBuilderBase::CreateAlignedLoad(this + 1, a2, a3, 0, &v10);
}

uint64_t llvm::IRBuilderBase::CreateXor(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = llvm::IRBuilderBase::foldConstant(this, 30, a2, a3, a4);
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x20F331D00](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

BOOL AGCLLVMAGPVertexShaderAnalysis::constructReply(AGCLLVMAGPVertexShaderAnalysis *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    GenericVaryingAllocator::serialize((this + 4536), (this + *(*this - 24) + 4288));
    v16 = 0;
    VaryingSignature = GenericVaryingAllocator::getVaryingSignature(this + 4536, (this + *(*this - 24) + 4288), &v16 + 1, &v16);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    if (VaryingSignature)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v6 + 4288), 10, HIDWORD(v16));
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v6 + 4288), 12, v16);
    }

    v9 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    v10 = this + *(*this - 24);
    v10[4358] = 1;
    v11 = *(v10 + 1082);
    v12 = *(v10 + 1080) - *(v10 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v10 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v10 + 4288), v4);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((v10 + 4288), v9);
    v13 = *(*this - 24);
    v14 = flatbuffers::FlatBufferBuilder::EndTable((v10 + 4288), v12 + v11);
    flatbuffers::FlatBufferBuilder::Finish((this + v13 + 4288), v14, v15);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));

    return AGCLLVMAGPVertexShader::validateReply(this);
  }

  return result;
}

void AGCLLVMAGPVertexShader::getCompilationKeyDescription(AGCLLVMAGPVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  std::string::basic_string[abi:nn200100]<0>(v42, "AGCVertexContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v40, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v46);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "0x", 2);
  *(&v47 + *(v47 - 24) + 8) = *(&v47 + *(v47 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(v52, v40, __p);
  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  v46[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v46 + *(v46[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v47 = v6;
  v48 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  v48 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](v51);
  std::string::basic_string[abi:nn200100]<0>(v46, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v52[1], v46, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v52[2], __p, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v38, "partition_mode");
  _agcFieldString<char const*>(&v52[3], v38, _agcTessellationPartitionModeStrings[(v3[2] >> 8) & 3]);
  std::string::basic_string[abi:nn200100]<0>(v36, "step_function");
  _agcFieldString<char const*>(&v52[4], v36, _agcTessellationStepFunctionStrings[(v3[2] >> 10) & 3]);
  std::string::basic_string[abi:nn200100]<0>(v34, "vertex_amplification_mode");
  _agcFieldString<char const*>(&v52[5], v34, _AGCVertexAmplificationModeStrings[(v3[2] >> 12) & 3]);
  std::string::basic_string[abi:nn200100]<0>(v32, "manufactureUnlinkedVaryings");
  _agcFieldString<unsigned long long>(&v52[6], v32, (v3[2] >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v30, "customBorderColor");
  _agcFieldString<unsigned long long>(&v52[7], v30, (v3[2] >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(v28, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v52[8], v28, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v26, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v52[9], v26, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v24, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v52[10], v24, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v22, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v52[11], v22, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v20, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v52[12], v20, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v18, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v52[13], v18, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v16, "enableStackShadow");
  _agcFieldString<unsigned int>(&v52[14], v16, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v14, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v52[15], v14, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v12, "flatVaryingAnalysis");
  _agcFieldString<unsigned long long>(&v52[16], v12, (v3[2] >> 21) & 1);
  std::string::basic_string[abi:nn200100]<0>(v10, "positionInvariance");
  _agcFieldString<unsigned long long>(&v52[17], v10, (v3[2] >> 23) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "enableFMAFold");
  _agcFieldString<unsigned long long>(&v52[18], v8, (v3[2] >> 24) & 1);
  _agcGroupWithHeader(a2, v42, v52, 19);
  v7 = 19;
  do
  {
    if (SHIBYTE(v52[v7 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*&v51[v7 * 24 + 128]);
    }

    --v7;
  }

  while (v7 * 24);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }
}

void _agcFieldString<unsigned long long>(std::string *a1, const void **a2, unint64_t __val)
{
  std::to_string(&v5, __val);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMAGPVertexShaderAnalysis::~AGCLLVMAGPVertexShaderAnalysis(AGCLLVMAGPVertexShaderAnalysis *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_282563288;
  v4[1303] = off_282563608;
  v4[1516] = &off_282563718;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_28255DCF0);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1303));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_282563288;
  v4[1303] = off_282563608;
  v4[1516] = &off_282563718;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_28255DCF0);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1303));
}

llvm::Value *AGCLLVMAGPVertexShader::getPointSize(AGCLLVMAGPVertexShader *this, llvm::Value *a2)
{
  if (!a2)
  {
    if (*(this + 9826) == 1)
    {
      return llvm::ConstantFP::get();
    }

    return 0;
  }

  return a2;
}

uint64_t AGCLLVMAGPVertexShader::setupClipDistanceOutput(void *a1, llvm::Value *a2, uint64_t a3, llvm::Value **a4, _DWORD *a5)
{
  v9 = *a2;
  if (*a2)
  {
    v10 = *(*a2 + 8) == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v25 = 0;
    v23[0] = 1;
    parseMDInt(0, a3, v23, &v25);
    v16 = *(v9 + 32);
    if (v16)
    {
      v17 = 0;
      v18 = 4 * v25;
      do
      {
        v19 = a1 + *(*a1 - 24) + 1704;
        v24 = 257;
        v20 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((v19 + 8), a2, v20, v23);
        *a5 |= 1 << (v18 + v17);
        a4[(v18 + v17++)] = Element;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v11 = (a1 + *(*a1 - 24));
    if (v9 == v11[78].__r_.__value_.__r.__words[0])
    {
      *a5 |= 1u;
      *a4 = a2;
    }

    else
    {
      v12 = *(v9 + 32);
      if (v12 >= 9)
      {
        std::string::append(v11 + 69, "Number of clip planes used exceeds supported maximum");
        return 0;
      }

      *a5 |= ~(-1 << v12);
      v25 = 0;
      if (v12)
      {
        do
        {
          v13 = *(*a1 - 24);
          v24 = 257;
          Value = llvm::IRBuilderBase::CreateExtractValue(a1 + v13 + 1712, a2, &v25, 1, v23);
          v15 = v25;
          a4[v25] = Value;
          v25 = v15 + 1;
        }

        while (v15 + 1 < v12);
      }
    }
  }

  return 1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x66)
  {
    v1 = v0;
  }

  else
  {
    v1 = 102;
  }

  v2 = &aStringrefLlvmG_19[v1];
  v3 = 102 - v1;
  if ((102 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 102 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMUserVertexShader::getGenericVaryingInfo()
{
  return 0;
}

{
  return 0;
}

BOOL AGCLLVMAGPVertexShaderAnalysis::setupShaderOutputs(AGCLLVMAGPVertexShaderAnalysis *this)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v2 = *(*(llvm::Module::getFunction() + 8) + 24);
  v3 = llvm::CallBase::arg_end(v2);
  v4 = (v2 - 32 * (*(v2 + 5) & 0x7FFFFFF));
  if (((v3 - v4) & 0x1FFFFFFFE0) != 0)
  {
    v5 = *v4;
    v6 = **v4;
    if (*(v6 + 8) == 16)
    {
      v7 = *(v6 + 12);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  v8 = v7;
  v54[0] = v55;
  v54[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(v54, v7, 0);
  if (v7)
  {
    if (*(v6 + 8) == 16)
    {
      AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, v5, v54);
    }

    else
    {
      *v54[0] = v5;
    }
  }

  if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
  {
    v9 = *(this + *(*this - 24) + 1696);
    v10 = (*(*this + 488))(this);
    AGCTargetPrinter::printMessage(v9, "------ Start flat varying analysis for %s shader %u  ------", v10, *(this + *(*this - 24) + 5088));
  }

  if (v7)
  {
    v11 = 0;
    v44 = this + 1696;
    v45 = this + 1704;
    v43 = v6;
    do
    {
      v12 = *(*(this + 8) - 8 * *(*(this + 8) + 8) + 8 * v11);
      String = llvm::MDString::getString(*(v12 - 8 * *(v12 + 8)));
      if (v14 == 17)
      {
        v15 = *String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865;
        if (v15 && *(String + 16) == 116)
        {
          v17 = *(v54[0] + v11);
          v18 = *(*(v6 + 16) + 8 * v11);
          if ((*(v18 + 2) & 0xFE) == 0x12)
          {
            *v48 = 0u;
            *__p = 0u;
            v19 = AGCLLVMBuilder::unboxVector(&v45[*(*this - 24)], v17, v48);
            if (v19)
            {
              v21 = 0;
              v22 = 0;
              v23 = v19;
              do
              {
                isVertexOutputUniform = AGCLLVMAGPVertexShaderAnalysis::isVertexOutputUniform(v48[v21], v20);
                v25 = 1 << v21;
                if (!isVertexOutputUniform)
                {
                  LOBYTE(v25) = 0;
                }

                v22 |= v25;
                ++v21;
              }

              while (v23 != v21);
            }

            else
            {
              v22 = 0;
            }

            v6 = v43;
          }

          else
          {
            v22 = AGCLLVMAGPVertexShaderAnalysis::isVertexOutputUniform(*(v54[0] + v11), v17);
          }

          if (v22)
          {
            v26 = llvm::MDString::getString(*(v12 - 8 * *(v12 + 8) + 8));
            v28 = v27;
            ComponentType = AGCLLVMBuilder::getComponentType(&v45[*(*this - 24)], v18, v48);
            if ((*(v18 + 2) & 0xFE) == 0x12)
            {
              v30 = *(v18 + 8);
            }

            else
            {
              v30 = 1;
            }

            v31 = *(this + 2457) + 1;
            *(this + 2457) = v31;
            v48[0] = __PAIR64__(ComponentType, v30);
            v48[1] = 0;
            *__p = v31;
            *&__p[8] = 0u;
            v50 = 0u;
            v51 = ComponentType == 1;
            v52 = 0;
            if (ComponentType == 1)
            {
              v32 = 5;
            }

            else
            {
              v32 = 1;
            }

            v53 = v32;
            if (v26)
            {
              std::string::basic_string[abi:nn200100](__dst, v26, v28);
              if (SBYTE7(v50) < 0)
              {
                operator delete(*&__p[8]);
              }
            }

            else
            {
              __dst[0] = 0;
              __dst[1] = 0;
              v47 = 0;
            }

            *&__p[8] = *__dst;
            *&v50 = v47;
            HIBYTE(v52) = v22;
            if (AGCTargetPrinter::isValidToPrintMessage(*&v44[*(*this - 24)]))
            {
              v33 = *&v44[*(*this - 24)];
              if (v26)
              {
                std::string::basic_string[abi:nn200100](__dst, v26, v28);
                v34 = __dst;
                if (v47 < 0)
                {
                  v34 = __dst[0];
                }
              }

              else
              {
                __dst[0] = 0;
                __dst[1] = 0;
                v34 = __dst;
                v47 = 0;
              }

              v35 = "x";
              v36 = &unk_20E75F419;
              if ((v22 & 1) == 0)
              {
                v35 = &unk_20E75F419;
              }

              v37 = "y";
              if ((v22 & 2) == 0)
              {
                v37 = &unk_20E75F419;
              }

              v38 = "z";
              if ((v22 & 4) == 0)
              {
                v38 = &unk_20E75F419;
              }

              if ((v22 & 8) != 0)
              {
                v36 = "w";
              }

              AGCTargetPrinter::printMessage(v33, "Promoted varying: {semantic: %s, flat_components: %s%s%s%s}", v34, v35, v37, v38, v36);
              if (SHIBYTE(v47) < 0)
              {
                operator delete(__dst[0]);
              }
            }

            GenericVaryingAllocator::addVarying(this + 4536, v48);
            if (SBYTE7(v50) < 0)
            {
              operator delete(*&__p[8]);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v8);
  }

  if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
  {
    v39 = *(this + *(*this - 24) + 1696);
    v40 = (*(*this + 488))(this);
    AGCTargetPrinter::printMessage(v39, "------ End flat varying analysis for %s shader %u  ------\n", v40, *(this + *(*this - 24) + 5088));
  }

  v41 = AGCLLVMAGPVertexShader::setupShaderOutputs(this);
  if (v54[0] != v55)
  {
    free(v54[0]);
  }

  return v41;
}

uint64_t AGCLLVMAGPVertexShaderAnalysis::isVertexOutputUniform(AGCLLVMAGPVertexShaderAnalysis *this, llvm::Value *a2)
{
  v89[20] = *MEMORY[0x277D85DE8];
  __src = this;
  v85 = 0xFFFFFFFFLL;
  v81 = this;
  v87 = v89;
  v88 = 0xA00000000;
  llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::append<std::tuple<llvm::Value *,int> const*,void>(&v87, &__src, &v86);
  __src = 0;
  v85 = 0;
  v86 = 0;
  v2 = &v81;
LABEL_2:
  *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, v2) + 8) = 255;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
              if (!v88)
              {
                v10 = 1;
                goto LABEL_168;
              }

              v3 = v87 + 16 * v88;
              v5 = *(v3 - 2);
              v4 = *(v3 - 1);
              LODWORD(v88) = v88 - 1;
              v6 = *(v5 + 16);
              if (v5)
              {
                v7 = v6 >= 0x15;
              }

              else
              {
                v7 = 1;
              }
            }

            while (!v7);
            if (v5)
            {
              v8 = v6 >= 0x1C;
            }

            else
            {
              v8 = 0;
            }

            if (!v8)
            {
              goto LABEL_167;
            }

            v9 = v6 - 59 > 0xFFFFFFED || v6 - 83 > 0xFFFFFFFD;
            if (!v9 && v6 != 62 && v6 != 85)
            {
              break;
            }

            v16 = *(v5 + 20);
            v17 = v16 & 0x7FFFFFF;
            if ((v16 & 0x7FFFFFF) != 0)
            {
              v18 = 0;
              v19 = 0;
              do
              {
                if ((v16 & 0x40000000) != 0)
                {
                  v20 = *(v5 - 8);
                }

                else
                {
                  v20 = v5 - 32 * v17;
                }

                v21 = *(v20 + v18);
                if (v21)
                {
                  v22 = v21[16] == 22;
                }

                else
                {
                  v22 = 0;
                }

                if (!v22)
                {
                  if ((*(*v21 + 8) & 0xFE) == 0x12)
                  {
                    v23 = v4;
                  }

                  else
                  {
                    v23 = -1;
                  }

                  v82 = *(v20 + v18);
                  v83 = 0;
                  if (v23 == -1)
                  {
                    v24 = 255;
                  }

                  else
                  {
                    v24 = 1 << v23;
                  }

                  v25 = __src;
                  v26 = v86;
                  v27 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v21, &v83);
                  v28 = v83;
                  if (v27)
                  {
                    v29 = v83 == (v25 + 16 * v26);
                  }

                  else
                  {
                    v29 = 1;
                  }

                  if (v29)
                  {
                    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v21, v23);
                    *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = v24;
                  }

                  else if ((v24 & ~v83[2]) != 0)
                  {
                    llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v21, v23);
                    v28[2] |= v24;
                  }

                  v16 = *(v5 + 20);
                }

                ++v19;
                v17 = v16 & 0x7FFFFFF;
                v18 += 32;
              }

              while (v19 < v17);
            }
          }

          if (v6 == 83)
          {
            goto LABEL_167;
          }

          if (v6 - 79 < 0xFFFFFFF3)
          {
            break;
          }

          v14 = *(v5 - 32);
          if ((*(*v14 + 8) & 0xFE) == 0x12)
          {
            if (v4 == -1)
            {
              goto LABEL_89;
            }

            if ((*(*v5 + 8) & 0xFE) == 0x12 && *(*v14 + 32) == *(*v5 + 32))
            {
              v82 = *(v5 - 32);
              v15 = 1 << v4;
              goto LABEL_90;
            }
          }

          else if (v4 == -1)
          {
LABEL_89:
            v82 = *(v5 - 32);
            v15 = 255;
            goto LABEL_90;
          }

          v82 = *(v5 - 32);
          v83 = 0;
          v39 = __src;
          v40 = v86;
          v41 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v14, &v83);
          v42 = v83;
          if (v41)
          {
            v43 = v83 == (v39 + 16 * v40);
          }

          else
          {
            v43 = 1;
          }

          if (v43)
          {
            v79 = v14;
LABEL_163:
            llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v79, 0xFFFFFFFF);
            v2 = &v82;
            goto LABEL_2;
          }

          if (*(v83 + 8) != 0xFF)
          {
            v44 = v14;
            goto LABEL_88;
          }
        }

        v10 = 0;
        if (*(v5 + 16) <= 0x59u)
        {
          break;
        }

        if (v6 == 90)
        {
          v53 = *(v5 - 32);
          if (*(v53 + 16) != 16)
          {
            v53 = 0;
          }

          if (v4 == -1 || v53 == 0)
          {
            v55 = *(v5 - 64);
            v82 = v55;
            v83 = 0;
            v56 = __src;
            v57 = v86;
            v58 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v55, &v83);
            v59 = v83;
            if (v58)
            {
              v60 = v83 == (v56 + 16 * v57);
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v55, 0xFFFFFFFF);
              *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = 255;
            }

            else if (*(v83 + 8) != 0xFF)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v55, 0xFFFFFFFF);
              v59[2] |= 0xFFu;
            }

LABEL_146:
            v14 = *(v5 - 96);
LABEL_147:
            v82 = v14;
            v83 = 0;
            if (v4 == -1)
            {
              v15 = 255;
            }

            else
            {
              v15 = 1 << v4;
            }

            v76 = __src;
            v77 = v86;
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v14, &v83))
            {
              v36 = v83;
              if (v83 != (v76 + 16 * v77))
              {
                goto LABEL_152;
              }
            }

LABEL_95:
            v49 = v14;
            v50 = v4;
            goto LABEL_96;
          }

          if (*(v53 + 32) >= 0x41u)
          {
            v64 = **(v53 + 24);
          }

          else
          {
            v64 = *(v53 + 24);
          }

          if (v64 != v4)
          {
            goto LABEL_146;
          }

          v71 = *(v5 - 64);
          v82 = v71;
          v83 = 0;
          v72 = __src;
          v73 = v86;
          v74 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v71, &v83);
          v42 = v83;
          if (v74)
          {
            v75 = v83 == (v72 + 16 * v73);
          }

          else
          {
            v75 = 1;
          }

          if (v75)
          {
            v79 = v71;
            goto LABEL_163;
          }

          if (*(v83 + 8) != 0xFF)
          {
            v44 = v71;
            goto LABEL_88;
          }
        }

        else
        {
          if (v6 != 91)
          {
            goto LABEL_168;
          }

          if (v4 == -1)
          {
            v65 = *(v5 - 64);
            v82 = v65;
            v83 = 0;
            v66 = __src;
            v67 = v86;
            v68 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v65, &v83);
            v69 = v83;
            if (v68)
            {
              v70 = v83 == (v66 + 16 * v67);
            }

            else
            {
              v70 = 1;
            }

            if (v70)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v65, 0xFFFFFFFF);
              *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = 255;
              v66 = __src;
              v67 = v86;
            }

            else if (*(v83 + 8) != 0xFF)
            {
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v65, 0xFFFFFFFF);
              v69[2] |= 0xFFu;
            }

            v78 = *(v5 - 32);
            v82 = v78;
            v83 = 0;
            if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(v66, v67, v78, &v83) || (v42 = v83, v83 == (v66 + 16 * v67)))
            {
              v79 = v78;
              goto LABEL_163;
            }

            if (*(v83 + 8) != 0xFF)
            {
              v44 = v78;
LABEL_88:
              llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v44, 0xFFFFFFFF);
              v42[2] |= 0xFFu;
            }
          }

          else
          {
            v30 = *(*(v5 + 64) + 4 * v4);
            if (v30 != -1)
            {
              v31 = *(v5 - 64);
              v32 = *(*v31 + 32);
              v7 = v30 >= v32;
              v33 = v30 - v32;
              if (v7)
              {
                v31 = *(v5 - 32);
                v30 = v33;
              }

              v82 = v31;
              v83 = 0;
              if (v30 == -1)
              {
                v15 = 255;
              }

              else
              {
                v15 = 1 << v30;
              }

              v34 = __src;
              v35 = v86;
              if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v31, &v83) || (v36 = v83, v83 == (v34 + 16 * v35)))
              {
                v49 = v31;
                v50 = v30;
LABEL_96:
                llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v49, v50);
                *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(&__src, &v82) + 8) = v15;
              }

              else if ((v15 & ~v83[2]) != 0)
              {
                v37 = v31;
                v38 = v30;
                goto LABEL_154;
              }
            }
          }
        }
      }

      if (v6 == 60)
      {
        break;
      }

      if (v6 != 89)
      {
        goto LABEL_168;
      }

      v11 = *(v5 - 32);
      if (v11)
      {
        v12 = *(v11 + 16) == 16;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v13 = (v11 + 24);
        if (*(v11 + 32) >= 0x41u)
        {
          v13 = *v13;
        }

        LODWORD(v4) = *v13;
      }

      v14 = *(v5 - 64);
      v82 = v14;
      if (v4 == -1)
      {
        v15 = 255;
      }

      else
      {
        v15 = 1 << v4;
      }

LABEL_90:
      v83 = 0;
      v45 = __src;
      v46 = v86;
      v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(__src, v86, v14, &v83);
      v36 = v83;
      if (v47)
      {
        v48 = v83 == (v45 + 16 * v46);
      }

      else
      {
        v48 = 1;
      }

      if (v48)
      {
        goto LABEL_95;
      }

LABEL_152:
      if ((v15 & ~v36[2]) != 0)
      {
        v37 = v14;
        v38 = v4;
LABEL_154:
        llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(&v87, v37, v38);
        v36[2] |= v15;
      }
    }

    v14 = *(v5 - 32);
    if (!v14 || *(v14 + 16) != 3)
    {
      break;
    }

    if ((*(v14 + 34) & 0x40) != 0)
    {
      SectionImpl = llvm::GlobalObject::getSectionImpl(*(v5 - 32));
      if (v62 == 15)
      {
        v63 = *SectionImpl == 0x625F726566667562 && *(SectionImpl + 7) == 0x73676E69646E6962;
        if (v63 && *(*v14 + 8) == 16399 && *(*(v14 + 24) + 8) == 527)
        {
          continue;
        }
      }
    }

    goto LABEL_167;
  }

  v52 = *(*v14 + 8);
  if ((v52 & 0xFE) == 0x12)
  {
    v52 = *(**(*v14 + 16) + 8);
  }

  if ((v52 & 0xFFFFFF00) == 0x200)
  {
    goto LABEL_147;
  }

LABEL_167:
  v10 = 0;
LABEL_168:
  llvm::deallocate_buffer(v86, __src, (16 * v86));
  if (v87 != v89)
  {
    free(v87);
  }

  return v10;
}

unsigned int *llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::append<std::tuple<llvm::Value *,int> const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 4) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 16 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 4);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>,llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  *(result + 8) = 0;
  return result;
}

uint64_t llvm::SmallVectorImpl<std::tuple<llvm::Value *,int>>::emplace_back<llvm::Value *&,int &>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    return llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(result, a2, a3);
  }

  v4 = *result + 16 * v3;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(result + 8) = v3 + 1;
  return result;
}

uint64_t *llvm::DenseMap<llvm::Value *,int,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,int>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x20F330650](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v10 += 2;
        v16 += 4;
      }

      while (v14 != v10);
    }

    v18 = (16 * v3);
    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        v10 = *v20 | 0x1000;
        if (v10 != -4096)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          *(v22 + 2) = *(v20 + 2);
          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
        }

        v20 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }

    return llvm::deallocate_buffer(v10, v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
      v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
      v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
      v28 = vdupq_n_s64(v26);
      v29 = result + 2;
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_20E70C4F0)));
        if (v30.i8[0])
        {
          *(v29 - 2) = -4096;
        }

        if (v30.i8[4])
        {
          *v29 = -4096;
        }

        v24 += 2;
        v29 += 4;
      }

      while (v27 != v24);
    }
  }

  return result;
}

void AGCLLVMAGPVertexShaderAnalysis::addInitCompilePass(AGCLLVMAGPVertexShaderAnalysis *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderAnalysis>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderAnalysisPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x58)
  {
    v1 = v0;
  }

  else
  {
    v1 = 88;
  }

  v2 = &aStringrefLlvmG_22[v1];
  v3 = 88 - v1;
  if ((88 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 88 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderAnalysisPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderAnalysisPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderAnalysis>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6E)
  {
    v1 = v0;
  }

  else
  {
    v1 = 110;
  }

  v2 = &aStringrefLlvmG_21[v1];
  v3 = 110 - v1;
  if ((110 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 110 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void AGCLLVMAGPVertexShaderAnalysis::~AGCLLVMAGPVertexShaderAnalysis(AGCLLVMAGPVertexShaderAnalysis *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_282563288;
  v5 = (this + 10424);
  *(this + 1303) = off_282563608;
  *(this + 1516) = &off_282563718;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255DCF0);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282563288;
  v5 = (this + 10424);
  *(this + 1303) = off_282563608;
  *(this + 1516) = &off_282563718;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255DCF0);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMAGPVertexShaderRegular::~AGCLLVMAGPVertexShaderRegular(AGCLLVMAGPVertexShaderRegular *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_2825643F0;
  v4[1307] = off_282564770;
  v4[1520] = &off_282564880;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_28255E220);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_2825643F0;
  v4[1307] = off_282564770;
  v4[1520] = &off_282564880;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_28255E220);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));
}

uint64_t llvm::Type::isSized(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x11)
  {
    goto LABEL_6;
  }

  v2 = 1;
  if (((1 << v1) & 0xAC7F) != 0)
  {
    return v2;
  }

  if (((1 << v1) & 0x30000) == 0)
  {
LABEL_6:
    if ((v1 & 0xFE) != 0x12 && v1 != 21)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F5238]();
}

BOOL AGCLLVMAGPVertexShaderRegular::canDMAPromote(void *a1, uint64_t a2, const char *a3, llvm::Function **a4, uint64_t a5, uint64_t a6)
{
  v168 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  if (v7)
  {
    if (!*(v7 + 8))
    {
      v8 = *(v7 + 24);
      if (*(v8 + 16) == 77)
      {
        a2 = v8;
      }
    }
  }

  v124 = a1 + 214;
  v129 = a1 + 212;
  v9 = 1;
  while (1)
  {
    v10 = *(a2 + 8);
    result = v10 == 0;
    if (!v10)
    {
      return result;
    }

    v12 = *(v10 + 24);
    if (!v12 || *(v12 + 16) != 62)
    {
      break;
    }

    v13 = *(v12 - 32 * (*(v12 + 20) & 0x7FFFFFF) + 32);
    v126 = v10;
    if (v13 && *(v13 + 16) == 67)
    {
      v13 = *(v13 - 32);
    }

    v131 = 1;
    v130 = 0;
    v14 = AGCLLVMAGPVertexShaderRegular::extractDivisor(v13, &v131, &v130);
    v15 = 0;
    if (v14)
    {
      if (*(v14 + 16) == 84)
      {
        v15 = *(v14 - 32);
        if (!v15 || *(v15 + 16) || *(v15 + 24) != *(v14 + 72))
        {
          v15 = 0;
        }
      }
    }

    v16 = a1[1303];
    if (v15 == v16)
    {
      v17 = 1305;
    }

    else
    {
      v17 = 1306;
    }

    v18 = v130;
    v19 = v130 != 0;
    if (!v15 || (v20 = a1[v17], v15 != v16) && v15 != a1[1304])
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s : GEP not indexed with instance_id/vertex_id");
      }

      return 0;
    }

    if (v130 && v130 != v20)
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s: GEP indexed with index type not matching base type");
      }

      return 0;
    }

    if (v9)
    {
      v21 = v15 == v16;
      if (v15 == v16)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      *a4 = v22;
      *(a5 + 24) = v131;
      *(a5 + 28) = v19;
      if (v21 && v18)
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
        {
          AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s: GEP indexed with vertex_id and divisor with bias");
        }

        return 0;
      }

      goto LABEL_41;
    }

    if (*a4 == 2)
    {
      v16 = a1[1304];
    }

    else if (*a4 != 1)
    {
      goto LABEL_39;
    }

    if (v15 != v16)
    {
      goto LABEL_285;
    }

LABEL_39:
    if (v131 != *(a5 + 24) || *(a5 + 28) != v19)
    {
LABEL_285:
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s : GEP indexed inconsistently");
      }

      return 0;
    }

LABEL_41:
    v140 = 0;
    v141 = v12;
    __p = 0;
    v139 = 0;
    v164 = 128;
    v163[0] = MEMORY[0x20F330650](0x4000, 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(v163);
    LOBYTE(v165) = 0;
    v167 = 0;
    v157 = &v159;
    v158 = 0x800000000;
    LOBYTE(v162) = 0;
    HIDWORD(v162) = 0;
    llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v157, (v12 - 32 * (*(v12 + 20) & 0x7FFFFFF) + 64), v12);
    v23 = v158;
    v24 = 1;
    if (v158)
    {
      v25 = v157;
      do
      {
        v26 = *v25++;
        v24 &= *(v26 + 16) == 16;
        --v23;
      }

      while (v23);
    }

    LOBYTE(v162) = v24;
    v27 = llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](v163, v12);
    v28 = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v27, &v157);
    *(v28 + 80) = v162;
    std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&__p, &v141);
LABEL_45:
    if (__p == v139)
    {
      v109 = 1;
    }

    else
    {
      v29 = (v139 - 1);
      v30 = *(v139 - 1);
      v151 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v163, v164, v30, &v151))
      {
        v32 = v151;
      }

      else
      {
        v32 = (*v163 + (v164 << 7));
      }

      v151 = &v153;
      v152 = 0x800000000;
      if (v32[12])
      {
        llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v151, (v32 + 10));
        v33 = v152 == 0;
      }

      else
      {
        v33 = 1;
      }

      v156 = *(v32 + 15);
      v139 = v29;
      if (v30 == v12 && v33 || ((SourceElementType = llvm::GEPOperator::getSourceElementType(v30), v35 = *(v30 + 20), v36 = v35 & 0x7FFFFFF, (v35 & 0x40000000) != 0) ? (v37 = *(v30 - 8)) : (v37 = v30 - 32 * v36), v38 = v37 + 32, v39 = SourceElementType | 4, v40 = v37 + 32 * v36, v37 + 32 == v40))
      {
        LODWORD(v128) = 0;
      }

      else
      {
        do
        {
          v41 = v39;
          TypeAtIndex = v39 & 0xFFFFFFFFFFFFFFF8;
          if ((v39 & 4) == 0 || !TypeAtIndex)
          {
            TypeAtIndex = llvm::StructType::getTypeAtIndex();
          }

          v43 = *(TypeAtIndex + 8);
          if (TypeAtIndex && v43 == 17 || TypeAtIndex && (v43 & 0xFE) == 0x12)
          {
            v39 = *(TypeAtIndex + 24) | 4;
          }

          else if (v43 == 16)
          {
            v39 = TypeAtIndex & 0xFFFFFFFFFFFFFFFBLL;
          }

          else
          {
            v39 = 0;
          }

          v38 += 32;
        }

        while (v38 != v40);
        v128 = (v41 >> 2) & 1;
      }

      v122 = v30;
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_73:
            v30 = *(v30 + 8);
            if (!v30)
            {
              TypeAllocSize = 0;
              if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v163, v164, v122, &TypeAllocSize))
              {
                v108 = TypeAllocSize;
              }

              else
              {
                v108 = (*v163 + (v164 << 7));
              }

              if ((*v163 + (v164 << 7)) != v108)
              {
                llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(v163, v108);
              }

              if (v151 != &v153)
              {
                free(v151);
              }

              goto LABEL_45;
            }

            v44 = *(*(v30 + 24) + 16) <= 0x1Bu ? 0 : *(v30 + 24);
            v45 = *(v44 + 16);
            if (v45 != 60 || v44 == 0)
            {
              break;
            }

            AGCLLVMAGPVertexShaderRegular::LoadMap::addEntry(a6, v44, &v151);
          }

          v47 = v45 == 62 ? v44 : 0;
          v137 = v47;
          if (!v47)
          {
            break;
          }

          v48 = (v47 - 4 * (*(v47 + 5) & 0x7FFFFFF))[4];
          if (v48)
          {
            v49 = v48[16] > 0x14u;
          }

          else
          {
            v49 = 1;
          }

          if (v49 || !llvm::Constant::isNullValue(v48))
          {
            if (!v128)
            {
              goto LABEL_227;
            }

            Add = *(v151 + v152 - 1);
            v55 = (v47 - 4 * (*(v47 + 5) & 0x7FFFFFF))[4];
            if (v55 != llvm::Constant::getNullValue(*v55, v31))
            {
              if (Add == llvm::Constant::getNullValue(*Add, v56))
              {
                Add = v55;
              }

              else
              {
                if (*v55 != *Add)
                {
                  goto LABEL_227;
                }

                llvm::IRBuilderBase::SetInsertPoint((v124 + *(*a1 - 24)), v47);
                v57 = *(*a1 - 24);
                Name = llvm::Value::getName(v47);
                LOWORD(v145) = 773;
                TypeAllocSize = Name;
                v143 = v59;
                v144[0] = ".sum";
                Add = llvm::IRBuilderBase::CreateAdd((v124 + v57), v55, Add, &TypeAllocSize);
              }
            }

            TypeAllocSize = v144;
            v143 = 0x800000000;
            if (v152)
            {
              llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v151);
              v102 = v143 - 1;
            }

            else
            {
              v102 = -1;
            }

            v150 = v156;
            LODWORD(v143) = v102;
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&TypeAllocSize, Add);
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&TypeAllocSize, v47 - 32 * (*(v47 + 5) & 0x7FFFFFF) + 64, v47);
            v103 = v143;
            if (!v143)
            {
              goto LABEL_205;
            }

            v51 = 1;
            v104 = TypeAllocSize;
            do
            {
              v105 = *v104++;
              v51 &= *(v105 + 16) == 16;
              --v103;
            }

            while (v103);
          }

          else
          {
            TypeAllocSize = v144;
            v143 = 0x800000000;
            if (v152)
            {
              llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v151);
            }

            v150 = v156;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&TypeAllocSize, v47 - 32 * (*(v47 + 5) & 0x7FFFFFF) + 64, v47);
            if (v156 != 1)
            {
              v51 = 0;
              goto LABEL_207;
            }

            v50 = v143;
            if (!v143)
            {
LABEL_205:
              v51 = 1;
              goto LABEL_207;
            }

            v51 = 1;
            v52 = TypeAllocSize;
            do
            {
              v53 = *v52++;
              v51 &= *(v53 + 16) == 16;
              --v50;
            }

            while (v50);
          }

LABEL_207:
          LOBYTE(v150) = v51;
          v106 = llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](v163, v137);
          v107 = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v106, &TypeAllocSize);
          *(v107 + 80) = v150;
          std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&__p, &v137);
          if (TypeAllocSize != v144)
          {
            free(TypeAllocSize);
          }
        }

        if (v45 != 77 || v44 == 0)
        {
          break;
        }

        if (*(*v44 + 8) != 15)
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
          {
            AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "Cannot DMA promote %s : pointer bitcast to non-pointer type");
          }

          goto LABEL_227;
        }

        v61 = *(v44 + 8);
        if (v61)
        {
          v62 = **(**(v44 - 32) + 16);
          v63 = **(*v44 + 16);
          while (1)
          {
            v64 = *(v61 + 24);
            v65 = v64[16];
            if (v64 && v65 == 60)
            {
              if ((*(v62 + 8) & 0xFE) != 0x12)
              {
                goto LABEL_150;
              }

              v66 = *v64;
              if ((*(*v64 + 8) & 0xFE) != 0x12)
              {
                goto LABEL_150;
              }

              if (**(v62 + 16) != **(v66 + 16))
              {
                goto LABEL_150;
              }

              v67 = *(v66 + 32);
              v68 = *(v62 + 32);
              if (v67 <= v68)
              {
                goto LABEL_150;
              }

              v69 = *(v61 + 24);
              while (1)
              {
                v69 = *(v69 + 8);
                if (!v69)
                {
                  v83 = 1;
                  if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                  {
                    AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : truncated extend bitcast pattern");
                  }

                  goto LABEL_186;
                }

                v70 = *(v69 + 24);
                v71 = *(v70 + 16);
                if (v70)
                {
                  if (v71 == 91)
                  {
                    break;
                  }
                }

                v75 = 0;
                if (!v70)
                {
                  goto LABEL_144;
                }

                v79 = v67;
                if (v71 != 89)
                {
                  goto LABEL_148;
                }

                v80 = *(v70 - 32);
                if (v80)
                {
                  v81 = *(v80 + 16) == 16;
                }

                else
                {
                  v81 = 0;
                }

                if (!v81)
                {
                  v75 = 0;
LABEL_144:
                  v79 = v67;
                  goto LABEL_148;
                }

                v82 = (v80 + 24);
                if (*(v80 + 32) >= 0x41u)
                {
                  v82 = *v82;
                }

                v75 = *v82;
                v79 = v75 + 1;
LABEL_148:
                if (v75 >= v79 || v79 > v68)
                {
                  goto LABEL_150;
                }
              }

              v72 = *(*v70 + 32);
              if (v72)
              {
                v73 = 0;
                v74 = *(v70 + 64);
                v75 = -1;
                while (1)
                {
                  v77 = *v74++;
                  v76 = v77;
                  if ((v77 & 0x80000000) == 0 && v76 < v67 && *(v70 - 64) == v64)
                  {
                    goto LABEL_131;
                  }

                  v78 = v76 < v67 || v76 >= 2 * v67;
                  if (!v78 && *(v70 - 32) == v64)
                  {
                    break;
                  }

LABEL_135:
                  if (!--v72)
                  {
                    v79 = v73 + 1;
                    goto LABEL_148;
                  }
                }

                v76 = (v76 - v67);
LABEL_131:
                if (v75 >= v76)
                {
                  v75 = v76;
                }

                if (v73 <= v76)
                {
                  v73 = v76;
                }

                goto LABEL_135;
              }

LABEL_150:
              if (v156 == 1 && isReinterpretedArray(v63, v62, (a1 + 28), v128))
              {
                v83 = 2;
                if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : reinterpreted array bitcast pattern");
                }
              }

              else
              {
                TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v63);
                LODWORD(v143) = v95;
                v96 = llvm::TypeSize::operator unsigned long long();
                v132 = llvm::DataLayout::getTypeAllocSize((a1 + 28), v62);
                LODWORD(v133) = v97;
                v98 = llvm::TypeSize::operator unsigned long long();
                isValidToPrintMessage = AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24)));
                if (v96 > v98)
                {
                  if (isValidToPrintMessage)
                  {
                    AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : unrecognized GEP bitcast pattern: ", a3);
                  }

                  v132 = 0;
                  v133 = 0;
                  v134 = 0;
                  LODWORD(v143) = 0;
                  v146 = 0;
                  v147 = 0;
                  v148 = 1;
                  v144[1] = 0;
                  v145 = 0;
                  v144[0] = 0;
                  TypeAllocSize = (MEMORY[0x277D821F8] + 16);
                  v149 = &v132;
                  llvm::raw_ostream::SetUnbuffered(&TypeAllocSize);
                  llvm::Value::print(v44, &TypeAllocSize);
                  if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                  {
                    v119 = v149;
                    if (*(v149 + 23) < 0)
                    {
                      v119 = *v149;
                    }

                    AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "bitcast: %s", v119);
                  }

                  if (SHIBYTE(v134) < 0)
                  {
                    *v132 = 0;
                    v133 = 0;
                  }

                  else
                  {
                    LOBYTE(v132) = 0;
                    HIBYTE(v134) = 0;
                  }

                  llvm::Value::print(v64, &TypeAllocSize);
                  if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                  {
                    v120 = v149;
                    if (*(v149 + 23) < 0)
                    {
                      v120 = *v149;
                    }

                    AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "load:    %s", v120);
                  }

                  llvm::raw_ostream::~raw_ostream(&TypeAllocSize);
                  if (SHIBYTE(v134) < 0)
                  {
                    operator delete(v132);
                  }

                  goto LABEL_227;
                }

                v83 = 3;
                if (isValidToPrintMessage)
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : truncate to smaller sized type pattern");
                }
              }

LABEL_186:
              if (HIDWORD(v156))
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : can't combine bitcast types");
                }

                goto LABEL_227;
              }

              TypeAllocSize = v144;
              v143 = 0x800000000;
              if (v152)
              {
                llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v151);
              }

              v150 = __PAIR64__(v83, v156);
              AGCLLVMAGPVertexShaderRegular::LoadMap::addEntry(a6, v64, &TypeAllocSize);
            }

            else
            {
              if (v65 != 62)
              {
                v64 = 0;
              }

              v136 = v64;
              if (!v64)
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "Cannot DMA promote %s : unknown GEP bitcast use");
                }

                goto LABEL_227;
              }

              if (HIDWORD(v156))
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : GEP-of-bitcast can't combine bitcast types");
                }

                goto LABEL_227;
              }

              if (v156 != 1 || !isReinterpretedArray(v63, v62, (a1 + 28), v128) || *(v63 + 8) != 16)
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "Cannot DMA promote %s : unknown GEP-of-bitcast use");
                }

                goto LABEL_227;
              }

              if ((*(v64 + 5) & 0x7FFFFFF) != 4)
              {
                if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
                {
                  AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "Cannot DMA promote %s : GEP-of-bitcast needs to index to a scalar");
                }

                goto LABEL_227;
              }

              if (*(*(v64 - 12) + 16) >= 0x15u)
              {
                v84 = 0;
              }

              else
              {
                v84 = *(v64 - 12);
              }

              if (*(*(v64 - 8) + 16) >= 0x15u)
              {
                v85 = 0;
              }

              else
              {
                v85 = *(v64 - 8);
              }

              if (v84)
              {
                v86 = v85 == 0;
              }

              else
              {
                v86 = 1;
              }

              if (v86)
              {
                goto LABEL_227;
              }

              if (!llvm::Constant::isNullValue(v84))
              {
                goto LABEL_227;
              }

              if (!llvm::Constant::isNullValue(v85))
              {
                goto LABEL_227;
              }

              v87 = *(v151 + v152 - 1);
              v88 = *&v64[-32 * (*(v64 + 5) & 0x7FFFFFF) + 96];
              if (*v88 != *v87)
              {
                goto LABEL_227;
              }

              if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
              {
                AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "DMA promotion %s : reinterpreted array bitcast pattern (through struct-array GEP)", a3);
              }

              TypeAllocSize = v144;
              v143 = 0x800000000;
              if (v152)
              {
                llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, &v151);
              }

              v150 = v156;
              v89 = *(*a1 - 24);
              v135 = 257;
              v90 = llvm::IRBuilderBase::CreateAdd((v124 + v89), v87, v88, &v132);
              v91 = v143;
              *(TypeAllocSize + v143 - 1) = v90;
              v92 = 1;
              if (v91)
              {
                v93 = TypeAllocSize;
                do
                {
                  v94 = *v93++;
                  v92 &= *(v94 + 16) == 16;
                  --v91;
                }

                while (v91);
              }

              LOBYTE(v150) = v92;
              HIDWORD(v150) = 2;
              v100 = llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](v163, v64);
              v101 = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v100, &TypeAllocSize);
              *(v101 + 80) = v150;
              std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&__p, &v136);
            }

            if (TypeAllocSize != v144)
            {
              free(TypeAllocSize);
            }

            v61 = *(v61 + 8);
            if (!v61)
            {
              goto LABEL_73;
            }
          }
        }
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(v129 + *(*a1 - 24))))
      {
        AGCTargetPrinter::printMessage(*(v129 + *(*a1 - 24)), "Cannot DMA promote %s : GEP not used in a load");
      }

LABEL_227:
      if (v151 != &v153)
      {
        free(v151);
      }

      v109 = 0;
    }

    if (v157 != &v159)
    {
      free(v157);
    }

    if (v167 == 1)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v165);
      llvm::deallocate_buffer(v166, v165, (16 * v166));
      v167 = 0;
    }

    v110 = v164;
    v111 = v163[0];
    if (v164)
    {
      v158 = 2;
      v159 = 0;
      v160 = -4096;
      v161 = 0;
      v157 = &unk_28257BDC8;
      v152 = 2;
      v153 = 0;
      v154 = -8192;
      v155 = 0;
      v151 = &unk_28257BDC8;
      v112 = *v163 + 56;
      v113 = v164 << 7;
      do
      {
        v114 = *(v112 - 32);
        if (v114 != v160 && v114 != v154)
        {
          v116 = *(v112 - 16);
          if (v112 != v116)
          {
            free(v116);
            v114 = *(v112 - 32);
          }
        }

        if (v114 != -8192 && v114 != -4096 && v114 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v112 - 48));
        }

        v112 += 128;
        v113 -= 128;
      }

      while (v113);
      if (v154 != -8192 && v154 != -4096 && v154)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v152);
      }

      if (v160 != -8192 && v160 != -4096 && v160)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v158);
      }

      v111 = v163[0];
      v110 = v164;
      v118 = (v164 << 7);
    }

    else
    {
      v118 = 0;
    }

    llvm::deallocate_buffer(v110, v111, v118);
    if (__p)
    {
      operator delete(__p);
    }

    v9 = 0;
    result = 0;
    a2 = v126;
    if ((v109 & 1) == 0)
    {
      return result;
    }
  }

  result = AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696));
  if (!result)
  {
    return result;
  }

  AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "Cannot DMA promote %s : found a non-GEP use");
  return 0;
}

BOOL AGCLLVMAGPVertexShaderRegular::coerceStridedAccess(AGCLLVMAGPVertexShaderRegular *this, llvm::Value *a2, const char *a3, llvm::Type **a4)
{
  v82[7] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      result = 0;
      v13 = *(v8 + 24);
      if (!v13 || *(v13 + 16) != 62)
      {
        return result;
      }

      v14 = *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF) + 32);
      if (v14)
      {
        if (*(v14 + 16) == 67)
        {
          v14 = *(v14 - 32);
          if (!v14)
          {
            return 0;
          }
        }
      }

      v15 = *(v14 + 16);
      if (v15 <= 0x1B)
      {
        if (v15 != 5)
        {
          LODWORD(v16) = 0;
LABEL_34:
          if (v15 != 5)
          {
            return 0;
          }

          v17 = *(v14 + 18);
LABEL_37:
          if (v17 == 17)
          {
            goto LABEL_41;
          }

          if (v17 != 25)
          {
            return 0;
          }

          goto LABEL_39;
        }

        v17 = *(v14 + 18);
        if (v17 != 13)
        {
          LODWORD(v16) = 0;
          goto LABEL_37;
        }
      }

      else if (v15 != 41)
      {
        LODWORD(v16) = 0;
        goto LABEL_31;
      }

      v18 = *(v14 + 20);
      if ((v18 & 0x40000000) != 0)
      {
        v19 = *(v14 - 8);
      }

      else
      {
        v19 = v14 - 32 * (v18 & 0x7FFFFFF);
      }

      v20 = *(v19 + 32);
      if (v20)
      {
        v21 = *(v20 + 16) == 16;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        return 0;
      }

      v22 = *(v20 + 32);
      if (v22 > 0x40)
      {
        v16 = **(v20 + 24);
        if (v16 < 0)
        {
          return 0;
        }
      }

      else
      {
        v16 = *(v20 + 24);
        if (v16 << -v22 < 0)
        {
          return 0;
        }
      }

      v23 = (v18 & 0x40000000) != 0 ? *(v14 - 8) : (v14 - 32 * (v18 & 0x7FFFFFF));
      v14 = *v23;
      if (!v14)
      {
        return 0;
      }

      v15 = *(v14 + 16);
      if (v15 <= 0x1B)
      {
        goto LABEL_34;
      }

LABEL_31:
      if (v15 != 53)
      {
        if (v15 != 45)
        {
          return 0;
        }

LABEL_41:
        v26 = *(v14 + 20);
        if ((v26 & 0x40000000) != 0)
        {
          v27 = *(v14 - 8);
        }

        else
        {
          v27 = (v14 - 32 * (v26 & 0x7FFFFFF));
        }

        v28 = v27[4];
        if (v28)
        {
          v29 = *(v28 + 16) == 16;
        }

        else
        {
          v29 = 0;
        }

        if (!v29)
        {
          return 0;
        }

        v30 = (v28 + 24);
        if (*(v28 + 32) >= 0x41u)
        {
          v30 = *v30;
        }

        v31 = *v30;
        if (v16 >= *v30)
        {
          return 0;
        }

        goto LABEL_68;
      }

LABEL_39:
      v24 = *(v14 + 20);
      if ((v24 & 0x40000000) != 0)
      {
        v25 = *(v14 - 8);
      }

      else
      {
        v25 = v14 - 32 * (v24 & 0x7FFFFFF);
      }

      v32 = *(v25 + 32);
      if (v32)
      {
        v33 = *(v32 + 16) == 16;
      }

      else
      {
        v33 = 0;
      }

      if (!v33)
      {
        return 0;
      }

      v34 = (v32 + 24);
      v35 = *(v32 + 32);
      v36 = v34;
      if (v35 >= 0x41)
      {
        v36 = *v34;
      }

      if (*v36 > 0x1FuLL)
      {
        return 0;
      }

      if ((v24 & 0x40000000) != 0)
      {
        v27 = *(v14 - 8);
      }

      else
      {
        v27 = (v14 - 32 * (v24 & 0x7FFFFFF));
      }

      if (v35 >= 0x41)
      {
        v34 = *v34;
      }

      v31 = 1 << *v34;
      if (v31 <= v16)
      {
        return 0;
      }

LABEL_68:
      v37 = *v27;
      if (v11)
      {
        v38 = AGCLLVMAGPVertexShaderRegular::extractDivisor(*v27, &TypeAllocSize, &v79);
        if (!v38 || *(v38 + 16) != 84 || (v39 = *(v38 - 32)) == 0 || *(v39 + 16) || *(v39 + 24) != *(v38 + 72) || v39 != *(this + 1303) && v39 != *(this + 1304))
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
          {
            AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Will not coerce strided access %s : GEP not indexed with instance_id/vertex_id");
          }

          return 0;
        }

        v9 = v37;
        v10 = v31;
      }

      else if (v10 != v31 || v9 != v37)
      {
        result = AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696));
        if (result)
        {
          AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Will not coerce strided access %s : GEP indexed inconsistently");
          return 0;
        }

        return result;
      }

      v11 = 0;
      v8 = *(v8 + 8);
      if (!v8)
      {
        v41 = **(*a2 + 16);
        v42 = v10;
        v79 = &v81;
        v80 = 0x800000000;
        if (v10 >= 9)
        {
          LODWORD(v80) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v60 = (v10 + 1) & 0x1E;
        v61 = vdupq_n_s64(v10 - 1);
        v62 = v82;
        v63 = 3;
        do
        {
          v64 = vmovn_s64(vcgeq_u64(v61, vorrq_s8(vdupq_n_s64(v63 - 3), xmmword_20E70C4F0)));
          if (v64.i8[0])
          {
            *(v62 - 1) = 0;
          }

          if (v64.i8[4])
          {
            *v62 = 0;
          }

          v63 += 2;
          v62 += 2;
          v60 -= 2;
        }

        while (v60);
        LODWORD(v80) = v10;
        if (v10)
        {
            ;
          }
        }

        goto LABEL_86;
      }
    }
  }

  v42 = 0;
  v79 = &v81;
  v80 = 0x800000000;
LABEL_86:
  v43 = *a3;
  if (*a3)
  {
    v67[2] = a3;
    v44 = 3;
    v45 = 2;
  }

  else
  {
    v44 = 1;
    v45 = 3;
  }

  v67[0] = "agc.struct.coerced_arg";
  v68 = 3;
  v69 = v44;
  v21 = v43 == 0;
  v46 = v67;
  if (v21)
  {
    v46 = "agc.struct.coerced_arg";
  }

  v70[0] = v46;
  v70[2] = "x";
  v71 = v45;
  v72 = 3;
  TypeAllocSize = v70;
  v75 = v42;
  v76 = 2050;
  v47 = __p;
  llvm::Twine::str(__p, &TypeAllocSize);
  if ((v78 & 0x80000000) == 0 || (v47 = __p[0]) != 0)
  {
    strlen(v47);
  }

  v48 = llvm::StructType::create();
  *a4 = v48;
  if (v78 < 0)
  {
    operator delete(__p[0]);
    v48 = *a4;
  }

  TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v48);
  v74 = v49;
  v50 = llvm::TypeSize::operator unsigned long long();
  v66 = (v50 & 3) == 0;
  if ((v50 & 3) != 0)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Will not coerce pointer %s : type size %u not a multiple of 4", a3, v50);
    }
  }

  else
  {
    v51 = llvm::PointerType::get();
    v52 = this + 1712;
    v53 = *(*(this + 21) + 80);
    if (v53)
    {
      v54 = v53 - 24;
    }

    else
    {
      v54 = 0;
    }

    v55 = *(v54 + 40);
    if (v55)
    {
      v56 = (v55 - 24);
    }

    else
    {
      v56 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint(&v52[*(*this - 24)], v56);
    v57 = *(*this - 24);
    v76 = 257;
    llvm::IRBuilderBase::CreateCast(&v52[v57], 49, a2, v51, &TypeAllocSize);
    v58 = *(a2 + 1);
    while (v58)
    {
      v59 = *(v58 + 24);
      v58 = *(v58 + 8);
      if (v59 && *(v59 + 16) == 62)
      {
        operator new();
      }
    }
  }

  if (v79 != &v81)
  {
    free(v79);
  }

  return v66;
}

unint64_t AGCLLVMAGPVertexShaderRegular::analyzeLoads(uint64_t a1, llvm::Type *a2, uint64_t *a3)
{
  llvm::DataLayout::getTypeSizeInBits((a1 + 224), a2);
  v6 = llvm::TypeSize::operator unsigned long long();
  v7 = v6;
  if ((*(a2 + 2) & 0xFE) != 0x10)
  {
    return 0;
  }

  if (!*(a3 + 2))
  {
    return -1;
  }

  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = v8 << 7;
    for (i = *a3; (*(i + 24) | 0x1000) == 0xFFFFFFFFFFFFF000; i += 128)
    {
      v9 -= 128;
      if (!v9)
      {
        return -1;
      }
    }
  }

  else
  {
    i = *a3;
  }

  v12 = *a3 + (v8 << 7);
  if (v12 == i)
  {
    return -1;
  }

  v13 = 0;
  v11 = -1;
  v28 = v6;
  do
  {
    v14 = *(i + 24);
    if (*(i + 48))
    {
      v15 = **(i + 40);
      if (v15 && *(v15 + 16) == 16)
      {
        v27 = *(i + 24);
        v17 = 0;
        v19 = 1;
        v20 = a2;
        while (1)
        {
          v21 = (v15 + 24);
          if (*(v15 + 32) >= 0x41u)
          {
            v21 = *v21;
          }

          v22 = *v21;
          v23 = *(v20 + 8);
          if (v20 && v23 == 16)
          {
            if (*(v20 + 3) <= v22)
            {
              return 0;
            }

            v24 = *(llvm::DataLayout::getStructLayout() + 8 * v22 + 16);
            v20 = *(*(v20 + 2) + 8 * v22);
            if (!v20)
            {
              return 0;
            }
          }

          else
          {
            if (!v20)
            {
              return 0;
            }

            if (v23 != 17)
            {
              return 0;
            }

            if (*(v20 + 4) <= v22)
            {
              return 0;
            }

            v20 = *(v20 + 3);
            llvm::DataLayout::getTypeAllocSize((a1 + 224), v20);
            v24 = llvm::TypeSize::operator unsigned long long() * v22;
            if (!v20)
            {
              return 0;
            }
          }

          v17 += v24;
          llvm::DataLayout::getTypeSizeInBits((a1 + 224), v20);
          v25 = llvm::TypeSize::operator unsigned long long();
          if (v19 < *(i + 48))
          {
            v15 = *(*(i + 40) + 8 * v19);
            if (v15)
            {
              ++v19;
              if (*(v15 + 16) == 16)
              {
                continue;
              }
            }
          }

          v18 = v25 + v17;
          v14 = v27;
          v7 = v28;
          goto LABEL_18;
        }
      }
    }

    v17 = 0;
    v18 = v7;
LABEL_18:
    if (*(i + 124) && *(i + 120) == 1)
    {
      llvm::DataLayout::getTypeSizeInBits((a1 + 224), *v14);
      v18 = llvm::TypeSize::operator unsigned long long() + v17;
    }

    if (v17 < v11)
    {
      v11 = v17;
    }

    if (v13 <= v18)
    {
      v13 = v18;
    }

    do
    {
      i += 128;
    }

    while (i != v12 && (*(i + 24) | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (i != v12);
  return v11;
}

uint64_t llvm::Twine::concat(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 32);
  if (!*(a2 + 32) || (v4 = *(a3 + 32), !*(a3 + 32)))
  {
    *(result + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a3 + 1);
    *result = *a3;
    *(result + 16) = v5;
    v6 = a3[4];
LABEL_8:
    *(result + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 1);
    *result = *a2;
    *(result + 16) = v7;
    v6 = a2[4];
    goto LABEL_8;
  }

  v8 = *(a2 + 33);
  if (v8 == 1)
  {
    v9 = a2;
    a2 = *a2;
    v8 = v9[1];
  }

  else
  {
    LOBYTE(v3) = 2;
  }

  v10 = a3[1];
  if (*(a3 + 33) == 1)
  {
    v11 = *a3;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a3;
  }

  *result = a2;
  *(result + 8) = v8;
  *(result + 16) = v11;
  *(result + 24) = v10;
  *(result + 32) = v3;
  *(result + 33) = v4;
  return result;
}

unsigned __int8 *AGCLLVMAGPVertexShaderRegular::materializeVertexAttribute(void *a1, llvm::Type *a2, int a3, void *a4, uint64_t a5)
{
  v8 = *(a2 + 2);
  if ((v8 & 0xFE) == 0x10)
  {
    if (a3)
    {
      v9 = v8 & 0x11;
      if (v9 == 17)
      {
        result = AGCLLVMAGPVertexShaderRegular::materializeArrayFromVI(a1, a2, 0, a4);
        if (result)
        {
          return result;
        }
      }

      else if (v9 == 16)
      {
        result = AGCLLVMAGPVertexShaderRegular::materializeStructFromVI(a1, a2, 0, a4, a5);
        if (result)
        {
          return result;
        }
      }
    }

    TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), a2);
    v32 = v11;
    v12 = llvm::TypeSize::operator unsigned long long();
    v13 = llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 1904), (v12 >> 2));
    InsertValue = llvm::UndefValue::get();
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits((a1 + 28), a2) + 7) >> 3;
    v32 = v15 == 1;
    v16 = llvm::TypeSize::operator unsigned long long();
    v34 = 0;
    if (v16 >= 4)
    {
      v17 = 0;
      v18 = v16 >> 2;
      do
      {
        v19 = a1 + *(*a1 - 24);
        v20 = *(*a4 + 8 * v17);
        v21 = *(v19 + 238);
        v33 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v19 + 1712), 49, v20, v21, &TypeAllocSize);
        v23 = *(*a1 - 24);
        v33 = 257;
        InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + v23 + 1712, InsertValue, Cast, &v34, 1, &TypeAllocSize);
        v17 = v34 + 1;
        v34 = v17;
      }

      while (v17 < v18);
    }

    v24 = (a1 + *(*a1 - 24));
    v33 = 257;
    Alloca = llvm::IRBuilderBase::CreateAlloca(v24 + 214, v13, 0, &TypeAllocSize);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), InsertValue, Alloca, 0, 0);
    v26 = (a1 + *(*a1 - 24));
    v27 = llvm::PointerType::get();
    v33 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v26 + 214, Alloca, v27, &TypeAllocSize, v28);
    v30 = (a1 + *(*a1 - 24));
    v33 = 257;
    llvm::Type::isOpaquePointerTy(*PointerCast);
    return llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, a2, PointerCast, 0, &TypeAllocSize);
  }

  else
  {

    return AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(a1, a2, 0, a4);
  }
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

unsigned __int8 *AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2 && (v8 = 4 * a4 - 4, (*(llvm::ExtractValueInst::getIndexedType() + 8) & 0xFE) == 0x12))
  {
    v9 = a1 + *(*a1 - 24);
    v16 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v9 + 1712), a2, a3, v8 >> 2, v15);
    v11 = a1 + *(*a1 - 24);
    v16 = 257;
    v12 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v11 + 1712), Value, v12, v15);
  }

  else
  {
    v14 = a1 + *(*a1 - 24);
    v16 = 257;
    return llvm::IRBuilderBase::CreateExtractValue((v14 + 1712), a2, a3, a4, v15);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Value *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v11, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v13 = v4;
  v28 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v12, &v28);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v28;
  }

  else
  {
    v7 = v6;
  }

  v8 = v13;
  if ((*v13 + (v13[2].u32[0] << 7)) != v7)
  {
    v24 = v26;
    v25 = 0x800000000;
    if (v7[12])
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v24, (v7 + 10));
      v8 = v13;
    }

    v27 = *(v7 + 15);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(v8, v7);
    v9 = v13;
    v19 = a2;
    v20 = v22;
    v21 = 0x800000000;
    if (v25)
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v20, &v24);
      a2 = v19;
    }

    v23 = v27;
    llvm::CallbackVH::CallbackVH(&v14, a2);
    v14 = &unk_28257BDA0;
    v17 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v29, (LODWORD(v15[0]) >> 1) & 3, v15);
    v28 = &unk_28257BDA0;
    v31 = v17;
    v32 = v34;
    v33 = 0x800000000;
    if (v21)
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v32, &v20);
    }

    v35 = v23;
    v18 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v9, v9[4], v30, &v18) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(v9, &v28, v18);
      llvm::ValueHandleBase::operator=((v10 + 1), v29);
      v10[4] = v31;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v33)
      {
        llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v10 + 5), &v32);
      }

      v10[15] = v35;
    }

    if (v32 != v34)
    {
      free(v32);
    }

    if (v30 != -8192 && v30 != -4096 && v30)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v29);
    }

    if (v16 != -8192 && v16 != -4096 && v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }

    if (v20 != v22)
    {
      free(v20);
    }

    if (v24 != v26)
    {
      free(v24);
    }
  }

  if (v12 != -8192 && v12 != -4096)
  {
    if (v12)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 7);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
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
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 7);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

llvm::CallbackVH *llvm::CallbackVH::CallbackVH(llvm::CallbackVH *this, llvm::Value *a2)
{
  *(this + 1) = 2;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(v3 + 2) = a2;
  if (a2 != -8192 && a2 != -4096 && a2)
  {
    llvm::ValueHandleBase::AddToUseList(v3);
  }

  *this = MEMORY[0x277D821C0] + 16;
  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(llvm::ValueHandleBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 4), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 2);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(llvm::ValueHandleBase *a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x20F330650](v8 << 7, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
    v24[0] = 2;
    v24[1] = 0;
    v25 = -4096;
    v26 = 0;
    v22 = 0;
    v23 = &unk_28257BDA0;
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v25 && v12 != v21)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 4), v12, &v27);
          v14 = v27;
          llvm::ValueHandleBase::operator=((v27 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 2);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
      if (v21 != -8192 && v21 != -4096 && v21)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v20);
      }
    }

    v18 = v25;
    if (v25 != -8192 && v25 != -4096 && v25)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v24);
    }

    return llvm::deallocate_buffer(v18, v4, v9);
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
  }
}

llvm::ValueHandleBase *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(llvm::ValueHandleBase *result)
{
  *(result + 1) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 7));
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_28257BDA0;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = (v4 + 128);
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_28257BDA0;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

unsigned __int8 *AGCLLVMAGPVertexShaderRegular::materializeStructFromVI(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  InsertValue = llvm::UndefValue::get();
  StructLayout = llvm::DataLayout::getStructLayout();
  v41 = 0;
  if (*(a2 + 12))
  {
    v13 = 0;
    v14 = StructLayout + 16;
    while (1)
    {
      v15 = *(*(a2 + 16) + 8 * v13);
      v16 = *(v14 + 8 * v13);
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v15);
      LODWORD(v38) = v17;
      v18 = llvm::TypeSize::operator unsigned long long() & 3;
      if ((v16 & 3) != 0 || v18 != 0)
      {
        return 0;
      }

      v20 = a3 + (v16 >> 2);
      v21 = *(v15 + 2);
      if ((v21 & 0xFE) == 0x10)
      {
        v22 = v21 & 0x11;
        if (v22 == 16)
        {
          v40 = 257;
          v23 = AGCLLVMAGPVertexShaderRegular::materializeStructFromVI(a1, v15, v20, a4, &TypeAllocSize);
        }

        else
        {
          if (v22 != 17)
          {
            return 0;
          }

          v23 = AGCLLVMAGPVertexShaderRegular::materializeArrayFromVI(a1, v15, v20, a4);
        }
      }

      else
      {
        v23 = AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(a1, v15, v20, a4);
      }

      if (!v23)
      {
        return 0;
      }

      v24 = *(*a1 - 24);
      v25 = *(a5 + 32);
      if (v25 == 1)
      {
        break;
      }

      if (*(a5 + 32))
      {
        v30 = *a5;
        v31 = *(a5 + 8);
        v26 = 2;
        if (*(a5 + 33) != 1)
        {
          LOBYTE(v25) = 2;
          v30 = a5;
        }

        v33 = v30;
        v34 = v31;
        v35 = ".elem";
        LOBYTE(v36) = v25;
        HIBYTE(v36) = 3;
        v28 = v5 & 0xFFFFFFFF00000000;
        v5 = v5 & 0xFFFFFFFF00000000 | v41;
        v29 = &v33;
        goto LABEL_22;
      }

      v26 = 0;
      v36 = 256;
      v27 = 1;
LABEL_23:
      LOBYTE(v40) = v26;
      HIBYTE(v40) = v27;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + v24 + 1712, InsertValue, v23, &v41, 1, &TypeAllocSize);
      v13 = v41 + 1;
      v41 = v13;
      if (v13 >= *(a2 + 12))
      {
        return InsertValue;
      }
    }

    v33 = ".elem";
    v36 = 259;
    v5 = v5 & 0xFFFFFFFF00000000 | v41;
    v26 = 3;
    v28 = v34;
    v29 = ".elem";
LABEL_22:
    TypeAllocSize = v29;
    v38 = v28;
    v27 = 8;
    v39 = v5;
    goto LABEL_23;
  }

  return InsertValue;
}

unsigned __int8 *AGCLLVMAGPVertexShaderRegular::materializeArrayFromVI(void *a1, llvm::UndefValue *a2, unsigned int a3, void *a4)
{
  v8 = *(a2 + 3);
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 28), v8);
  v18 = v9;
  v10 = llvm::TypeSize::operator unsigned long long();
  if ((*(v8 + 2) & 0xFE) == 0x10 || (v10 & 3) != 0)
  {
    return 0;
  }

  InsertValue = llvm::UndefValue::get();
  v20 = 0;
  if (*(a2 + 4))
  {
    v13 = v10 >> 2;
    do
    {
      v14 = AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(a1, v8, a3, a4);
      v15 = *(*a1 - 24);
      v19 = 257;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(a1 + v15 + 1712, InsertValue, v14, &v20, 1, &TypeAllocSize);
      a3 += v13;
      ++v20;
    }

    while (*(a2 + 4) > v20);
  }

  return InsertValue;
}

llvm::Value *AGCLLVMAGPVertexShaderRegular::materializeVectorOrScalarFromVI(void *a1, llvm::Type *this, unsigned int a3, void *a4)
{
  if ((*(this + 2) & 0xFE) != 0x12)
  {
    v21 = a1 + *(*a1 - 24);
    v22 = *(*a4 + 8 * a3);
    v40 = 257;
    return llvm::IRBuilderBase::CreateCast((v21 + 1712), 49, v22, this, v39);
  }

  v8 = **(this + 2);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(this);
  v10 = *(this + 8);
  if (ScalarSizeInBits == 8)
  {
    v35 = llvm::FixedVectorType::get();
    v36 = a1 + *(*a1 - 24);
    v37 = *(*a4 + 8 * a3);
    v40 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v36 + 1712), 49, v37, v35, v39);
    if (v10 == 4)
    {
      return Cast;
    }

    v32 = (a1 + *(*a1 - 24) + 1704);
    v33 = Cast;
    v34 = v10;
    return AGCLLVMBuilder::subrangeVector(v32, v33, 0, v34, 1);
  }

  if (ScalarSizeInBits == 16)
  {
    v25 = llvm::FixedVectorType::get();
    v26 = a1 + *(*a1 - 24);
    v27 = *(*a4 + 8 * a3);
    v40 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v26 + 1712), 49, v27, v25, v39);
    if ((v10 - 3) > 1)
    {
      return Cast;
    }

    v28 = a1 + *(*a1 - 24);
    v29 = *(*a4 + 8 * (a3 + 1));
    v40 = 257;
    v30 = llvm::IRBuilderBase::CreateCast((v28 + 1712), 49, v29, v25, v39);
    Cast = AGCLLVMBuilder::concatenateVectors((a1 + *(*a1 - 24) + 1704), Cast, v30, v31);
    if (v10 != 3)
    {
      return Cast;
    }

    v32 = (a1 + *(*a1 - 24) + 1704);
    v33 = Cast;
    v34 = 3;
    return AGCLLVMBuilder::subrangeVector(v32, v33, 0, v34, 1);
  }

  if (ScalarSizeInBits != 32)
  {
    return 0;
  }

  Cast = llvm::UndefValue::get();
  if (v10)
  {
    v38 = a4;
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = *(*a1 - 24);
      v15 = *(*v38 + 8 * (v13 + v12));
      v40 = 257;
      v16 = llvm::IRBuilderBase::CreateCast(a1 + v14 + 1712, 49, v15, v8, v39);
      v17 = v10;
      v18 = a1 + *(*a1 - 24) + 1704;
      v40 = 257;
      v19 = llvm::ConstantInt::get();
      v20 = (v18 + 8);
      v10 = v17;
      Cast = llvm::IRBuilderBase::CreateInsertElement(v20, Cast, v16, v19, v39);
      ++v12;
    }

    while (v17 != v12);
  }

  return Cast;
}

llvm::Instruction *llvm::IRBuilderBase::CreateInBoundsGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 1);
  if (!v12)
  {
    v15 = 257;
    v12 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5, v14);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
  }

  return v12;
}

uint64_t AGCLLVMAGPVertexShaderRegular::extractDivisor(uint64_t result, int *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3 <= 0x1B)
  {
    if (v3 != 5 || *(result + 18) != 13)
    {
      return result;
    }
  }

  else if (v3 != 41)
  {
    v4 = *(result + 20);
    v5 = 0;
    if ((v4 & 0x40000000) != 0)
    {
      v6 = *(result - 8);
    }

    else
    {
      v6 = (result - 32 * (v4 & 0x7FFFFFF));
    }

    v9 = result;
LABEL_20:
    v13 = *v6;
    v14 = *(v9 + 16);
    if (v14 == 54)
    {
      v17 = *(v9 + 20);
      if ((v17 & 0x40000000) != 0)
      {
        v18 = *(v9 - 8);
      }

      else
      {
        v18 = v9 - 32 * (v17 & 0x7FFFFFF);
      }

      v25 = *(v18 + 32);
      if (v25)
      {
        v26 = *(v25 + 16) == 16;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        if (*(v25 + 32) > 0x40u)
        {
          v27 = **(v25 + 24);
          if (v27 > 0x1F)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v25 + 24);
          if (v27 >= 0x20)
          {
            return result;
          }
        }

        v24 = 1 << v27;
LABEL_75:
        *a2 = v24;
        *a3 = v5;
        return v13;
      }
    }

    else if (v14 == 47)
    {
      v15 = *(v9 + 20);
      v16 = (v15 & 0x40000000) != 0 ? *(v9 - 8) : v9 - 32 * (v15 & 0x7FFFFFF);
      v22 = *(v16 + 32);
      if (v22)
      {
        if (*(v22 + 16) == 16)
        {
          v23 = (v22 + 24);
          if (*(v22 + 32) >= 0x41u)
          {
            v23 = *v23;
          }

          v24 = *v23;
          goto LABEL_75;
        }
      }
    }

    return result;
  }

  v7 = *(result + 20);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(result - 8);
  }

  else
  {
    v8 = (result - 32 * (v7 & 0x7FFFFFF));
  }

  v9 = *v8;
  if (v9)
  {
    v10 = *(v9 + 16) >= 0x1Cu;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v9 + 20);
    if ((v11 & 0x7FFFFFF) != 0)
    {
      v12 = (v11 & 0x40000000) != 0 ? *(v9 - 8) : (v9 - 32 * (v11 & 0x7FFFFFF));
      v19 = *v12;
      v20 = *(v19 + 16);
      if (v20 <= 0x1B)
      {
        if (v20 != 5 || *(v19 + 18) != 15)
        {
          return result;
        }
      }

      else if (v20 != 43)
      {
        return result;
      }

      v21 = (v7 & 0x40000000) != 0 ? *(result - 8) : result - 32 * (v7 & 0x7FFFFFF);
      v28 = *(v21 + 32);
      v29 = *(v28 + 16) == 84 ? v28 : 0;
      v30 = *(v19 + 20);
      v31 = (v30 & 0x40000000) != 0 ? *(v19 - 8) : v19 - 32 * (v30 & 0x7FFFFFF);
      v32 = *(v31 + 32);
      v33 = *(v32 + 16) == 84 ? v32 : 0;
      if (v29 && v33)
      {
        v5 = *(v29 - 32);
        if (!v5 || *(v5 + 16) || (v34 = *(v29 + 72), v35 = *(v29 - 32), *(v5 + 24) != v34))
        {
          v35 = 0;
        }

        v36 = *(v33 - 32);
        if (!v36 || *(v36 + 16) || *(v36 + 24) != *(v33 + 72))
        {
          v36 = 0;
        }

        if (v35 == v36 && (*(v5 + 20) & 0x7FFFFFF) == 0)
        {
          if ((v30 & 0x40000000) != 0)
          {
            v6 = *(v19 - 8);
          }

          else
          {
            v6 = (v19 - 32 * (v30 & 0x7FFFFFF));
          }

          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

llvm::ValueHandleBase *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(llvm::ValueHandleBase *result)
{
  *(result + 1) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 7));
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_28257BDC8;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = (v4 + 128);
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 5) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 32;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 5);
  return result;
}

uint64_t llvm::ValueMap<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_28257BDC8;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 56;
    *(v4 + 48) = 0x800000000;
    *(v4 + 120) = 0;
    *(v4 + 124) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

void std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t AGCLLVMAGPVertexShaderRegular::LoadMap::addEntry(uint64_t a1, llvm::Value *a2, uint64_t a3)
{
  llvm::CallbackVH::CallbackVH(&v10, a2);
  v10 = &unk_28257BDA0;
  v13 = a1;
  v14 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v14);
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(a1, &v10, v14);
    llvm::ValueHandleBase::operator=((v6 + 8), v11);
    *(v6 + 32) = v13;
    *(v6 + 40) = v6 + 56;
    *(v6 + 48) = 0x800000000;
    *(v6 + 120) = 0;
    *(v6 + 124) = 0;
  }

  if (v12 != -8192 && v12 != -4096 && v12 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v11);
  }

  result = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(v6 + 40, a3);
  *(v6 + 120) = *(a3 + 80);
  *(a1 + 64) &= *(a3 + 80);
  v9 = *(a3 + 84);
  *(a1 + 65) |= v9 == 2;
  *(a1 + 66) |= v9 == 3;
  return result;
}

BOOL isReinterpretedArray(llvm::Type *a1, llvm::Type *a2, llvm::DataLayout *this, int a4)
{
  if (!a4 || (*(a2 + 2) & 0xFE) == 0x12)
  {
    return 0;
  }

  llvm::DataLayout::getTypeSizeInBits(this, a2);
  if (llvm::TypeSize::operator unsigned long long() != 4)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  if ((v7 & 0xFE) != 0x10)
  {
    return 1;
  }

  if ((v7 & 0x11) != 0x10 || *(a1 + 3) != 1)
  {
    return 0;
  }

  result = 0;
  v8 = **(a1 + 2);
  if (v8 && *(v8 + 8) == 17)
  {
    if (*(v8 + 32) == 3)
    {
      llvm::DataLayout::getTypeSizeInBits(this, **(v8 + 16));
      return llvm::TypeSize::operator unsigned long long() == 4;
    }

    return 0;
  }

  return result;
}

void llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v11, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v13 = v4;
  v28 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v12, &v28);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v28;
  }

  else
  {
    v7 = v6;
  }

  v8 = v13;
  if ((*v13 + (v13[2].u32[0] << 7)) != v7)
  {
    v24 = v26;
    v25 = 0x800000000;
    if (v7[12])
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v24, (v7 + 10));
      v8 = v13;
    }

    v27 = *(v7 + 15);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(v8, v7);
    v9 = v13;
    v19 = a2;
    v20 = v22;
    v21 = 0x800000000;
    if (v25)
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v20, &v24);
      a2 = v19;
    }

    v23 = v27;
    llvm::CallbackVH::CallbackVH(&v14, a2);
    v14 = &unk_28257BDC8;
    v17 = v9;
    llvm::ValueHandleBase::ValueHandleBase(v29, (LODWORD(v15[0]) >> 1) & 3, v15);
    v28 = &unk_28257BDC8;
    v31 = v17;
    v32 = v34;
    v33 = 0x800000000;
    if (v21)
    {
      llvm::SmallVectorImpl<llvm::MDNode *>::operator=(&v32, &v20);
    }

    v35 = v23;
    v18 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v9, v9[4], v30, &v18) & 1) == 0)
    {
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>>(v9, &v28, v18);
      llvm::ValueHandleBase::operator=((v10 + 1), v29);
      v10[4] = v31;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v33)
      {
        llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v10 + 5), &v32);
      }

      v10[15] = v35;
    }

    if (v32 != v34)
    {
      free(v32);
    }

    if (v30 != -8192 && v30 != -4096 && v30)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v29);
    }

    if (v16 != -8192 && v16 != -4096 && v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }

    if (v20 != v22)
    {
      free(v20);
    }

    if (v24 != v26)
    {
      free(v24);
    }
  }

  if (v12 != -8192 && v12 != -4096)
  {
    if (v12)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }
  }
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>>(llvm::ValueHandleBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 4), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 2);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::grow(llvm::ValueHandleBase *a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x20F330650](v8 << 7, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
    v24[0] = 2;
    v24[1] = 0;
    v25 = -4096;
    v26 = 0;
    v22 = 0;
    v23 = &unk_28257BDC8;
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v25 && v12 != v21)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 4), v12, &v27);
          v14 = v27;
          llvm::ValueHandleBase::operator=((v27 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 2);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
      if (v21 != -8192 && v21 != -4096 && v21)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v20);
      }
    }

    v18 = v25;
    if (v25 != -8192 && v25 != -4096 && v25)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v24);
    }

    return llvm::deallocate_buffer(v18, v4, v9);
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::GetElementPtrInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::GetElementPtrInst *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_28257BDC8;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderRegularPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderRegularPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderRegular>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 109;
  }

  v2 = &aStringrefLlvmG_25[v1];
  v3 = 109 - v1;
  if ((109 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 109 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::GlobalOptPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::GlobalOptPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::AlwaysInlinerPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::AlwaysInlinerPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void AGCLLVMAGPVertexShaderRegular::~AGCLLVMAGPVertexShaderRegular(AGCLLVMAGPVertexShaderRegular *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_2825643F0;
  v5 = (this + 10456);
  *(this + 1307) = off_282564770;
  *(this + 1520) = &off_282564880;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255E220);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_2825643F0;
  v5 = (this + 10456);
  *(this + 1307) = off_282564770;
  *(this + 1520) = &off_282564880;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_28255E220);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

BOOL AGCLLVMAGPVertexShaderPostTessellationHW::constructReply(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  v2 = AGCLLVMAGPVertexShaderPostTessellation::constructReply(this);
  if (v2)
  {
    v3 = this + *(*this - 24);
    v18 = *(this + 5249);
    v4 = *(this + 5250);
    v5 = *(this + 5308);
    v6 = *(this + 5309);
    v7 = *(this + 5310);
    v8 = *(this + 5311);
    v3[4454] = 1;
    v9 = *(v3 + 1106);
    v10 = *(v3 + 1104) - *(v3 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 14, v8, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 12, v7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 10, v6, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 8, v5, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 6, v4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 4, v18, 0);
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4384), v10 + v9);
    v12 = this + *(*this - 24);
    v12[4454] = 1;
    v13 = *(v12 + 1106);
    v14 = *(v12 + 1104) - *(v12 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v12 + 4384), v11);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4384), v14 + v13);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4384), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

BOOL AGCLLVMAGPVertexShaderPostTessellation::constructReply(AGCLLVMAGPVertexShaderPostTessellation *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    v5 = AGCLLVMAGPVertexShader::constructMTLVertexInfo(this);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 4288, 4, *(this + 10420));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 4288, 6, *(this + 10424));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 4288, 8, *(this + 10428));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v6 + 4288, 14, *(this + 10432));
    v9 = (*(*this + 656))(this);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v6 + 4288, 16, v9, 0);
    LODWORD(v6) = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    v10 = this + *(*this - 24);
    v11 = *(v10 + 1080);
    v10[4358] = 1;
    v12 = *(v10 + 1082);
    v13 = v11 - *(v10 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v10 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v10 + 4288), v4);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((v10 + 4288), v5);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLPostTessellationInfo>((v10 + 4288), v6);
    v14 = *(*this - 24);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v10 + 4288), v13 + v12);
    flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4288), v15, v16);

    return AGCLLVMAGPVertexShader::validateReply(this);
  }

  return result;
}

void virtual thunk toAGCLLVMAGPVertexShaderPostTessellationHW::~AGCLLVMAGPVertexShaderPostTessellationHW(AGCLLVMAGPVertexShaderPostTessellationHW *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28255E2A0;
  v4[1357] = &unk_28255E648;
  v4[1570] = &unk_28255E758;
  v5 = v4[1355];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v4 + 1353));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(v4, off_28255E768, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1357));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28255E2A0;
  v4[1357] = &unk_28255E648;
  v4[1570] = &unk_28255E758;
  v5 = v4[1355];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v4 + 1353));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(v4, off_28255E768, a3, a4);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1357));
}

void AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(AGCLLVMAGPVertexShaderPostTessellation *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[13];
  *(this + *(*this - 24) + 1704) = a2[14];
  v7 = *(this + 1352);
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 10800));
  }

  v9 = (this + 10776);
  v10 = -360;
  do
  {
    v11 = *(v9 + 2);
    if (v11 != -8192 && v11 != -4096 && v11 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v9);
    }

    v9 = (v9 - 24);
    v10 += 24;
  }

  while (v10);
  v13 = a2[1];
  *this = v13;
  *(this + *(v13 - 24)) = a2[11];
  *(this + *(*this - 24) + 1704) = a2[12];
  v14 = *(this + 1295);
  if (v14 != this + 10376)
  {
    free(v14);
  }

  v15 = *(this + 1229);
  if (v15 != this + 9848)
  {
    free(v15);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, a2 + 2);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(AGCLLVMAGPVertexShaderPostTessellation *this)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (!v2)
  {
    return v2;
  }

  v3 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v79, *v3);
  v86 = this;
  v79 = &unk_28257C0E8;
  v85[37] = v3;
  {
    AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(void)::tessellation_builtins = "air.get_num_patch_control_points";
    dword_27C8D7B90 = 1;
    qword_27C8D7B98 = AGCLLVMAGPVertexShaderPostTessellation::buildNumPatchControlPoints;
    dword_27C8D7BA0 = 0;
    dword_27C8D7BA8 = 2;
    word_27C8D7BAC = 0;
  }

  if (AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(void)::tessellation_builtins)
  {
    strlen(AGCLLVMAGPVertexShaderPostTessellation::replaceBuiltins(void)::tessellation_builtins);
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v65 = v2;
    v66 = Function;
    if (dword_27C8D7BA8 == 12)
    {
      for (i = *(Function + 8); i; v82 = 0uLL)
      {
        v7 = *(i + 24);
        i = *(i + 8);
        llvm::IRBuilderBase::SetInsertPoint(v80, v7);
        v8 = v86 + *(*v86 - 24);
        v87[0] = v82;
        llvm::IRBuilderBase::getCurrentDebugLocation(&v87[1], v80);
        DWORD2(v87[1]) = v83;
        AGCLLVMBuilder::InsertPoint::restoreIP(v87, (v8 + 1712));
        if (*&v87[1])
        {
          llvm::MetadataTracking::untrack();
        }

        v9 = qword_27C8D7B98;
        v10 = (v86 + (dword_27C8D7BA0 >> 1));
        if (dword_27C8D7BA0)
        {
          v9 = *(*v10 + qword_27C8D7B98);
        }

        v9(v10, v7);
      }

      goto LABEL_123;
    }

    if (dword_27C8D7BA8 == 11)
    {
      if (qword_27C8D7B98)
      {
        v5 = strlen(qword_27C8D7B98);
        *&v87[0] = &v87[1] + 8;
        *(v87 + 8) = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v87, qword_27C8D7B98, (qword_27C8D7B98 + v5));
      }

      else
      {
        *&v87[1] = 64;
        *&v87[0] = &v87[1] + 8;
        *(&v87[0] + 1) = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v87, ".", "");
      if (*&v87[1] < *(&v87[0] + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (*&v87[0] != (&v87[1] + 8))
      {
        free(*&v87[0]);
      }

      goto LABEL_123;
    }

    v11 = **(*(Function + 24) + 16);
    v12 = ((*(v11 + 8) & 0xFE) == 18) & HIBYTE(word_27C8D7BAC);
    if (v12 == 1)
    {
      v13 = *(v11 + 32);
    }

    else
    {
      v13 = 1;
    }

    v67 = v13;
    v64 = v83;
    v14 = *(Function + 8);
    if (!v14)
    {
LABEL_117:
      v83 = v64;
LABEL_123:
      llvm::Function::eraseFromParent(v66);
      v2 = v65;
      goto LABEL_124;
    }

    while (1)
    {
      v15 = *(v14 + 24);
      v16 = *(v14 + 8);
      if (dword_27C8D7B90 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (dword_27C8D7B90 != 2)
        {
          goto LABEL_26;
        }

        v17 = 121;
      }

      v83 = v17;
LABEL_26:
      v68 = v16;
      llvm::IRBuilderBase::SetInsertPoint(v80, v15);
      v18 = llvm::UndefValue::get();
      if (v67)
      {
        for (j = 0; j != v67; ++j)
        {
          v69 = v18;
          v88 = 0;
          memset(v87, 0, sizeof(v87));
          v20 = llvm::CallBase::arg_end(v15) - v15 + 32 * (*(v15 + 5) & 0x7FFFFFF);
          if ((v20 & 0x1FFFFFFFE0) != 0)
          {
            v21 = (v20 >> 5);
            v22 = v87;
            v23 = v15;
            do
            {
              v24 = (v23 - 32 * (*(v15 + 5) & 0x7FFFFFF));
              v25 = *v24;
              *v22 = *v24;
              if (v12 && (*(*v25 + 8) & 0xFE) == 0x12)
              {
                v78 = 257;
                v26 = llvm::ConstantInt::get();
                *v22 = llvm::IRBuilderBase::CreateExtractElement(v80, v25, v26, &PrimitiveSizeInBits);
              }

              ++v22;
              v23 = (v23 + 32);
              --v21;
            }

            while (v21);
          }

          if (word_27C8D7BAC)
          {
            v27 = **&v87[0];
            if ((*(**&v87[0] + 8) & 0xFE) == 0x12)
            {
              v27 = **(v27 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v27);
            v77 = v28;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v29 = 0;
            }

            else
            {
              v30 = v85[4];
              if ((*(**&v87[0] + 8) & 0xFE) == 0x12)
              {
                v30 = llvm::FixedVectorType::get();
              }

              if ((v20 & 0x1FFFFFFFE0) != 0)
              {
                v31 = (v20 >> 5);
                v32 = v87;
                do
                {
                  v33 = *v32;
                  v78 = 257;
                  *v32++ = llvm::IRBuilderBase::CreateFPExt(v80, v33, v30, &PrimitiveSizeInBits);
                  --v31;
                }

                while (v31);
              }

              v29 = 1;
            }
          }

          else
          {
            v29 = 0;
          }

          if (llvm::FPMathOperator::classof(v15))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v15);
          }

          else
          {
            FastMathFlags = 0;
          }

          v35 = v86 + *(*v86 - 24);
          v73 = v82;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v74, v80);
          v75 = v83;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v73, (v35 + 1712));
          if (v74)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          if (dword_27C8D7BA8 > 5)
          {
            if (dword_27C8D7BA8 <= 7)
            {
              if (dword_27C8D7BA8 == 6)
              {
                v53 = qword_27C8D7B98;
                v54 = (v86 + (dword_27C8D7BA0 >> 1));
                if (dword_27C8D7BA0)
                {
                  v53 = *(*v54 + qword_27C8D7B98);
                }

                v59 = v53(v54, *&v87[0], *(&v87[0] + 1), FastMathFlags);
                goto LABEL_94;
              }

              if (dword_27C8D7BA8 == 7)
              {
                v46 = qword_27C8D7B98;
                v48 = *(&v87[0] + 1);
                v47 = *&v87[0];
                v49 = *&v87[1];
                v50 = (v86 + (dword_27C8D7BA0 >> 1));
                if ((dword_27C8D7BA0 & 1) == 0)
                {
                  goto LABEL_102;
                }

                v55 = (*(*v50 + qword_27C8D7B98))(v50, *&v87[0], *(&v87[0] + 1), *&v87[1]);
LABEL_103:
                FPTrunc = v55;
              }
            }

            else
            {
              switch(dword_27C8D7BA8)
              {
                case 8:
                  v56 = qword_27C8D7B98;
                  v57 = (v86 + (dword_27C8D7BA0 >> 1));
                  if (dword_27C8D7BA0)
                  {
                    v56 = *(*v57 + qword_27C8D7B98);
                  }

                  v59 = v56(v57, *&v87[0], *(&v87[0] + 1), *&v87[1], FastMathFlags);
LABEL_94:
                  FPTrunc = v59;
                  break;
                case 9:
                  v46 = qword_27C8D7B98;
                  v50 = (v86 + (dword_27C8D7BA0 >> 1));
                  if (dword_27C8D7BA0)
                  {
                    v46 = *(*v50 + qword_27C8D7B98);
                  }

                  v47 = v87;
                  v48 = &unk_20E75F419;
                  v49 = 0;
LABEL_102:
                  v55 = v46(v50, v47, v48, v49);
                  goto LABEL_103;
                case 10:
                  v41 = qword_27C8D7B98;
                  v42 = (v86 + (dword_27C8D7BA0 >> 1));
                  if (dword_27C8D7BA0)
                  {
                    v41 = *(*v42 + qword_27C8D7B98);
                  }

                  v55 = v41(v42, *v15, v87, &unk_20E75F419, 0);
                  goto LABEL_103;
              }
            }
          }

          else if (dword_27C8D7BA8 <= 2)
          {
            if (dword_27C8D7BA8 == 1)
            {
              v51 = qword_27C8D7B98;
              v52 = (v86 + (dword_27C8D7BA0 >> 1));
              if (dword_27C8D7BA0)
              {
                v51 = *(*v52 + qword_27C8D7B98);
              }

              v55 = v51(v52);
              goto LABEL_103;
            }

            if (dword_27C8D7BA8 == 2)
            {
              v43 = qword_27C8D7B98;
              v44 = *v15;
              v45 = (v86 + (dword_27C8D7BA0 >> 1));
              if ((dword_27C8D7BA0 & 1) == 0)
              {
LABEL_78:
                v55 = v43(v45, v44);
                goto LABEL_103;
              }

LABEL_77:
              v43 = *(*v45 + v43);
              goto LABEL_78;
            }
          }

          else
          {
            switch(dword_27C8D7BA8)
            {
              case 3:
                v43 = qword_27C8D7B98;
                v44 = *&v87[0];
                v45 = (v86 + (dword_27C8D7BA0 >> 1));
                if ((dword_27C8D7BA0 & 1) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_77;
              case 4:
                v58 = (*&v87[0] + 24);
                if (*(*&v87[0] + 32) >= 0x41u)
                {
                  v58 = *v58;
                }

                v39 = *v58;
                v37 = qword_27C8D7B98;
                v38 = *v15;
                v40 = (v86 + (dword_27C8D7BA0 >> 1));
                if (dword_27C8D7BA0)
                {
                  v37 = *(*v40 + qword_27C8D7B98);
                }

                goto LABEL_96;
              case 5:
                v37 = qword_27C8D7B98;
                v39 = *(&v87[0] + 1);
                v38 = *&v87[0];
                v40 = (v86 + (dword_27C8D7BA0 >> 1));
                if (dword_27C8D7BA0)
                {
                  v37 = *(*v40 + qword_27C8D7B98);
                }

LABEL_96:
                v55 = v37(v40, v38, v39);
                goto LABEL_103;
            }
          }

          v60 = v86 + *(*v86 - 24);
          v70 = *(v60 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (v60 + 1712));
          v72 = *(v60 + 452);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v70, v80);
          if (v71)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v29)
          {
            v61 = *v15;
            if (v12 && (*(v61 + 8) & 0xFE) == 0x12)
            {
              v61 = **(v61 + 16);
            }

            v78 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v80, FPTrunc, v61, &PrimitiveSizeInBits);
          }

          if (v12)
          {
            v78 = 257;
            v62 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v80, v69, FPTrunc, v62, &PrimitiveSizeInBits);
          }

          v18 = FPTrunc;
        }
      }

      if (*v15 != v85[1])
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v15);
      v14 = v68;
      if (!v68)
      {
        goto LABEL_117;
      }
    }
  }

LABEL_124:
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v85);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v84);
  if (v80[0] != &v81)
  {
    free(v80[0]);
  }

  return v2;
}

llvm::Value *AGCLLVMAGPVertexShaderPostTessellation::buildNumPatchControlPoints(AGCLLVMAGPVertexShaderPostTessellation *this, llvm::Type *a2, unsigned int a3)
{
  v4 = this + *(*this - 24);
  TessConstant = AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(this, 0xDu, a3);

  return AGCLLVMBuilder::truncateToSmall((v4 + 1704), TessConstant, a2);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(void *a1, unsigned int a2, unsigned int a3)
{
  v4 = &a1[3 * a2];
  v5 = (v4 + 1305);
  if (!v4[1307])
  {
    v6 = &(&AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(AGCLLVMAGPVertexShaderPostTessellation::TessConstant)::tess_constant_info)[3 * a2];
    v7 = 1;
    v8 = llvm::User::operator new(0x58);
    v9 = *v6;
    HIBYTE(v17) = 1;
    if (*v9)
    {
      v16 = v9;
      v7 = 3;
    }

    LOBYTE(v17) = v7;
    llvm::GlobalVariable::GlobalVariable();
    *(v8 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v10 = a1 + *(*a1 - 24);
    v11 = *(v10 + 268);
    v12 = AGCLLVMBuilder::buildGlobalMetadata(v10 + 213, v8, *(v6 + 2), *(v6 + 4));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, v12);
    llvm::ValueHandleBase::operator=(v5, v8);
  }

  v13 = a1 + *(*a1 - 24);
  v14 = *(v5 + 2);
  v17 = 257;
  return AGCLLVMBuilder::CreateLoad((v13 + 1704), v14, &v16);
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x60)
  {
    v1 = v0;
  }

  else
  {
    v1 = 96;
  }

  v2 = &aStringrefLlvmG_30[v1];
  v3 = 96 - v1;
  if ((96 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 96 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderPostTessellationPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderPostTessellation>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x76)
  {
    v1 = v0;
  }

  else
  {
    v1 = 118;
  }

  v2 = &aStringrefLlvmG_29[v1];
  v3 = 118 - v1;
  if ((118 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 118 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMAGPVertexShaderPostTessellationHW::getDrawPatchIndex(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  v2 = this + *(*this - 24);
  VIRead = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, 8);
  v4 = *(this + *(*this - 24) + 1904);
  v7 = 257;
  return llvm::IRBuilderBase::CreateCast((v2 + 1712), 49, VIRead, v4, v6);
}

llvm::Instruction *AGCLLVMAGPVertexShaderPostTessellationHW::getInstanceID(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "air.get_instance_id.i32", 23, *(this + *(*this - 24) + 1904));
  v3 = (this + *(*this - 24));
  v6 = 257;
  return llvm::IRBuilderBase::CreateCall(v3 + 214, *(inserted + 24), inserted, 0, 0, v5);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellationHW::getPatchPosition(AGCLLVMAGPVertexShaderPostTessellationHW *this)
{
  VIRead = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, 6);
  v3 = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, 7);
  if (*(this + 2605))
  {
    v4 = llvm::UndefValue::get();
    v5 = this + *(*this - 24);
    v38 = 257;
    v6 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v5 + 1712), v4, VIRead, v6, v37);
    v8 = this + *(*this - 24);
    v38 = 257;
    v9 = llvm::ConstantInt::get();
    v10 = (v8 + 1712);
    v11 = InsertElement;
    v12 = v3;
  }

  else
  {
    v13 = llvm::UndefValue::get();
    v14 = this + *(*this - 24);
    v38 = 257;
    v15 = llvm::ConstantInt::get();
    v16 = llvm::IRBuilderBase::CreateInsertElement((v14 + 1712), v13, VIRead, v15, v37);
    v17 = this + *(*this - 24);
    v38 = 257;
    v18 = llvm::ConstantInt::get();
    v19 = llvm::IRBuilderBase::CreateInsertElement((v17 + 1712), v16, v3, v18, v37);
    v20 = this + *(*this - 24);
    v21 = llvm::ConstantFP::get();
    v22 = this + *(*this - 24);
    v38 = 257;
    v23 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v22 + 1712), v19, v23, v37);
    v25 = this + *(*this - 24);
    v36 = 257;
    v26 = llvm::ConstantInt::get();
    v27 = llvm::IRBuilderBase::CreateExtractElement((v25 + 1712), v19, v26, v35);
    v34 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd((v22 + 1712), Element, v27, v33);
    v32[16] = 257;
    FSub = llvm::IRBuilderBase::CreateFSub((v20 + 1712), v21, FAdd, v32);
    v30 = this + *(*this - 24);
    v38 = 257;
    v9 = llvm::ConstantInt::get();
    v10 = (v30 + 1712);
    v11 = v19;
    v12 = FSub;
  }

  return llvm::IRBuilderBase::CreateInsertElement(v10, v11, v12, v9, v37);
}