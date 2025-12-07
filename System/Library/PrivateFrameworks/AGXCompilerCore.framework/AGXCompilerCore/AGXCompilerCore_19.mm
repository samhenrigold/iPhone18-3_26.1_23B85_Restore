uint64_t AGCLLVMGen3TargetLowerer::buildImageBlockMemWriteLoop(void *a1, llvm::BasicBlock *a2, llvm::BasicBlock *a3, uint64_t a4, llvm::Type **a5, llvm::Type **Load, llvm::Value *a7, uint64_t a8, llvm::Value *a9, unsigned int a10)
{
  v27 = *MEMORY[0x277D85DE8];
  a1[7] = a3;
  a1[8] = a3 + 40;
  v16 = a1[24];
  v26 = 257;
  PHI = llvm::IRBuilderBase::CreatePHI((a1 + 1), v16, 2, v25);
  llvm::PHINode::addIncoming(PHI, a7, a2);
  v26 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), PHI, a9, v25);
  llvm::PHINode::addIncoming(PHI, Add, a3);
  if (*(*Load + 8) == 15)
  {
    v26 = 257;
    GEP = AGCLLVMBuilder::CreateGEP(a1, Load, PHI, v25);
    v26 = 257;
    Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v25);
  }

  v26 = 257;
  v20 = AGCLLVMBuilder::CreateGEP(a1, a5, PHI, v25);
  llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Load, v20, 0, 0);
  v25[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v26 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, a10, Add, a8, v25);
  return llvm::IRBuilderBase::CreateCondBr(a1 + 1, ICmp, a3, a4);
}

llvm::Value *AGCLLVMGen3TargetLowerer::splitUnalignedLoads(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, llvm::Value *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = *a2;
  v43 = *(a2 + 2);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v42, a1 + 8);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((*(a6 + 8) & 0xFE) == 0x12)
  {
    v15 = *(a6 + 32);
  }

  else
  {
    v15 = 1;
  }

  if (*(a1 + 184) == a6)
  {
    v27 = llvm::ConstantInt::get();
    v41 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), a7, v27, v40);
    v37 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
    v39 = *(a1 + 104);
    Cast = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(a1, &v37, "i8", 2, a4, a5, a6, Add, a8, a9, a10, a11);
    if (v38)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v16 = llvm::UndefValue::get();
    v17 = v16;
    if (v15)
    {
      v18 = 0;
      v19 = v15;
      v20 = v15;
      do
      {
        v21 = a6;
        if ((*(a6 + 8) & 0xFE) == 0x12)
        {
          v21 = **(a6 + 16);
        }

        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v21);
        if (ScalarSizeInBits >= 9)
        {
          llvm::IntegerType::get();
          v21 = llvm::FixedVectorType::get();
        }

        v34 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (a1 + 8));
        v36 = *(a1 + 104);
        v23 = AGCLLVMGen3TargetLowerer::splitUnalignedLoads(a1, &v34, a3, a4, a5, v21, a7, a8, a9, a10, a11);
        if (v35)
        {
          llvm::MetadataTracking::untrack();
        }

        v24 = a6;
        if ((*(a6 + 8) & 0xFE) == 0x12)
        {
          v24 = **(a6 + 16);
        }

        v41 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v23, v24, v40);
        if (v19 != 1)
        {
          v41 = 257;
          v26 = llvm::ConstantInt::get();
          Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v17, Cast, v26, v40);
        }

        a3 = a3 + (ScalarSizeInBits >> 3);
        ++v18;
        v17 = Cast;
      }

      while (v20 != v18);
    }

    else
    {
      return v16;
    }
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = *a2;
  v25 = *(a2 + 2);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v24, a1 + 8);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v23[0] = AGCLLVMGen3TargetLowerer::getMemoryReadIntrinsicArgsFromIR(a1, a7, a3, a4);
  v23[1] = v18;
  v20 = 0;
  return (*(*a1 + 1688))(a1, v23, a5, a6, a7, a8, a11, a12, a9, a10, v20);
}

uint64_t AGCLLVMGen3TargetLowerer::splitUnalignedStore(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int a5, uint64_t a6, llvm::Value *a7, llvm::Value *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = *MEMORY[0x277D85DE8];
  v39 = *a3;
  v40 = *(a3 + 2);
  if (v40)
  {
    llvm::MetadataTracking::track();
  }

  v41 = *(a3 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v39, a2 + 8);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = *a7;
  if ((*(*a7 + 8) & 0xFE) == 0x12)
  {
    LODWORD(v18) = *(v17 + 32);
  }

  else
  {
    LODWORD(v18) = 1;
  }

  if (v17 == *(a2 + 184))
  {
    v24 = llvm::ConstantInt::get();
    v38 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a2 + 8), a8, v24, &v35);
    v32 = *(a2 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (a2 + 8));
    v34 = *(a2 + 104);
    result = AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(a1, a2, &v32, "i8", 2, a5, a6, a7, Add, 0, a9, a10, a11, a12, 0);
    if (v33)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    *v42 = 0u;
    v43 = 0u;
    result = AGCLLVMBuilder::unboxVector(a2, a7, v42);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
    if (v18)
    {
      v20 = v42;
      v18 = v18;
      do
      {
        Cast = *v20;
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(**v20);
        if (ScalarSizeInBits >= 9)
        {
          llvm::IntegerType::get();
          v23 = llvm::FixedVectorType::get();
          v38 = 257;
          Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 49, Cast, v23, &v35);
        }

        v29 = *(a2 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (a2 + 8));
        v31 = *(a2 + 104);
        AGCLLVMGen3TargetLowerer::splitUnalignedStore(&v35, a2, &v29, a4, a5, a6, Cast, a8, a9, a10, a11, a12);
        *a1 = v35;
        result = llvm::TrackingMDRef::operator=((a1 + 16), &v36);
        *(a1 + 24) = v37;
        if (v36)
        {
          result = llvm::MetadataTracking::untrack();
        }

        if (v30)
        {
          result = llvm::MetadataTracking::untrack();
        }

        a4 = a4 + (ScalarSizeInBits >> 3);
        ++v20;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v26 = *a3;
  v27 = *(a3 + 2);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a3 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v26, a2 + 8);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v25[0] = AGCLLVMGen3TargetLowerer::getMemoryWriteIntrinsicArgsFromIR(a2, *a8, a4, a5);
  v25[1] = v20;
  HIBYTE(v22) = a15 ^ 1;
  LOBYTE(v22) = a10;
  return (*(*a2 + 1696))(a2, v25, a6, a7, a8, a9, a13, a13 != 0, a14, a11, a12, v22);
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromFormat(uint64_t a1, llvm::ConstantInt **a2, __int128 *a3, AGCLLVMGen3TargetLowerer *a4, uint64_t a5, unsigned int a6, unsigned int a7, llvm::ConstantInt **a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = *a3;
  v26 = *(a3 + 2);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a3 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v25, (a2 + 1));
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v18.i32[0] = a5;
  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  v24[0] = (a5 << 32) | (v19.u32[0] << 48) | (a4 << 16) | AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a4, 0);
  v24[1] = llvm::FixedVectorType::get();
  v20 = llvm::ConstantInt::get();
  v22 = 0;
  return (*(*a2 + 212))(a2, v24, a6, v20, a8, a9, a12, a12 != 0, a13, a10, a11, v22);
}

uint64_t AGCLLVMGen3TargetLowerer::buildExtractColorCoverageMask(void *a1, __int128 *a2, llvm::Value *a3, llvm::Value *a4)
{
  v21 = *a2;
  v22 = *(a2 + 2);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v21, (a1 + 1));
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = llvm::ConstantInt::get();
  v20 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), a4, v8, v19);
  v10 = (*(*a1 + 1608))(a1);
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, Mul, v10, v17);
  v20 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), a3, Cast, v19);
  v13 = a1[24];
  v18 = 257;
  v14 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v13, v17);
  v20 = 257;
  v15 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateAnd((a1 + 1), v14, v15, v19);
}

uint64_t AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.threadgroup.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v18, aXyz[a4]);
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 200));
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildLayerId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.get.layerid", "");
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildThreadgroupDispatchSize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C500;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.dispatch.threadgroup.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v18, aXyz[a4]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, ".size", "");
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 200));
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildGlobalID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C500;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.thread.position.in.grid.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v18, aXyz[a4]);
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 200));
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.quad.group", "");
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadBroadcast(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2480), a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffle(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2488), a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffleXor(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2512), a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedReduce(uint64_t result, llvm::Value *a2, llvm::Value *a3, int a4, int a5)
{
  v6 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = **(v6 + 16);
  }

  if (a4 > 4)
  {
    if (a4 <= 7)
    {
      if (a4 == 5)
      {
        if (*(v6 + 8) <= 6u)
        {
          v12 = 257;
          goto LABEL_30;
        }

        v12 = 257;
        v7 = (result + 8);
        if (a5)
        {
          v8 = 38;
        }

        else
        {
          v8 = 34;
        }
      }

      else
      {
        if (a4 != 6)
        {
LABEL_17:
          if (*(v6 + 8) > 6u)
          {
            v10 = 257;
            return llvm::IRBuilderBase::CreateMul((result + 8), a2, a3, v9);
          }

          else
          {
            v12 = 257;
            return llvm::IRBuilderBase::CreateFMul(result + 8, a2, a3, v11);
          }
        }

        if (*(v6 + 8) <= 6u)
        {
          v12 = 257;
LABEL_30:
          llvm::IRBuilderBase::CreateFCmpHelper();
LABEL_38:
          v12 = 257;
          return llvm::IRBuilderBase::CreateSelect();
        }

        v12 = 257;
        v7 = (result + 8);
        if (a5)
        {
          v8 = 40;
        }

        else
        {
          v8 = 36;
        }
      }

      llvm::IRBuilderBase::CreateICmp(v7, v8, a2, a3, v11);
      goto LABEL_38;
    }

    if (a4 != 8)
    {
      if (a4 == 9)
      {
        goto LABEL_17;
      }

      if (a4 != 10)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateXor((result + 8), a2, a3, v11);
    }

    if (a4 == 3)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (*(v6 + 8) > 6u)
    {
      v10 = 257;
      return llvm::IRBuilderBase::CreateAdd((result + 8), a2, a3, v9);
    }

    else
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateFAdd(result + 8, a2, a3, v11);
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateOr((result + 8), a2, a3, v11);
    }
  }

  else
  {
    v12 = 257;
    return llvm::IRBuilderBase::CreateAnd((result + 8), a2, a3, v11);
  }

  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(uint64_t a1, uint64_t a2, llvm::Type **Cast, unsigned int a4, int a5)
{
  v41 = *a2;
  v42 = *(a2 + 16);
  if (v42)
  {
    llvm::MetadataTracking::track();
  }

  v43 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v41);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v38 = *a2;
  v39 = *(a2 + 16);
  if (v39)
  {
    llvm::MetadataTracking::track();
  }

  v40 = *(a2 + 24);
  v29 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v38, *(a1 + 192));
  if (v39)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = *Cast;
  if (llvm::Type::getScalarSizeInBits(*Cast) <= 7)
  {
    v10 = *(a1 + 184);
    v50 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Cast, v10, v49);
  }

  v30 = Cast;
  getSimdReductionIdentity(a4, Cast, v8, v9);
  v11 = 0;
  Select = 0;
  do
  {
    v31 = Select;
    v13 = llvm::ConstantInt::get();
    v35 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (a1 + 8));
    v14 = *(a1 + 104);
    v37 = v14;
    v57 = v35;
    v58 = v36;
    if (v36)
    {
      llvm::MetadataTracking::track();
      v14 = v37;
    }

    v59 = v14;
    AGCLLVMTargetLowerer::SetIP(a1, &v57);
    if (v58)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = llvm::ConstantInt::get();
    v54 = v35;
    v55 = v36;
    if (v36)
    {
      llvm::MetadataTracking::track();
    }

    v56 = v37;
    v16 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v54, *(a1 + 192));
    if (v55)
    {
      llvm::MetadataTracking::untrack();
    }

    v51 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (a1 + 8));
    v53 = *(a1 + 104);
    v17 = AGCLLVMGen3TargetLowerer::buildQuadShuffle(a1, &v51, v16, v13);
    v50 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v17, v13, v49);
    v48 = 257;
    v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v15, ICmp, v47);
    if (v52)
    {
      llvm::MetadataTracking::untrack();
    }

    v20 = 4;
    do
    {
      random();
      v21 = llvm::ConstantInt::get();
      v44 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (a1 + 8));
      v46 = *(a1 + 104);
      v22 = AGCLLVMGen3TargetLowerer::buildQuadShuffle(a1, &v44, v21, v13);
      v50 = 257;
      v23 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v22, v21, v49);
      v48 = 257;
      v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v23, v47);
      if (v45)
      {
        llvm::MetadataTracking::untrack();
      }

      --v20;
    }

    while (v20);
    if (v36)
    {
      llvm::MetadataTracking::untrack();
    }

    v32 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (a1 + 8));
    v34 = *(a1 + 104);
    AGCLLVMGen3TargetLowerer::buildQuadShuffle(a1, &v32, v30, v13);
    if (v33)
    {
      llvm::MetadataTracking::untrack();
    }

    v50 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    if (a4 - 7 > 1)
    {
      if (a4 - 9 <= 1)
      {
        v50 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 36, v13, v29, v49);
        v48 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
      }

      v24 = v31;
      if (v31)
      {
LABEL_36:
        Select = AGCLLVMGen3TargetLowerer::buildEmulatedReduce(a1, v24, Select, a4, a5);
      }
    }

    else
    {
      v50 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 37, v13, v29, v49);
      v48 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v24 = v31;
      if (v31)
      {
        goto LABEL_36;
      }
    }

    ++v11;
  }

  while (v11 != 4);
  v50 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v26, v49);
}

llvm::Type *getSimdReductionIdentity(unsigned int a1, llvm::Type *a2, uint64_t a3, BOOL a4)
{
  v4 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v4 = **(*a2 + 16);
  }

  if (a1 <= 0xA)
  {
    if (((1 << a1) & 0x516) != 0)
    {
      if (*(v4 + 8) <= 6u)
      {
        return llvm::ConstantFP::get();
      }

      return llvm::ConstantInt::get();
    }

    if (((1 << a1) & 0x288) != 0)
    {
      if (*(v4 + 8) <= 6u)
      {
        return llvm::ConstantFP::get();
      }

      return llvm::ConstantInt::get();
    }

    if (!a1)
    {
      return llvm::ConstantInt::get();
    }
  }

  return a2;
}

llvm::Type *AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(uint64_t a1, uint64_t a2, llvm::Type **a3, int a4, char a5)
{
  v54 = a4;
  v53 = a5;
  v52 = 32;
  v49 = *a2;
  v50 = *(a2 + 16);
  if (v50)
  {
    llvm::MetadataTracking::track();
  }

  v51 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v49);
  if (v50)
  {
    llvm::MetadataTracking::untrack();
  }

  v46 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (a1 + 8));
  v48 = *(a1 + 104);
  v8 = (*(*a1 + 1624))(a1, &v46, *(a1 + 192));
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  v42 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
  v44 = *(a1 + 104);
  v9 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(a1, &v42, v8);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  v45 = v9;
  v10 = llvm::ConstantInt::get();
  v11 = *(a1 + 200);
  LOWORD(v29) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v8, v11, v28);
  v41 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v10, Cast, v40);
  v36 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
  v38 = *(a1 + 104);
  active = AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(a1, &v36, Shl, v9);
  if (v37)
  {
    llvm::MetadataTracking::untrack();
  }

  v39 = active;
  v15 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.ctpop.i32", 14, *(a1 + 200), *(a1 + 200));
  v35 = v15;
  v16 = llvm::ConstantInt::get();
  LOWORD(v29) = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Shl, v16, v28);
  v41 = 257;
  v34 = llvm::IRBuilderBase::CreateAnd((a1 + 8), active, Sub, v40);
  LOWORD(v29) = 257;
  v18 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v15 + 24), v15, &v34, 1, v28);
  v19 = *v8;
  v41 = 257;
  v20 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v18, v19, v40);
  v28[0] = a1;
  v28[1] = &v45;
  v28[2] = &v33;
  v28[3] = &v52;
  v29 = &v54;
  v30 = &v53;
  v31 = &v35;
  v32 = &v39;
  v33 = v20;
  llvm::DataLayout::getTypeSizeInBits((a1 + 472), *a3);
  if (llvm::TypeSize::operator unsigned long long() < 0x21)
  {
    return AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(AGCLLVMBuilder::InsertPoint,llvm::Value *,SimdReduceFunction,BOOL,unsigned short)::$_0::operator()(v28, a3);
  }

  InsertElement = llvm::UndefValue::get();
  if (*(*a3 + 8))
  {
    v22 = 0;
    do
    {
      v41 = 257;
      v23 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v23, v40);
      v25 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(AGCLLVMBuilder::InsertPoint,llvm::Value *,SimdReduceFunction,BOOL,unsigned short)::$_0::operator()(v28, Element);
      v41 = 257;
      v26 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v25, v26, v40);
      ++v22;
    }

    while (v22 < *(*a3 + 8));
  }

  return InsertElement;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
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

  v8 = llvm::PointerType::get();
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a4, v8, v19);
  v10 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v10, Cast, 0, 0);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  AGCLLVMGen3TargetLowerer::buildSimdBarrier(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::IRBuilderBase::CreateAtomicRMW((a1 + 8), 5, Cast, a3, 0, 2, 1);
  v13 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (a1 + 8));
  v15 = *(a1 + 104);
  AGCLLVMGen3TargetLowerer::buildSimdBarrier(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *(a1 + 200);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*Cast);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, Cast, 0, v19);
}

llvm::Type *AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(AGCLLVMBuilder::InsertPoint,llvm::Value *,SimdReduceFunction,BOOL,unsigned short)::$_0::operator()(uint64_t *a1, llvm::Type **a2)
{
  v3 = a1;
  v4 = *a1;
  llvm::DataLayout::getTypeSizeInBits((*a1 + 472), *a2);
  v5 = *v3[1];
  v6 = llvm::PointerType::get();
  v53 = 257;
  *v3[1] = llvm::IRBuilderBase::CreateCast(v4 + 8, 49, v5, v6, v52);
  v7 = *a2;
  v8 = *v3[1];
  v9 = *v3[2];
  v53 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v4 + 8), v7, v8, v9, v52);
  llvm::IRBuilderBase::CreateAlignedStore((v4 + 8), a2, GEP, 0, 0);
  if (*v3[3] >= 2u)
  {
    v10 = 1;
    do
    {
      v49 = *(v4 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v50, (v4 + 8));
      v51 = *(v4 + 104);
      AGCLLVMGen3TargetLowerer::buildSimdBarrier(v4, &v49);
      if (v50)
      {
        llvm::MetadataTracking::untrack();
      }

      v53 = 257;
      Load = AGCLLVMBuilder::CreateLoad(v4, GEP, v52);
      getSimdReductionIdentity(*v3[4], Load, v12, v13);
      v14 = v3;
      v15 = *v3[2];
      v16 = llvm::ConstantInt::get();
      v53 = 257;
      Sub = llvm::IRBuilderBase::CreateSub((v4 + 8), v15, v16, v52);
      v18 = llvm::ConstantInt::get();
      v53 = 257;
      llvm::IRBuilderBase::CreateICmp((v4 + 8), 39, Sub, v18, v52);
      v19 = *a2;
      v20 = *v14[1];
      v21 = llvm::ConstantInt::get();
      v53 = 257;
      v22 = Sub;
      v3 = v14;
      v23 = llvm::IRBuilderBase::CreateAnd((v4 + 8), v22, v21, v52);
      v48 = 257;
      v24 = llvm::IRBuilderBase::CreateGEP((v4 + 8), v19, v20, v23, v47);
      v53 = 257;
      AGCLLVMBuilder::CreateLoad(v4, v24, v52);
      v48 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v26 = AGCLLVMGen3TargetLowerer::buildEmulatedReduce(v4, Load, Select, *v14[4], *v14[5]);
      llvm::IRBuilderBase::CreateAlignedStore((v4 + 8), v26, GEP, 0, 0);
      v10 *= 2;
    }

    while ((v10 & 0xFFFEu) < *v14[3]);
  }

  v27 = *v3[4];
  if (v27 > 0xA)
  {
    v35 = 0;
  }

  else
  {
    v28 = 1 << v27;
    if ((v28 & 0x7F) != 0)
    {
      v29 = v3[7];
      v30 = *v3[6];
      v53 = 257;
      v31 = llvm::IRBuilderBase::CreateCall((v4 + 8), *(v30 + 24), v30, v29, 1, v52);
      v32 = *(v4 + 192);
      v48 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(v4 + 8, 38, v31, v32, v47);
      v34 = llvm::ConstantInt::get();
      v53 = 257;
    }

    else
    {
      if ((v28 & 0x180) != 0)
      {
        v35 = *v3[2];
        goto LABEL_13;
      }

      Cast = *v3[2];
      v34 = llvm::ConstantInt::get();
      v53 = 257;
    }

    v35 = llvm::IRBuilderBase::CreateSub((v4 + 8), Cast, v34, v52);
  }

LABEL_13:
  v36 = *a2;
  v37 = *v3[1];
  v38 = llvm::ConstantInt::get();
  v53 = 257;
  v39 = llvm::IRBuilderBase::CreateAnd((v4 + 8), v35, v38, v52);
  v48 = 257;
  v40 = llvm::IRBuilderBase::CreateGEP((v4 + 8), v36, v37, v39, v47);
  v53 = 257;
  v41 = AGCLLVMBuilder::CreateLoad(v4, v40, v52);
  if ((*v3[4] - 9) <= 1)
  {
    v42 = llvm::ConstantInt::get();
    v53 = 257;
    llvm::IRBuilderBase::CreateICmp((v4 + 8), 39, v35, v42, v52);
    getSimdReductionIdentity(*v3[4], v41, v43, v44);
    v53 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v41;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedFirstActiveThreadIndex(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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

  v8 = llvm::ConstantInt::get();
  v9 = *(a1 + 200);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a3, v9, v20);
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v8, Cast, v25);
  v17 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
  v19 = *(a1 + 104);
  active = AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(a1, &v17, Shl, a4);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.cttz.i32", 13, *(a1 + 200), *(a1 + 200), *(a1 + 176));
  v25[0] = active;
  v25[1] = llvm::ConstantInt::get();
  v21 = 257;
  v14 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v25, 2, v20);
  v15 = *a3;
  v21 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v14, v15, v20);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadBallot(uint64_t a1, __int128 *a2, llvm::Value *a3)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  v5 = AGCLLVMGen3TargetLowerer::buildQuadElement(a1, &v16, *(a1 + 192));
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantInt::get();
  v15 = 257;
  llvm::IRBuilderBase::CreateShl((a1 + 8), v6, v5, v14);
  llvm::ConstantInt::get();
  v13 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(a1, &v10, Select, 1u, 0);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMGen3TargetLowerer::buildSimdBallot(uint64_t a1, __int128 *a2, llvm::Value *a3)
{
  v24 = *a2;
  v25 = *(a2 + 2);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 6);
  v5 = (*(*a1 + 1624))(a1, &v24, *(a1 + 192));
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v21 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (a1 + 8));
  v23 = *(a1 + 104);
  v6 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(a1, &v21, v5);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = llvm::ConstantInt::get();
  v8 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v5, v8, v19);
  v18 = 257;
  llvm::IRBuilderBase::CreateShl((a1 + 8), v7, Cast, v17);
  llvm::ConstantInt::get();
  v16 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v13 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (a1 + 8));
  v15 = *(a1 + 104);
  active = AGCLLVMGen3TargetLowerer::buildEmulatedActiveThreadsMask(a1, &v13, Select, v6);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return active;
}

std::string *AGCLLVMGen4TargetLowerer::getImageBlockWriteIntrinsicFromDimension@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, void *a4@<X8>)
{
  *a3 = 0;
  result = std::string::basic_string[abi:nn200100]<0>(a4, *(a1 + 2064));
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v7 = ".2d.array";
LABEL_13:
        result = std::string::append(result, v7);
        v9 = 1;
LABEL_16:
        *a3 = v9;
        return result;
      }

      v8 = ".2d";
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v8 = ".1d.array";
    }

    else
    {
      v8 = ".1d";
    }
  }

  else if (a2 <= 5)
  {
    if (a2 != 4)
    {
      result = std::string::append(result, ".3d");
      v9 = 2;
      goto LABEL_16;
    }

    v8 = ".2d.msaa";
  }

  else
  {
    switch(a2)
    {
      case 6:
        v8 = ".cubestf";
        break;
      case 7:
        v8 = ".cubestf.array";
        break;
      case 8:
        v7 = ".2d.msaa.array";
        goto LABEL_13;
      default:
        return result;
    }
  }

  return std::string::append(result, v8);
}

void AGCLLVMGen4TargetLowerer::buildDepthf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[16] = *MEMORY[0x277D85DE8];
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

  memset(&v17, 0, sizeof(v17));
  v24[0] = v25;
  v24[1] = 0x1000000000;
  v21 = v23;
  v22 = 0x1000000000;
  v8 = llvm::ConstantInt::get();
  v14 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
  v16 = *(a1 + 104);
  v9 = (*(*a1 + 208))(a1, &v14, v8);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  MEMORY[0x20F331AA0](&v17, *(a1 + 1616));
  if (a3)
  {
    std::string::append(&v17, ".depth");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 168));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, a3);
  }

  if (a4)
  {
    std::string::append(&v17, ".stencil");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, a4);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, v9);
  llvm::FunctionType::get();
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v10 = &v17;
LABEL_14:
    strlen(v10);
    goto LABEL_15;
  }

  v10 = v17.__r_.__value_.__r.__words[0];
  if (v17.__r_.__value_.__r.__words[0])
  {
    goto LABEL_14;
  }

LABEL_15:
  llvm::Module::getOrInsertFunction();
  v13 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v11 + 24), v11, v21, v22, v12);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void AGCLLVMGen4TargetLowerer::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v48[16] = *MEMORY[0x277D85DE8];
  v41 = *a2;
  v42 = *(a2 + 16);
  if (v42)
  {
    llvm::MetadataTracking::track();
  }

  v43 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v41);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v47[0] = v48;
  v47[1] = 0x1000000000;
  v44 = v46;
  v45 = 0x1000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, *(a1 + 192));
  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v17 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v17);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, *(a1 + 192));
  v18 = *(a1 + 192);
  v38 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v18, v37);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, Cast);
  v20 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, v20);
  v21 = llvm::PointerType::get();
  v38 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v21, v37);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v22);
  v36 = 0;
  (*(*a1 + 1736))(__s, a1, a8, &v36);
  v23 = llvm::PointerType::get();
  v24 = llvm::ConstantInt::get();
  v38 = 257;
  v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v24, v23, v37);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, v23);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v25);
  if ((v36 - 1) <= 1)
  {
    v26 = *(a1 + 1728);
    if (v26)
    {
      v27 = strlen(*(a1 + 1728));
    }

    else
    {
      v27 = 0;
    }

    inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v26, v27, *(a1 + 200));
    v29 = 200;
    if (v36 == 1)
    {
      v29 = 192;
    }

    v30 = *(a1 + v29);
    v38 = 257;
    v31 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v37);
    v35[16] = 257;
    v32 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v30, v35);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, v30);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v32);
  }

  llvm::FunctionType::get();
  if ((v40 & 0x80000000) == 0)
  {
    v33 = __s;
LABEL_15:
    strlen(v33);
    goto LABEL_16;
  }

  v33 = *__s;
  if (*__s)
  {
    goto LABEL_15;
  }

LABEL_16:
  llvm::Module::getOrInsertFunction();
  v38 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v34 + 24), v34, v44, v45, v37);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (v40 < 0)
  {
    operator delete(*__s);
  }
}

void AGCLLVMGen5TargetConfig::createGeometryPipelineEmulationFWAllocationPreMeshShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpe_pre_ms", 10, 0);
  {
    {
      AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9898 = 0;
      qword_27C8D98A0 = 0;
    }
  }

  operator new();
}

void AGCLLVMGen5TargetConfig::createGeometryPipelineEmulationFWAllocationPostObjectShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpe_post_os", 11, 0);
  {
    {
      AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9878 = 0;
      qword_27C8D9880 = 0;
    }
  }

  operator new();
}

void AGCLLVMGen5TargetConfig::createGeometryPipelineEmulationFWAllocationSetupShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpe_setup", 9, 0);
  {
    {
      AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9858 = 0;
      qword_27C8D9860 = 0;
    }
  }

  operator new();
}

char *AGCLLVMGen5TargetConfig::createExecuteIndirectCDMPatchUpShader(AGCLLVMGen5TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v32[3] = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v5 = *(*(a2 + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 == 35 || v5 == 38)
        {
          v6 = "cei_patch_exec_gen6_hal300";
          goto LABEL_43;
        }
      }

      else if (v5 == 32 || v5 == 34)
      {
        v6 = "cei_patch_exec_gen6_hal200";
        goto LABEL_43;
      }

      return 0;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 == 31)
      {
        std::string::basic_string[abi:nn200100]<0>(v23, "cei_patch_exec_gen6_g16p");
        v7 = *(*(a2 + 4) + 24);
        v27[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v28, "a0");
        v29 = 3;
        std::string::basic_string[abi:nn200100]<0>(v30, "b0");
        v31 = 4;
        std::string::basic_string[abi:nn200100]<0>(v32, "b0");
        v8 = 0;
        v21 = 0;
        v22 = 0;
        v20 = &v21;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v20, &v21, v27[v8], &v27[v8]);
          v8 += 8;
        }

        while (v8 != 24);
        getFullBitcodePath(&v25, v23, v7, &v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v25;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v21);
        for (i = 0; i != -12; i -= 4)
        {
          if (SHIBYTE(v32[i + 2]) < 0)
          {
            operator delete(v32[i]);
          }
        }

        goto LABEL_61;
      }

      return 0;
    }

LABEL_23:
    v6 = "cei_patch_exec_gen4";
    goto LABEL_43;
  }

  if (v5 <= 18)
  {
    if ((v5 - 17) < 2)
    {
      v6 = "cei_patch_exec_gen5";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((v5 - 19) < 3)
  {
    v6 = "cei_patch_exec_gen5x";
LABEL_43:
    MEMORY[0x20F331AA0](&__p, v6);
    goto LABEL_44;
  }

  if (v5 == 22)
  {
    std::string::basic_string[abi:nn200100]<0>(v23, "cei_patch_exec_gen6_g15p");
    v17 = *(*(a2 + 4) + 24);
    v27[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v28, "a0");
    v29 = 3;
    std::string::basic_string[abi:nn200100]<0>(v30, "b0");
    v18 = 0;
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v20, &v21, v27[v18], &v27[v18]);
      v18 += 8;
    }

    while (v18 != 16);
    getFullBitcodePath(&v25, v23, v17, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v25;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v21);
    for (j = 0; j != -8; j -= 4)
    {
      if (SHIBYTE(v30[j + 2]) < 0)
      {
        operator delete(v30[j]);
      }
    }

    goto LABEL_61;
  }

  if (v5 == 24)
  {
    std::string::basic_string[abi:nn200100]<0>(v23, "cei_patch_exec_gen6_g15g");
    v11 = *(*(a2 + 4) + 24);
    v27[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v28, "a0");
    v29 = 3;
    std::string::basic_string[abi:nn200100]<0>(v30, "b0");
    v31 = 5;
    std::string::basic_string[abi:nn200100]<0>(v32, "c0");
    v12 = 0;
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v20, &v21, v27[v12], &v27[v12]);
      v12 += 8;
    }

    while (v12 != 24);
    getFullBitcodePath(&v25, v23, v11, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v25;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v21);
    for (k = 0; k != -12; k -= 4)
    {
      if (SHIBYTE(v32[k + 2]) < 0)
      {
        operator delete(v32[k]);
      }
    }

LABEL_61:
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

LABEL_44:
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
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    AGCLLVMObject::readBitcode(a3, p_p, size, 0);
    {
      {
        AGCLLVMDriverExecuteIndirectComputeShaderGen5::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
        *algn_27C8D97F8 = 0;
        qword_27C8D9800 = 0;
      }
    }

    operator new();
  }

  return 0;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildShuffleAndFill(uint64_t a1, __int128 *a2, llvm::Value **a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a5;
  v20 = *a2;
  v21 = *(a2 + 2);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v20, a1 + 8);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a3[3] + 16) != 16)
  {
    if (a6)
    {
      v12 = *a3;
    }

    else
    {
      v12 = *a3;
      if (*(a1 + 968) < 2u)
      {
        return v12;
      }
    }

    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v14 = llvm::ConstantInt::get();
    AGCLLVMGen5TargetLowerer::buildShuffleAndFillIfModuloIsAlpha(a1, v12, a3, a4, v14, v7);
  }

  v17 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
  v19 = *(a1 + 104);
  v12 = AGCLLVMGen5TargetLowerer::buildShuffleAndFillNative(a1, &v17, a3, a4, v7);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildShuffleAndFillNative(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v72 = *MEMORY[0x277D85DE8];
  v59 = *a2;
  v60 = *(a2 + 2);
  if (v60)
  {
    llvm::MetadataTracking::track();
  }

  v61 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v59, a1 + 8);
  if (v60)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *a3;
  v48 = *(a3 + 8);
  v50 = *(a3 + 16);
  v49 = llvm::ConstantInt::get();
  v10 = *v9;
  v11 = *v9;
  if ((*(*v9 + 8) & 0xFE) == 0x12)
  {
    v11 = **(v10 + 2);
  }

  v12 = v11;
  if (v11 == *(a1 + 184))
  {
    v12 = *(a1 + 192);
  }

  if (a5)
  {
    v13 = ".dn";
  }

  else
  {
    v13 = ".up";
  }

  std::string::basic_string[abi:nn200100]<0>(&v57, v13);
  if (v12[8] >= 7u)
  {
    v14 = ".i";
  }

  else
  {
    v14 = ".f";
  }

  std::string::basic_string[abi:nn200100]<0>(&v54, v14);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v12);
  std::to_string(&v53, ScalarSizeInBits);
  std::operator+<char>();
  if ((v56 & 0x80u) == 0)
  {
    v16 = &v54;
  }

  else
  {
    v16 = v54;
  }

  if ((v56 & 0x80u) == 0)
  {
    v17 = v56;
  }

  else
  {
    v17 = v55;
  }

  v18 = std::string::append(&v51, v16, v17);
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v56 & 0x80u) == 0)
  {
    v20 = &v54;
  }

  else
  {
    v20 = v54;
  }

  if ((v56 & 0x80u) == 0)
  {
    v21 = v56;
  }

  else
  {
    v21 = v55;
  }

  v22 = std::string::append(&v52, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v53;
  }

  else
  {
    v24 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v53.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v62, v24, size);
  v27 = v26->__r_.__value_.__r.__words[2];
  *__p = *&v26->__r_.__value_.__l.__data_;
  *&v65 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = *(a1 + 192);
  *&__src = v12;
  *(&__src + 1) = v28;
  *&v67 = v12;
  *(&v67 + 1) = v28;
  v69[0] = v70;
  v69[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v69, &__src, v68);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v30 = v29;
  if (v69[0] != v70)
  {
    free(v69[0]);
  }

  if (SBYTE7(v65) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  __src = 0u;
  v67 = 0u;
  *__p = 0u;
  v65 = 0u;
  v31 = AGCLLVMBuilder::unboxVector(a1, v9, &__src);
  AGCLLVMBuilder::unboxVector(a1, v48, __p);
  v32 = *(v10 + 2) & 0xFE;
  if (v32 == 18)
  {
    llvm::FixedVectorType::get();
    v33 = llvm::UndefValue::get();
    if (v31)
    {
      goto LABEL_45;
    }

LABEL_54:
    InsertElement = v33;
    goto LABEL_55;
  }

  v33 = 0;
  if (!v31)
  {
    goto LABEL_54;
  }

LABEL_45:
  v34 = 0;
  v35 = v31;
  do
  {
    if (v11 == *(a1 + 184))
    {
      v37 = *(&__src + v34);
      v38 = *(a1 + 192);
      v71 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 40, v37, v38, v69);
      *(&__src + v34) = Cast;
      v40 = __p[v34];
      v41 = *(a1 + 192);
      v71 = 257;
      v42 = llvm::IRBuilderBase::CreateCast(a1 + 8, 40, v40, v41, v69);
      __p[v34] = v42;
      v62.__r_.__value_.__r.__words[0] = Cast;
      v62.__r_.__value_.__l.__size_ = v50;
      v62.__r_.__value_.__r.__words[2] = v42;
      v63 = v49;
      v71 = 257;
      v43 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v30 + 24), v30, &v62, 4, v69);
      v44 = *(a1 + 184);
      v71 = 257;
      v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v43, v44, v69);
    }

    else
    {
      v62.__r_.__value_.__r.__words[0] = *(&__src + v34);
      v62.__r_.__value_.__l.__size_ = v50;
      v62.__r_.__value_.__r.__words[2] = __p[v34];
      v63 = v49;
      v71 = 257;
      v36 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v30 + 24), v30, &v62, 4, v69);
    }

    InsertElement = v36;
    if (v32 == 18)
    {
      v71 = 257;
      v46 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v33, InsertElement, v46, v69);
    }

    ++v34;
    v33 = InsertElement;
  }

  while (v35 != v34);
LABEL_55:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v54);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  return InsertElement;
}

void AGCLLVMGen5TargetLowerer::buildShuffleAndFillIfModuloIsAlpha(uint64_t a1, llvm::Value *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (a5 + 24);
  if (*(a5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  std::to_string(&v15, *v6);
  v7 = std::string::insert(&v15, 0, "mod");
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v18, ".block");
  v10 = v9->__r_.__value_.__r.__words[2];
  *__p = *&v9->__r_.__value_.__l.__data_;
  v17 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v11 = SHIBYTE(v17);
  if (v17 >= 0)
  {
    v12 = HIBYTE(v17);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::basic_string[abi:nn200100](&v15, v12 + 6);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v15;
  }

  else
  {
    v13 = v15.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (v11 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, ".merge");
  v19 = 260;
  v18.__r_.__value_.__r.__words[0] = &v15;
  llvm::BasicBlock::splitBasicBlock();
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v19 = 260;
  v18.__r_.__value_.__r.__words[0] = __p;
  operator new();
}

uint64_t AGCLLVMGen5TargetLowerer::findPointerAlignment(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v5 = *v4;
  v6 = v4[4];
  result = llvm::ConstantInt::get();
  v8 = *(v6 + 16);
  if (v8 == 77 && v6 != 0)
  {
    v12 = **(v6 - 32);
    v11 = *(v12 + 8) != 15 || v12 == 0;
    goto LABEL_14;
  }

  if (v8 == 62 && v6 != 0)
  {
    v11 = *(*(v6 + 72) + 8) == 17;
LABEL_14:
    if (!v11)
    {
      return v5;
    }
  }

  return result;
}

void AGCLLVMGen5TargetLowerer::buildMemCpy1DDMA(uint64_t a1, uint64_t **a2, uint64_t a3, BOOL a4)
{
  v5 = **a2;
  v6 = (*a2)[2];
  v7 = (*a2)[3];
  v8 = (*a2)[4];
  v9 = *(*v6 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    v9 = *(**(*v6 + 16) + 8);
  }

  v10 = v9 & 0xFFFFFF00;
  if ((v9 & 0xFFFFFF00) == 0x300)
  {
    v11 = v23;
  }

  else
  {
    v11 = v22;
  }

  *v11 = v6;
  v11[1] = v5;
  v11[2] = v8;
  if (v10 == 768)
  {
    v12 = v22;
  }

  else
  {
    v12 = v23;
  }

  v11[3] = llvm::ConstantInt::get();
  v11[4] = v8;
  *v12 = v7;
  v12[1] = v5;
  v12[2] = v8;
  v12[3] = llvm::ConstantInt::get();
  v12[4] = v8;
  v13 = llvm::ConstantInt::get();
  v14 = *(a1 + 240);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v13, v14, v20);
  v16 = llvm::ConstantInt::get();
  v17 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
  v19 = *(a1 + 104);
  AGCLLVMGen5TargetLowerer::CreateBufferReadWriteBlock(a1, &v17, v10 == 768, 1, v23, v22, Cast, v16);
}

void AGCLLVMGen5TargetLowerer::CreateBufferReadWriteBlock(void *a1, __int128 *a2, int a3, int a4, void *a5, void *a6, llvm::Value *a7, uint64_t a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v54 = a8;
  v51 = *a2;
  v52 = *(a2 + 2);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v51, (a1 + 1));
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = a5[1];
  v14 = a1[24];
  LOWORD(v56) = 257;
  a5[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v13, v14, v55);
  v15 = a5[2];
  v16 = a1[24];
  LOWORD(v56) = 257;
  a5[2] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v15, v16, v55);
  v17 = a5[3];
  v18 = a1[24];
  LOWORD(v56) = 257;
  a5[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v17, v18, v55);
  v19 = a5[4];
  v20 = a1[24];
  LOWORD(v56) = 257;
  a5[4] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v19, v20, v55);
  v21 = a6[1];
  v22 = a1[24];
  LOWORD(v56) = 257;
  a6[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v21, v22, v55);
  v23 = a6[2];
  v24 = a1[25];
  LOWORD(v56) = 257;
  a6[2] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v23, v24, v55);
  v25 = a6[3];
  v26 = a1[25];
  LOWORD(v56) = 257;
  a6[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v25, v26, v55);
  v27 = a6[4];
  v28 = a1[25];
  LOWORD(v56) = 257;
  a6[4] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v27, v28, v55);
  LOWORD(v56) = 257;
  v29 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a7, v29, v55);
  v31 = a1[24];
  v49 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v31, &__p);
  LOWORD(v56) = 257;
  v32 = llvm::ConstantInt::get();
  v33 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), a7, v32, v55);
  v34 = a1[24];
  v49 = 257;
  llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v33, v34, &__p);
  v55[0] = xmmword_20E71631C;
  v55[1] = unk_20E71632C;
  v56 = xmmword_20E71633C;
  std::vector<unsigned int>::vector[abi:nn200100](&__p, v55, 0xCuLL);
  v35 = a5[1];
  if (v35)
  {
    if (*(v35 + 16) == 16)
    {
      v36 = v48;
      if (__p != v48)
      {
        v37 = (v35 + 24);
        v38 = *(v35 + 32);
        v39 = *(v35 + 24);
        v40 = __p;
        do
        {
          v41 = *v40;
          v42 = v37;
          if (v38 < 0x41 || (v43 = llvm::APInt::countLeadingZerosSlowCase(v37), v42 = v39, v38 - v43 <= 0x40))
          {
            if (*v42 == v41)
            {
              break;
            }
          }

          ++v40;
        }

        while (v40 != v36);
      }
    }
  }

  v44 = llvm::ConstantInt::get();
  v45 = a1[24];
  LOWORD(v56) = 257;
  a5[1] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v44, v45, v55);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v46 = a1[24];
  LOWORD(v56) = 257;
  v54 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v54, v46, v55);
  *&v55[0] = "if.first.active.lane.end";
  LOWORD(v56) = 259;
  llvm::BasicBlock::splitBasicBlock();
  *&v55[0] = "if.first.active.lane.end";
  LOWORD(v56) = 259;
  operator new();
}

uint64_t *std::vector<llvm::Type *>::vector[abi:nn200100](uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<llvm::Type *>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t AGCLLVMGen5TargetLowerer::buildMemCpy1DEmulation(uint64_t a1, uint64_t a2)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v23[0] = v24;
  v23[1] = 0x500000000;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = *v4++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *v7);
      v6 -= 8;
    }

    while (v6);
    v4 = *a2;
  }

  v8 = *v4[2];
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    v9 = *(**(v8 + 16) + 8);
  }

  v10 = v9 & 0xFFFFFF00;
  std::string::basic_string[abi:nn200100]<0>(&v19, *(a1 + 2608));
  if (v10 == 768)
  {
    v11 = ".read";
  }

  else
  {
    v11 = ".write";
  }

  v12 = std::string::append(&v19, v11);
  v13 = v12->__r_.__value_.__r.__words[2];
  *__p = *&v12->__r_.__value_.__l.__data_;
  v22 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v14 = *a2;
  v15 = *(a2 + 8);
  v20 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v16 + 24), v16, v14, v15, &v19);
  v17 = *(a1 + 2648);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  return v17;
}

void AGCLLVMGen5TargetLowerer::buildMemCpy2DDMA(uint64_t a1, uint64_t **a2, uint64_t a3, BOOL a4)
{
  v5 = **a2;
  v6 = (*a2)[2];
  v7 = (*a2)[3];
  v8 = (*a2)[4];
  v9 = (*a2)[5];
  v10 = (*a2)[6];
  v20 = (*a2)[7];
  v11 = (*a2)[9];
  v22 = (*a2)[11];
  v23 = (*a2)[10];
  v12 = *(*v6 + 8);
  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(**(*v6 + 16) + 8);
  }

  v21 = (v12 & 0xFFFFFF00) == 768;
  if ((v12 & 0xFFFFFF00) == 0x300)
  {
    v13 = v32;
  }

  else
  {
    v13 = &v29;
  }

  *v13 = v6;
  v13[1] = v5;
  v28 = 257;
  if ((v12 & 0xFFFFFF00) == 0x300)
  {
    v14 = &v29;
  }

  else
  {
    v14 = v32;
  }

  v15 = v8;
  v16 = llvm::ConstantInt::get();
  v13[2] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v16, v27);
  v28 = 257;
  v17 = llvm::ConstantInt::get();
  v13[3] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v17, v27);
  v13[4] = v7;
  *v14 = v10;
  v14[1] = v5;
  v28 = 257;
  v18 = llvm::ConstantInt::get();
  v14[2] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v11, v18, v27);
  v28 = 257;
  v19 = llvm::ConstantInt::get();
  v14[3] = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v11, v19, v27);
  v14[4] = v20;
  v28 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v15, Mul, v27);
  v28 = 257;
  UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 8), UDiv, v15, v27);
  v24 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (a1 + 8));
  v26 = *(a1 + 104);
  AGCLLVMGen5TargetLowerer::CreateBufferReadWriteBlock(a1, &v24, v21, 0, v32, &v29, v23, v22);
}

uint64_t AGCLLVMGen5TargetLowerer::buildMemCpy2DEmulation(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v80[12] = *MEMORY[0x277D85DE8];
  v79[0] = v80;
  v79[1] = 0xC00000000;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = 8 * v7;
    do
    {
      v9 = *v6;
      v6 += 8;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v79, *v9);
      v8 -= 8;
    }

    while (v8);
    v6 = *a2;
  }

  v10 = *(v6 + 16);
  v11 = *(v6 + 40);
  v13 = *(v6 + 72);
  v12 = *(v6 + 80);
  v14 = *v10;
  v15 = *(*v10 + 8);
  if ((v15 & 0xFE) == 0x12)
  {
    v15 = *(**(v14 + 16) + 8);
  }

  v16 = v15 & 0xFFFFFF00;
  if ((v15 & 0xFFFFFF00) == 0x300)
  {
    v17 = v11;
  }

  else
  {
    v17 = v13;
  }

  if (v16 == 768)
  {
    v18 = v13;
  }

  else
  {
    v18 = v11;
  }

  if (v17[16] >= 0x15u || v18[16] > 0x14u || v12[16] > 0x14u)
  {
    v24 = 0;
  }

  else
  {
    v78 = 257;
    v19 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v18, v19, &v77);
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
      v23 = **(v21 + 3);
    }

    else
    {
      v23 = (*(v21 + 3) << -v22) >> -v22;
    }

    v72 = v23;
    v78 = 257;
    v46 = llvm::ConstantInt::get();
    v47 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v18, v46, &v77);
    if (v47[16] == 16)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v49 = *(v48 + 8);
    if (v49 > 0x40)
    {
      v50 = **(v48 + 3);
    }

    else
    {
      v50 = (*(v48 + 3) << -v49) >> -v49;
    }

    v71 = v50;
    v78 = 257;
    v51 = llvm::ConstantInt::get();
    v52 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v12, v51, &v77);
    if (v52[16] == 16)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = *(v53 + 8);
    if (v54 > 0x40)
    {
      v55 = **(v53 + 3);
    }

    else
    {
      v55 = (*(v53 + 3) << -v54) >> -v54;
    }

    v73 = v55;
    v78 = 257;
    v56 = llvm::ConstantInt::get();
    v57 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v12, v56, &v77);
    if (v57[16] == 16)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v59 = *(v58 + 8);
    if (v59 > 0x40)
    {
      v60 = **(v58 + 3);
    }

    else
    {
      v60 = (*(v58 + 3) << -v59) >> -v59;
    }

    v78 = 257;
    v61 = llvm::ConstantInt::get();
    v62 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v17, v61, &v77);
    if (v62[16] == 16)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    v64 = *(v63 + 8);
    if (v64 > 0x40)
    {
      v65 = **(v63 + 3);
    }

    else
    {
      v65 = (*(v63 + 3) << -v64) >> -v64;
    }

    v78 = 257;
    v66 = llvm::ConstantInt::get();
    v67 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v17, v66, &v77);
    if (v67[16] == 16)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v69 = *(v68 + 8);
    if (v69 > 0x40)
    {
      v70 = **(v68 + 3);
    }

    else
    {
      v70 = (*(v68 + 3) << -v69) >> -v69;
    }

    v24 = 0;
    if ((v73 & 0x8000000000000000) == 0 && (v60 & 0x8000000000000000) == 0 && v73 + v65 - 1 < v72)
    {
      v24 = v60 + v70 - 1 < v71;
    }
  }

  if (v12[16] <= 0x14u && v13 == v11)
  {
    v78 = 257;
    v26 = llvm::ConstantInt::get();
    v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v12, v26, &v77);
    if (v27[16] == 16)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(v28 + 8);
    if (v29 > 0x40)
    {
      if (**(v28 + 3))
      {
        goto LABEL_41;
      }
    }

    else if ((*(v28 + 3) << -v29) >> -v29)
    {
      goto LABEL_41;
    }

    v78 = 257;
    v30 = llvm::ConstantInt::get();
    v31 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v12, v30, &v77);
    if (v31[16] == 16)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v32 + 8);
    if (v33 > 0x40)
    {
      v34 = **(v32 + 3);
    }

    else
    {
      v34 = (*(v32 + 3) << -v33) >> -v33;
    }

    v24 |= v34 == 0;
  }

LABEL_41:
  std::string::basic_string[abi:nn200100]<0>(&v74, *(a1 + 2616));
  if (v16 == 768)
  {
    v35 = ".read";
  }

  else
  {
    v35 = ".write";
  }

  v36 = std::string::append(&v74, v35);
  v37 = v36->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v24)
  {
    v38 = ".unchecked";
  }

  else
  {
    v38 = &unk_20E75F419;
  }

  v39 = std::string::append(&v77, v38);
  v40 = v39->__r_.__value_.__r.__words[2];
  *__p = *&v39->__r_.__value_.__l.__data_;
  v76 = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v41 = *a2;
  v42 = *(a2 + 8);
  v78 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v43 + 24), v43, v41, v42, &v77);
  v44 = *(a1 + 2648);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p[0]);
  }

  if (v79[0] != v80)
  {
    free(v79[0]);
  }

  return v44;
}

uint64_t AGCLLVMGen5TargetLowerer::programTypeSpecialRegisterValueForShaderType(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return dword_20E71634C[a2];
  }
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdMatrixThreadElementsGetPosition(uint64_t a1, __int128 *a2, llvm::FixedVectorType *a3, llvm::Value *a4, llvm::Value *a5)
{
  v42 = *a2;
  v43 = *(a2 + 2);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v42, a1 + 8);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = llvm::ConstantInt::get();
  v10 = llvm::ConstantInt::get();
  v41 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), a4, v10, v40);
  v12 = llvm::ConstantInt::get();
  v39 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Shl, v12, v38);
  v14 = llvm::ConstantInt::get();
  v37 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), a4, v14, v36);
  v35 = 257;
  v16 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v9, v34);
  v33 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), v13, v16, v32);
  v18 = llvm::ConstantInt::get();
  v41 = 257;
  v19 = llvm::IRBuilderBase::CreateLShr((a1 + 8), a4, v18, v40);
  v20 = llvm::ConstantInt::get();
  v39 = 257;
  v21 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v20, v38);
  v22 = llvm::ConstantInt::get();
  v37 = 257;
  v23 = llvm::IRBuilderBase::CreateLShr((a1 + 8), a4, v22, v36);
  v35 = 257;
  v24 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v23, v9, v34);
  v33 = 257;
  v25 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v21, v24, v32);
  v41 = 257;
  v26 = llvm::IRBuilderBase::CreateAdd((a1 + 8), Add, a5, v40);
  llvm::FixedVectorType::get();
  v27 = llvm::UndefValue::get();
  v41 = 257;
  v28 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v27, v26, v28, v40);
  v41 = 257;
  v30 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v25, v30, v40);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildSimdMatrixThreadElementsInit(uint64_t a1, __int128 *a2, llvm::UndefValue *a3, llvm::Constant **a4, uint64_t a5, char a6)
{
  v35 = *a2;
  v36 = *(a2 + 2);
  if (v36)
  {
    llvm::MetadataTracking::track();
  }

  v37 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v35, a1 + 8);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  InsertElement = llvm::UndefValue::get();
  if (a6)
  {
    v32 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (a1 + 8));
    v34 = *(a1 + 104);
    v12 = *(a1 + 200);
    v13 = llvm::ConstantInt::get();
    v14 = (*(*a1 + 1896))(a1, &v32, v12, a5, v13);
    if (v33)
    {
      llvm::MetadataTracking::untrack();
    }

    v31 = 257;
    v15 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v14, v15, v30);
    v31 = 257;
    v17 = 1;
    v18 = llvm::ConstantInt::get();
    v19 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v14, v18, v30);
    llvm::Constant::getNullValue(*a4, v20);
    do
    {
      v21 = v17;
      v22 = llvm::ConstantInt::get();
      v31 = 257;
      Element = llvm::IRBuilderBase::CreateAdd((a1 + 8), Element, v22, v30);
      v31 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Element, v19, v30);
      v31 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v29[16] = 257;
      v24 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, Select, v24, v29);
      v17 = 0;
    }

    while ((v21 & 1) != 0);
  }

  else
  {
    v25 = 1;
    do
    {
      v26 = v25;
      v31 = 257;
      v27 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, a4, v27, v30);
      v25 = 0;
    }

    while ((v26 & 1) != 0);
  }

  return InsertElement;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildSimdMatrixMultiplyAccumulate(unsigned int **a1, __int128 *a2, llvm::Type *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6)
{
  v59 = *MEMORY[0x277D85DE8];
  v49 = *a2;
  v50 = *(a2 + 2);
  if (v50)
  {
    llvm::MetadataTracking::track();
  }

  v51 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v49, (a1 + 1));
  if (v50)
  {
    llvm::MetadataTracking::untrack();
  }

  v52 = llvm::ConstantInt::get();
  v53 = llvm::ConstantInt::get();
  v12 = llvm::ConstantVector::get();
  v58 = 257;
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 1), a4, a4, v12, &v55);
  v52 = llvm::ConstantInt::get();
  v53 = llvm::ConstantInt::get();
  v14 = llvm::ConstantVector::get();
  v58 = 257;
  v15 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 1), a5, a5, v14, &v55);
  v52 = llvm::ConstantInt::get();
  v53 = llvm::ConstantInt::get();
  v16 = llvm::ConstantVector::get();
  v58 = 257;
  v17 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 1), a6, a6, v16, &v55);
  v18 = **(*ShuffleVector + 16);
  v19 = **(*v15 + 16);
  v20 = **(*v17 + 16);
  v21 = **(a3 + 2);
  v55 = ShuffleVector;
  v56 = v15;
  v57[0] = v17;
  std::vector<llvm::Type *>::vector[abi:nn200100](&__p, &v55, 3uLL);
  memset(&v46, 0, sizeof(v46));
  v22 = a1[19];
  if (v18 == v22 && v19 == v22 && v20 == v22 && v21 == v22)
  {
    MEMORY[0x20F331AA0](&v46, a1[341]);
    std::string::append(&v46, ".v2f16");
    v23 = a1[19];
  }

  else
  {
    MEMORY[0x20F331AA0](&v46, a1[340]);
    std::string::append(&v46, ".v2f32");
    v23 = a1[21];
    v24 = __p;
    v25 = v48;
    if (__p != v48)
    {
      do
      {
        v26 = *v24;
        v27 = **(**v24 + 16);
        if (v27 == a1[19] || v27 == a1[20])
        {
          v28 = llvm::FixedVectorType::get();
          v58 = 257;
          *v24 = llvm::IRBuilderBase::CreateFPExt((a1 + 1), v26, v28, &v55);
        }

        ++v24;
      }

      while (v24 != v25);
    }
  }

  v55 = v57;
  v56 = 0x300000000;
  v29 = __p;
  v30 = v48;
  while (v29 != v30)
  {
    v31 = *v29++;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v55, *v31);
  }

  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v32 = &v46;
LABEL_21:
    strlen(v32);
    goto LABEL_22;
  }

  v32 = v46.__r_.__value_.__r.__words[0];
  if (v46.__r_.__value_.__r.__words[0])
  {
    goto LABEL_21;
  }

LABEL_22:
  llvm::FixedVectorType::get();
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v54 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v33 + 24), v33, __p, (v48 - __p) >> 3, &v52);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v23);
  if (ScalarSizeInBits > llvm::Type::getScalarSizeInBits(a3))
  {
    v36 = llvm::FixedVectorType::get();
    v54 = 257;
    FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), FPTrunc, v36, &v52);
  }

  InsertElement = llvm::UndefValue::get();
  v38 = 1;
  do
  {
    v39 = v38;
    v54 = 257;
    v40 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPTrunc, v40, &v52);
    v45 = 257;
    v42 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, Element, v42, v44);
    v38 = 0;
  }

  while ((v39 & 1) != 0);
  if (v55 != v57)
  {
    free(v55);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  return InsertElement;
}

uint64_t AGCLLVMGen5TargetLowerer::buildVoteAny(uint64_t a1, __int128 *a2, llvm::CmpInst **a3, int a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v11, a1 + 8);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = llvm::ConstantInt::get();
  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, a3, v7, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildVoteAll(uint64_t a1, __int128 *a2, llvm::CmpInst **a3, int a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v11, a1 + 8);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = llvm::ConstantInt::get();
  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, a3, v7, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadAny(unsigned int **a1, __int128 *a2, uint64_t a3)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v6 = (*(*a1 + 221))(a1, &v11, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = llvm::ConstantInt::get();
  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp(a1 + 1, 33, v6, v7, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadAll(unsigned int **a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  v6 = (*(*a1 + 228))(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v7 = (*(*a1 + 221))(a1, &v11, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v7, v6, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdAny(unsigned int **a1, __int128 *a2, uint64_t a3)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v6 = (*(*a1 + 226))(a1, &v11, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = llvm::ConstantInt::get();
  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp(a1 + 1, 33, v6, v7, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdAll(unsigned int **a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  v6 = (*(*a1 + 227))(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *a2;
  v12 = *(a2 + 2);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 6);
  v7 = (*(*a1 + 226))(a1, &v11, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = 257;
  return llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v7, v6, v9);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadActiveThreadsMask(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  if (v7)
  {
    llvm::MetadataTracking::track();
  }

  v8 = *(a2 + 6);
  ActiveThreadsMask = AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(a1, &v6, 1);
  if (v7)
  {
    llvm::MetadataTracking::untrack();
  }

  return ActiveThreadsMask;
}

uint64_t AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(uint64_t a1, __int128 *a2, char a3)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v16, a1 + 8);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((a3 & 1) == 0)
  {
    v10 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
    v12 = *(a1 + 104);
    v9 = llvm::ConstantInt::get();
    v7 = (*(*a1 + 1808))(a1, &v10, v9);
    if (!v11)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v13 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (a1 + 8));
  v15 = *(a1 + 104);
  v6 = llvm::ConstantInt::get();
  v7 = (*(*a1 + 1768))(a1, &v13, v6);
  if (v14)
  {
LABEL_7:
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdActiveThreadsMask(uint64_t a1, uint64_t a2)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    llvm::MetadataTracking::track();
  }

  v8 = *(a2 + 24);
  ActiveThreadsMask = AGCLLVMGen5TargetLowerer::buildGetActiveThreadsMask(a1, &v6, 0);
  if (v7)
  {
    llvm::MetadataTracking::untrack();
  }

  return ActiveThreadsMask;
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildSimdBallot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
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

  std::string::basic_string[abi:nn200100]<0>(&v12, *(a1 + 2800));
  v5 = std::string::append(&v12, ".u.32");
  v6 = v5->__r_.__value_.__r.__words[2];
  *__p = *&v5->__r_.__value_.__l.__data_;
  v15 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v15 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v15 >= 0)
  {
    v8 = SHIBYTE(v15);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, *(a1 + 200), *(a1 + 176));
  v13 = 257;
  v10 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v9 + 24), v9, &v19, 1, &v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleRotateUp(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2784), a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleXor(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2776), a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffle(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2752), a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdBroadcast(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2744), a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadBallot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
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

  std::string::basic_string[abi:nn200100]<0>(&v15, *(a1 + 2808));
  v5 = std::string::append(&v15, ".u.32");
  v6 = v5->__r_.__value_.__r.__words[2];
  *__p = *&v5->__r_.__value_.__l.__data_;
  v18 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v18 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v18 >= 0)
  {
    v8 = SHIBYTE(v18);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, *(a1 + 200), *(a1 + 176));
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v9 + 24), v9, &v22, 1, &v15);
  v11 = *(a1 + 192);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, v11, v14);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return Cast;
}

uint64_t AGCLLVMGen5TargetLowerer::buildQuadShuffleRotateUp(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2792), a3, a4);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildCoordinateDewarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateDewarpImpl(a1, &v12, a3, a4, a5, 0x201u, 0x804u);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildCoordinateDewarpImpl(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
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

  if (a5 == 12)
  {
    if (*a4 != 0x32702E3233663276 || *(a4 + 8) != 842230062)
    {
      v19 = *a4 == 0x32702E3233693276 && *(a4 + 8) == 842230062;
      goto LABEL_58;
    }

    goto LABEL_43;
  }

  if (a5 == 18)
  {
    if (*a4 != 0x746E6174736E6F63 || *(a4 + 8) != 0x6632762E3233692ELL || *(a4 + 16) != 12851)
    {
      if (*a4 == 0x746E6174736E6F63 && *(a4 + 8) == 0x6932762E3233692ELL && *(a4 + 16) == 12851)
      {
        v19 = 1;
        goto LABEL_58;
      }

LABEL_32:
      v19 = 0;
LABEL_58:
      v22 = *a3;
      goto LABEL_59;
    }

LABEL_43:
    v22 = *a3;
    v19 = 1;
    goto LABEL_56;
  }

  if (a5 != 14)
  {
    goto LABEL_32;
  }

  v14 = *a4 == 0x746E6174736E6F63 && *(a4 + 6) == 0x32336632762E746ELL || *a4 == 0x32702E3233663276 && *(a4 + 6) == 0x3233692E38693270;
  if ((*a4 != 0x32702E3233663276 || *(a4 + 6) != 0x3233692E38693270) && (*a4 != 0x32702E3233693276 || *(a4 + 6) != 0x3233692E38693270))
  {
    v19 = 0;
    v22 = *a3;
    if (!v14)
    {
      goto LABEL_59;
    }

LABEL_56:
    llvm::ConstantFP::get();
    Splat = llvm::ConstantDataVector::getSplat();
    v78 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), v22, Splat, v77);
    v27 = a1[31];
    v78 = 257;
    FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), FMul, v27, v77);
    v29 = 1;
    goto LABEL_60;
  }

  v22 = *a3;
  v19 = 1;
  if (v14)
  {
    goto LABEL_56;
  }

LABEL_59:
  v78 = 257;
  v30 = llvm::ConstantInt::get();
  FPToUI = llvm::IRBuilderBase::CreateLShr((a1 + 1), v22, v30, v77);
  v29 = 0;
LABEL_60:
  v31 = *(a3 + 8);
  v32 = llvm::PointerType::get();
  v78 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v31, v32, v77);
  v78 = 257;
  v34 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v34, v77);
  v36 = llvm::ConstantInt::get();
  v76 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Element, v36, v75);
  if (v19)
  {
    v38 = *(a3 + 16);
    v39 = llvm::ConstantInt::get();
    v78 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v38, v39, v77);
    v76 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Add, Mul, v75);
  }

  v41 = a1[28];
  v78 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v41, Cast, Add, v77);
  v78 = 257;
  v43 = llvm::ConstantInt::get();
  v44 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v43, v77);
  v45 = llvm::ConstantInt::get();
  v76 = 257;
  v46 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v44, v45, v75);
  v47 = a1[28];
  v78 = 257;
  v48 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v47, Cast, v46, v77);
  v49 = a1[28];
  v78 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v49, GEP, 0, v77);
  v51 = a1[28];
  v78 = 257;
  llvm::Type::isOpaquePointerTy(*v48);
  v52 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v51, v48, 0, v77);
  v53 = llvm::UndefValue::get();
  v78 = 257;
  v54 = llvm::ConstantInt::get();
  v55 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v54, v77);
  v76 = 257;
  v56 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v53, v55, v56, v75);
  v78 = 257;
  v58 = llvm::ConstantInt::get();
  v59 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v52, v58, v77);
  v76 = 257;
  v60 = llvm::ConstantInt::get();
  v61 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v59, v60, v75);
  v62 = llvm::UndefValue::get();
  v78 = 257;
  v63 = llvm::ConstantInt::get();
  v64 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v63, v77);
  v76 = 257;
  v65 = llvm::ConstantInt::get();
  v66 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v62, v64, v65, v75);
  v78 = 257;
  v67 = llvm::ConstantInt::get();
  v68 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v52, v67, v77);
  v76 = 257;
  v69 = llvm::ConstantInt::get();
  v70 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v66, v68, v69, v75);
  v78 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((a1 + 1), v22, v70, v77);
  v76 = 257;
  v72 = llvm::IRBuilderBase::CreateFMul((a1 + 1), FSub, v61, v75);
  if ((v29 & 1) == 0)
  {
    v73 = a1[31];
    v78 = 257;
    return llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v72, v73, v77);
  }

  return v72;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildCoordinateWarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateWarpImpl(a1, &v12, a3, a4, a5, 0x201u, 0x402u, 0xA05u);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildCoordinateWarpImpl(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  v141 = *a2;
  v142 = *(a2 + 16);
  if (v142)
  {
    llvm::MetadataTracking::track();
  }

  v143 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v141);
  if (v142)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a5 == 12)
  {
    v22 = *(a4 + 8);
    v23 = v22 == 842230062;
    v24 = v22 != 842230062 || *a4 != 0x32702E3233663276;
    v20 = v23 && *a4 == 0x32702E3233693276;
    FAdd = *a3;
    if (!v24)
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  if (a5 == 18)
  {
    if (*a4 == 0x746E6174736E6F63 && *(a4 + 8) == 0x6632762E3233692ELL && *(a4 + 16) == 12851)
    {
      FAdd = *a3;
      v20 = 1;
LABEL_55:
      v27 = 1;
      goto LABEL_58;
    }

    if (*a4 == 0x746E6174736E6F63 && *(a4 + 8) == 0x6932762E3233692ELL && *(a4 + 16) == 12851)
    {
      v20 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v20 = 0;
LABEL_33:
    FAdd = *a3;
    goto LABEL_57;
  }

  if (a5 != 14)
  {
    goto LABEL_32;
  }

  v15 = *a4 == 0x746E6174736E6F63 && *(a4 + 6) == 0x32336632762E746ELL || *a4 == 0x32702E3233663276 && *(a4 + 6) == 0x3233692E38693270;
  if (*a4 == 0x32702E3233663276 && *(a4 + 6) == 0x3233692E38693270)
  {
    FAdd = *a3;
    v20 = 1;
    v27 = 1;
    if (v15)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v20 = *a4 == 0x32702E3233693276 && *(a4 + 6) == 0x3233692E38693270;
    FAdd = *a3;
    if (v15)
    {
      goto LABEL_55;
    }
  }

LABEL_57:
  v28 = a1[28];
  v140 = 257;
  UIToFP = llvm::IRBuilderBase::CreateUIToFP((a1 + 1), FAdd, v28, v139);
  llvm::ConstantFP::get();
  Splat = llvm::ConstantDataVector::getSplat();
  v138 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((a1 + 1), UIToFP, Splat, v137);
  v27 = 0;
LABEL_58:
  v128 = v27;
  llvm::ConstantFP::get();
  v31 = llvm::ConstantDataVector::getSplat();
  v140 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((a1 + 1), FAdd, v31, v139);
  v33 = a1[31];
  v140 = 257;
  FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), FMul, v33, v139);
  v35 = a1[28];
  v140 = 257;
  v36 = llvm::IRBuilderBase::CreateUIToFP((a1 + 1), FPToUI, v35, v139);
  llvm::ConstantFP::get();
  v37 = llvm::ConstantDataVector::getSplat();
  v138 = 257;
  v38 = llvm::IRBuilderBase::CreateFMul((a1 + 1), v36, v37, v137);
  v136 = 257;
  v129 = FAdd;
  llvm::IRBuilderBase::CreateFSub((a1 + 1), FAdd, v38, v135);
  v39 = *(a3 + 8);
  v40 = llvm::PointerType::get();
  v140 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v39, v40, v139);
  v140 = 257;
  v42 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v42, v139);
  v44 = llvm::ConstantInt::get();
  v138 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Element, v44, v137);
  if (v20)
  {
    v46 = *(a3 + 16);
    v47 = llvm::ConstantInt::get();
    v140 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v46, v47, v139);
    v138 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Add, Mul, v137);
  }

  v49 = a1[31];
  v140 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v49, Cast, Add, v139);
  v51 = a1[31];
  v52 = 1;
  v53 = llvm::ConstantInt::get();
  v140 = 257;
  v54 = llvm::IRBuilderBase::CreateAdd((a1 + 1), Add, v53, v139);
  v138 = 257;
  v55 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v51, Cast, v54, v137);
  v56 = a1[31];
  v140 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v56, GEP, 0, v139);
  v58 = a1[31];
  v140 = 257;
  llvm::Type::isOpaquePointerTy(*v55);
  v59 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v58, v55, 0, v139);
  v140 = 257;
  v60 = llvm::ConstantInt::get();
  v61 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), FPToUI, v60, v139);
  v62 = llvm::ConstantInt::get();
  v138 = 257;
  v63 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v61, v62, v137);
  v64 = a1[31];
  v140 = 257;
  v65 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v64, Cast, v63, v139);
  v66 = a1[31];
  v67 = llvm::ConstantInt::get();
  v140 = 257;
  v68 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v63, v67, v139);
  v138 = 257;
  v69 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v66, Cast, v68, v137);
  v70 = a1[31];
  v140 = 257;
  llvm::Type::isOpaquePointerTy(*v65);
  v71 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v70, v65, 0, v139);
  v135[0] = v71;
  v72 = a1[31];
  v140 = 257;
  llvm::Type::isOpaquePointerTy(*v69);
  v134 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v72, v69, 0, v139);
  v73 = llvm::UndefValue::get();
  v140 = 257;
  v74 = llvm::ConstantInt::get();
  v75 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v74, v139);
  v138 = 257;
  v76 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v73, v75, v76, v137);
  v140 = 257;
  v78 = llvm::ConstantInt::get();
  v79 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v71, v78, v139);
  v138 = 257;
  v80 = llvm::ConstantInt::get();
  v81 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v79, v80, v137);
  llvm::UndefValue::get();
  llvm::ConstantInt::get();
  v82 = llvm::ConstantDataVector::getSplat();
  v140 = 257;
  v83 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v81, v82, v139);
  v84 = a1[28];
  v140 = 257;
  v85 = llvm::IRBuilderBase::CreateUIToFP((a1 + 1), v83, v84, v139);
  llvm::ConstantFP::get();
  v86 = llvm::ConstantDataVector::getSplat();
  v140 = 257;
  llvm::IRBuilderBase::CreateFMul((a1 + 1), v85, v86, v139);
  v140 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v133 = llvm::UndefValue::get();
  v132 = llvm::UndefValue::get();
  v87 = v135;
  v88 = &v133;
  v89 = AlignedLoad;
  do
  {
    v90 = v52;
    v91 = *v88;
    v140 = 257;
    v92 = llvm::ConstantInt::get();
    v93 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v89, v92, v139);
    v138 = 257;
    v94 = llvm::ConstantInt::get();
    v95 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v91, v93, v94, v137);
    v96 = *v87;
    v140 = 257;
    v97 = llvm::ConstantInt::get();
    v98 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v96, v97, v139);
    v138 = 257;
    v99 = llvm::ConstantInt::get();
    v100 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v95, v98, v99, v137);
    v101 = a1[28];
    v140 = 257;
    v52 = 0;
    *v88 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v100, v101, v139);
    v87 = &v134;
    v88 = &v132;
    v89 = v59;
  }

  while ((v90 & 1) != 0);
  v131 = llvm::UndefValue::get();
  v130 = llvm::UndefValue::get();
  v102 = v135;
  v103 = &v131;
  v104 = 1;
  do
  {
    v105 = v104;
    v106 = *v103;
    v140 = 257;
    v107 = llvm::ConstantInt::get();
    v108 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), AlignedLoad, v107, v139);
    v138 = 257;
    v109 = llvm::ConstantInt::get();
    v110 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v106, v108, v109, v137);
    v111 = *v102;
    v140 = 257;
    v112 = llvm::ConstantInt::get();
    v113 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v111, v112, v139);
    v138 = 257;
    v114 = llvm::ConstantInt::get();
    v115 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v110, v113, v114, v137);
    llvm::ConstantInt::get();
    v116 = llvm::ConstantDataVector::getSplat();
    v140 = 257;
    AShr = llvm::IRBuilderBase::CreateAShr((a1 + 1), v115, v116, v139);
    v118 = a1[28];
    v140 = 257;
    SIToFP = llvm::IRBuilderBase::CreateSIToFP((a1 + 1), AShr, v118, v139);
    llvm::ConstantFP::get();
    v120 = llvm::ConstantDataVector::getSplat();
    v140 = 257;
    v121 = llvm::IRBuilderBase::CreateFMul((a1 + 1), SIToFP, v120, v139);
    v104 = 0;
    *v103 = v121;
    v102 = &v134;
    v103 = &v130;
    AlignedLoad = v59;
  }

  while ((v105 & 1) != 0);
  v140 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v140 = 257;
  v123 = llvm::IRBuilderBase::CreateSelect();
  v140 = 257;
  v124 = llvm::IRBuilderBase::CreateFMul((a1 + 1), v129, Select, v139);
  v138 = 257;
  v125 = llvm::IRBuilderBase::CreateFAdd((a1 + 1), v124, v123, v137);
  if ((v128 & 1) == 0)
  {
    v126 = a1[31];
    v140 = 257;
    return llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v125, v126, v139);
  }

  return v125;
}

uint64_t AGCLLVMGen5TargetLowerer::buildReadHWTileID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.tile.id", "");
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleDown(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2768), a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdShuffleUp(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
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

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2760), a3, a4);
}

uint64_t AGCLLVMGen5TargetLowerer::buildSimdGroupIndexInThreadgroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.simd.group", "");
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

uint64_t AGCLLVMGen5TargetLowerer::buildThreadIndexInSimdGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.simd.element", "");
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

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildProgramType(uint64_t a1, uint64_t a2)
{
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

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v7 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v4 + 24), v4, 0, 0, v6);
}

uint64_t AGCLLVMGen5TargetLowerer::buildIsNullSimdgroupEvent(unsigned int **a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
  v4 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v5 = a1[26];
  v11 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, v4, v5, v10);
  v7 = a1[328];
  v9[16] = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, Cast, v7, v9);
  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMGen5TargetLowerer::buildGetNullSimdgroupEvent(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a1 + 2624);
  v5 = *a2;
  v8 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v4, v5, v7);
  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

void AGCLLVMGen5TargetLowerer::buildWaitSimdgroupEvents(void *a1, llvm::Instruction *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
  v4 = (a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[4];
  v10 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, v4, &v9);
  v6 = a1[26];
  v8 = 257;
  llvm::IRBuilderBase::CreateCast((a1 + 1), 47, Load, v6, &v7);
  std::string::basic_string[abi:nn200100]<0>(&v7, "async.copy.waiton");
  std::string::append(&v7, "bufrblk");
  v10 = 260;
  v9 = &v7;
  operator new();
}

void AGCLLVMGen5TargetLowerer::buildMemCpy2D(unsigned int **a1, llvm::Instruction *a2, char a3)
{
  v80[12] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 1), a2);
  v79[0] = v80;
  v79[1] = 0xC00000000;
  v6 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v6 >> 5) >= 1)
  {
    v7 = (v6 >> 5) & 0x7FFFFFFF;
    v8 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v79, *(v8 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v8 = (v8 + 32);
      --v7;
    }

    while (v7);
  }

  if ((a3 & 1) == 0)
  {
    v9 = v79[0];
    v77[0] = (*(*a1 + 243))(a1, a2, 0);
    llvm::SmallVectorImpl<llvm::Value *>::insert_one_impl<llvm::Value *>(v79, v9 + 1, v77);
  }

  v10 = *(v79[0] + 10);
  v11 = **(v79[0] + 2);
  v12 = *(v11 + 8);
  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(**(v11 + 16) + 8);
  }

  v13 = v12 & 0xFFFFFF00;
  if (v13 == 768)
  {
    v14 = *(v79[0] + 4);
  }

  else
  {
    v14 = *(v79[0] + 8);
  }

  if (v13 == 768)
  {
    v15 = *(v79[0] + 8);
  }

  else
  {
    v15 = *(v79[0] + 4);
  }

  if (v13 == 768)
  {
    v16 = *(v79[0] + 7);
  }

  else
  {
    v16 = *(v79[0] + 3);
  }

  if (*(v14 + 16) != 16 || *(v15 + 16) != 16 || *(v16 + 16) != 16 || v10[16] > 0x14u)
  {
    v19 = llvm::ConstantInt::get();
    v78 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v14, v19, v77);
    v78 = 257;
    URem = llvm::IRBuilderBase::CreateURem(a1 + 1, v16, v15, v77);
    v22 = llvm::ConstantInt::get();
    v76 = 257;
    v23 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, URem, v22, v75);
    v78 = 257;
    v24 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v10, v24, v77);
    v26 = a1[25];
    v76 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v26, v75);
    v78 = 257;
    v28 = llvm::ConstantInt::get();
    v29 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v10, v28, v77);
    v30 = a1[25];
    v76 = 257;
    v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v75);
    Signed = llvm::ConstantInt::getSigned();
    v78 = 257;
    v33 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 39, Cast, Signed, v77);
    v34 = llvm::ConstantInt::getSigned();
    v76 = 257;
    v35 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 41, Cast, v34, v75);
    v74 = 257;
    v36 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v33, v35, v73);
    v37 = llvm::ConstantInt::getSigned();
    v72 = 257;
    v38 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 39, v31, v37, v71);
    v39 = llvm::ConstantInt::getSigned();
    v70 = 257;
    v40 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 41, v31, v39, v69);
    v68 = 257;
    v41 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v38, v40, v67);
    v66 = 257;
    v42 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v36, v41, v65);
    v78 = 257;
    v43 = llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v23, v77);
    v76 = 257;
    llvm::IRBuilderBase::CreateAnd((a1 + 1), v42, v43, v75);
    v77[0] = "async.copy.merge";
    v78 = 259;
    v44 = llvm::BasicBlock::splitBasicBlock();
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v44);
    llvm::IRBuilderBase::SetInsertPoint((a1 + 1), v44, FirstInsertionPt);
    v46 = a1[26];
    v78 = 257;
    llvm::IRBuilderBase::CreatePHI((a1 + 1), v46, 2, v77);
    v77[0] = "async.copy.emulation";
    v78 = 259;
    operator new();
  }

  v17 = *(v14 + 32);
  if (v17 > 0x40)
  {
    v18 = llvm::APInt::countLeadingZerosSlowCase((v14 + 24)) == v17 - 1;
  }

  else
  {
    v18 = *(v14 + 24) == 1;
  }

  v48 = v18;
  v49 = (v16 + 24);
  if (*(v16 + 32) >= 0x41u)
  {
    v49 = *v49;
  }

  v50 = (v15 + 24);
  if (*(v15 + 32) >= 0x41u)
  {
    v50 = *v50;
  }

  v51 = *v49;
  v52 = *v50;
  v78 = 257;
  v53 = llvm::ConstantInt::get();
  v54 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v10, v53, v77);
  if (v54[16] == 16)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v56 = *(v55 + 8);
  if (v56 > 0x40)
  {
    v57 = **(v55 + 3);
  }

  else
  {
    v57 = (*(v55 + 3) << -v56) >> -v56;
  }

  v78 = 257;
  v58 = llvm::ConstantInt::get();
  v59 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v10, v58, v77);
  if (v59[16] == 16)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v60 + 8);
  if (v61 > 0x40)
  {
    v62 = **(v60 + 3);
  }

  else
  {
    v62 = (*(v60 + 3) << -v61) >> -v61;
  }

  v63 = *a1;
  if (!v48 || v51 % v52 || (v57 - 0x8000) < 0xFFFF0000 || (v62 - 0x8000) < 0xFFFF0000)
  {
    v64 = (*(v63 + 239))(a1, v79);
  }

  else
  {
    v64 = (*(v63 + 240))(a1, v79);
  }

  v47 = *a2;
  v78 = 257;
  llvm::IRBuilderBase::CreateCast((a1 + 1), 48, v64, v47, v77);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v79[0] != v80)
  {
    free(v79[0]);
  }
}

unsigned int *llvm::SmallVectorImpl<llvm::Value *>::insert_one_impl<llvm::Value *>(unsigned int *result, void *a2, uint64_t *a3)
{
  v4 = result;
  v5 = result[2];
  if ((*result + 8 * v5) == a2)
  {
    v8 = *a3;

    return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(result, v8);
  }

  else
  {
    if (v5 >= result[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*result + 8 * v5) = *(*result + 8 * v5 - 8);
    v7 = *result + 8 * v5 - 8;
    if (v7 != a2)
    {
      result = memmove(a2 + 1, a2, v7 - a2);
      LODWORD(v5) = v4[2];
    }

    v4[2] = v5 + 1;
    *a2 = *a3;
  }

  return result;
}

void AGCLLVMGen5TargetLowerer::buildMemCpy1D(uint64_t a1, llvm::Instruction *a2, int a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v14[0] = v15;
  v14[1] = 0x500000000;
  v6 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v6 >> 5) >= 1)
  {
    v7 = (v6 >> 5) & 0x7FFFFFFF;
    v8 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, *(v8 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v8 = (v8 + 32);
      --v7;
    }

    while (v7);
  }

  if (!a3)
  {
    v9 = v14[0];
    v12[0] = (*(*a1 + 1944))(a1, a2, 0);
    llvm::SmallVectorImpl<llvm::Value *>::insert_one_impl<llvm::Value *>(v14, v9 + 1, v12);
  }

  v10 = (*(*a1 + 1936))(a1, v14);
  v11 = *a2;
  v13 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v10, v11, v12);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v14[0] != v15)
  {
    free(v14[0]);
  }
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildMeshVaryingWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
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
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx2.mesh.varying.write", 28, *(a1 + 144), *(a1 + 192), *(a1 + 192), v10);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = PointerCast;
  v16 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v20, 3, v15);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildMeshPrimattrWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
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
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx2.mesh.primattr.write", 29, *(a1 + 144), *(a1 + 192), *(a1 + 192), v10);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = PointerCast;
  v16 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v20, 3, v15);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildMeshIndexWrite(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
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
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx2.mesh.index.write", 26, *(a1 + 144), *(a1 + 192), v8);
  v18[0] = a3;
  v18[1] = PointerCast;
  v14 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v11 + 24), v11, v18, 2, v13);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildWaitFence(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx2.wait.fence", 20, *(a1 + 144), *(a1 + 192));
  v13[0] = a3;
  v9 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v6 + 24), v6, v13, 1, v8);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildAllocateUVB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx2.allocate.uvb", 22, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v15[0] = a3;
  v15[1] = a4;
  v11 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v15, 2, v10);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildGetMeshPrimitivePointer(uint64_t a1, uint64_t a2)
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
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.mesh.primdata.ptr", 27, v4);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildGetPayloadPointer(uint64_t a1, uint64_t a2)
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
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.object.payload.ptr", 28, v4);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildEnableAllThreads(uint64_t a1, uint64_t a2)
{
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx2.enable.all.threads", 28, *(a1 + 144));
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

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildWriteChildcount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx2.object.childcount.write", 33, *(a1 + 144), *(a1 + 200));
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

llvm::Instruction *AGCLLVMGen5TargetLowerer::buildStoreChildcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx2.object.childcount.store", 33, *(a1 + 144), v8, v9);
  v17[0] = a4;
  v17[1] = a3;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, v17, 2, v12);
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<128,31,4,128,500000,500000,true>>::getComputeMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCLLVMGen5TargetLowerer::buildIsFirstActiveThread(uint64_t a1, __int128 *a2, int a3)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v16, a1 + 8);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = 2840;
  if (a3)
  {
    v6 = 2848;
  }

  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = strlen(*(a1 + v6));
  }

  else
  {
    v8 = 0;
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v7, v8, *(a1 + 200));
  v15 = 257;
  v10 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v14);
  v11 = llvm::ConstantInt::get();
  v13[16] = 257;
  return llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v10, v11, v13);
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildReduce(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, llvm::Value *a5)
{
  v112 = *MEMORY[0x277D85DE8];
  *&v83 = a3;
  *(&v83 + 1) = a4;
  v80 = *a2;
  v81 = *(a2 + 2);
  if (v81)
  {
    llvm::MetadataTracking::track();
  }

  v82 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v80, a1 + 8);
  if (v81)
  {
    llvm::MetadataTracking::untrack();
  }

  if (llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1)
  {
    v74 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v75, (a1 + 8));
    v65 = *(a1 + 104);
    v76 = v65;
    v90 = v83;
    v87 = v74;
    v88 = v75;
    if (v75)
    {
      llvm::MetadataTracking::track();
      v65 = v76;
    }

    v89 = v65;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v87, a1 + 8);
    if (v88)
    {
      llvm::MetadataTracking::untrack();
    }

    v66 = llvm::StringRef::find();
    v67 = llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1;
    llvm::StringRef::find();
    llvm::StringRef::find();
    llvm::StringRef::find();
    if (v66 != -1 && !v67)
    {
      v84 = v74;
      v85 = v75;
      if (v75)
      {
        llvm::MetadataTracking::track();
        v68 = v76;
        v86 = v76;
        v91 = v84;
        v92 = v85;
        if (v85)
        {
          llvm::MetadataTracking::track();
          v68 = v86;
        }
      }

      else
      {
        v68 = v76;
        v86 = v76;
        v91 = v84;
        v92 = 0;
      }

      v93 = v68;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v91, a1 + 8);
      if (v92)
      {
        llvm::MetadataTracking::untrack();
      }

      *v110 = 0u;
      v111 = 0u;
      AGCLLVMBuilder::unboxVector(a1, a5, v110);
      v69 = *(a1 + 2856);
      if (v69)
      {
        v70 = strlen(*(a1 + 2856));
      }

      else
      {
        v70 = 0;
      }

      inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v69, v70, *(a1 + 200));
      v109 = 257;
      v72 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, &v106);
      v73 = llvm::ConstantInt::get();
      v105 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v72, v73, v104);
      *&v106 = "reduce.int.prod.merge";
      v109 = 259;
      llvm::BasicBlock::splitBasicBlock();
      *&v106 = "reduce.int.prod.fast";
      v109 = 259;
      operator new();
    }

    v106 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v107, (a1 + 8));
    v108 = *(a1 + 104);
    InsertElement = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v106, v90, *(&v90 + 1), a5);
    if (v107)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v75)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v77 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v78, (a1 + 8));
    v8 = *(a1 + 104);
    v79 = v8;
    v9 = v83;
    v94 = v77;
    v95 = v78;
    if (v78)
    {
      llvm::MetadataTracking::track();
      v8 = v79;
    }

    v96 = v8;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v94, a1 + 8);
    if (v95)
    {
      llvm::MetadataTracking::untrack();
    }

    v10 = *a5;
    if ((*(*a5 + 8) & 0xFE) != 0x12 || **(v10 + 16) == *(a1 + 200))
    {
      v106 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v107, (a1 + 8));
      v108 = *(a1 + 104);
      InsertElement = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v106, v9, *(&v9 + 1), a5);
      if (v107)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v11 = *(v10 + 32);
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v10);
      if (ScalarSizeInBits == 8)
      {
        v15 = 200;
        if (v11 == 2)
        {
          v15 = 192;
        }

        v16 = *(a1 + v15);
        v18 = llvm::FixedVectorType::get();
        if (v11 == 3)
        {
          a5 = AGCLLVMBuilder::extendVector(a1, a5, 4, v17);
        }

        v97 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v98, (a1 + 8));
        v99 = *(a1 + 104);
        v109 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a5, v16, &v106);
        v20 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v97, v9, *(&v9 + 1), Cast);
        if (v98)
        {
          llvm::MetadataTracking::untrack();
        }

        v109 = 257;
        v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v20, v18, &v106);
        if (v11)
        {
          v22 = v21;
          for (i = 0; i != v11; ++i)
          {
            v109 = 257;
            v24 = llvm::ConstantInt::get();
            Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v22, v24, &v106);
            v105 = 257;
            v26 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, Element, v26, v104);
          }
        }
      }

      else if (v11 == 3 || ScalarSizeInBits != 16)
      {
        if (v11 == 3 && ScalarSizeInBits == 16)
        {
          v39 = AGCLLVMBuilder::extendVector(a1, a5, 4, v14);
          v40 = *(a1 + 248);
          v109 = 257;
          v41 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v39, v40, &v106);
          v109 = 257;
          v42 = llvm::ConstantInt::get();
          v43 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v41, v42, &v106);
          v101 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v102, (a1 + 8));
          v103 = *(a1 + 104);
          v44 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v101, v9, *(&v9 + 1), v43);
          if (v102)
          {
            llvm::MetadataTracking::untrack();
          }

          v109 = 257;
          v45 = llvm::ConstantInt::get();
          v46 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v41, v45, &v106);
          v47 = *(a1 + 240);
          v105 = 257;
          v48 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v46, v47, v104);
          v100 = 257;
          v49 = llvm::ConstantInt::get();
          v50 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v48, v49, &v97);
          v97 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v98, (a1 + 8));
          v99 = *(a1 + 104);
          v51 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v97, v9, *(&v9 + 1), v50);
          if (v98)
          {
            llvm::MetadataTracking::untrack();
          }

          v52 = *(a1 + 240);
          v109 = 257;
          v53 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v44, v52, &v106);
          v105 = 257;
          v54 = llvm::ConstantInt::get();
          v55 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v53, v54, v104);
          v56 = *(a1 + 240);
          v109 = 257;
          v57 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v44, v56, &v106);
          v105 = 257;
          v58 = llvm::ConstantInt::get();
          v59 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v57, v58, v104);
          v109 = 257;
          v60 = llvm::ConstantInt::get();
          v61 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v55, v60, &v106);
          v109 = 257;
          v62 = llvm::ConstantInt::get();
          v63 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v61, v59, v62, &v106);
          v109 = 257;
          v64 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v63, v51, v64, &v106);
        }
      }

      else
      {
        v28 = 248;
        if (v11 == 2)
        {
          v28 = 200;
        }

        v29 = *(a1 + v28);
        v30 = llvm::FixedVectorType::get();
        v97 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v98, (a1 + 8));
        v99 = *(a1 + 104);
        v109 = 257;
        v31 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a5, v29, &v106);
        v32 = AGCLLVMGen5TargetLowerer::buildReduceCore(a1, &v97, v9, *(&v9 + 1), v31);
        if (v98)
        {
          llvm::MetadataTracking::untrack();
        }

        v109 = 257;
        v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v32, v30, &v106);
        if (v11)
        {
          v34 = v33;
          for (j = 0; j != v11; ++j)
          {
            v109 = 257;
            v36 = llvm::ConstantInt::get();
            v37 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v34, v36, &v106);
            v105 = 257;
            v38 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v37, v38, v104);
          }
        }
      }
    }

    if (v78)
    {
LABEL_28:
      llvm::MetadataTracking::untrack();
    }
  }

  return InsertElement;
}

llvm::Value *AGCLLVMGen5TargetLowerer::buildReduceCore(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, llvm::Value *a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v50 = a4;
  v46 = *a2;
  v47 = *(a2 + 2);
  if (v47)
  {
    llvm::MetadataTracking::track();
  }

  v48 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v46, a1 + 8);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a5;
  v9 = *a5;
  if ((*(*a5 + 8) & 0xFE) == 0x12)
  {
    v9 = **(v8 + 16);
  }

  v10 = llvm::StringRef::find();
  llvm::StringRef::find();
  v39 = llvm::StringRef::find();
  v38 = llvm::StringRef::find();
  v35 = llvm::StringRef::find();
  v11 = llvm::StringRef::find() != -1 && (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1);
  __p = 0;
  v44 = 0;
  v45 = 0;
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() == -1)
    {
      if (llvm::StringRef::find() == -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          if (llvm::StringRef::find() == -1)
          {
            if (llvm::StringRef::find() == -1)
            {
              if (llvm::StringRef::find() == -1)
              {
                goto LABEL_27;
              }

              v12 = "Xor";
            }

            else
            {
              v12 = "Or";
            }
          }

          else
          {
            v12 = "And";
          }
        }

        else
        {
          v12 = "Min";
        }
      }

      else
      {
        v12 = "Max";
      }
    }

    else
    {
      v12 = "Add";
    }
  }

  else
  {
    v12 = "Mul";
  }

  MEMORY[0x20F331AA0](&__p, v12);
LABEL_27:
  v13 = v9;
  if (*(v9 + 8) == 13)
  {
    v13 = *(a1 + 200);
  }

  v14 = 2816;
  if (v10 == -1)
  {
    v14 = 2824;
  }

  std::string::basic_string[abi:nn200100]<0>(&v42, *(a1 + v14));
  if (v11)
  {
    v15 = "u.";
  }

  else if (v13 == *(a1 + 168))
  {
    v15 = "f.";
  }

  else if (v13 == *(a1 + 152))
  {
    v15 = "f16.";
  }

  else
  {
    v15 = "i.";
  }

  std::string::append(&v42, v15);
  if (v45 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v45 >= 0)
  {
    v17 = HIBYTE(v45);
  }

  else
  {
    v17 = v44;
  }

  std::string::append(&v42, p_p, v17);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v42;
  }

  else
  {
    v18 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v20 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v18, size, v13, *(a1 + 192), v13);
  *v53 = 0u;
  v54 = 0u;
  v21 = AGCLLVMBuilder::unboxVector(a1, a5, v53);
  v37 = *(v8 + 8) & 0xFE;
  if (v37 == 18)
  {
    llvm::FixedVectorType::get();
    v22 = llvm::UndefValue::get();
  }

  else
  {
    v22 = 0;
  }

  v36 = llvm::ConstantInt::get();
  if (v21)
  {
    v23 = 0;
    v24 = v21;
    do
    {
      if (*(v9 + 8) == 13)
      {
        v25 = v53[v23];
        v26 = *(a1 + 200);
        v41 = 257;
        if (v35 == -1)
        {
          v27 = 39;
        }

        else
        {
          v27 = 40;
        }

        Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, v27, v25, v26, v40);
        v53[v23] = Cast;
      }

      else
      {
        Cast = v53[v23];
      }

      v51[0] = v36;
      v51[1] = Cast;
      v41 = 257;
      FMul = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v20 + 24), v20, v51, 2, v40);
      if (*(v9 + 8) == 13)
      {
        v41 = 257;
        FMul = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, FMul, v9, v40);
      }

      if (v39 != -1)
      {
        if (*(v9 + 8) > 6u)
        {
          v41 = 257;
          v31 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Cast, v9, v40);
          v52 = 257;
          Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), FMul, v31, v51);
        }

        else
        {
          v41 = 257;
          Add = llvm::IRBuilderBase::CreateFAdd(a1 + 8, FMul, Cast, v40);
        }

        FMul = Add;
      }

      if (v38 != -1)
      {
        v32 = v53[v23];
        v41 = 257;
        FMul = llvm::IRBuilderBase::CreateFMul(a1 + 8, FMul, v32, v40);
      }

      if (v37 == 18)
      {
        v41 = 257;
        v33 = llvm::ConstantInt::get();
        FMul = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v22, FMul, v33, v40);
      }

      ++v23;
      v22 = FMul;
    }

    while (v24 != v23);
  }

  else
  {
    FMul = v22;
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  return FMul;
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    llvm::APInt::initSlowCase(this);
  }

  else
  {
    *this = a2 != 0;
  }

  return this;
}

uint64_t std::function<llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v8 = a4;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, a3, &v8, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(v6);
}

uint64_t std::__function::__func<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = (a2 + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  v14 = *a3;
  v11 = a3 + 1;
  v15 = *(a3 + 2);
  if (v15)
  {
    llvm::MetadataTracking::retrack();
    *v11 = 0;
  }

  v16 = *(a3 + 6);
  v12 = v9(v10, &v14, *a4, *a5);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

__n128 std::__function::__func<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen3TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer &,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BB778;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer&,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = (a2 + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  v14 = *a3;
  v11 = a3 + 1;
  v15 = *(a3 + 2);
  if (v15)
  {
    llvm::MetadataTracking::retrack();
    *v11 = 0;
  }

  v16 = *(a3 + 6);
  v12 = v9(v10, &v14, *a4, *a5);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return v12;
}

__n128 std::__function::__func<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *),std::allocator<llvm::Value * (AGCLLVMGen5TargetLowerer::*)(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>,llvm::Value * ()(AGCLLVMGen5TargetLowerer&,AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BB730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AGCLLVMObjectArray::addNewMainObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1848) = a2;
  *__p = *a3;
  v5 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = a2;
  llvm::SmallVectorImpl<std::pair<std::unique_ptr<AGCLLVMObjectBase>,std::string>>::emplace_back<AGCLLVMObjectBase*&,std::string>((a1 + 1704), &v6, __p);
  if (SHIBYTE(v5) < 0)
  {
    v3 = __p[0];

    operator delete(v3);
  }
}

__n128 llvm::SmallVectorImpl<std::pair<std::unique_ptr<AGCLLVMObjectBase>,std::string>>::emplace_back<AGCLLVMObjectBase*&,std::string>(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3 >= *(result + 3))
  {
    llvm::SmallVectorTemplateBase<std::pair<std::unique_ptr<AGCLLVMObjectBase>,std::string>,false>::growAndEmplaceBack<AGCLLVMObjectBase*&,std::string>(result, a2, a3);
  }

  v4 = *result + 32 * v3;
  *v4 = *a2;
  v5 = *a3;
  *(v4 + 24) = *(a3 + 16);
  *(v4 + 8) = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  ++*(result + 2);
  return v5;
}

void AGCLLVMUserIntersectionShaderArray<RaytracingConstantsGen1>::~AGCLLVMUserIntersectionShaderArray(AGCLLVMObjectArray *a1)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(a1);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserShaderWithIntersectionShadersArray::~AGCLLVMUserShaderWithIntersectionShadersArray(AGCLLVMUserShaderWithIntersectionShadersArray *this)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(this);

  JUMPOUT(0x20F331DC0);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRawRayPointers@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, llvm::Value **a6@<X8>)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v15[20] = *MEMORY[0x277D85DE8];
  v14[0] = v15;
  v14[1] = 0x1400000000;
  llvm::SmallVectorImpl<llvm::MDNode const*>::resizeImpl<false>(v14, a6);
  if (a6)
  {
    v9 = 0;
    do
    {
      *(v14[0] + v9) = **(a5 + 8 * v9);
      ++v9;
    }

    while (a6 != v9);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v13[16] = 257;
  v11 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, a5, a6, v13);
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  return v11;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildMemCpy2DConditionalLoadStoreExpansion(uint64_t a1, uint64_t ***a2, uint64_t a3, BOOL a4)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::programTypeSpecialRegisterValueForShaderType(uint64_t a1, int a2)
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

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getImageBlockWriteIntrinsicFromDimension@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, void *a4@<X8>)
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

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
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

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSimdShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
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

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildQuadShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
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

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildQuadShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
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

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildWriteImageBlockIntrinsic(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, int a6)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPackMXU(uint64_t a1, int a2, uint64_t *a3, unsigned int a4)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildUnpackMXU(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::intersectionQueryResidencyForQueryAtInstruction(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Value *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Value *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Value *>>>::find<llvm::Value *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BBFA0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPayloadVariant(uint64_t a1, int a2)
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

llvm::Function *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::replacePayloadSupportFunctions(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v5 = *(a1 + 200);
  v21[0] = "vrid_ext";
  v22 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, a2, v5, v21);
  v7 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), Cast, v7, v21);
  v9 = *(a1 + 208);
  (*(**(a1 + 920) + 968))();
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v9, a3, v10, v21);
  v12 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v12, v19, v13);
  v15 = *(a1 + 200);
  (*(**(a1 + 920) + 1136))();
  v16 = llvm::ConstantInt::get();
  v22 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), LShr, v16, v21);
  v20 = 257;
  return llvm::IRBuilderBase::CreateGEP((a1 + 8), v15, PointerCast, Mul, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v13 = RaytracingConstantsGen1::payloadSegmentSize(v11, a1[2872]);
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

    ++v11;
    v12 += 8;
  }

  while (v11 != 26);
  return v9;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getRaytracingShaderType(uint64_t a1, int a2, char a3)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSDoneRayTraceSCSFlagSet(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSCSDoneRayTraceSCSFlagRead(unsigned int **a1, uint64_t a2, uint64_t a3)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildSetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetBufferIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetSizeIntersectionFunctionTable(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4)
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

std::string *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getIntersectionMainFunctionName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, std::string *a5@<X8>)
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

unint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSizeAndUserPayloadSize(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
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

  return (AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(a1, v9, a5, (v6 >> 5) & 1) + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCliqueSGeneral(llvm::ConstantInt **a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v15, a1, a3, *&v16[0], 0, 0, 0);
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, *&v16[0], v15, v6, 1u, 1);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSGeneral(AGCLLVMBuilder::InsertPoint,std::array<llvm::GlobalVariable *,6ul> const&,unsigned char,unsigned char)::functionNames[a5];
  v12 = strlen(v11);
  v13 = a1[18];
  v20 = v10;
  v21 = v16[0];
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v11, v12, v13, &v20, 3uLL);
}

llvm::Type **AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, llvm::Type **a6, char a7)
{
  llvm::PointerType::get();
  v14 = llvm::PointerType::get();
  v15 = *(a3 + 16);
  v46 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), v15, v14, v45, v16);
  v18 = *(a2 + 208);
  (*(**(a2 + 920) + 896))();
  v19 = llvm::ConstantInt::get();
  v45[0] = "scs.scs_layout.ptr";
  v46 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a2 + 8), v18, PointerCast, v19, v45);
  v21 = llvm::PointerType::get();
  v46 = 257;
  v23 = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), GEP, v21, v45, v22);
  v24 = *(a2 + 200);
  v25 = llvm::ConstantInt::get();
  v46 = 257;
  v26 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v24, v23, v25, v45);
  *a1 = AGCLLVMBuilder::CreateLoad(a2, v26, "global_stride");
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a2, a4, PointerCast);
  v28 = *(a2 + 200);
  (*(**(a2 + 920) + 1072))();
  v29 = llvm::ConstantInt::get();
  v46 = 257;
  v30 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v28, PerVridSetDataPtr, v29, v45);
  v31 = *(a2 + 200);
  (*(**(a2 + 920) + 1080))();
  v32 = llvm::ConstantInt::get();
  v46 = 257;
  v33 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v31, PerVridSetDataPtr, v32, v45);
  v34 = *(a2 + 200);
  (*(**(a2 + 920) + 1088))();
  v35 = llvm::ConstantInt::get();
  v46 = 257;
  v36 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v34, PerVridSetDataPtr, v35, v45);
  v37 = *(a2 + 200);
  v46 = 257;
  llvm::Type::isOpaquePointerTy(*v36);
  a1[2] = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v37, v36, 0, v45);
  v38 = *(a2 + 200);
  if ((a5 & 0x100000000) != 0)
  {
    Cast = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), Cast, v30, 0, 0);
  }

  else
  {
    v46 = 257;
    llvm::Type::isOpaquePointerTy(*v30);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v38, v30, 0, v45);
    v40 = *(a2 + 200);
    v44[16] = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 38, AlignedLoad, v40, v44);
  }

  a1[1] = Cast;
  if (a7)
  {
    result = llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), a6, v33, 0, 0);
  }

  else
  {
    v43 = *(a2 + 200);
    v46 = 257;
    llvm::Type::isOpaquePointerTy(*v33);
    result = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v43, v33, 0, v45);
    a6 = result;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = a6;
  return result;
}

unsigned __int8 *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(llvm::ConstantInt **a1, uint64_t a2, uint64_t a3, llvm::Value **a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v107 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 477);
  v12 = llvm::PointerType::get();
  v89 = llvm::PointerType::get();
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v15 = a1[25];
  *&v101 = "vrid_ext";
  LOWORD(v103) = 259;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, a3, v15, &v101);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  v98 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (a1 + 1));
  v100 = *(a1 + 26);
  (*(*a1 + 247))(&v101, a1, &v98, a2, a3, a7);
  if (v99)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v11 >= 4)
  {
    v93 = *(a1 + 7);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v94, (a1 + 1));
    v95 = *(a1 + 26);
    (*(*a1 + 137))(v96, a1, &v93);
    v17 = v96[1];
    v18 = v96[2];
    if (v94)
    {
      llvm::MetadataTracking::untrack();
    }

    v19 = llvm::ConstantInt::get();
    v96[0] = "scs.num_vrids";
    v97 = 259;
    llvm::IRBuilderBase::CreateMul((a1 + 1), v18, v19, v96);
    v20 = llvm::ConstantInt::get();
    v96[0] = "scs.max_level_depth";
    v97 = 259;
    llvm::IRBuilderBase::CreateAdd((a1 + 1), v17, v20, v96);
  }

  v21 = llvm::ConstantInt::get();
  v96[0] = "vrid_level_1";
  v97 = 259;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v21, v96);
  v22 = llvm::ConstantInt::get();
  v96[0] = "vrid_level_2";
  v97 = 259;
  v84 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v22, v96);
  llvm::ArrayType::get(v12, 0x1A);
  v23 = llvm::UndefValue::get();
  LODWORD(v105[0]) = 2;
  v97 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v23, *(&v101 + 1), v105, 1, v96);
  LODWORD(v105[0]) = 3;
  v97 = 257;
  v25 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), InsertValue, v102, v105, 1, v96);
  LODWORD(v105[0]) = 0;
  v97 = 257;
  v26 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v25, *(&v102 + 1), v105, 1, v96);
  LODWORD(v105[0]) = 4;
  v97 = 257;
  v27 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v26, *(&v103 + 1), v105, 1, v96);
  LODWORD(v105[0]) = 5;
  v97 = 257;
  v28 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v27, v104, v105, 1, v96);
  v29 = a6;
  if (a7)
  {
    LODWORD(v105[0]) = 1;
    v97 = 257;
    v28 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v28, v101, v105, 1, v96);
  }

  v85 = v28;
  if (a5 <= 6 && (((1 << a5) & 0x4A) != 0 || ((1 << a5) & 0x21) != 0))
  {
    v82 = llvm::ConstantInt::get();
    llvm::ConstantInt::get();
  }

  else
  {
    v77 = a4[3];
    v78 = llvm::ConstantInt::get();
    v97 = 257;
    v82 = v77;
    llvm::IRBuilderBase::CreateAdd((a1 + 1), v77, v78, v96);
  }

  v97 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v13, v12, v96, v30);
  v97 = 257;
  v79 = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v14, v89, v96, v32);
  v33 = *a4;
  v96[0] = "global_vrid_size";
  v97 = 259;
  v34 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v33, v34, v96);
  v90 = (*(*a1 + 127))(a1, a5, a6);
  v36 = a1[23];
  v97 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v80, LShr, v96);
  v105[0] = "segment_start";
  v106 = 259;
  v38 = a5;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v36, PointerCast, Mul, v105);
  v39 = a1[23];
  v40 = *(&v102 + 1);
  v41 = llvm::ConstantInt::get();
  v97 = 257;
  v87 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v39, v40, v41, v96);
  v42 = 6;
  v43 = -104;
  v44 = v85;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v42, v38, v29, *(a1 + 1940)))
    {
      v45 = RaytracingConstantsGen1::payloadSegmentSize(v42, *(a1 + 2872));
      if (v45)
      {
        v46 = v45;
        if (v45 <= v90)
        {
          LODWORD(v105[0]) = v42;
          v97 = 257;
          v61 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v44, v87, v105, 1, v96);
          v62 = (v46 + 3) & 0x3FFC;
          v63 = a1[23];
          v64 = llvm::ConstantInt::get();
          v97 = 257;
          v65 = v63;
          v44 = v61;
          v87 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v65, v87, v64, v96);
          v66 = (v90 - v62);
          if (v90 < v62)
          {
            v66 = 0;
          }

          v90 = v66;
        }

        else
        {
          v47 = llvm::ConstantInt::get();
          if ((v42 - 19) <= 4)
          {
            v48 = llvm::ConstantInt::get();
            v97 = 257;
            llvm::IRBuilderBase::CreateICmp(a1 + 1, 35, v82, v48, v96);
            v49 = llvm::ConstantInt::get();
            v97 = 257;
            Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v82, v49, v96);
            v29 = a6;
            v51 = llvm::ConstantInt::get();
            v106 = 257;
            UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 1), Sub, v51, v105);
            v53 = llvm::ConstantInt::get();
            v92 = 257;
            llvm::IRBuilderBase::CreateAdd((a1 + 1), UDiv, v53, v91);
            llvm::ConstantInt::get();
            Select = llvm::IRBuilderBase::CreateSelect();
            v97 = 257;
            v47 = llvm::IRBuilderBase::CreateMul((a1 + 1), v47, Select, v96);
          }

          v97 = 257;
          v55 = llvm::IRBuilderBase::CreateMul((a1 + 1), v84, v47, v96);
          v56 = a1[23];
          v97 = 257;
          v57 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v56, GEP, v55, v96);
          v91[0] = v42;
          v106 = 257;
          v44 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v44, v57, v91, 1, v105);
          v58 = a1[23];
          v59 = llvm::ConstantInt::get();
          v97 = 257;
          v60 = llvm::IRBuilderBase::CreateMul((a1 + 1), v47, v59, v96);
          v106 = 257;
          GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v58, GEP, v60, v105);
          v38 = a5;
        }
      }
    }

    ++v42;
    v43 += 8;
  }

  while (v42 != 26);
  if (a4[1])
  {
    v67 = *a4;
    v68 = llvm::ConstantInt::get();
    v97 = 257;
    v69 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v67, v68, v96);
    v106 = 257;
    v70 = llvm::IRBuilderBase::CreateMul((a1 + 1), v80, v69, v105);
    v71 = a4[1];
    v97 = 257;
    v72 = llvm::IRBuilderBase::CreateMul((a1 + 1), v84, v71, v96);
    v97 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), v70, v72, v96);
    v74 = *v79;
    v75 = a1[23];
    v96[0] = "ray_user_data_as_i8";
    v97 = 259;
    v105[0] = llvm::IRBuilderBase::CreateGEP((a1 + 1), v75, v79, Add, v96);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.in.user.payload.section.bounds", 40, v74, v105, 1uLL);
  }

  return v44;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCliqueSPop(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v12, a1, a3, v8, 0, 0, 0);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v8, v12, a4, 1u, 1);
  v10 = *(a1 + 144);
  v16[0] = v9;
  v16[1] = v8;
  v16[2] = llvm::ConstantInt::get();
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_pop_commit_end", 26, v10, v16, 3uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCliqueSPush(uint64_t a1, __int128 *a2, uint64_t a3, llvm::Type **a4, int a5, unsigned int a6, unsigned int a7)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v17, a1, a3, *&v18[0], 0, 0, 0);
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, *&v18[0], v17, a6, 1u, 1);
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayDriverTestHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(uint64_t a1, const void **a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(__p, &unk_20E75F419);
  v6 = *a3 - 1;
  if (v6 <= 2)
  {
    MEMORY[0x20F331AA0](__p, off_277E220D8[v6]);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayHasMoreResults(uint64_t a1, uint64_t a2, uint64_t a3)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayRunThisThread(uint64_t a1, uint64_t a2, uint64_t a3)
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

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayEndSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayHasTerminated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRiaCliqueEnd(uint64_t a1, uint64_t a2)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::commitIntersectionTestSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::commitIntersectionTestParallel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIFBEmulationWrapper(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, unsigned int a5, unsigned int a6)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v20, a1, a4, v24[0], 0, 0, 0);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v10, v20, 0, 1u, 1);
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v10, v20, 1u, 1u, 1);
  v13 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v10, v20, 2u, 1u, 1);
  v14 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v10, v20, 3u, 1u, 1);
  v15 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a4, v10, v20, 4u, 1u, 1);
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionGin1122SWWA(uint64_t a1, uint64_t a2, uint64_t a3)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v11, a1, a3, v6, 0, 0, 0);
  v15[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v6, v11, 8u, 1u, 1);
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionEarlyTermination(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v13, a1, a3, v8, 0, 0, 0);
  v17[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v8, v13, a4, 1u, 1);
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionMiss(uint64_t a1, uint64_t a2, uint64_t a3)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v11, a1, a3, v6, 0, 0, 0);
  v15[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v6, v11, 8u, 1u, 1);
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDriverIntersectionTest(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCurveIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a5@<W4>, unsigned int a6@<W5>, char a7@<W7>, uint64_t a8@<X8>, unsigned __int8 a9)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v38, a1, a3, v42, 0, 0, 0);
  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v16, v38, a5, a6, 1);
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildBoundingBoxIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a5@<W4>, unsigned int a6@<W5>, char a7@<W7>, uint64_t a8@<X8>, unsigned __int8 a9)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v38, a1, a3, v42, 0, 0, 0);
  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v16, v38, a5, a6, 1);
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildTriangleIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a5@<W4>, unsigned int a6@<W5>, uint64_t a9@<X8>, char a10, unsigned __int8 a11)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(v43, a1, a3, v47, 0, 0, 0);
  v18 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a3, v17, v43, a5, a6, 1);
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectionQueryAccessor(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, std::string::size_type a8, uint64_t a9, unsigned __int16 a10)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitCurveIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unsigned int a6)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
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

  v8 = llvm::PointerType::get();
  v9 = *(a1 + 144);
  v13 = 257;
  v17[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v8, v12, v10);
  v17[1] = a4;
  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.commit", 29, v9, v17, 2uLL);
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildDeallocateIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitBoundingBoxIntersectionQuery(uint64_t a1, __int128 *a2, llvm::Type **a3, uint64_t a4)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitTriangleIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unsigned int a6)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildAbortIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildNextIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(&v39, a1, a5, v16, 0x100000000, v19, 1);
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

  v23 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v16, &v39, v20, 0, 0);
  v24 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v16, &v39, v21, 0, 0);
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildResetIntersectionQuery(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildAllocateIntersectionQuery(llvm::PointerType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildGetUnpackedSCSLayout@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
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

uint64_t std::function<BOOL ()(llvm::Value const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(llvm::Value const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(llvm::Value const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::operator()(uint64_t a1, void **a2)
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

__n128 std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BCE20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromConfigurationBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::Type **a3@<X2>, llvm::Type **a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = *a2;
  v31 = *(a2 + 16);
  if (v31)
  {
    llvm::MetadataTracking::track();
  }

  v32 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v30);
  if (v31)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = llvm::PointerType::get();
  v11 = llvm::PointerType::get();
  v29 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a3, v28);
  v27[16] = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v10, v27, v13);
  v15 = *(a1 + 208);
  (*(**(a1 + 920) + 1032))();
  v16 = llvm::ConstantInt::get();
  v28[0] = "scs.scs_layout.ptr";
  v29 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v15, PointerCast, v16, v28);
  v18 = llvm::PointerType::get();
  v29 = 257;
  v20 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v18, v28, v19);
  v21 = *(a1 + 200);
  v22 = llvm::ConstantInt::get();
  v29 = 257;
  v23 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v21, v20, v22, v28);
  *a5 = AGCLLVMBuilder::CreateLoad(a1, v21, v23, "global_stride");
  v24 = *(a1 + 200);
  v29 = 257;
  llvm::Type::isOpaquePointerTy(*a4);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, a4, 0, v28);
  a5[2] = AGCLLVMBuilder::CreateLoad(a1, v24, AlignedLoad, "shader_stride");
  a5[1] = llvm::ConstantInt::get();
  result = llvm::ConstantInt::get();
  a5[4] = 0;
  a5[5] = 0;
  a5[3] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildReleaseIntersectPayload(uint64_t a1, uint64_t a2)
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

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildReleaseIntersectionResult(uint64_t a1, uint64_t a2)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectionResultAccessor(llvm::ConstantInt **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
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
  v51 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a8, v20, v62, v50, (a9 >> 5) & 1, 0);
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

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildIntersectRayForDirectAccess(llvm::ConstantInt **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
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
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildPayloadStridesFromSCS(&v76, a1, a5, v13, v19 | 0x100000000, v20, 1);
  v21 = (*(*a1 + 182))(a1, a6);
  v75[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildRayPointers(a1, a5, v13, &v76, v21, (a6 >> 5) & 1, 0);
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