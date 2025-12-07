uint64_t AGCLLVMUserObject::detectTextureWrites(AGCLLVMUserObject *this)
{
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(this + 4448));
  v3 = *(this + *(*this - 24) + 2136);
  v4 = *(v3 + 32);
  v5 = v3 + 24;
  if (v4 == v3 + 24)
  {
    return 0;
  }

  v6 = SampleFunctionMap;
  while (1)
  {
    v7 = v4 ? (v4 - 56) : 0;
    v8 = *(v4 + 8);
    llvm::Value::getName(v7);
    Key = llvm::StringMapImpl::FindKey();
    v10 = Key == -1 || Key == *(v6 + 2);
    if (!v10 && *(*(*v6 + 8 * Key) + 8) == 3 && *(v4 - 48))
    {
      break;
    }

    v4 = v8;
    if (v8 == v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObject::isThreadgroupMemoryUsed(AGCLLVMUserObject *this)
{
  v1 = *(this + *(*this - 24) + 2136);
  v2 = v1 + 8;
  for (i = *(v1 + 16); ; i = *(i + 8))
  {
    if (i == v2)
    {
      return 0;
    }

    v4 = (i - 56);
    if (!i)
    {
      v4 = 0;
    }

    v5 = *v4;
    if (*v4)
    {
      v6 = *(v5 + 8);
      if ((v6 & 0xFE) == 0x12)
      {
        v6 = *(**(v5 + 16) + 8);
      }

      if ((v6 & 0xFFFFFF00) == 0x300 && v4[1])
      {
        break;
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObject::buildRecordRaytraceForGin1122(uint64_t a1, __int128 *a2)
{
  v4 = a1 + *(*a1 - 24);
  v15 = *a2;
  v16 = *(a2 + 2);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v15, v4 + 1712);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (!(*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) || (result = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)), result == 8))
  {
    result = (*(*a1 + 392))(a1);
    if ((result & 1) == 0)
    {
      if ((*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) == 8)
      {
        llvm::BasicBlock::splitBasicBlock();
        v13 = "record_ray_trace";
        v14 = 259;
        operator new();
      }

      v6 = a1 + *(*a1 - 24);
      v7 = *(v6 + 2168);
      v10 = *(v6 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (v6 + 1712));
      v12 = *(v6 + 1808);
      (*(*v7 + 1408))(v7, &v10, a1 + 3984);
      if (v11)
      {
        llvm::MetadataTracking::untrack();
      }

      result = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24));
      if (result == 8)
      {
        result = llvm::IRBuilderBase::CreateBr((a1 + *(*a1 - 24) + 1712), 0, v8);
        v9 = a1 + *(*a1 - 24);
        *(v9 + 1760) = 0;
        *(v9 + 1768) = 40;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::getFragmentBuiltinPsoStateType(AGCLLVMUserObject *this, uint64_t a2, unint64_t a3)
{
  llvm::ArrayType::get(*(this + *(*this - 24) + 1912), 0x10);
  llvm::ArrayType::get(*(this + *(*this - 24) + 1896), 8);
  llvm::StructType::get();
  return llvm::StructType::get();
}

llvm::Instruction *AGCLLVMUserObject::replaceSimdgroupAtomicWaitNotify(void)::$_0::operator()(void *a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1[21] + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), v5);
  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 271);
  v8 = *(v7 + 1032);
  if (v8)
  {
    v9 = strlen(*(v7 + 1032));
  }

  else
  {
    v9 = 0;
  }

  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v6 + 1704), v8, v9, *(v6 + 231), *(v6 + 237), *(v6 + 237));
  v13[0] = llvm::ConstantInt::get();
  v13[1] = llvm::ConstantInt::get();
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v6 + 214, *(v10 + 24), v10, v13, 2, v12);
}

uint64_t AGCLLVMUserObject::SimdgroupAtomicWaitNotify::foundBarrierDominatingAllSideEffectsAndExternalCalls(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a2 + 2))
  {
    v4 = *(a2 + 4);
    if (v4)
    {
      v5 = 296 * v4;
      v6 = *a2;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v6 += 37;
        v5 -= 296;
        if (!v5)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = *a2;
    }

    if (v6 != (*a2 + 296 * v4))
    {
      llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>();
    }
  }

LABEL_10:
  llvm::deallocate_buffer(0, 0, 0);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::destroyAll(0, 0);
  llvm::deallocate_buffer(0, 0, 0);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::destroyAll(0, 0);
  llvm::deallocate_buffer(0, 0, 0);
  return 1;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::FindAndConstruct(void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), *a2, &v10);
  v6 = v10;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::grow(a1, v8);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), *a2, &v10);
    v6 = v10;
  }

  ++*(a1 + 2);
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  v9 = *a2;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *v6 = v9;
  *(v6 + 8) = v6 + 24;
  *&result = 0x100000000;
  *(v6 + 16) = 0x100000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0;
  return result;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::FindAndConstruct(void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), *a2, &v9);
  v6 = v9;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::grow(a1, v8);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), *a2, &v9);
    v6 = v9;
  }

  ++*(a1 + 2);
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  *v6 = *a2;
  v6[1] = (v6 + 3);
  *&result = 0x400000000;
  v6[2] = 0x400000000;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 56 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 56 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::lookup(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(a2, a3, a4, &v9);
  if (result)
  {
    v6 = v9;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x400000000;
    if (*(v6 + 16))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1, v6 + 8);
    }

    *(a1 + 48) = a1 + 64;
    *(a1 + 56) = 0x400000000;
    if (*(v6 + 64))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1 + 48, v6 + 56);
    }

    *(a1 + 96) = a1 + 112;
    *(a1 + 104) = 0x400000000;
    if (*(v6 + 112))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1 + 96, v6 + 104);
    }

    *(a1 + 144) = a1 + 160;
    *(a1 + 152) = 0x400000000;
    if (*(v6 + 160))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1 + 144, v6 + 152);
    }

    *(a1 + 192) = a1 + 208;
    result = a1 + 192;
    *(a1 + 200) = 0x400000000;
    if (*(v6 + 208))
    {
      result = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(result, v6 + 200);
    }

    *(a1 + 240) = a1 + 256;
    v7 = (a1 + 240);
    *(a1 + 248) = 0x400000000;
    v8 = *(v6 + 256);
    if (v8 && v7 != (v6 + 248))
    {
      if (v8 >= 5)
      {
        *(a1 + 248) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      result = memcpy(*v7, *(v6 + 248), 8 * *(v6 + 256));
      *(a1 + 248) = v8;
    }
  }

  else
  {
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x400000000;
    *(a1 + 48) = a1 + 64;
    *(a1 + 60) = 4;
    *(a1 + 96) = a1 + 112;
    *(a1 + 108) = 4;
    *(a1 + 144) = a1 + 160;
    *(a1 + 156) = 4;
    *(a1 + 192) = a1 + 208;
    *(a1 + 204) = 4;
    *(a1 + 240) = a1 + 256;
    *(a1 + 252) = 4;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 56 * a2;
    v3 = (a1 + 24);
    do
    {
      if ((*(v3 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 7;
      v2 -= 56;
    }

    while (v2);
  }
}

uint64_t *llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 56 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = (56 * v11 - 56) / 0x38;
      v13 = vdupq_n_s64(v12);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[7] = -4096;
        }

        v10 += 2;
        result += 14;
      }

      while (((v12 + 2) & 0xFFFFFFFFFFFFFFELL) != v10);
    }

    if (v3)
    {
      v15 = v4 + 24;
      v16 = 56 * v3;
      do
      {
        v17 = *(v15 - 3);
        v10 = v17 | 0x1000;
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x400000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v19, (v15 - 16));
          }

          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 56;
        v16 -= 56;
      }

      while (v16);
    }

    return llvm::deallocate_buffer(v10, v4, (56 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (56 * v21 - 56) / 0x38;
      v24 = vdupq_n_s64(v23);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_20E70C4F0)));
        if (v25.i8[0])
        {
          *result = -4096;
        }

        if (v25.i8[4])
        {
          result[7] = -4096;
        }

        v22 += 2;
        result += 14;
      }

      while (((v23 + 2) & 0xFFFFFFFFFFFFFFELL) != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 80 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 80 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 80 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = 80 * v11 - 80;
      v13 = vdupq_n_s64(v12 / 0x50);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[10] = -4096;
        }

        v10 = (v10 + 2);
        result += 20;
      }

      while (((v12 / 0x50 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
    }

    v15 = 5 * v3;
    if (v3)
    {
      v16 = v4 + 24;
      v17 = 16 * v15;
      do
      {
        v18 = *(v16 - 3);
        v10 = (v18 | 0x1000);
        if ((v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), v18, &v24);
          *v24 = *(v16 - 3);
          llvm::DominatorTreeBase<llvm::BasicBlock,false>::DominatorTreeBase();
        }

        v16 += 80;
        v17 -= 80;
      }

      while (v17);
    }

    return llvm::deallocate_buffer(v10, v4, (16 * v15));
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = 80 * v19 - 80;
      v22 = vdupq_n_s64(v21 / 0x50);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_20E70C4F0)));
        if (v23.i8[0])
        {
          *result = -4096;
        }

        if (v23.i8[4])
        {
          result[10] = -4096;
        }

        v20 += 2;
        result += 20;
      }

      while (((v21 / 0x50 + 2) & 0x7FFFFFFFFFFFFFELL) != v20);
    }
  }

  return result;
}

uint64_t AGCLLVMUserVertexShader::buildGin1122WA(AGCLLVMUserVertexShader *this, char a2, int a3)
{
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v4 = Function;
    llvm::PointerType::get();
    llvm::Function::addFnAttr();
    *(v4 + 32) = *(v4 + 32) & 0xFFFFBFC0 | 0x4007;
    operator new();
  }

  return 0;
}

llvm::Instruction *AGCLLVMUserVertexShader::getVertexAmpId(void *a1, int a2, unsigned int a3)
{
  v4 = 1608;
  if (a2)
  {
    v5 = 85;
  }

  else
  {
    v4 = 1600;
    v5 = 84;
  }

  v6 = *(*(a1 + *(*a1 - 24) + 2168) + v4);
  DriverGlobalConstant = AGCLLVMUserVertexShader::getDriverGlobalConstant(a1, v5, a3);
  if (v6)
  {
    v7 = strlen(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1 + *(*a1 - 24) + 1704, v6, v7, *(a1 + *(*a1 - 24) + 1904), *(a1 + *(*a1 - 24) + 1904));
  v9 = (a1 + *(*a1 - 24));
  v11[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v9 + 214, *(v8 + 24), v8, &DriverGlobalConstant, 1, v11);
}

uint64_t AGCLLVMUserVertexShader::getDriverGlobalConstant(void *a1, unsigned int a2, unsigned int a3)
{
  v4 = &a1[3 * a2];
  v5 = (v4 + 785);
  if (!v4[787])
  {
    v7 = 1;
    v8 = llvm::User::operator new(0x58);
    if (*AGCShared::EnumNamesConstantType(void)::names[a2])
    {
      v15[2] = AGCShared::EnumNamesConstantType(void)::names[a2];
      v7 = 3;
    }

    v15[0] = "agc.driver_constants.";
    LOBYTE(v16) = 3;
    HIBYTE(v16) = v7;
    llvm::GlobalVariable::GlobalVariable();
    *(v8 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 268);
    v11 = AGCLLVMBuilder::buildGlobalMetadata(v9 + 213, v8, a2, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
    llvm::ValueHandleBase::operator=(v5, v8);
  }

  v12 = a1 + *(*a1 - 24);
  v13 = *(v5 + 2);
  v16 = 257;
  return AGCLLVMBuilder::CreateLoad((v12 + 1704), v13, v15);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825A95E0;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825A95E0;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_2825A95E0;
    llvm::ValueHandleBase::operator=((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_2825A95E0;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_2825A95E0;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825A95E0;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v23 && v12 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v25);
          v14 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    v16 = v23;
    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v16, v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A95E0;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, (a1 + 16), (a1 + 32));
        v22 = *(a2 - 16);
        v23 = *(a1 + 32);
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v25 = *(a2 - 8);
          v24 = *(a1 + 40);
          if (v25 >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a2 - 8);
        }

        *(a1 + 32) = v22;
        *(a2 - 16) = v23;
        *(a1 + 40) = v25;
        *(a2 - 8) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 16);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = *(a1 + 40);
          v28 = *(a1 + 24);
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = *(a1 + 24);
          v29 = *(a1 + 40);
        }

        *(a1 + 16) = v26;
        *(a1 + 32) = v27;
        *(a1 + 24) = v29;
        *(a1 + 40) = v28;
        v30 = *a1;
        if (v26 >= *a1)
        {
          if (v30 < v26)
          {
            return 1;
          }

          v31 = *(a1 + 8);
          if (v29 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 8);
        }

        *a1 = v26;
        *(a1 + 16) = v30;
        *(a1 + 8) = v29;
        result = 1;
        *(a1 + 24) = v31;
        return result;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      v10 -= 16;
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v10 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v10 = a1 + v18 + 32;
LABEL_27:
    *v10 = v14;
    *(v10 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

llvm::Instruction *AGCLLVMUserVertexShader::createVIRead(AGCLLVMUserVertexShader *this, unsigned int a2)
{
  v3 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 24) + 1704, "agc.read_vi.f32", 15, *(this + *(*this - 24) + 1872), *(this + *(*this - 24) + 1904));
  v4 = (this + *(*this - 24));
  v7 = llvm::ConstantInt::get();
  v6[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v4 + 214, *(v3 + 24), v3, &v7, 1, v6);
}

uint64_t AGCLLVMBuilder::bitCastElements(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Type *a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    a3 = llvm::FixedVectorType::get();
  }

  v8 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 49, a2, a3, v7);
}

uint64_t AGCLLVMBuilder::concatenateVectors(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value *a3, BOOL a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = llvm::ConstantInt::get();
  v11 = llvm::ConstantInt::get();
  v12 = llvm::ConstantInt::get();
  v13 = llvm::ConstantInt::get();
  v7 = llvm::ConstantVector::get();
  v9[16] = 257;
  return llvm::IRBuilderBase::CreateShuffleVector((this + 1), a2, a3, v7, v9);
}

uint64_t AGCLLVMBuilder::CreateInsertElement(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value *a3, _BOOL4 a4, const llvm::Twine *a5)
{
  v9 = llvm::ConstantInt::get();

  return llvm::IRBuilderBase::CreateInsertElement((this + 1), a2, a3, v9, a5);
}

llvm::Type **AGCLLVMBuilder::i32Extend(AGCLLVMBuilder *this, llvm::Type **a2, int a3)
{
  v4 = a2;
  v6 = *a2;
  if (llvm::Type::getScalarSizeInBits(*a2) != 32)
  {
    v7 = *(this + 25);
    if ((*(v6 + 2) & 0xFE) == 0x12)
    {
      v7 = llvm::FixedVectorType::get();
    }

    v11 = 257;
    if (a3)
    {
      v8 = 40;
    }

    else
    {
      v8 = 39;
    }

    return llvm::IRBuilderBase::CreateCast(this + 8, v8, v4, v7, v10);
  }

  return v4;
}

uint64_t AGCLLVMBuilder::buildICmpSel(AGCLLVMBuilder *this, llvm::CmpInst **a2, llvm::FixedVectorType **a3, uint64_t a4)
{
  v5 = a3;
  if (*a2 != *a3)
  {
    v5 = AGCLLVMBuilder::splat(this, *(*a2 + 8), a3, a4);
  }

  v10 = 257;
  llvm::IRBuilderBase::CreateICmp(this + 1, a4, a2, v5, v9);
  v10 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMBuilder::clampToWidth(AGCLLVMBuilder *this, llvm::CmpInst **a2, char a3, _BOOL4 a4)
{
  if (a4)
  {
    v6 = llvm::ConstantInt::get();
    v7 = AGCLLVMBuilder::buildICmpSel(this, a2, v6, 40);
    v8 = llvm::ConstantInt::get();
    v9 = this;
    v10 = v7;
    v11 = 38;
  }

  else
  {
    v8 = llvm::ConstantInt::get();
    v9 = this;
    v10 = a2;
    v11 = 36;
  }

  return AGCLLVMBuilder::buildICmpSel(v9, v10, v8, v11);
}

uint64_t AGCLLVMBuilder::buildGlobalMetadata(llvm::ConstantInt **this, llvm::GlobalVariable *a2, unsigned int a3, unsigned int a4)
{
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  return llvm::MDTuple::getImpl();
}

uint64_t AGCLLVMBuilder::setupGlobalMetadata(AGCLLVMBuilder *this, llvm::GlobalVariable *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 55);
  v5 = AGCLLVMBuilder::buildGlobalMetadata(this, a2, a3, a4);

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v4, v5);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t *std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x20F330EC0]();
    MEMORY[0x20F331DC0](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

void llvm::function_ref<llvm::Optional<std::string> ()(llvm::StringRef)>::callback_fn<llvm::$_0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  a1[24] = 0;
}

{
  *a1 = 0;
  a1[24] = 0;
}

BOOL AGCLLVMComputePrograms::constructReply(AGCLLVMComputePrograms *this)
{
  v2 = AGCDeserializedReply::deserialize((this + 2288), *(*(this + 211) + 152), *(*(this + 211) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply(this);
    v3 = AGCLLVMObject::constructFlatReply(this);
    v5 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    *(this + 4358) = 1;
    v6 = *(this + 1082);
    v7 = *(this + 1080) - *(this + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((this + 4288), v5);
    v8 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v7 + v6);
    flatbuffers::FlatBufferBuilder::Finish((this + 4288), v8, v9);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>(this, this + 1072);
  }

  return v2;
}

void AGCLLVMComputePrograms::getCompilationKeyDescription(AGCLLVMComputePrograms *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v26, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v23, "token");
  std::to_string(&v34, *(this + 1292));
  if ((v24 & 0x80u) == 0)
  {
    v4 = v24;
  }

  else
  {
    v4 = v23[1];
  }

  v5 = &v35;
  std::string::basic_string[abi:nn200100](&v35, v4 + 3);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v35.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if ((v24 & 0x80u) == 0)
    {
      v6 = v23;
    }

    else
    {
      v6 = v23[0];
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 2112032;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v34;
  }

  else
  {
    v7 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v35, v7, size);
  v10 = v9->__r_.__value_.__r.__words[0];
  v11 = v9->__r_.__value_.__l.__size_;
  v25[0] = v9->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v26;
  }

  _agcIndentedLine(&v34, &v33, 0);
  std::string::basic_string[abi:nn200100]<0>(v28, "{");
  _agcIndentedLine(&__p, v28, 0);
  if ((v32 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v32 & 0x80u) == 0)
  {
    v14 = v32;
  }

  else
  {
    v14 = v31;
  }

  v15 = std::string::append(&v34, p_p, v14);
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
LABEL_38:
    v34.__r_.__value_.__r.__words[0] = v10;
    v34.__r_.__value_.__l.__size_ = v11;
    LODWORD(v34.__r_.__value_.__r.__words[2]) = v25[0];
    *(&v34.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&v34.__r_.__value_.__s + 23) = v12;
LABEL_41:
    v17 = 0;
    v27 = v34;
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v34, v10, v11);
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  std::string::__init_copy_ctor_external(&v27, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  v17 = 1;
LABEL_42:
  _agcIndentedLine(&__p, &v27, 1);
  if ((v32 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v32 & 0x80u) == 0)
  {
    v19 = v32;
  }

  else
  {
    v19 = v31;
  }

  std::string::append(&v35, v18, v19);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v17)
  {
LABEL_52:
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_53:
  std::string::basic_string[abi:nn200100]<0>(&__p, "}");
  _agcIndentedLine(&v34, &__p, 0);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v35;
  }

  else
  {
    v20 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v35.__r_.__value_.__l.__size_;
  }

  v22 = std::string::insert(&v34, 0, v20, v21);
  *a2 = *v22;
  v22->__r_.__value_.__r.__words[0] = 0;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v10);
LABEL_65:
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCLLVMComputePrograms::compile(AGCLLVMComputePrograms *this)
{
  if (*(this + 1292) == 39)
  {
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (GlobalVariable)
    {
      v3 = GlobalVariable;
      llvm::GlobalObject::setSection();
      v4 = *(this + 268);
      v5 = AGCLLVMBuilder::buildGlobalMetadata(this + 213, v3, 5u, 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v4, v5);
    }

    v6 = llvm::Module::getGlobalVariable();
    if (v6)
    {
      v7 = *(this + 268);
      v8 = AGCLLVMBuilder::buildGlobalMetadata(this + 213, v6, 0, 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v7, v8);
    }

    v9 = llvm::Module::getGlobalVariable();
    if (v9)
    {
      v10 = *(this + 268);
      v11 = AGCLLVMBuilder::buildGlobalMetadata(this + 213, v9, 1u, 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
    }
  }

  v12 = *(this + 267);
  v21[0] = "agx.compute_driver_bindings";
  v22 = 259;
  if (!llvm::Module::getNamedMetadata(v12, v21))
  {
    v17 = *(this + 267);
    v18 = v17 + 24;
    for (i = *(v17 + 32); i != v18; i = *(i + 8))
    {
      if (i)
      {
        v20 = (i - 56);
      }

      else
      {
        v20 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v20) & 1) == 0)
      {
        (*(*this + 192))(this, v20);
        break;
      }
    }
  }

  v13 = *(this + 211);
  v14 = *(this + 267);
  v21[0] = 0x10000;
  v15 = AGCLLVMCtx::compile(v13, this, v14, 1, 3, v21, 0);
  result = 0;
  if (v15)
  {
    return (*(*this + 160))(this);
  }

  return result;
}

void AGCLLVMComputePrograms::~AGCLLVMComputePrograms(AGCLLVMComputePrograms *this)
{
  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

BOOL AGCLLVMContextSwitchProgram::constructReply(AGCLLVMContextSwitchProgram *this)
{
  v2 = AGCDeserializedReply::deserialize((this + 2288), *(*(this + 211) + 152), *(*(this + 211) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply(this);
    v3 = AGCLLVMObject::constructFlatReply(this);
    flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    *(this + 4358) = 1;
    v5 = *(this + 1082);
    v6 = *(this + 1080) - *(this + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 4288, 4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(this + 4288, 6, AGCLLVMContextSwitchProgram::constructReply(void)::vi_inputs[0]);
    flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v6 + v5);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  return v2;
}

void AGCLLVMContextSwitchProgram::getCompilationKeyDescription(AGCLLVMContextSwitchProgram *this@<X0>, std::string *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = this + 4096;
  std::string::basic_string[abi:nn200100]<0>(&v23, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v21, "save");
  if (v3[1072])
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  _agcFieldString<char const*>(&v33, v21, v4);
  std::string::basic_string[abi:nn200100]<0>(v19, "toggle");
  if (v3[1073])
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  _agcFieldString<char const*>(&v34, v19, v5);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v23;
  }

  _agcIndentedLine(&v31, &v30, 0);
  std::string::basic_string[abi:nn200100]<0>(v25, "{");
  _agcIndentedLine(&__p, v25, 0);
  if ((v29 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v7 = v29;
  }

  else
  {
    v7 = v28;
  }

  v8 = std::string::append(&v31, p_p, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 6; i += 3)
  {
    v11 = (&v33 + i * 8);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = *v11;
    }

    v12 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v31;
    }

    _agcIndentedLine(&__p, &v24, 1);
    if ((v29 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v14 = v29;
    }

    else
    {
      v14 = v28;
    }

    std::string::append(&v32, v13, v14);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v12 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(v31.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "}");
  _agcIndentedLine(&v31, &__p, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v32;
  }

  else
  {
    v15 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v31, 0, v15, size);
  *a2 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v34.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v33 + j * 8 + 24));
    }
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCLLVMContextSwitchProgram::getShaderType(AGCLLVMContextSwitchProgram *this)
{
  if (*(this + 5168))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

const char *AGCLLVMContextSwitchProgram::dumpType(AGCLLVMContextSwitchProgram *this)
{
  if (*(this + 5169))
  {
    v1 = "context_save_toggle";
  }

  else
  {
    v1 = "context_save";
  }

  v2 = "context_restore";
  if (*(this + 5169))
  {
    v2 = "context_restore_toggle";
  }

  if (*(this + 5168))
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t AGCLLVMContextSwitchProgram::compile(AGCLLVMContextSwitchProgram *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  Function = llvm::Module::getFunction();
  *(Function + 112) = 0;
  *(Function + 18) = *(Function + 18) & 0xC00F | 0x6A0;
  if (v2[1072] == 1)
  {
    v4 = llvm::Module::getFunction();
    v5 = *(this + 271);
    v6 = *(v5 + 1760);
    if (v6)
    {
      v7 = strlen(*(v5 + 1760));
    }

    else
    {
      v7 = 0;
    }

    AGCLLVMBuilder::getOrInsertFunction<>(this + 1704, v6, v7, *(this + 238));
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v4);
    (*(**(this + 271) + 400))();
  }

  v8 = llvm::Module::getFunction();
  if (v8)
  {
    v9 = v8;
    v10 = *(this + 271);
    if (*(v10 + 1768))
    {
      strlen(*(v10 + 1768));
    }

    llvm::Module::getOrInsertFunction();
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v9);
  }

  if (v2[1072] == 1 && *(*(this + 271) + 1847) == 1)
  {
    v11 = *(Function + 80);
    v12 = v11 - 24;
    if (!v11)
    {
      v12 = 0;
    }

    v13 = *(v12 + 40);
    if (v13 == v12 + 40)
    {
      v16 = 0;
    }

    else
    {
      v14 = (v13 - 24);
      if (v13)
      {
        v15 = v13 - 24;
      }

      else
      {
        v15 = 0;
      }

      if (*(v15 + 16) - 29 >= 0xB)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14;
      }
    }

    llvm::IRBuilderBase::SetInsertPoint((this + 1712), v16);
    v17 = *(this + 271);
    v18 = *(v17 + 1024);
    if (v18)
    {
      v19 = strlen(*(v17 + 1024));
    }

    else
    {
      v19 = 0;
    }

    inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + 1704, v18, v19, *(this + 231));
    v31 = 257;
    llvm::IRBuilderBase::CreateCall(this + 214, *(inserted + 24), inserted, 0, 0, &v30);
  }

  llvm::Module::getOrInsertNamedMetadata();
  if (v2[1073] == 1)
  {
    operator new();
  }

  v30 = "agc.main";
  v31 = 259;
  llvm::Value::setName();
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v22 = GlobalVariable;
    llvm::GlobalObject::setSection();
    v23 = *(this + 268);
    v24 = AGCLLVMBuilder::buildGlobalMetadata(this + 213, v22, 5u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, v24);
  }

  v25 = llvm::Module::getFunction();
  (*(*this + 192))(this, v25);
  v26 = *(this + 211);
  v27 = *(this + 267);
  v30 = 0x10000;
  if (!AGCLLVMCtx::compile(v26, this, v27, 1, 3, &v30, 0))
  {
    return 0;
  }

  v28 = *(*this + 160);

  return v28(this);
}

void AGCLLVMContextSwitchProgram::~AGCLLVMContextSwitchProgram(AGCLLVMContextSwitchProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMContextSwitchProgram::create(AGCLLVMContextSwitchProgram *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3, char a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(*(this + 4) + 28);
  v5 = v4 > 0x1B;
  v6 = (1 << v4) & 0xE7F4000;
  if (!v5 && v6 != 0)
  {
    operator new();
  }

  operator new();
}

void AGCContextSwitchProgramG13::getCompilationKeyDescription(AGCContextSwitchProgramG13 *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v27, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v24, "save");
  if (*(this + 5168))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  std::string::basic_string[abi:nn200100]<0>(&v35, v4);
  if ((v25 & 0x80u) == 0)
  {
    v5 = v25;
  }

  else
  {
    v5 = v24[1];
  }

  v6 = &v36;
  std::string::basic_string[abi:nn200100](&v36, v5 + 3);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v36.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if ((v25 & 0x80u) == 0)
    {
      v7 = v24;
    }

    else
    {
      v7 = v24[0];
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v35;
  }

  else
  {
    v8 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v36, v8, size);
  v11 = v10->__r_.__value_.__r.__words[0];
  v12 = v10->__r_.__value_.__l.__size_;
  v26[0] = v10->__r_.__value_.__r.__words[2];
  *(v26 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
  v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v27;
  }

  _agcIndentedLine(&v35, &v34, 0);
  std::string::basic_string[abi:nn200100]<0>(v29, "{");
  _agcIndentedLine(&__p, v29, 0);
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v15 = v33;
  }

  else
  {
    v15 = v32;
  }

  v16 = std::string::append(&v35, p_p, v15);
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
LABEL_41:
    v35.__r_.__value_.__r.__words[0] = v11;
    v35.__r_.__value_.__l.__size_ = v12;
    LODWORD(v35.__r_.__value_.__r.__words[2]) = v26[0];
    *(&v35.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
    *(&v35.__r_.__value_.__s + 23) = v13;
LABEL_44:
    v18 = 0;
    v28 = v35;
    goto LABEL_45;
  }

  std::string::__init_copy_ctor_external(&v35, v11, v12);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  std::string::__init_copy_ctor_external(&v28, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  v18 = 1;
LABEL_45:
  _agcIndentedLine(&__p, &v28, 1);
  if ((v33 & 0x80u) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v20 = v33;
  }

  else
  {
    v20 = v32;
  }

  std::string::append(&v36, v19, v20);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v18)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if (v18)
  {
LABEL_55:
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_56:
  std::string::basic_string[abi:nn200100]<0>(&__p, "}");
  _agcIndentedLine(&v35, &__p, 0);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v36;
  }

  else
  {
    v21 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v36.__r_.__value_.__l.__size_;
  }

  v23 = std::string::insert(&v35, 0, v21, v22);
  *a2 = *v23;
  v23->__r_.__value_.__r.__words[0] = 0;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  operator delete(v11);
LABEL_68:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCContextSwitchProgramG13::getShaderType(AGCContextSwitchProgramG13 *this)
{
  if (*(this + 5168))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

const char *AGCContextSwitchProgramG13::dumpType(AGCContextSwitchProgramG13 *this)
{
  if (*(this + 5168))
  {
    return "context_save";
  }

  else
  {
    return "context_restore";
  }
}

uint64_t AGCContextSwitchProgramG13::compile(AGCContextSwitchProgramG13 *this)
{
  if (AGCLLVMObjectBase::dumpShaderToFile(this) && AGCTargetPrinter::isValidToPrintMessage(*(this + 212)))
  {
    v2 = *(this + 212);
    v3 = (*(*this + 48))(this);
    AGCTargetPrinter::printMessage(v2, "Generating %s program from hand written asm", v3);
  }

  return 1;
}

void AGCContextSwitchProgramG13::~AGCContextSwitchProgramG13(AGCContextSwitchProgramG13 *this)
{
  *this = &unk_2825A98A0;
  *(this + 213) = &unk_2825A99B0;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 5176));
  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A98A0;
  *(this + 213) = &unk_2825A99B0;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 5176));

  AGCLLVMObject::~AGCLLVMObject(this);
}

uint64_t AGCLLVMPassthroughVertexShader::constructReply(AGCLLVMPassthroughVertexShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (!result)
  {
    return result;
  }

  v65 = result;
  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
  v64 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
  v5 = 22;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  do
  {
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1080);
    v8 = *(v6 + 1084);
    v9 = *(v6 + 1082);
    if (v6[4368] == 1)
    {
      v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 4, v10);
    }

    if (v5 == 16)
    {
      v11 = 2;
      v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 2);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 6, v12);
      v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 2);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 8, v13);
LABEL_7:
      v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), v11);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 10, v14);
      goto LABEL_11;
    }

    if (v6[4368] == 1)
    {
      v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 6, v15);
      if (v6[4368])
      {
        v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 8, v16);
        v11 = 0;
        if (v6[4368])
        {
          goto LABEL_7;
        }
      }
    }

LABEL_11:
    v66 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v7 - v8 + v9);
    std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v67, &v66);
    --v5;
  }

  while (v5);
  v17 = v67;
  if (v68 == v67)
  {
    v18 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v18 = v67;
  }

  v63 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v18, (v68 - v67) >> 2);
  v19 = this + *(*this - 24);
  v19[4358] = 1;
  v20 = *(v19 + 1080);
  v21 = *(v19 + 1084);
  v22 = *(v19 + 1082);
  if (v19[4368] == 1)
  {
    v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 4, v23);
    if (v19[4368])
    {
      v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 6, v24);
      if (v19[4368])
      {
        v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 8, v25);
        if (v19[4368])
        {
          v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 16, v26);
          if (v19[4368])
          {
            v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 10, v27);
            if (v19[4368])
            {
              v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 12, v28);
            }
          }
        }
      }
    }
  }

  v29 = v20 - v21;
  v30 = *(this + 18);
  if (v30 <= 4)
  {
    v30 = 4;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 14, v30 - 4);
  if (v19[4368] == 1)
  {
    v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 18, v31);
  }

  v32 = flatbuffers::FlatBufferBuilder::EndTable((v19 + 4288), v29 + v22);
  v33 = this + *(*this - 24);
  v33[4358] = 1;
  v34 = *(v33 + 1082);
  v35 = *(v33 + 1080) - *(v33 + 1084);
  if (v33[4368] == 1)
  {
    v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 18, v36);
    if (v33[4368])
    {
      v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 16, v37);
      if (v33[4368])
      {
        v38 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 14, v38);
        if (v33[4368])
        {
          v39 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 12, v39);
          if (v33[4368])
          {
            v40 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 10, v40);
            if (v33[4368])
            {
              v41 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 8, v41);
              if (v33[4368])
              {
                v42 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 6, v42);
                if (v33[4368])
                {
                  v43 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v33 + 4288, 4, v43);
                }
              }
            }
          }
        }
      }
    }
  }

  v44 = flatbuffers::FlatBufferBuilder::EndTable((v33 + 4288), v35 + v34);
  v45 = this + *(*this - 24);
  v45[4358] = 1;
  v46 = *(v45 + 1080);
  v47 = *(v45 + 1084);
  v48 = *(v45 + 1082);
  v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v45 + 4288), 1);
  flatbuffers::FlatBufferBuilder::TrackField(v45 + 4288, 6, v49);
  if (v45[4368] == 1)
  {
    v50 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 4288, 8, v50);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v45 + 4288, 10, *(this + 18));
  if (v45[4368] == 1)
  {
    v51 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 4288, 12, v51);
    if (v45[4368])
    {
      v52 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v45 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v45 + 4288, 14, v52);
    }
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v45 + 4288), 16, v32);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v45 + 4288), 18, v44);
  if (v45[4368] == 1)
  {
    v53 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 4288, 20, v53);
  }

  v54 = v46 - v47;
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v45 + 4288), 22, v63);
  if (v45[4368] == 1)
  {
    v55 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 4288, 26, v55);
  }

  v56 = flatbuffers::FlatBufferBuilder::EndTable((v45 + 4288), v54 + v48);
  v57 = this + *(*this - 24);
  v57[4358] = 1;
  v58 = *(v57 + 1082);
  v59 = *(v57 + 1080) - *(v57 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v57 + 4288), v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v57 + 4288), v56);
  v60 = *(*this - 24);
  v61 = flatbuffers::FlatBufferBuilder::EndTable((v57 + 4288), v59 + v58);
  flatbuffers::FlatBufferBuilder::Finish((this + v60 + 4288), v61, v62);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  if (v17)
  {
    operator delete(v17);
  }

  return v65;
}

void AGCLLVMPassthroughVertexShader::getCompilationKeyDescription(AGCLLVMPassthroughVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v9, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v7, "passthrough_size");
  _agcFieldString<unsigned int>(&v11, v7, *(this + 19));
  std::string::basic_string[abi:nn200100]<0>(__p, "pad_size");
  _agcFieldString<unsigned int>(&v12, __p, *(this + 20));
  _agcGroupWithHeader(a2, v9, &v11, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v11 + i * 8 + 24));
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

uint64_t AGCLLVMDriverShader::compile(AGCLLVMDriverShader *this)
{
  AGCLLVMObject::eraseLogicalRasterOrderGroupMetadata((this + *(*this - 24)));
  v2 = *(this + *(*this - 24) + 2136);
  v3 = v2 + 24;
  for (i = *(v2 + 32); i != v3; i = *(i + 8))
  {
    if (i)
    {
      v5 = (i - 56);
    }

    else
    {
      v5 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v5) & 1) == 0)
    {
      (*(*(this + *(*this - 24)) + 192))(this + *(*this - 24), v5);
      break;
    }
  }

  AGCLLVMObject::enableTempRegistersLimit((this + *(*this - 24)));
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = (this + *(*this - 24));
      v7 = v6[212];
      v8 = (*(*v6 + 48))(v6);
      AGCTargetPrinter::printMessage(v7, "------ Start compilation key description for %s shader %u  ------", v8, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v9 = (this + *(*this - 24));
      v10 = v9[212];
      (*(*v9 + 136))(__p);
      if (v20 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      AGCTargetPrinter::printMessage(v10, "%s", v11);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v12 = (this + *(*this - 24));
      v13 = v12[212];
      v14 = (*(*v12 + 48))(v12);
      AGCTargetPrinter::printMessage(v13, "------ End compilation key description for %s shader %u  ------", v14, *(this + *(*this - 24) + 5088));
    }
  }

  v15 = this + *(*this - 24);
  v16 = *(v15 + 211);
  v17 = *(v15 + 267);
  if (*(this + 8) == 1)
  {
    __p[0] = 0x10000;
    if ((AGCLLVMCtx::compile(v16, v15, v17, 1, 2, __p, 0) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __p[0] = 0x10000;
    result = AGCLLVMCtx::compile(v16, v15, v17, 1, 3, __p, 0);
    if (!result)
    {
      return result;
    }
  }

  return (*(*(this + *(*this - 24)) + 160))(this + *(*this - 24));
}

void virtual thunk toAGCLLVMPassthroughVertexShader::~AGCLLVMPassthroughVertexShader(AGCLLVMPassthroughVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));
}

void AGCLLVMPassthroughVertexShader::~AGCLLVMPassthroughVertexShader(AGCLLVMPassthroughVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

BOOL AGCLLVMDriverVertexFetchShader::constructReply(AGCLLVMDriverVertexFetchShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v5 = 22;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v6 = this + *(*this - 24);
      v6[4358] = 1;
      v7 = *(v6 + 1080);
      v8 = *(v6 + 1084);
      v9 = *(v6 + 1082);
      v10 = v6[4368];
      if (v10 == 1)
      {
        v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 4, v11);
        LOBYTE(v10) = v6[4368];
      }

      if (v5 == 16)
      {
        if (v10)
        {
          v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 6, v12);
          if (v6[4368])
          {
            v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 8, v13);
          }
        }

        v14 = 2;
      }

      else
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 6, v16);
        if ((v6[4368] & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 8, v17);
        v14 = 0;
        if ((v6[4368] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), v14);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 10, v15);
LABEL_14:
      LODWORD(v26[0]) = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v7 - v8 + v9);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v27, v26);
      if (!--v5)
      {
        if (v28 == v27)
        {
          v18 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
        }

        else
        {
          v18 = v27;
        }

        flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v18, (v28 - v27) >> 2);
        memset(v26, 0, sizeof(v26));
        v19 = this + *(*this - 24);
        v19[4358] = 1;
        v20 = *(v19 + 1082);
        v21 = *(v19 + 1080) - *(v19 + 1084);
        if (v19[4368] == 1)
        {
          v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 4, v22);
          if (v19[4368])
          {
            v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 6, v23);
            if (v19[4368])
            {
              v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 8, v24);
              if (v19[4368])
              {
                v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v19 + 4288, 10, v25);
              }
            }
          }
        }

        flatbuffers::FlatBufferBuilder::EndTable((v19 + 4288), v21 + v20);
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
      }
    }
  }

  return result;
}

void AGCLLVMPassthroughVertexShaderWithVertexFetch::getCompilationKeyDescription(AGCLLVMPassthroughVertexShaderWithVertexFetch *this@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v9, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v7, "passthrough_size");
  _agcFieldString<unsigned int>(&v11, v7, *(this + 22));
  std::string::basic_string[abi:nn200100]<0>(__p, "pad_size");
  _agcFieldString<unsigned int>(&v12, __p, *(this + 23));
  _agcGroupWithHeader(a2, v9, &v11, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v11 + i * 8 + 24));
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void virtual thunk toAGCLLVMPassthroughVertexShaderWithVertexFetch::~AGCLLVMPassthroughVertexShaderWithVertexFetch(AGCLLVMPassthroughVertexShaderWithVertexFetch *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));
}

void AGCLLVMPassthroughVertexShaderWithVertexFetch::~AGCLLVMPassthroughVertexShaderWithVertexFetch(AGCLLVMPassthroughVertexShaderWithVertexFetch *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 96));
}

BOOL AGCLLVMTileDispatchVertexShaderRect::constructReply(AGCLLVMTileDispatchVertexShaderRect *this)
{
  v2 = AGCLLVMDriverVertexFetchShader::constructReply(this);
  if (v2)
  {
    v3 = this + *(*this - 24);
    v3[4454] = 1;
    v4 = *(v3 + 1104);
    v5 = *(v3 + 1108);
    v6 = *(v3 + 1106);
    if (v3[4464] == 1)
    {
      v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 4384, 14, v7);
      if (v3[4464])
      {
        v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 4384, 12, v8);
        if (v3[4464])
        {
          v9 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v3 + 4384, 10, v9);
          if (v3[4464])
          {
            v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v3 + 4384, 8, v10);
          }
        }
      }
    }

    v11 = v4 - v5;
    v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v3 + 4384, 6, v12);
    if (v3[4464] == 1)
    {
      v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 4384, 4, v13);
    }

    v14 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4384), v11 + v6);
    v15 = this + *(*this - 24);
    v15[4454] = 1;
    v16 = *(v15 + 1106);
    v17 = *(v15 + 1104) - *(v15 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v15 + 4384), v14);
    v18 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4384), v17 + v16);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4384), v18, v19);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

void virtual thunk toAGCLLVMTileDispatchVertexShaderRect::~AGCLLVMTileDispatchVertexShaderRect(AGCLLVMTileDispatchVertexShaderRect *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));
}

void AGCLLVMTileDispatchVertexShaderRect::~AGCLLVMTileDispatchVertexShaderRect(AGCLLVMTileDispatchVertexShaderRect *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 96));
}

uint64_t AGCLLVMClearVertexDataShader::constructReply(AGCLLVMClearVertexDataShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    v76 = result;
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v75 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v5 = 22;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    do
    {
      v6 = this + *(*this - 24);
      v6[4358] = 1;
      v7 = *(v6 + 1080);
      v8 = *(v6 + 1084);
      v9 = *(v6 + 1082);
      if (v6[4368] == 1)
      {
        v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 4, v10);
        if (v6[4368])
        {
          v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 6, v11);
          if (v6[4368])
          {
            v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 8, v12);
            if (v6[4368])
            {
              v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v6 + 4288, 10, v13);
            }
          }
        }
      }

      LODWORD(v78) = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v7 - v8 + v9);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v81, &v78);
      --v5;
    }

    while (v5);
    __p = v81;
    if (v82 == v81)
    {
      v14 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
    }

    else
    {
      v14 = v81;
    }

    v73 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v14, (v82 - v81) >> 2);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    if (*(this + 19) == -1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v15 = this + *(*this - 24);
      v15[4358] = 1;
      v16 = *(v15 + 1082);
      v17 = *(v15 + 1080) - *(v15 + 1084);
      if (v15[4368] == 1)
      {
        v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v15 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v15 + 4288, 4, v18);
        if (v15[4368])
        {
          v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v15 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v15 + 4288, 6, v19);
        }
      }

      v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v15 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v15 + 4288, 8, v20);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 12, *(this + 19));
      v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v15 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v15 + 4288, 10, v21);
      v77 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v17 + v16);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v78, &v77);
      v23 = v78;
      v22 = v79;
    }

    v24 = v22 - v23;
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t;
    }

    v72 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v25, v24 >> 2);
    v26 = this + *(*this - 24);
    v26[4358] = 1;
    v27 = *(v26 + 1080);
    v28 = *(v26 + 1084);
    v29 = *(v26 + 1082);
    if (v26[4368] == 1)
    {
      v30 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 4, v30);
      if (v26[4368])
      {
        v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 6, v31);
        if (v26[4368])
        {
          v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 8, v32);
          if (v26[4368])
          {
            v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 16, v33);
            if (v26[4368])
            {
              v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 10, v34);
              if (v26[4368])
              {
                v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 12, v35);
              }
            }
          }
        }
      }
    }

    v36 = *(this + 18);
    if (v36 <= 4)
    {
      v36 = 4;
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v26 + 4288, 14, v36 - 4);
    if (v26[4368] == 1)
    {
      v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v26 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v26 + 4288, 18, v37);
    }

    v71 = flatbuffers::FlatBufferBuilder::EndTable((v26 + 4288), v27 - v28 + v29);
    v38 = this + *(*this - 24);
    v38[4358] = 1;
    v39 = *(v38 + 1082);
    v40 = *(v38 + 1080) - *(v38 + 1084);
    if (v38[4368] == 1)
    {
      v41 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 18, v41);
      if (v38[4368])
      {
        v42 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 16, v42);
        if (v38[4368])
        {
          v43 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 14, v43);
          if (v38[4368])
          {
            v44 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 12, v44);
            if (v38[4368])
            {
              v45 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 10, v45);
              if (v38[4368])
              {
                v46 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 8, v46);
                if (v38[4368])
                {
                  v47 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 6, v47);
                  if (v38[4368])
                  {
                    v48 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v38 + 4288), 0);
                    flatbuffers::FlatBufferBuilder::TrackField(v38 + 4288, 4, v48);
                  }
                }
              }
            }
          }
        }
      }
    }

    v49 = flatbuffers::FlatBufferBuilder::EndTable((v38 + 4288), v40 + v39);
    v50 = this + *(*this - 24);
    v50[4358] = 1;
    v51 = *(v50 + 1082);
    v52 = *(v50 + 1080) - *(v50 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v50 + 4288), v72);
    v53 = flatbuffers::FlatBufferBuilder::EndTable((v50 + 4288), v52 + v51);
    v54 = this + *(*this - 24);
    v55 = *(v54 + 1080);
    v54[4358] = 1;
    v56 = *(v54 + 1084);
    v57 = *(v54 + 1082);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v54 + 4288), v53);
    v58 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v54 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v54 + 4288, 6, v58);
    if (v54[4368] == 1)
    {
      v59 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v54 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v54 + 4288, 8, v59);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v54 + 4288, 10, *(this + 18));
    if (v54[4368] == 1)
    {
      v60 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v54 + 4288, 12, v60);
      if (v54[4368])
      {
        v61 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v54 + 4288, 14, v61);
      }
    }

    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v54 + 4288), 16, v71);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v54 + 4288), 18, v49);
    if (v54[4368] == 1)
    {
      v62 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v54 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v54 + 4288, 20, v62);
    }

    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v54 + 4288), 22, v73);
    if (v54[4368] == 1)
    {
      v63 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v54 + 4288, 26, v63);
    }

    v64 = flatbuffers::FlatBufferBuilder::EndTable((v54 + 4288), v55 - v56 + v57);
    v65 = this + *(*this - 24);
    v65[4358] = 1;
    v66 = *(v65 + 1082);
    v67 = *(v65 + 1080) - *(v65 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v65 + 4288), v75);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v65 + 4288), v64);
    v68 = *(*this - 24);
    v69 = flatbuffers::FlatBufferBuilder::EndTable((v65 + 4288), v67 + v66);
    flatbuffers::FlatBufferBuilder::Finish((this + v68 + 4288), v69, v70);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if (v23)
    {
      operator delete(v23);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v76;
  }

  return result;
}

void AGCLLVMClearVertexDataShader::getCompilationKeyDescription(AGCLLVMClearVertexDataShader *this@<X0>, std::string *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v6, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v4, "vertex_stride");
  _agcFieldString<unsigned int>(&__p, v4, *(this + 18));
  _agcGroupWithHeader(a2, v6, &__p, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void virtual thunk toAGCLLVMClearVertexDataShader::~AGCLLVMClearVertexDataShader(AGCLLVMClearVertexDataShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 80));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 80));
}

void AGCLLVMClearVertexDataShader::~AGCLLVMClearVertexDataShader(AGCLLVMClearVertexDataShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 80));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 80));
}

uint64_t AGCLLVMTABlitVertexShader::constructReply(AGCLLVMTABlitVertexShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    v82 = result;
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = v4;
    v90 = v3;
    v91 = v4;
    AGCLLVMDriverShader::setGatherMasks(this, &v90);
    v81 = flatbuffers::FlatBufferBuilder::EndTable(v3, v5);
    v6 = 22;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    do
    {
      v7 = this + *(*this - 24);
      v7[4358] = 1;
      v8 = *(v7 + 1080);
      v9 = *(v7 + 1084);
      v10 = *(v7 + 1082);
      if (v7[4368] == 1)
      {
        v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v7 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v7 + 4288, 4, v11);
        if (v7[4368])
        {
          v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v7 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v7 + 4288, 6, v12);
          if (v7[4368])
          {
            v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v7 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v7 + 4288, 8, v13);
            if (v7[4368])
            {
              v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v7 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v7 + 4288, 10, v14);
            }
          }
        }
      }

      LODWORD(v84) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v8 - v9 + v10);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v87, &v84);
      --v6;
    }

    while (v6);
    __p = v87;
    if (v88 == v87)
    {
      v15 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
    }

    else
    {
      v15 = v87;
    }

    v79 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v15, (v88 - v87) >> 2);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    if (*(this + 22) != -1)
    {
      v16 = this + *(*this - 24);
      v16[4358] = 1;
      v17 = *(v16 + 1082);
      v18 = *(v16 + 1080) - *(v16 + 1084);
      if (v16[4368] == 1)
      {
        v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v16 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 4, v19);
        if (v16[4368])
        {
          v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v16 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 6, v20);
        }
      }

      v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v16 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 8, v21);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v16 + 4288, 12, *(this + 22));
      v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 4);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 4288, 10, v22);
      v83 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v18 + v17);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v84, &v83);
    }

    if (*(this + 23) != -1)
    {
      v23 = this + *(*this - 24);
      v23[4358] = 1;
      v24 = *(v23 + 1082);
      v25 = *(v23 + 1080) - *(v23 + 1084);
      if (v23[4368] == 1)
      {
        v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v23 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 4, v26);
        if (v23[4368])
        {
          v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v23 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 6, v27);
        }
      }

      v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v23 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 8, v28);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 4288, 12, *(this + 23));
      v29 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 2);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 4288, 10, v29);
      v83 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4288), v25 + v24);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v84, &v83);
    }

    v78 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>> const&)::t, 0);
    v30 = v84;
    if (v85 == v84)
    {
      v31 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t;
    }

    else
    {
      v31 = v84;
    }

    v77 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v31, (v85 - v84) >> 2);
    v32 = this + *(*this - 24);
    v32[4358] = 1;
    v33 = *(v32 + 1082);
    v34 = *(v32 + 1080) - *(v32 + 1084);
    if (v32[4368] == 1)
    {
      v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 4, v35);
      if (v32[4368])
      {
        v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 6, v36);
        if (v32[4368])
        {
          v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 8, v37);
          if (v32[4368])
          {
            v38 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 16, v38);
            if (v32[4368])
            {
              v39 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 10, v39);
              if (v32[4368])
              {
                v40 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 12, v40);
                if (v32[4368])
                {
                  v41 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 14, v41);
                  if (v32[4368])
                  {
                    v42 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
                    flatbuffers::FlatBufferBuilder::TrackField(v32 + 4288, 18, v42);
                  }
                }
              }
            }
          }
        }
      }
    }

    v43 = flatbuffers::FlatBufferBuilder::EndTable((v32 + 4288), v34 + v33);
    v44 = this + *(*this - 24);
    v44[4358] = 1;
    v45 = *(v44 + 1082);
    v46 = *(v44 + 1080) - *(v44 + 1084);
    if (v44[4368] == 1)
    {
      v47 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 18, v47);
      if (v44[4368])
      {
        v48 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 16, v48);
        if (v44[4368])
        {
          v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 14, v49);
          if (v44[4368])
          {
            v50 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 12, v50);
            if (v44[4368])
            {
              v51 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 10, v51);
              if (v44[4368])
              {
                v52 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 8, v52);
                if (v44[4368])
                {
                  v53 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 6, v53);
                  if (v44[4368])
                  {
                    v54 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
                    flatbuffers::FlatBufferBuilder::TrackField(v44 + 4288, 4, v54);
                  }
                }
              }
            }
          }
        }
      }
    }

    v55 = flatbuffers::FlatBufferBuilder::EndTable((v44 + 4288), v46 + v45);
    v56 = this + *(*this - 24);
    v56[4358] = 1;
    v57 = *(v56 + 1082);
    v58 = *(v56 + 1080) - *(v56 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v56 + 4288), v78);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v56 + 4288), v77);
    v59 = flatbuffers::FlatBufferBuilder::EndTable((v56 + 4288), v58 + v57);
    v60 = this + *(*this - 24);
    v61 = *(v60 + 1080);
    v60[4358] = 1;
    v62 = *(v60 + 1084);
    v63 = *(v60 + 1082);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v60 + 4288), v59);
    if (v60[4368] == 1)
    {
      v64 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 4288, 6, v64);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v60 + 4288, 8, *(this + 100) != 0, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v60 + 4288, 10, *(this + 24));
    if (v60[4368] == 1)
    {
      v65 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 4288, 12, v65);
      if (v60[4368])
      {
        v66 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v60 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v60 + 4288, 14, v66);
      }
    }

    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v60 + 4288), 16, v43);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v60 + 4288), 18, v55);
    if (v60[4368] == 1)
    {
      v67 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 4288, 20, v67);
    }

    v68 = v61 - v62;
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v60 + 4288), 22, v79);
    if (v60[4368] == 1)
    {
      v69 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 4288, 26, v69);
    }

    v70 = flatbuffers::FlatBufferBuilder::EndTable((v60 + 4288), v68 + v63);
    v71 = this + *(*this - 24);
    v71[4358] = 1;
    v72 = *(v71 + 1082);
    v73 = *(v71 + 1080) - *(v71 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v71 + 4288), v81);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v71 + 4288), v70);
    v74 = *(*this - 24);
    v75 = flatbuffers::FlatBufferBuilder::EndTable((v71 + 4288), v73 + v72);
    flatbuffers::FlatBufferBuilder::Finish((this + v74 + 4288), v75, v76);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if (v30)
    {
      operator delete(v30);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v82;
  }

  return result;
}

void *AGCLLVMDriverShader::setGatherMasks(void *result, char **a2)
{
  if (*(*(result + *(*result - 24) + 2168) + 1900))
  {
    v3 = result;
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(*a2, 22, result[6], 0);
    v4 = *a2;
    if ((*a2)[80] == 1)
    {
      v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(*a2, 0);
      flatbuffers::FlatBufferBuilder::TrackField(v4, 24, v5);
      v4 = *a2;
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v4, 26, v3[7], 0);
    v6 = *a2;
    if ((*a2)[80] == 1)
    {
      v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(*a2, 0);
      flatbuffers::FlatBufferBuilder::TrackField(v6, 28, v7);
      v6 = *a2;
    }

    v8 = v3[8];

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v6, 30, v8, 0);
  }

  return result;
}

void AGCLLVMTABlitVertexShader::getCompilationKeyDescription(AGCLLVMTABlitVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(this + 10);
  std::string::basic_string[abi:nn200100]<0>(v21, "AGCTABlitState");
  std::string::basic_string[abi:nn200100]<0>(v19, "blitType");
  _agcFieldString<char const*>(&v23, v19, (&_AGCTABlitTypeStrings)[*v3 & 7]);
  std::string::basic_string[abi:nn200100]<0>(v17, "primitiveSizePOT");
  _agcFieldString<unsigned int>(&v24, v17, (*v3 >> 8) & 7);
  std::string::basic_string[abi:nn200100]<0>(v15, "primitiveCount");
  _agcFieldString<unsigned int>(&v25, v15, (*v3 >> 11));
  std::string::basic_string[abi:nn200100]<0>(v13, "loopCount");
  _agcFieldString<unsigned int>(&v26, v13, (*v3 >> 19) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v11, "sampleCountPOT");
  _agcFieldString<unsigned int>(&v27, v11, (*v3 >> 23) & 3);
  std::string::basic_string[abi:nn200100]<0>(v9, "regionOffset");
  _agcFieldString<unsigned int>(&v28, v9, (*v3 >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(v7, "blitTextureFormat");
  _agcFieldString<unsigned int>(&v29, v7, *v3 >> 3);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v30, __p, *v3 >> 28);
  _agcGroupWithHeader(a2, v21, &v23, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v30.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v30.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }
}

void virtual thunk toAGCLLVMTABlitVertexShader::~AGCLLVMTABlitVertexShader(AGCLLVMTABlitVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 104));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 104));
}

void AGCLLVMTABlitVertexShader::~AGCLLVMTABlitVertexShader(AGCLLVMTABlitVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 104));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 104));
}

BOOL AGCLLVMDriverFragmentShader::constructReply(AGCLLVMDriverFragmentShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = this + *(*this - 24);
    if (*(*(v3 + 271) + 1863) == 1)
    {
      v18 = xmmword_20E70C570;
      AIRConstSampler::constructFlatReply(&v18, (v3 + 4288));
      operator new();
    }

    v4 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v6 = v5;
    *&v18 = v4;
    DWORD2(v18) = v5;
    AGCLLVMDriverShader::setGatherMasks(this, &v18);
    if (*(*(this + *(*this - 24) + 2168) + 1863) == 1)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>(v4, 0);
    }

    v7 = flatbuffers::FlatBufferBuilder::EndTable(v4, v6);
    v8 = (*(*this + 48))(this);
    v10 = flatbuffers::FlatBufferBuilder::EndTable(v8, v9);
    v11 = this + *(*this - 24);
    v11[4358] = 1;
    v12 = *(v11 + 1082);
    v13 = *(v11 + 1080) - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v11 + 4288), v7);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v11 + 4288), v10);
    v14 = *(*this - 24);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v13 + v12);
    flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4288), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMClearFragmentShader::getCompilationKeyDescription(AGCLLVMClearFragmentShader *this@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  agcStringRepresentation<_AGCDrawBufferState>(&v7, *(this + 102));
  v4 = *(this + 132);
  std::string::basic_string[abi:nn200100]<0>(v18, "AGCColorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v16, "redEnableBits");
  _agcFieldStringHex(&v20, v16, *v4);
  std::string::basic_string[abi:nn200100]<0>(v14, "greenEnableBits");
  _agcFieldStringHex(&v21, v14, v4[1]);
  std::string::basic_string[abi:nn200100]<0>(v12, "blueEnableBits");
  _agcFieldStringHex(&v22, v12, v4[2]);
  std::string::basic_string[abi:nn200100]<0>(v10, "alphaEnableBits");
  _agcFieldStringHex(&v23, v10, v4[3]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unknownMaskBits");
  _agcFieldStringHex(&v24, __p, v4[4]);
  _agcGroupWithHeader(&v6, v18, &v20, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v24.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v24.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
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

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v7.__r_.__value_.__l.__data_, &v6.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void agcStringRepresentation<_AGCDrawBufferState>(std::string *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v30, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(v53, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v51, "enabledBits");
  _agcFieldStringHex(&v58, v51, *(a2 + 32));
  std::string::basic_string[abi:nn200100]<0>(&v50, "sampleCount");
  _agcFieldString<unsigned char>(&v59, &v50.__r_.__value_.__l.__data_, 1 << (BYTE1(*(a2 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(v48, "colorSampleCount");
  _agcFieldString<unsigned char>(&v60, v48, 1 << ((*(a2 + 32) >> 10) & 3));
  v4 = *(a2 + 32) & 0x1FF000;
  if (v4 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v44, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v42, "unknown");
    _agcFieldString<std::string>(&v61, v44, v42);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v46, "outputPartitionSize");
    v5 = *(a2 + 32);
    if ((~v5 & 0x1FF000) == 0)
    {
      goto LABEL_90;
    }

    _agcFieldString<unsigned short>(&v61, v46, (v5 >> 12) & 0x1FF);
  }

  v6 = *(a2 + 32);
  if ((v6 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v40, "LIBSpilling");
    v7 = *(a2 + 32);
    if ((v7 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v62, v40, (v7 & 0x200000) != 0);
      goto LABEL_9;
    }

LABEL_90:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v36, "unknown");
  _agcFieldString<std::string>(&v62, v38, v36);
LABEL_9:
  std::string::basic_string[abi:nn200100]<0>(&v35, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v63, &v35.__r_.__value_.__l.__data_, (*(a2 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v33, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v64, v33, *(a2 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&__p, "useSlabs");
  _agcFieldString<unsigned char>(&v65, &__p.__r_.__value_.__l.__data_, (*(a2 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v55, v53, &v58, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v65.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v65.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v9 = v40[0];
    goto LABEL_26;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    v9 = v38[0];
LABEL_26:
    operator delete(v9);
  }

LABEL_27:
  if (v4 != 2093056)
  {
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v10 = v46[0];
    goto LABEL_34;
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    v10 = v44[0];
LABEL_34:
    operator delete(v10);
  }

LABEL_35:
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v53, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v51, "encoded[0]");
  _agcStringRepresentation(&v50, a2);
  _agcFieldString<std::string>(&v58, v51, &v50);
  std::string::basic_string[abi:nn200100]<0>(v48, "encoded[1]");
  _agcStringRepresentation(&v35, (a2 + 4));
  _agcFieldString<std::string>(&v59, v48, &v35);
  std::string::basic_string[abi:nn200100]<0>(v33, "encoded[2]");
  _agcStringRepresentation(&__p, (a2 + 8));
  _agcFieldString<std::string>(&v60, v33, &__p);
  std::string::basic_string[abi:nn200100]<0>(v28, "encoded[3]");
  _agcStringRepresentation(&v27, (a2 + 12));
  _agcFieldString<std::string>(&v61, v28, &v27);
  std::string::basic_string[abi:nn200100]<0>(v25, "encoded[4]");
  _agcStringRepresentation(&v24, (a2 + 16));
  _agcFieldString<std::string>(&v62, v25, &v24);
  std::string::basic_string[abi:nn200100]<0>(v22, "encoded[5]");
  _agcStringRepresentation(&v21, (a2 + 20));
  _agcFieldString<std::string>(&v63, v22, &v21);
  std::string::basic_string[abi:nn200100]<0>(v19, "encoded[6]");
  _agcStringRepresentation(&v18, (a2 + 24));
  _agcFieldString<std::string>(&v64, v19, &v18);
  std::string::basic_string[abi:nn200100]<0>(v16, "encoded[7]");
  _agcStringRepresentation(&v15, (a2 + 28));
  _agcFieldString<std::string>(&v65, v16, &v15);
  _agcGroupWithHeader(&v56, v53, &v58, 8);
  std::string::basic_string[abi:nn200100]<0>(v13, "_unused");
  _agcFieldString<unsigned int>(&v57, v13, *(a2 + 36));
  _agcGroupWithHeader(a1, v30, &v55, 3);
  for (j = 0; j != -9; j -= 3)
  {
    if (SHIBYTE(v57.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v57.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  for (k = 0; k != -24; k -= 3)
  {
    if (SHIBYTE(v65.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v65.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }
}

void virtual thunk toAGCLLVMClearFragmentShader::~AGCLLVMClearFragmentShader(AGCLLVMClearFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AD370;
  *(v1 + 133) = off_2825AD4A8;
  *(v1 + 346) = &off_2825AD5B8;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AD5D8;
  *(v1 + 133) = off_2825AD700;
  *(v1 + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AD370;
  *(v1 + 133) = off_2825AD4A8;
  *(v1 + 346) = &off_2825AD5B8;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AD5D8;
  *(v1 + 133) = off_2825AD700;
  *(v1 + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));
}

void non-virtual thunk toAGCLLVMClearFragmentShader::~AGCLLVMClearFragmentShader(AGCLLVMClearFragmentShader *this)
{
  *this = &off_2825AD370;
  v2 = (this + 992);
  *(this + 124) = off_2825AD4A8;
  *(this + 337) = &off_2825AD5B8;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AD5D8;
  *(this + 124) = off_2825AD700;
  *(this + 337) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825AD370;
  v2 = (this + 992);
  *(this + 124) = off_2825AD4A8;
  *(this + 337) = &off_2825AD5B8;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AD5D8;
  *(this + 124) = off_2825AD700;
  *(this + 337) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMClearFragmentShader::~AGCLLVMClearFragmentShader(AGCLLVMClearFragmentShader *this)
{
  *(this + 9) = &off_2825AD370;
  v2 = (this + 1064);
  *(this + 133) = off_2825AD4A8;
  *(this + 346) = &off_2825AD5B8;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AD5D8;
  *(this + 133) = off_2825AD700;
  *(this + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825AD370;
  v2 = (this + 1064);
  *(this + 133) = off_2825AD4A8;
  *(this + 346) = &off_2825AD5B8;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AD5D8;
  *(this + 133) = off_2825AD700;
  *(this + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMBackgroundObjectFragmentShader::getCompilationKeyDescription(AGCLLVMBackgroundObjectFragmentShader *this@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  agcStringRepresentation<_AGCDrawBufferState>(&v7, *(this + 102));
  v4 = *(this + 132);
  std::string::basic_string[abi:nn200100]<0>(v20, "AGCBackgroundObjectState");
  std::string::basic_string[abi:nn200100]<0>(v18, "dimensionBits");
  _agcFieldString<unsigned short>(&v22, v18, *v4);
  std::string::basic_string[abi:nn200100]<0>(v16, "arrayBits");
  _agcFieldString<unsigned char>(&v23, v16, *(v4 + 2));
  std::string::basic_string[abi:nn200100]<0>(v14, "clearedBits");
  _agcFieldString<unsigned char>(&v24, v14, *(v4 + 3));
  std::string::basic_string[abi:nn200100]<0>(v12, "loadedBits");
  _agcFieldString<unsigned char>(&v25, v12, *(v4 + 4));
  std::string::basic_string[abi:nn200100]<0>(v10, "uberVariant");
  _agcFieldString<unsigned char>(&v26, v10, *(v4 + 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "pridAllocationStrategy");
  _agcFieldString<char const*>(&v27, __p, (&_agcPRIDAllocationStrategyStrings)[(*(v4 + 4) >> 9) & 7]);
  _agcGroupWithHeader(&v6, v20, &v22, 6);
  for (i = 0; i != -18; i -= 3)
  {
    if (SHIBYTE(v27.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v27.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
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

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v7.__r_.__value_.__l.__data_, &v6.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

const char *virtual thunk toAGCLLVMBackgroundObjectFragmentShader::dumpType(AGCLLVMBackgroundObjectFragmentShader *this)
{
  if ((*(*(this + *(*this - 64) + 1056) + 4) & 0x100) != 0)
  {
    return "bgo_uber";
  }

  else
  {
    return "bgo";
  }
}

void virtual thunk toAGCLLVMBackgroundObjectFragmentShader::~AGCLLVMBackgroundObjectFragmentShader(AGCLLVMBackgroundObjectFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825ADD50;
  *(v1 + 133) = off_2825ADE88;
  *(v1 + 346) = &off_2825ADF98;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825ADFB8;
  *(v1 + 133) = off_2825AE0E0;
  *(v1 + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825ADD50;
  *(v1 + 133) = off_2825ADE88;
  *(v1 + 346) = &off_2825ADF98;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825ADFB8;
  *(v1 + 133) = off_2825AE0E0;
  *(v1 + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));
}

void non-virtual thunk toAGCLLVMBackgroundObjectFragmentShader::~AGCLLVMBackgroundObjectFragmentShader(AGCLLVMBackgroundObjectFragmentShader *this)
{
  *this = &off_2825ADD50;
  v2 = (this + 992);
  *(this + 124) = off_2825ADE88;
  *(this + 337) = &off_2825ADF98;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825ADFB8;
  *(this + 124) = off_2825AE0E0;
  *(this + 337) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825ADD50;
  v2 = (this + 992);
  *(this + 124) = off_2825ADE88;
  *(this + 337) = &off_2825ADF98;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825ADFB8;
  *(this + 124) = off_2825AE0E0;
  *(this + 337) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

const char *AGCLLVMBackgroundObjectFragmentShader::dumpType(AGCLLVMBackgroundObjectFragmentShader *this)
{
  if ((*(*(this + 132) + 4) & 0x100) != 0)
  {
    return "bgo_uber";
  }

  else
  {
    return "bgo";
  }
}

char *AGCLLVMBackgroundObjectFragmentShader::constructFlatReply(AGCLLVMBackgroundObjectFragmentShader *this)
{
  if ((*(*(this + 132) + 4) & 0x100) == 0)
  {
    return AGCLLVMFragmentShader::constructFlatReply((this + 72));
  }

  v2 = this + *(*this - 24);
  v2[4358] = 1;
  v1 = v2 + 4288;
  v3 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v2 + 4288), 0xFFFFFFFFLL);
  flatbuffers::FlatBufferBuilder::TrackField(v2 + 4288, 8, v3);
  if (v2[4368] == 1)
  {
    v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v2 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v2 + 4288, 6, v4);
  }

  return v1;
}

void AGCLLVMBackgroundObjectFragmentShader::~AGCLLVMBackgroundObjectFragmentShader(AGCLLVMBackgroundObjectFragmentShader *this)
{
  *(this + 9) = &off_2825ADD50;
  v2 = (this + 1064);
  *(this + 133) = off_2825ADE88;
  *(this + 346) = &off_2825ADF98;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825ADFB8;
  *(this + 133) = off_2825AE0E0;
  *(this + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825ADD50;
  v2 = (this + 1064);
  *(this + 133) = off_2825ADE88;
  *(this + 346) = &off_2825ADF98;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825ADFB8;
  *(this + 133) = off_2825AE0E0;
  *(this + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMEndOfTileProgram::constructReply(AGCLLVMEndOfTileProgram *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = v4;
    v29 = v3;
    v30 = v4;
    AGCLLVMDriverShader::setGatherMasks(this, &v29);
    v6 = flatbuffers::FlatBufferBuilder::EndTable(v3, v5);
    v7 = this + *(*this - 24);
    v7[4358] = 1;
    v8 = *(v7 + 1082);
    v9 = *(v7 + 1080) - *(v7 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v7 + 4288), v6);
    v10 = *(*this - 24);
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v9 + v8);
    flatbuffers::FlatBufferBuilder::Finish((this + v10 + 4288), v11, v12);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if (*(this + 81) == 1)
    {
      v13 = this + *(*this - 24);
      v13[4454] = 1;
      v14 = *(v13 + 1106);
      v15 = *(v13 + 1104) - *(v13 + 1108);
      if (v13[4464] == 1)
      {
        v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v13 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v13 + 4384, 10, v16);
        if (v13[4464])
        {
          v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v13 + 4384), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v13 + 4384, 8, v17);
          if (v13[4464])
          {
            v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v13 + 4384), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v13 + 4384, 12, v18);
            if (v13[4464])
            {
              v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v13 + 4384), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v13 + 4384, 6, v19);
            }
          }
        }
      }

      v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v13 + 4384), 1);
      flatbuffers::FlatBufferBuilder::TrackField(v13 + 4384, 4, v20);
      v21 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4384), v15 + v14);
      v22 = this + *(*this - 24);
      v22[4454] = 1;
      v23 = *(v22 + 1106);
      v24 = *(v22 + 1104) - *(v22 + 1108);
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v22 + 4384), v21);
      v25 = *(*this - 24);
      v26 = flatbuffers::FlatBufferBuilder::EndTable((v22 + 4384), v24 + v23);
      flatbuffers::FlatBufferBuilder::Finish((this + v25 + 4384), v26, v27);
      AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    }
  }

  return v2;
}

void AGCLLVMEndOfTileProgram::getCompilationKeyDescription(AGCLLVMEndOfTileProgram *this@<X0>, std::string *a2@<X8>)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  std::string::basic_string[abi:nn200100]<0>(v79, "AGCEndOfTileState");
  std::string::basic_string[abi:nn200100]<0>(v77, "emitMask");
  _agcFieldStringHex(&v98, v77, *(v3 + 72));
  std::string::basic_string[abi:nn200100]<0>(v75, "conditionalMask");
  _agcFieldStringHex(&v99, v75, *(v3 + 74));
  std::string::basic_string[abi:nn200100]<0>(v73, "sampleCount");
  _agcFieldString<unsigned long long>(&v100, v73, *(v3 + 76) & 0xFLL);
  std::string::basic_string[abi:nn200100]<0>(v71, "outputPartitionSize");
  _agcFieldString<unsigned long long>(&v101, v71, (*(v3 + 72) >> 36) & 0x1FFLL);
  std::string::basic_string[abi:nn200100]<0>(v69, "numEmits");
  _agcFieldString<unsigned long long>(&v102, v69, (*(v3 + 72) >> 45) & 0x1FLL);
  std::string::basic_string[abi:nn200100]<0>(v67, "dummyEmitIndex");
  _agcFieldString<unsigned long long>(&v103, v67, (*(v3 + 72) >> 50) & 0x1FLL);
  std::string::basic_string[abi:nn200100]<0>(v65, "type");
  _agcFieldString<unsigned long long>(&v104, v65, (*(v3 + 72) >> 55) & 3);
  std::string::basic_string[abi:nn200100]<0>(v63, "uberVariant");
  _agcFieldString<unsigned long long>(&v105, v63, (*(v3 + 72) >> 57) & 1);
  std::string::basic_string[abi:nn200100]<0>(v61, "gin1403SWWAEnabled");
  _agcFieldString<unsigned long long>(&v106, v61, (*(v3 + 72) >> 58) & 1);
  std::string::basic_string[abi:nn200100]<0>(v59, "unused");
  _agcFieldString<unsigned long long>(&v107, v59, *(v3 + 72) >> 59);
  std::string::basic_string[abi:nn200100]<0>(v57, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v55, "encoded[0]");
  _agcStringRepresentation(&v54, v3);
  _agcFieldString<std::string>(&v81, v55, &v54);
  std::string::basic_string[abi:nn200100]<0>(v52, "encoded[1]");
  _agcStringRepresentation(&v51, (v3 + 4));
  _agcFieldString<std::string>(&v82, v52, &v51);
  std::string::basic_string[abi:nn200100]<0>(v49, "encoded[2]");
  _agcStringRepresentation(&v48, (v3 + 8));
  _agcFieldString<std::string>(&v83, v49, &v48);
  std::string::basic_string[abi:nn200100]<0>(v46, "encoded[3]");
  _agcStringRepresentation(&v45, (v3 + 12));
  _agcFieldString<std::string>(&v84, v46, &v45);
  std::string::basic_string[abi:nn200100]<0>(v43, "encoded[4]");
  _agcStringRepresentation(&v42, (v3 + 16));
  _agcFieldString<std::string>(&v85, v43, &v42);
  std::string::basic_string[abi:nn200100]<0>(v40, "encoded[5]");
  _agcStringRepresentation(&v39, (v3 + 20));
  _agcFieldString<std::string>(&v86, v40, &v39);
  std::string::basic_string[abi:nn200100]<0>(v37, "encoded[6]");
  _agcStringRepresentation(&v36, (v3 + 24));
  _agcFieldString<std::string>(&v87, v37, &v36);
  std::string::basic_string[abi:nn200100]<0>(v34, "encoded[7]");
  _agcStringRepresentation(&v33, (v3 + 28));
  _agcFieldString<std::string>(&v88, v34, &v33);
  std::string::basic_string[abi:nn200100]<0>(v31, "encoded[8]");
  _agcStringRepresentation(&v30, (v3 + 32));
  _agcFieldString<std::string>(&v89, v31, &v30);
  std::string::basic_string[abi:nn200100]<0>(v28, "encoded[9]");
  _agcStringRepresentation(&v27, (v3 + 36));
  _agcFieldString<std::string>(&v90, v28, &v27);
  std::string::basic_string[abi:nn200100]<0>(v25, "encoded[10]");
  _agcStringRepresentation(&v24, (v3 + 40));
  _agcFieldString<std::string>(&v91, v25, &v24);
  std::string::basic_string[abi:nn200100]<0>(v22, "encoded[11]");
  _agcStringRepresentation(&v21, (v3 + 44));
  _agcFieldString<std::string>(&v92, v22, &v21);
  std::string::basic_string[abi:nn200100]<0>(v19, "encoded[12]");
  _agcStringRepresentation(&v18, (v3 + 48));
  _agcFieldString<std::string>(&v93, v19, &v18);
  std::string::basic_string[abi:nn200100]<0>(v16, "encoded[13]");
  _agcStringRepresentation(&v15, (v3 + 52));
  _agcFieldString<std::string>(&v94, v16, &v15);
  std::string::basic_string[abi:nn200100]<0>(v13, "encoded[14]");
  _agcStringRepresentation(&v12, (v3 + 56));
  _agcFieldString<std::string>(&v95, v13, &v12);
  std::string::basic_string[abi:nn200100]<0>(v10, "encoded[15]");
  _agcStringRepresentation(&v9, (v3 + 60));
  _agcFieldString<std::string>(&v96, v10, &v9);
  std::string::basic_string[abi:nn200100]<0>(v7, "encoded[16]");
  _agcStringRepresentation(&__p, (v3 + 64));
  _agcFieldString<std::string>(&v97, v7, &__p);
  _agcGroupWithHeader(&v108, v57, &v81, 17);
  _agcGroupWithHeader(a2, v79, &v98, 11);
  v4 = 264;
  do
  {
    if (v98.__r_.__value_.__s.__data_[v4 - 1] < 0)
    {
      operator delete(*(&v97.__r_.__value_.__l.__data_ + v4));
    }

    v4 -= 24;
  }

  while (v4);
  v5 = 51;
  do
  {
    if (v81.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v79[v5]);
    }

    v5 -= 3;
  }

  while (v5 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }
}

void _agcStringRepresentation(std::string *a1, unsigned __int8 *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v19, "AGCEmitState");
  std::string::basic_string[abi:nn200100]<0>(v17, "slotIndex");
  _agcFieldString<unsigned int>(&v21, v17, *a2);
  std::string::basic_string[abi:nn200100]<0>(v15, "channelFormat");
  _agcFieldString<unsigned int>(&v22, v15, a2[1]);
  std::string::basic_string[abi:nn200100]<0>(v13, "dimension");
  _agcFieldString<unsigned int>(&v23, v13, a2[2]);
  std::string::basic_string[abi:nn200100]<0>(v11, "gammaCorrection");
  _agcFieldString<unsigned int>(&v24, v11, HIBYTE(*a2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v9, "sparse");
  _agcFieldString<unsigned int>(&v25, v9, (*a2 >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(v7, "numWrittenComponents");
  _agcFieldString<unsigned int>(&v26, v7, (*a2 >> 26) & 7);
  std::string::basic_string[abi:nn200100]<0>(__p, "manualResolve");
  _agcFieldString<unsigned int>(&v27, __p, (*a2 >> 29) & 1);
  _agcGroupWithHeader(a1, v19, &v21, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v27.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v27.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void *virtual thunk toAGCLLVMEndOfTileProgram::wrapperName@<X0>(AGCLLVMEndOfTileProgram *this@<X0>, void *a2@<X8>)
{
  v4 = this + *(*this - 88);
  if (v4[81])
  {
    v5 = "agc.sw_eot";
  }

  else if (v4[82])
  {
    v5 = "agc.eotfc";
  }

  else
  {
    v5 = "agc.eot";
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v5);
}

const char *virtual thunk toAGCLLVMEndOfTileProgram::dumpType(AGCLLVMEndOfTileProgram *this)
{
  v1 = *(*(this + *(*this - 64) + 72) + 72);
  v2 = (v1 >> 55) & 3;
  if ((v1 & 0x200000000000000) != 0)
  {
    if (v2 == 1)
    {
      return "sw_eot_uber";
    }

    v4 = "eot_uber";
    v5 = "eotfc_uber";
  }

  else
  {
    if (v2 == 1)
    {
      return "sw_eot";
    }

    v4 = "eot";
    v5 = "eotfc";
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

void virtual thunk toAGCLLVMEndOfTileProgram::~AGCLLVMEndOfTileProgram(AGCLLVMEndOfTileProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));
}

void *AGCLLVMEndOfTileProgram::wrapperName@<X0>(AGCLLVMEndOfTileProgram *this@<X0>, void *a2@<X8>)
{
  if (*(this + 81))
  {
    v2 = "agc.sw_eot";
  }

  else if (*(this + 82))
  {
    v2 = "agc.eotfc";
  }

  else
  {
    v2 = "agc.eot";
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v2);
}

const char *AGCLLVMEndOfTileProgram::dumpType(AGCLLVMEndOfTileProgram *this)
{
  v1 = *(*(this + 9) + 72);
  v2 = (v1 >> 55) & 3;
  if ((v1 & 0x200000000000000) != 0)
  {
    if (v2 == 1)
    {
      return "sw_eot_uber";
    }

    v4 = "eot_uber";
    v5 = "eotfc_uber";
  }

  else
  {
    if (v2 == 1)
    {
      return "sw_eot";
    }

    v4 = "eot";
    v5 = "eotfc";
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

void AGCLLVMEndOfTileProgram::~AGCLLVMEndOfTileProgram(AGCLLVMEndOfTileProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 96));
}

BOOL AGCLLVMUtilityProgram::constructReply(AGCLLVMUtilityProgram *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v6 + 4288), v5);
    v9 = *(*this - 24);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    flatbuffers::FlatBufferBuilder::Finish((this + v9 + 4288), v10, v11);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

uint64_t AGCLLVMUtilityProgram::compile(AGCLLVMUtilityProgram *this)
{
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v2 = *(this + *(*this - 24) + 1696);
      v3 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v2, "------ Start compilation key description for %s shader %u  ------", v3, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v4 = *(this + *(*this - 24) + 1696);
      (*(*this + 40))(__p, this);
      v5 = v14 >= 0 ? __p : __p[0];
      AGCTargetPrinter::printMessage(v4, "%s", v5);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = *(this + *(*this - 24) + 1696);
      v7 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v6, "------ End compilation key description for %s shader %u  ------", v7, *(this + *(*this - 24) + 5088));
    }
  }

  v8 = this + *(*this - 24);
  v9 = *(v8 + 211);
  v10 = *(v8 + 267);
  __p[0] = 0x10000;
  v11 = AGCLLVMCtx::compile(v9, v8, v10, 1, 2, __p, 0);
  result = 0;
  if (v11)
  {
    return (*(*this + 8))(this);
  }

  return result;
}

void virtual thunk toAGCLLVMUtilityProgram::~AGCLLVMUtilityProgram(AGCLLVMUtilityProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 8));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 8));
}

void AGCLLVMUtilityProgram::~AGCLLVMUtilityProgram(AGCLLVMUtilityProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 8));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 8));
}

void virtual thunk toAGCLLVMDummyFeedbackFragmentShader::~AGCLLVMDummyFeedbackFragmentShader(AGCLLVMDummyFeedbackFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AE998;
  *(v1 + 132) = off_2825AEAD0;
  *(v1 + 345) = &off_2825AEBE0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AEC00;
  *(v1 + 132) = off_2825AED28;
  *(v1 + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1056));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AE998;
  *(v1 + 132) = off_2825AEAD0;
  *(v1 + 345) = &off_2825AEBE0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AEC00;
  *(v1 + 132) = off_2825AED28;
  *(v1 + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1056));
}

void non-virtual thunk toAGCLLVMDummyFeedbackFragmentShader::~AGCLLVMDummyFeedbackFragmentShader(AGCLLVMDummyFeedbackFragmentShader *this)
{
  *this = &off_2825AE998;
  v2 = (this + 984);
  *(this + 123) = off_2825AEAD0;
  *(this + 336) = &off_2825AEBE0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AEC00;
  *(this + 123) = off_2825AED28;
  *(this + 336) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825AE998;
  v2 = (this + 984);
  *(this + 123) = off_2825AEAD0;
  *(this + 336) = &off_2825AEBE0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AEC00;
  *(this + 123) = off_2825AED28;
  *(this + 336) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDummyFeedbackFragmentShader::~AGCLLVMDummyFeedbackFragmentShader(AGCLLVMDummyFeedbackFragmentShader *this)
{
  *(this + 9) = &off_2825AE998;
  v2 = (this + 1056);
  *(this + 132) = off_2825AEAD0;
  *(this + 345) = &off_2825AEBE0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AEC00;
  *(this + 132) = off_2825AED28;
  *(this + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825AE998;
  v2 = (this + 1056);
  *(this + 132) = off_2825AEAD0;
  *(this + 345) = &off_2825AEBE0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AEC00;
  *(this + 132) = off_2825AED28;
  *(this + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMTextureFetchFragmentShader::getCompilationKeyDescription(AGCLLVMTextureFetchFragmentShader *this@<X0>, std::string *a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  agcStringRepresentation<_AGCDrawBufferState>(&v12, *(this + 102));
  v4 = *(this + 132);
  if (v4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v29, "AGC3DBlitState");
    std::string::basic_string[abi:nn200100]<0>(v27, "blitType");
    _agcFieldString<char const*>(&v30, v27, (&_AGC3DBlitTypeStrings)[*v4 & 0xF]);
    std::string::basic_string[abi:nn200100]<0>(v25, "readBufferSampleCount");
    _agcFieldString<unsigned int>(&v31, v25, *v4 >> 4);
    std::string::basic_string[abi:nn200100]<0>(v23, "sample3D");
    _agcFieldString<unsigned int>(&v32, v23, (*v4 >> 8) & 1);
    std::string::basic_string[abi:nn200100]<0>(v21, "regionOffset");
    _agcFieldString<unsigned int>(&v33, v21, (*v4 >> 9) & 1);
    std::string::basic_string[abi:nn200100]<0>(v19, "remapAddress");
    _agcFieldString<unsigned int>(&v34, v19, (*v4 >> 10) & 1);
    std::string::basic_string[abi:nn200100]<0>(v17, "remapAddressPOT");
    _agcFieldString<unsigned int>(&v35, v17, (*v4 >> 11) & 1);
    std::string::basic_string[abi:nn200100]<0>(v15, "strideDiscard");
    _agcFieldString<unsigned int>(&v36, v15, (*v4 >> 12) & 1);
    std::string::basic_string[abi:nn200100]<0>(__p, "blitTextureFormat");
    _agcFieldString<unsigned int>(&v37, __p, (*v4 >> 13) & 0x1F);
    _agcGroupWithHeader(&v11, &v29, &v30, 8);
    for (i = 0; i != -24; i -= 3)
    {
      if (SHIBYTE(v37.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v37.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v11, &unk_20E75F419);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v29, &v12.__r_.__value_.__l.__data_, &v11.__r_.__value_.__l.__data_);
  v6 = std::string::append(&v29, "\ntoken type : ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(this + 266);
  {
    std::string::basic_string[abi:nn200100]<0>(agcStreamToken2String::mapToken2String, "AGCStreamTokenUnknownShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[3], "AGCStreamTokenGLSLVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[6], "AGCStreamTokenGLSLFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[9], "AGCStreamTokenMetalVertexProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[12], "AGCStreamTokenMetalFragmentProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[15], "AGCStreamTokenMetalTileProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[18], "AGCStreamTokenMetalComputeProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[21], "AGCStreamTokenMetalUserIntersectionProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[24], "AGCStreamTokenMetalDynamicLibrary");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[27], "AGCStreamTokenMetalObjectProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[30], "AGCStreamTokenMetalMeshProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[33], "AGCStreamTokenClearFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[36], "AGCStreamTokenResolveFragmentShaderGL");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[39], "AGCStreamTokenBackgroundObjectFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[42], "AGCStreamToken3DBlitFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[45], "AGCStreamTokenTABlitVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[48], "AGCStreamTokenBlitComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[51], "AGCStreamTokenBlitSparseShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[54], "AGCStreamTokenBlitFastClearShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[57], "AGCStreamTokenEndOfTileProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[60], "AGCStreamTokenExecuteIndirectESLGenerationVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[63], "AGCStreamTokenExecuteIndirectRangeExecutionVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[66], "AGCStreamTokenExecuteIndirectRangeExecutionComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[69], "AGCStreamTokenExecuteIndirectCDMPatchUpShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[72], "AGCStreamTokenBVHBuilderShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[75], "AGCStreamTokenTileDispatchVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[78], "AGCStreamTokenPassthroughObjectProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[81], "AGCStreamTokenDCMPDebugComputeProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[84], "AGCStreamTokenVisibilityVertexClearShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[87], "AGCStreamTokenClearVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[90], "AGCStreamTokenResolveVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[93], "AGCStreamTokenBlitVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[96], "AGCStreamTokenVDMStateSyncProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[99], "AGCStreamTokenContextSaveProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[102], "AGCStreamTokenContextRestoreProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[105], "AGCStreamTokenToggledContextSaveProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[108], "AGCStreamTokenToggledContextRestoreProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[111], "AGCStreamTokenComputeFlushProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[114], "AGCStreamTokenComputeFlushProgramWithFWInterrupt");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[117], "AGCStreamTokenComputeFenceProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[120], "AGCStreamTokenComputeTGSizeOptimizationProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[123], "AGCStreamTokenComputeProgressMarkerProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[126], "AGCStreamTokenComputeControlFlowPredicateProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[129], "AGCStreamTokenSwTessellationNonBucketedEmitDrawCommandsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[132], "AGCStreamTokenSwTessellationBucketedComputeInstanceCountsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[135], "AGCStreamTokenSwTessellationBucketedSumInstanceCountsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[138], "AGCStreamTokenSwTessellationBucketedEmitDrawCommandsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[141], "AGCStreamTokenVDMNOPDBGProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[144], "AGCStreamTokenSwTessellationBucketedClearInstanceCountsProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[147], "AGCStreamTokenUtilityProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[150], "AGCStreamTokenDummyFeedbackFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[153], "AGCStreamTokenNumGfxShaders");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[156], "AGCStreamTokenMetalDriverIntersectionProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[159], "AGCStreamTokenGeometryPipelineEmulationUMDAllocationShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[162], "AGCStreamTokenGeometryPipelineEmulationFWAllocationSetupShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[165], "AGCStreamTokenGeometryPipelineEmulationFWAllocationPostObjectShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[168], "AGCStreamTokenGeometryPipelineEmulationFWAllocationPreMeshShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[171], "AGCStreamTokenBitCodeGLIR");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[174], "AGCStreamTokenVertexContextStateGL");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[177], "AGCStreamTokenFragmentContextStateGL");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[180], "AGCStreamTokenVertexContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[183], "AGCStreamTokenObjectContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[186], "AGCStreamTokenMeshContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[189], "AGCStreamTokenFragmentContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[192], "AGCStreamTokenSamplerRemapState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[195], "AGCStreamTokenSamplerPCFState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[198], "AGCStreamTokenDrawBufferState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[201], "AGCStreamTokenTileState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[204], "AGCStreamTokenBackgroundObjectState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[207], "AGCStreamTokenEndOfTileState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[210], "AGCStreamToken3DBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[213], "AGCStreamTokenTABlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[216], "AGCStreamTokenCDMBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[219], "AGCStreamTokenBlitSparseState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[222], "AGCStreamTokenBlitFastClearState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[225], "AGCStreamTokenVaryingSemantics");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[228], "AGCStreamTokenVaryingTypes");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[231], "AGCStreamTokenClearFragmentColorMaskState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[234], "AGCStreamTokenComputeContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[237], "AGCStreamTokenDynamicLibraryStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[240], "AGCStreamTokenTexUnitBiasState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[243], "AGCStreamTokenTessellationDriverState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[246], "AGCStreamTokenExecuteIndirectDriverState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[249], "AGCStreamTokenDriverIntersectionState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[252], "AGCStreamTokenUserIntersectionState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[255], "AGCStreamTokenBVHBuilderState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[258], "AGCStreamTokenComputeControlFlowPredicateState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[261], "AGCStreamTokenTileDispatchVertexState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[264], "AGCStreamTokenPassthroughObjectProgramState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[267], "AGCStreamTokenDCMPDebugComputeProgramState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[270], "AGCStreamTokenGPUGatherVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[273], "AGCStreamTokenGPUGatherComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[276], "AGCStreamTokenPDSPatchUpVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[279], "AGCStreamTokenPDSPatchUpComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[282], "AGCStreamTokenVRRPatchVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[285], "AGCStreamTokenBlitVertexFastClearShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[288], "AGCStreamTokenEnd");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[291], "AGCStreamTokenEndOfTileFastClearProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[294], "AGCStreamTokenStatelessPSODynamicLibrary");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[297], "AGCStreamTokenStatelessPSODynamicLibraryState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[300], "AGCStreamTokenUberBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[303], "AGCStreamTokenUberBlitComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[306], "AGCStreamTokenTensorBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[309], "AGCStreamTokenTensorBlitComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[312], "AGCStreamTokenTessellationObjectProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[315], "AGCStreamTokenTessellationObjectProgramState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[318], "AGCStreamTokenMSTessellationPatchupVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[321], "AGCStreamTokenIFBEmulationShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[324], "AGCStreamTokenIFBEmulationState");
    __cxa_atexit(std::array<std::string,109ul>::~array, agcStreamToken2String::mapToken2String, &dword_20E4E1000);
  }

  v9 = &agcStreamToken2String::mapToken2String[3 * v8];
  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  v10 = std::string::append(&v30, v9);
  *a2 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

uint64_t std::array<std::string,109ul>::~array(uint64_t a1)
{
  v2 = 2616;
  do
  {
    if (*(a1 + v2 - 1) < 0)
    {
      operator delete(*(a1 + v2 - 24));
    }

    v2 -= 24;
  }

  while (v2);
  return a1;
}

const char *virtual thunk toAGCLLVMTextureFetchFragmentShader::dumpType(AGCLLVMTextureFetchFragmentShader *this)
{
  v1 = *(this + *(*this - 64) + 1064);
  v2 = "texture_fetch";
  if (v1 == 14)
  {
    v2 = "blit3D";
  }

  if (v1 == 12)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void virtual thunk toAGCLLVMTextureFetchFragmentShader::~AGCLLVMTextureFetchFragmentShader(AGCLLVMTextureFetchFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AF378;
  *(v1 + 134) = off_2825AF4B0;
  *(v1 + 347) = &off_2825AF5C0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AF5E0;
  *(v1 + 134) = off_2825AF708;
  *(v1 + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1072));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AF378;
  *(v1 + 134) = off_2825AF4B0;
  *(v1 + 347) = &off_2825AF5C0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AF5E0;
  *(v1 + 134) = off_2825AF708;
  *(v1 + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1072));
}

void non-virtual thunk toAGCLLVMTextureFetchFragmentShader::~AGCLLVMTextureFetchFragmentShader(AGCLLVMTextureFetchFragmentShader *this)
{
  *this = &off_2825AF378;
  v2 = (this + 1000);
  *(this + 125) = off_2825AF4B0;
  *(this + 338) = &off_2825AF5C0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AF5E0;
  *(this + 125) = off_2825AF708;
  *(this + 338) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825AF378;
  v2 = (this + 1000);
  *(this + 125) = off_2825AF4B0;
  *(this + 338) = &off_2825AF5C0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AF5E0;
  *(this + 125) = off_2825AF708;
  *(this + 338) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

const char *AGCLLVMTextureFetchFragmentShader::dumpType(AGCLLVMTextureFetchFragmentShader *this)
{
  v1 = *(this + 266);
  v2 = "texture_fetch";
  if (v1 == 14)
  {
    v2 = "blit3D";
  }

  if (v1 == 12)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void AGCLLVMTextureFetchFragmentShader::~AGCLLVMTextureFetchFragmentShader(AGCLLVMTextureFetchFragmentShader *this)
{
  *(this + 9) = &off_2825AF378;
  v2 = (this + 1072);
  *(this + 134) = off_2825AF4B0;
  *(this + 347) = &off_2825AF5C0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AF5E0;
  *(this + 134) = off_2825AF708;
  *(this + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825AF378;
  v2 = (this + 1072);
  *(this + 134) = off_2825AF4B0;
  *(this + 347) = &off_2825AF5C0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AF5E0;
  *(this + 134) = off_2825AF708;
  *(this + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMDriverCDMShader::constructReply(AGCLLVMDriverCDMShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = v4;
    v35 = v3;
    v36 = v4;
    AGCLLVMDriverShader::setGatherMasks(this, &v35);
    v6 = flatbuffers::FlatBufferBuilder::EndTable(v3, v5);
    if ((*(**(this + *(*this - 24) + 2168) + 688))())
    {
      v7 = 0;
    }

    else
    {
      if (*(*(this + 9) + 8))
      {
        v8 = this + *(*this - 24);
        v8[4358] = 1;
        v9 = *(v8 + 1082);
        v10 = *(v8 + 1080) - *(v8 + 1084);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 4, 0);
        flatbuffers::FlatBufferBuilder::AddElement<signed char>(v8 + 4288, 6, ***(this + 9));
        flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v10 + v9);
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
      }

      v11 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>> const&)::t, 0);
      v12 = this + *(*this - 24);
      v12[4358] = 1;
      v13 = *(v12 + 1082);
      v14 = *(v12 + 1080) - *(v12 + 1084);
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v12 + 4288), v11);
      v7 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v14 + v13);
      v2 = v2;
    }

    v15 = this + *(*this - 24);
    v15[4358] = 1;
    v16 = *(v15 + 1082);
    v17 = *(v15 + 1080) - *(v15 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v15 + 4288), v6);
    if (!(*(**(this + *(*this - 24) + 2168) + 688))())
    {
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v15 + 4288), v7);
    }

    v18 = *(*this - 24);
    v19 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v17 + v16);
    flatbuffers::FlatBufferBuilder::Finish((this + v18 + 4288), v19, v20);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if ((*(**(this + *(*this - 24) + 2168) + 688))())
    {
      v21 = this + *(*this - 24);
      v22 = *(this + 20);
      v21[4454] = 1;
      v23 = *(v21 + 552);
      v24 = *(v21 + 554);
      v25 = *(v21 + 553);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v21 + 4384, 4, v22);
      if (v21[4464] == 1)
      {
        v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v21 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v21 + 4384, 6, v26);
      }

      v27 = flatbuffers::FlatBufferBuilder::EndTable((v21 + 4384), v23 - v24 + v25);
      v28 = this + *(*this - 24);
      v28[4454] = 1;
      v29 = *(v28 + 1106);
      v30 = *(v28 + 1104) - *(v28 + 1108);
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v28 + 4384), v27);
      v31 = *(*this - 24);
      v32 = flatbuffers::FlatBufferBuilder::EndTable((v28 + 4384), v30 + v29);
      flatbuffers::FlatBufferBuilder::Finish((this + v31 + 4384), v32, v33);
      AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    }
  }

  return v2;
}

uint64_t AGCLLVMDriverCDMBlitShader::compile(AGCLLVMDriverCDMBlitShader *this)
{
  v2 = *(this + *(*this - 24) + 2136);
  v3 = v2 + 24;
  for (i = *(v2 + 32); i != v3; i = *(i + 8))
  {
    if (i)
    {
      v5 = (i - 56);
    }

    else
    {
      v5 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v5) & 1) == 0)
    {
      (*(*(this + *(*this - 24)) + 192))(this + *(*this - 24), v5);
      break;
    }
  }

  AGCLLVMObject::enableTempRegistersLimit((this + *(*this - 24)));
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = *(this + *(*this - 24) + 1696);
      v7 = (*(*this + 48))(this);
      AGCTargetPrinter::printMessage(v6, "------ Start compilation key description for %s shader %u  ------", v7, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v8 = *(this + *(*this - 24) + 1696);
      (*(*this + 64))(__p, this);
      v9 = v18 >= 0 ? __p : __p[0];
      AGCTargetPrinter::printMessage(v8, "%s", v9);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v10 = *(this + *(*this - 24) + 1696);
      v11 = (*(*this + 48))(this);
      AGCTargetPrinter::printMessage(v10, "------ End compilation key description for %s shader %u  ------", v11, *(this + *(*this - 24) + 5088));
    }
  }

  v12 = this + *(*this - 24);
  v13 = *(v12 + 211);
  v14 = *(v12 + 267);
  __p[0] = 0x10000;
  v15 = AGCLLVMCtx::compile(v13, v12, v14, 1, 3, __p, 0);
  result = 0;
  if (v15)
  {
    return (*(*this + 40))(this);
  }

  return result;
}

void virtual thunk toAGCLLVMDriverCDMBlitShader::~AGCLLVMDriverCDMBlitShader(AGCLLVMDriverCDMBlitShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(v1);
  AGCLLVMObject::~AGCLLVMObject((v1 + 128));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader((this + *(*this - 24)));
  v2 = (v1 + 128);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(AGCLLVMDriverCDMShader *this)
{
  *this = off_2825AF838;
  *(this + 16) = off_2825AF978;
  *(this + 229) = &off_2825AFA88;
  v1 = *(this + 9);
  if (v1)
  {
    for (i = 0; i != -9; i -= 3)
    {
      v3 = v1[i + 31];
      if (v3 != -8192 && v3 != -4096 && v3 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v1[i + 29]);
      }
    }

    for (j = 0; j != -9; j -= 3)
    {
      v6 = v1[j + 22];
      if (v6 != -8192 && v6 != -4096 && v6 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v1[j + 20]);
      }
    }

    for (k = 0; k != -9; k -= 3)
    {
      v9 = v1[k + 13];
      if (v9 != -8192 && v9 != -4096 && v9 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v1[k + 11]);
      }
    }

    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x20F331DC0](v1, 0x10A0C40A3700DFBLL);
  }
}

void AGCLLVMDriverCDMBlitShader::~AGCLLVMDriverCDMBlitShader(AGCLLVMDriverCDMBlitShader *this)
{
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 128));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 128));
}

void AGCLLVMDriverShader::AGCLLVMDriverShader(AGCLLVMDriverShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = *(a2 + 1);
  *(this + *(*this - 24) + 1704) = *(a2 + 2);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  operator new();
}

uint64_t AGCLLVMDriverShader::buildRegionOffsets(AGCLLVMDriverShader *this, const char *a2, unsigned int a3)
{
  v15 = 0;
  v16 = 0;
  AGCLLVMDriverShader::buildRegionOffsets(this, &v16, &v15, a2, a3);
  v4 = llvm::UndefValue::get();
  v5 = this + *(*this - 24);
  v6 = v16;
  v14 = 257;
  v7 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((v5 + 1712), v4, v6, v7, v13);
  v9 = this + *(*this - 24);
  v10 = v15;
  v14 = 257;
  v11 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((v9 + 1712), InsertElement, v10, v11, v13);
}

llvm::Value *AGCLLVMDriverShader::buildRegionOffsets(AGCLLVMDriverShader *this, llvm::Value **a2, llvm::Value **a3, const char *a4, unsigned int a5)
{
  v10 = 1;
  v11 = llvm::User::operator new(0x58);
  HIBYTE(v24) = 1;
  if (*a4)
  {
    v23[0] = a4;
    v10 = 3;
  }

  LOBYTE(v24) = v10;
  llvm::GlobalVariable::GlobalVariable();
  *(v11 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v12 = this + *(*this - 24);
  v13 = *(v12 + 268);
  v14 = AGCLLVMBuilder::buildGlobalMetadata(v12 + 213, v11, a5, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v13, v14);
  v15 = this + *(*this - 24);
  v16 = *(v15 + 238);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*v11);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v15 + 214, v16, v11, 0, v23);
  v18 = this + *(*this - 24);
  v19 = llvm::ConstantInt::get();
  v24 = 257;
  *a2 = llvm::IRBuilderBase::CreateAnd((v18 + 1712), AlignedLoad, v19, v23);
  v20 = this + *(*this - 24);
  v24 = 257;
  v21 = llvm::ConstantInt::get();
  result = llvm::IRBuilderBase::CreateLShr((v20 + 1712), AlignedLoad, v21, v23);
  *a3 = result;
  return result;
}

llvm::Value *AGCLLVMDriverShader::buildPack(void *a1, llvm::Type *a2, llvm::Value *a3, llvm::UndefValue *a4, uint64_t a5, llvm::Instruction *a6)
{
  v6 = a4;
  v109 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 2) & 0xFE) == 0x12)
  {
    v9 = *(a4 + 8);
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 20)
  {
    if (a2 <= 22)
    {
      if (a2 == 21)
      {
        v104 = llvm::ConstantInt::get();
        v105 = llvm::ConstantInt::get();
        v106 = llvm::ConstantInt::get();
        v107 = llvm::ConstantInt::get();
        v30 = a1 + *(*a1 - 24);
        v31 = llvm::ConstantVector::get();
        v103 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v30 + 1712), a3, a3, v31, v102);
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 271);
        v87 = *(v33 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v88, (v33 + 1712));
        v89 = *(v33 + 452);
        InsertElement = (*(*v34 + 104))(v34, &v87, 3, v6, ShuffleVector, 1, 0);
        if (!v88)
        {
          return InsertElement;
        }
      }

      else
      {
        v26 = a1 + *(*a1 - 24);
        v27 = *(v26 + 271);
        v81 = *(v26 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v82, (v26 + 1712));
        v83 = *(v26 + 452);
        InsertElement = (*(*v27 + 104))(v27, &v81, 7, v6, a3, 0, 0);
        if (!v82)
        {
          return InsertElement;
        }
      }

      goto LABEL_32;
    }

    switch(a2)
    {
      case 0x17:
        v40 = a1 + *(*a1 - 24);
        v41 = *(v40 + 271);
        v78 = *(v40 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v79, (v40 + 1712));
        v80 = *(v40 + 452);
        InsertElement = (*(*v41 + 104))(v41, &v78, 8, v6, a3, 0, 0);
        if (!v79)
        {
          return InsertElement;
        }

        goto LABEL_32;
      case 0x18:
        v47 = llvm::ConstantFP::get();
        v48 = a1 + *(*a1 - 24);
        v103 = 257;
        v49 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((v48 + 1712), a3, v49, v102);
        v51 = a1 + *(*a1 - 24);
        v52 = *(v51 + 234);
        v103 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v51 + 1712), 49, Element, v52, v102);
        v108 = 257;
        FMul = llvm::IRBuilderBase::CreateFMul((v51 + 1712), Cast, v47, &v104);
        v55 = *(a1 + *(*a1 - 24) + 1904);
        v77 = 257;
        return llvm::IRBuilderBase::CreateFPToUI((v51 + 1712), FMul, v55, v76);
      case 0x19:
        v104 = llvm::ConstantInt::get();
        v105 = llvm::ConstantInt::get();
        v106 = llvm::ConstantInt::get();
        v107 = llvm::ConstantInt::get();
        v16 = a1 + *(*a1 - 24);
        v17 = llvm::ConstantVector::get();
        v103 = 257;
        v18 = llvm::IRBuilderBase::CreateShuffleVector((v16 + 1712), a3, a3, v17, v102);
        v19 = a1 + *(*a1 - 24);
        v20 = *(v19 + 271);
        v73 = *(v19 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v74, (v19 + 1712));
        v75 = *(v19 + 452);
        InsertElement = (*(*v20 + 128))(v20, &v73, v18);
        if (v74)
        {
          goto LABEL_32;
        }

        return InsertElement;
    }

LABEL_34:
    if (v9 == 4)
    {
      v62 = a1 + *(*a1 - 24);
      v103 = 257;
      v60 = (v62 + 1712);
      v61 = v102;
      v59 = a3;
    }

    else
    {
      if (v9 != 1)
      {
        InsertElement = llvm::UndefValue::get();
        if (v9)
        {
          v64 = 0;
          v65 = v9;
          do
          {
            v66 = (a1 + *(*a1 - 24));
            v103 = 257;
            v67 = llvm::ConstantInt::get();
            v68 = llvm::IRBuilderBase::CreateExtractElement((v66 + 214), a3, v67, v102);
            v70 = v6;
            if ((*(v6 + 2) & 0xFE) == 0x12)
            {
              v70 = **(v6 + 2);
            }

            v108 = 257;
            IntCast = llvm::IRBuilderBase::CreateIntCast(v66 + 214, v68, v70, 0, &v104, v69);
            v77 = 257;
            v72 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v66 + 214), InsertElement, IntCast, v72, v76);
            ++v64;
          }

          while (v65 != v64);
        }

        return InsertElement;
      }

      v57 = a1 + *(*a1 - 24);
      v103 = 257;
      v58 = llvm::ConstantInt::get();
      v59 = llvm::IRBuilderBase::CreateExtractElement((v57 + 1712), a3, v58, v102);
      if ((*(v6 + 2) & 0xFE) == 0x12)
      {
        v6 = **(v6 + 2);
      }

      v108 = 257;
      v60 = (v57 + 1712);
      v61 = &v104;
    }

    return llvm::IRBuilderBase::CreateIntCast(v60, v59, v6, 0, v61, a6);
  }

  if (a2 <= 17)
  {
    if (a2 == 16)
    {
      v28 = a1 + *(*a1 - 24);
      v29 = *(v28 + 271);
      v84 = *(v28 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v85, (v28 + 1712));
      v86 = *(v28 + 452);
      InsertElement = (*(*v29 + 104))(v29, &v84, 6, v6, a3, 0, 0);
      if (!v85)
      {
        return InsertElement;
      }

      goto LABEL_32;
    }

    if (a2 == 17)
    {
      v104 = llvm::ConstantInt::get();
      v105 = llvm::ConstantInt::get();
      v106 = llvm::ConstantInt::get();
      v21 = a1 + *(*a1 - 24);
      v22 = llvm::ConstantVector::get();
      v103 = 257;
      v23 = llvm::IRBuilderBase::CreateShuffleVector((v21 + 1712), a3, a3, v22, v102);
      v24 = a1 + *(*a1 - 24);
      v25 = *(v24 + 271);
      v99 = *(v24 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v100, (v24 + 1712));
      v101 = *(v24 + 452);
      InsertElement = (*(*v25 + 104))(v25, &v99, 0, v6, v23, 1, 0);
      if (!v100)
      {
        return InsertElement;
      }

      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (a2 == 18)
  {
    v104 = llvm::ConstantInt::get();
    v105 = llvm::ConstantInt::get();
    v106 = llvm::ConstantInt::get();
    v107 = llvm::ConstantInt::get();
    v35 = a1 + *(*a1 - 24);
    v36 = llvm::ConstantVector::get();
    v103 = 257;
    v37 = llvm::IRBuilderBase::CreateShuffleVector((v35 + 1712), a3, a3, v36, v102);
    v38 = a1 + *(*a1 - 24);
    v39 = *(v38 + 271);
    v96 = *(v38 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v97, (v38 + 1712));
    v98 = *(v38 + 452);
    InsertElement = (*(*v39 + 104))(v39, &v96, 1, v6, v37, 1, 0);
    if (!v97)
    {
      return InsertElement;
    }

    goto LABEL_32;
  }

  if (a2 != 19)
  {
    v104 = llvm::ConstantInt::get();
    v105 = llvm::ConstantInt::get();
    v106 = llvm::ConstantInt::get();
    v107 = llvm::ConstantInt::get();
    v10 = a1 + *(*a1 - 24);
    v11 = llvm::ConstantVector::get();
    v103 = 257;
    v12 = llvm::IRBuilderBase::CreateShuffleVector((v10 + 1712), a3, a3, v11, v102);
    v13 = a1 + *(*a1 - 24);
    v14 = *(v13 + 271);
    v90 = *(v13 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v91, (v13 + 1712));
    v92 = *(v13 + 452);
    InsertElement = (*(*v14 + 104))(v14, &v90, 2, v6, v12, 1, 0);
    if (!v91)
    {
      return InsertElement;
    }

    goto LABEL_32;
  }

  v104 = llvm::ConstantInt::get();
  v105 = llvm::ConstantInt::get();
  v106 = llvm::ConstantInt::get();
  v107 = llvm::ConstantInt::get();
  v42 = a1 + *(*a1 - 24);
  v43 = llvm::ConstantVector::get();
  v103 = 257;
  v44 = llvm::IRBuilderBase::CreateShuffleVector((v42 + 1712), a3, a3, v43, v102);
  v45 = a1 + *(*a1 - 24);
  v46 = *(v45 + 271);
  v93 = *(v45 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v94, (v45 + 1712));
  v95 = *(v45 + 452);
  InsertElement = (*(*v46 + 104))(v46, &v93, 1, v6, v44, 1, 0);
  if (v94)
  {
LABEL_32:
    llvm::MetadataTracking::untrack();
  }

  return InsertElement;
}

uint64_t AGCLLVMDriverShader::buildEOTBGOImageSample(AGCLLVMDriverShader *a1, llvm::FixedVectorType **a2, llvm::FixedVectorType **a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, char a9, char a10, int a11, uint64_t a12)
{
  v121 = *MEMORY[0x277D85DE8];
  v97 = a7;
  v96 = a8;
  ImageStateGlobal = AGCLLVMDriverShader::getImageStateGlobal(a1, a7, a3);
  v16 = llvm::User::operator new(0x58);
  v99 = *(a1 + *(*a1 - 24) + 1928);
  llvm::StructType::get();
  v98 = "agc.pbe_rotation";
  v100[0] = a7;
  LOWORD(v101) = 2051;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v17 = a1 + *(*a1 - 24);
  v18 = *(v17 + 268);
  v19 = AGCLLVMBuilder::buildGlobalMetadata(v17 + 213, v16, 2u, a7);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v18, v19);
  ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((a1 + *(*a1 - 24) + 1704), v16, 0);
  v21 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((a1 + *(*a1 - 24) + 1704), v16, 1u);
  v22 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((a1 + *(*a1 - 24) + 1704), v16, 2u);
  v98 = *(a1 + *(*a1 - 24) + 1928);
  v99 = v98;
  v100[0] = v98;
  v23 = llvm::StructType::get();
  v24 = (a1 + *(*a1 - 24));
  v25 = *(*(v23 + 16) + 16);
  LOWORD(v101) = 257;
  llvm::Type::isOpaquePointerTy(*v22);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v24 + 214, v25, v22, 0, &v98);
  v27 = (a1 + *(*a1 - 24));
  v28 = **(v23 + 16);
  LOWORD(v101) = 257;
  llvm::Type::isOpaquePointerTy(*ConstInBoundsGEP2_32);
  v29 = llvm::IRBuilderBase::CreateAlignedLoad(v27 + 214, v28, ConstInBoundsGEP2_32, 0, &v98);
  v31 = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 2, a2, v30);
  v95 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((v27 + 214), v29, v31, v94);
  v93 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((v27 + 214), FMul, AlignedLoad, v92);
  v34 = (a1 + *(*a1 - 24));
  v35 = *(*(v23 + 16) + 8);
  LOWORD(v101) = 257;
  llvm::Type::isOpaquePointerTy(*v21);
  v36 = llvm::IRBuilderBase::CreateAlignedLoad(v34 + 214, v35, v21, 0, &v98);
  v38 = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 2, a3, v37);
  v95 = 257;
  v39 = llvm::IRBuilderBase::CreateFMul((v34 + 214), v36, v38, v94);
  v93 = 257;
  v43 = llvm::IRBuilderBase::CreateFAdd((v34 + 214), v39, FAdd, v92);
  v91[0] = &v96;
  v91[1] = a1;
  v91[2] = &v97;
  if (a11)
  {
    if (a11 != 3)
    {
      goto LABEL_8;
    }

    v44 = AGCLLVMBuilder::extendVector((a1 + *(*a1 - 24) + 1704), v43, 4, v42);
    v47 = AGCLLVMDriverShader::buildEOTBGOImageSample(llvm::Value *,llvm::Value *,llvm::Value *,llvm::GlobalVariable *,llvm::GlobalVariable *,unsigned int,BOOL,BOOL,BOOL,AGCLLVMBuilder::ImageDim,FragmentOutputConfiguration const&)::$_0::operator()(v91, v45, v46);
    v48 = *a1;
    v49 = a1 + *(*a1 - 24);
    v50 = *(v49 + 271);
    v51 = *(v50 + 1728);
    if (v51)
    {
      v52 = strlen(*(v50 + 1728));
      inserted = AGCLLVMBuilder::getOrInsertFunction<>((v49 + 1704), v51, v52, *(v49 + 238));
      v54 = (a1 + *(*a1 - 24));
      LOWORD(v101) = 257;
      v55 = llvm::IRBuilderBase::CreateCall(v54 + 214, *(inserted + 24), inserted, 0, 0, &v98);
      v56 = *(a1 + *(*a1 - 24) + 1872);
      v95 = 257;
      UIToFP = llvm::IRBuilderBase::CreateUIToFP((v54 + 214), v55, v56, v94);
      v93 = 257;
      v47 = llvm::IRBuilderBase::CreateFAdd((v54 + 214), UIToFP, v47, v92);
      v48 = *a1;
    }

    v58 = a1 + *(v48 - 24);
    LOWORD(v101) = 257;
    v59 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v58 + 1712), v44, v47, v59, &v98);
  }

  else
  {
    v61 = a1 + *(*a1 - 24);
    LOWORD(v101) = 257;
    v62 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateExtractElement((v61 + 1712), v43, v62, &v98);
  }

  v43 = InsertElement;
LABEL_8:
  if (a9)
  {
    v63 = a1 + *(*a1 - 24);
    v64 = AGCLLVMDriverShader::buildEOTBGOImageSample(llvm::Value *,llvm::Value *,llvm::Value *,llvm::GlobalVariable *,llvm::GlobalVariable *,unsigned int,BOOL,BOOL,BOOL,AGCLLVMBuilder::ImageDim,FragmentOutputConfiguration const&)::$_0::operator()(v91, v40, v41);
    v65 = *(a1 + *(*a1 - 24) + 1904);
    LOWORD(v101) = 257;
    FPToUI = llvm::IRBuilderBase::CreateFPToUI((v63 + 1712), v64, v65, &v98);
    v67 = a1 + *(*a1 - 24);
    v68 = *(v67 + 271);
    v69 = *(v68 + 1728);
    if (v69)
    {
      v70 = strlen(*(v68 + 1728));
      v71 = AGCLLVMBuilder::getOrInsertFunction<>((v67 + 1704), v69, v70, *(v67 + 238));
      v72 = (a1 + *(*a1 - 24));
      LOWORD(v101) = 257;
      v73 = llvm::IRBuilderBase::CreateCall(v72 + 214, *(v71 + 24), v71, 0, 0, &v98);
      v74 = *(a1 + *(*a1 - 24) + 1904);
      v95 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v72 + 214), 38, v73, v74, v94);
      v76 = a1 + *(*a1 - 24);
      LOWORD(v101) = 257;
      FPToUI = llvm::IRBuilderBase::CreateAdd((v76 + 1712), FPToUI, Cast, &v98);
    }
  }

  else
  {
    FPToUI = 0;
  }

  LODWORD(v98) = 0;
  HIDWORD(v98) = a11;
  v100[0] = 0;
  *(v100 + 7) = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  v116 = 0u;
  v117 = 0u;
  memset(v118, 0, 21);
  v118[21] = 1;
  v119 = 0;
  v120 = 0;
  if (*(a12 + 40) == 1)
  {
    v77 = *a12 == *(a1 + *(*a1 - 24) + 2000);
  }

  else
  {
    v77 = 3;
  }

  LODWORD(v99) = v77;
  *&v108 = v43;
  v109 = FPToUI;
  AGCLLVMDriverShader::setSampleArgs(a1, &v98, v97, ImageStateGlobal, a5, a6);
  if (!a11 || a10)
  {
    v78 = 0;
    v110 = 3;
  }

  else
  {
    v110 = 0;
    v78 = llvm::ConstantFP::get();
  }

  v79 = a4;
  v111 = v78;
  if (!a4 && a10)
  {
    v79 = llvm::ConstantInt::get();
  }

  v115 = v79;
  BYTE6(v100[0]) = 1;
  v80 = a1 + *(*a1 - 24);
  v81 = *(v80 + 271);
  v88 = *(v80 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v80 + 1712));
  v90 = *(v80 + 452);
  v82 = (*(*v81 + 288))(v81, &v88, &v98);
  if (v89)
  {
    llvm::MetadataTracking::untrack();
  }

  return v82;
}

llvm::GlobalVariable *AGCLLVMDriverShader::getImageStateGlobal(AGCLLVMDriverShader *this, unsigned int a2, unsigned int a3)
{
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    return 0;
  }

  v3 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v6 = this + *(*this - 24);
  v7 = *(v6 + 268);
  v8 = AGCLLVMBuilder::buildGlobalMetadata(v6 + 213, v3, 0, a2 & 0xFFFFF);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v7, v8);
  return v3;
}

uint64_t AGCLLVMDriverShader::buildEOTBGOImageSample(llvm::Value *,llvm::Value *,llvm::Value *,llvm::GlobalVariable *,llvm::GlobalVariable *,unsigned int,BOOL,BOOL,BOOL,AGCLLVMBuilder::ImageDim,FragmentOutputConfiguration const&)::$_0::operator()(uint64_t a1, llvm::Type *a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (**a1)
  {
    v5 = llvm::User::operator new(0x58);
    v6 = **(a1 + 16);
    v14[0] = "agc.slice_index";
    v14[2] = v6;
    v15 = 2051;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v7 = v3 + *(*v3 - 24);
    v8 = **(a1 + 16);
    v9 = *(v7 + 268);
    v10 = AGCLLVMBuilder::buildGlobalMetadata(v7 + 213, v5, 1u, v8);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v9, v10);
    v11 = v3 + *(*v3 - 24);
    v12 = *(v11 + 234);
    v15 = 257;
    llvm::Type::isOpaquePointerTy(*v5);
    return llvm::IRBuilderBase::CreateAlignedLoad(v11 + 214, v12, v5, 0, v14);
  }

  else
  {

    return llvm::ConstantFP::get();
  }
}

void *AGCLLVMDriverShader::setSampleArgs(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*(*(a1 + *(*a1 - 24) + 2168) + 1900))
  {
    a1[6] |= 1 << a3;
    v11 = llvm::ConstantInt::get();
  }

  else
  {
    v11 = 0;
  }

  return AGCLLVMDriverShader::setSampleArgsStateless(a1, a2, v11, a4, a5, a6);
}

void *AGCLLVMDriverShader::setSampleArgsStateless(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*(*(result + *(*result - 24) + 2168) + 1900))
  {
    v9 = result;
    v10 = llvm::ConstantInt::get();
    v11 = v9 + *(*v9 - 24);
    v12 = llvm::PointerType::get();
    v18 = 257;
    a2[5] = llvm::IRBuilderBase::CreateCast((v11 + 1712), 48, v10, v12, v17);
    v9[8] |= 1uLL;
    v13 = v9 + *(*v9 - 24);
    v14 = llvm::PointerType::get();
    v18 = 257;
    a2[4] = llvm::IRBuilderBase::CreateCast((v13 + 1712), 48, a3, v14, v17);
    v15 = v9 + *(*v9 - 24);
    v16 = llvm::PointerType::get();
    v18 = 257;
    result = llvm::IRBuilderBase::CreateCast((v15 + 1712), 49, a6, v16, v17);
    a4 = result;
  }

  else
  {
    a2[11] = a5;
  }

  a2[6] = a4;
  return result;
}

uint64_t AGCLLVMDriverShader::getFormatInfo(uint64_t result, void *a2, int a3)
{
  switch(a3)
  {
    case 1:
      v4 = *(a2 + *(*a2 - 24) + 1888);
      goto LABEL_24;
    case 2:
      v4 = *(a2 + *(*a2 - 24) + 1896);
      goto LABEL_24;
    case 3:
    case 24:
      v4 = *(a2 + *(*a2 - 24) + 1904);
      goto LABEL_27;
    case 4:
      v4 = *(a2 + *(*a2 - 24) + 1856);
      goto LABEL_22;
    case 5:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 1872);
      goto LABEL_28;
    case 6:
      v4 = *(a2 + *(*a2 - 24) + 1936);
      goto LABEL_24;
    case 7:
      v4 = *(a2 + *(*a2 - 24) + 1944);
      goto LABEL_24;
    case 8:
      v4 = *(a2 + *(*a2 - 24) + 1952);
      goto LABEL_27;
    case 9:
      v4 = *(a2 + *(*a2 - 24) + 1920);
      goto LABEL_22;
    case 10:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 1928);
      goto LABEL_28;
    case 11:
      v4 = *(a2 + *(*a2 - 24) + 2024);
      goto LABEL_24;
    case 12:
      v4 = *(a2 + *(*a2 - 24) + 2032);
LABEL_24:
      v8 = 8;
      goto LABEL_28;
    case 13:
      v4 = *(a2 + *(*a2 - 24) + 2000);
LABEL_22:
      v8 = 1;
      goto LABEL_28;
    case 14:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 2016);
      goto LABEL_28;
    case 15:
      v4 = *(a2 + *(*a2 - 24) + 2040);
LABEL_27:
      v8 = 7;
LABEL_28:
      v7 = v4;
      break;
    case 16:
      v6 = a2 + *(*a2 - 24);
      v4 = *(v6 + 238);
      v7 = *(v6 + 254);
      v8 = 8;
      break;
    case 17:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[237];
      goto LABEL_18;
    case 18:
    case 19:
    case 20:
    case 21:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[237];
      goto LABEL_9;
    case 22:
    case 23:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[238];
LABEL_18:
      v7 = v5[246];
      goto LABEL_19;
    case 25:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[254];
LABEL_9:
      v7 = v3[250];
LABEL_19:
      v8 = 1;
      break;
    default:
      v4 = 0;
      v7 = 0;
      v8 = 10;
      break;
  }

  *result = v7;
  *(result + 8) = v4;
  *(result + 16) = v8;
  return result;
}

llvm::Value *AGCLLVMDriverShader::buildUnpack(void *a1, llvm::Type *a2, llvm::Value *a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  if (a2 <= 20)
  {
    if (a2 > 17)
    {
      if (a2 == 18)
      {
        v21 = a1 + *(*a1 - 24);
        v22 = *(v21 + 271);
        v67 = *(v21 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v21 + 1712));
        v69 = *(v21 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        v9 = (*(*v22 + 112))(v22, &v67, 1, a4, a3, 1, 0);
        if (!v68)
        {
          goto LABEL_39;
        }

LABEL_38:
        llvm::MetadataTracking::untrack();
LABEL_39:
        v75 = llvm::ConstantInt::get();
        v76 = llvm::ConstantInt::get();
        v77 = llvm::ConstantInt::get();
LABEL_49:
        v78 = llvm::ConstantInt::get();
        v14 = a1 + *(*a1 - 24);
LABEL_50:
        v27 = llvm::ConstantVector::get();
        v71 = 257;
        return llvm::IRBuilderBase::CreateShuffleVector((v14 + 1712), v9, v9, v27, v70);
      }

      if (a2 != 19)
      {
        v7 = a1 + *(*a1 - 24);
        v8 = *(v7 + 271);
        v61 = *(v7 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v7 + 1712));
        v63 = *(v7 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        v9 = (*(*v8 + 112))(v8, &v61, 2, a4, a3, 1, 0);
        if (!v62)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v25 = a1 + *(*a1 - 24);
      v26 = *(v25 + 271);
      v64 = *(v25 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (v25 + 1712));
      v66 = *(v25 + 452);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v26 + 112))(v26, &v64, 1, a4, a3, 1, 0);
      if (v65)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if (a2 != 16)
    {
      if (a2 == 17)
      {
        v12 = a1 + *(*a1 - 24);
        v13 = *(v12 + 271);
        v72 = *(v12 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v73, (v12 + 1712));
        v74 = *(v12 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        v9 = (*(*v13 + 112))(v13, &v72, 0, a4, a3, 1, 0);
        if (v73)
        {
          llvm::MetadataTracking::untrack();
        }

        v75 = llvm::ConstantInt::get();
        v76 = llvm::ConstantInt::get();
        v77 = llvm::ConstantInt::get();
        v14 = a1 + *(*a1 - 24);
        goto LABEL_50;
      }

      return a3;
    }

    v17 = a1 + *(*a1 - 24);
    v18 = *(v17 + 271);
    v55 = *(v17 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (v17 + 1712));
    v57 = *(v17 + 452);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    a3 = (*(*v18 + 112))(v18, &v55, 6, a4, a3, 0, 0);
    if (!v56)
    {
      return a3;
    }

LABEL_43:
    llvm::MetadataTracking::untrack();
    return a3;
  }

  if (a2 <= 22)
  {
    if (a2 == 21)
    {
      v19 = a1 + *(*a1 - 24);
      v20 = *(v19 + 271);
      v58 = *(v19 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (v19 + 1712));
      v60 = *(v19 + 452);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v20 + 112))(v20, &v58, 3, a4, a3, 1, 0);
      if (!v59)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v15 = a1 + *(*a1 - 24);
    v16 = *(v15 + 271);
    v52 = *(v15 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (v15 + 1712));
    v54 = *(v15 + 452);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    a3 = (*(*v16 + 112))(v16, &v52, 7, a4, a3, 0, 0);
    if (v53)
    {
      goto LABEL_43;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x17:
        v23 = a1 + *(*a1 - 24);
        v24 = *(v23 + 271);
        v49 = *(v23 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v50, (v23 + 1712));
        v51 = *(v23 + 452);
        if ((*(a4 + 8) & 0xFE) == 0x12)
        {
          a4 = **(a4 + 16);
        }

        a3 = (*(*v24 + 112))(v24, &v49, 8, a4, a3, 0, 0);
        if (!v50)
        {
          return a3;
        }

        goto LABEL_43;
      case 0x18:
        v30 = llvm::ConstantFP::get();
        v31 = llvm::ConstantInt::get();
        v32 = llvm::ConstantInt::get();
        v33 = a1 + *(*a1 - 24);
        v34 = llvm::ConstantInt::get();
        v71 = 257;
        v35 = llvm::IRBuilderBase::CreateAnd((v33 + 1712), a3, v34, v70);
        v36 = a1 + *(*a1 - 24);
        v71 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v36 + 1712), v35, v31, v70);
        v38 = *(a1 + *(*a1 - 24) + 1872);
        v79 = 257;
        llvm::IRBuilderBase::CreateCast((v36 + 1712), 49, Add, v38, &v75);
        v39 = a1 + *(*a1 - 24);
        v40 = *(v39 + 234);
        v71 = 257;
        UIToFP = llvm::IRBuilderBase::CreateUIToFP((v39 + 1712), v35, v40, v70);
        v79 = 257;
        llvm::IRBuilderBase::CreateFDiv((v39 + 1712), UIToFP, v30, &v75);
        v42 = (a1 + *(*a1 - 24));
        v71 = 257;
        llvm::IRBuilderBase::CreateICmp(v42 + 214, 34, v35, v32, v70);
        v71 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        v44 = a1 + *(*a1 - 24);
        v45 = *(v44 + 238);
        v71 = 257;
        return llvm::IRBuilderBase::CreateCast((v44 + 1712), 49, Select, v45, v70);
      case 0x19:
        v10 = a1 + *(*a1 - 24);
        v11 = *(v10 + 271);
        v46 = *(v10 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v10 + 1712));
        v48 = *(v10 + 452);
        v9 = (*(*v11 + 120))(v11, &v46, a3);
        if (v47)
        {
LABEL_47:
          llvm::MetadataTracking::untrack();
        }

LABEL_48:
        v75 = llvm::ConstantInt::get();
        v76 = llvm::ConstantInt::get();
        v77 = llvm::ConstantInt::get();
        goto LABEL_49;
    }
  }

  return a3;
}

uint64_t AGCLLVMDriverShader::linkDriverRuntime(AGCLLVMDriverShader *a1, int a2, llvm::Function *a3)
{
  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(*(a1 + *(*a1 - 24) + 1688), a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 2136), a2);
  if (!MetalRuntime)
  {
    std::string::append((a1 + *(*a1 - 24) + 1656), "unable to load helper runtime files");
  }

  if ((AGCLLVMObject::linkCommon((a1 + *(*a1 - 24)), MetalRuntime, *(*(a1 + *(*a1 - 24) + 2168) + 1865), a3) & 1) == 0)
  {
    std::string::append((a1 + *(*a1 - 24) + 1656), "unable to link helper runtime");
  }

  return AGCLLVMDriverShader::finalizeDriverRuntimeLinking(a1, a3, 1);
}

uint64_t AGCLLVMDriverShader::finalizeDriverRuntimeLinking(AGCLLVMDriverShader *this, llvm::Function *a2, int a3)
{
  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(*(this + *(*this - 24) + 1688), this + *(*this - 24), *(this + *(*this - 24) + 2136), 0);
  if (!MetalRuntime)
  {
    std::string::append((this + *(*this - 24) + 1656), "unable to load math metal runtime files");
  }

  if ((AGCLLVMObject::linkCommon((this + *(*this - 24)), MetalRuntime, *(*(this + *(*this - 24) + 2168) + 1865), a2) & 1) == 0)
  {
    std::string::append((this + *(*this - 24) + 1656), "unable to link metal runtime");
  }

  if (a3)
  {
    v7 = *this;
    v8 = *(this + *(*this - 24) + 2136);
    v9 = *(v8 + 32);
    v10 = v8 + 24;
    if (v9 != v8 + 24)
    {
      do
      {
        v11 = *(v9 + 8);
        if (v9)
        {
          v12 = (v9 - 56);
        }

        else
        {
          v12 = 0;
        }

        isDeclaration = llvm::GlobalValue::isDeclaration(v12);
        if (v12 != a2 && (isDeclaration & 1) == 0)
        {
          llvm::Function::addFnAttr();
          *(v9 - 24) = *(v9 - 24) & 0xFFFFBFC0 | 0x4007;
        }

        v9 = v11;
      }

      while (v11 != v10);
      v7 = *this;
    }

    AGCLLVMCtx::runInliner(*(this + *(v7 - 24) + 1688), this + *(v7 - 24), *(this + *(v7 - 24) + 2136));
  }

  v14 = (*(**(this + *(*this - 24) + 2168) + 784))(*(this + *(*this - 24) + 2168), 0, *(this + *(*this - 24) + 2136));
  result = AGCLLVMAirBuiltins::replaceBuiltins(v14);
  if ((result & 1) == 0)
  {
    result = std::string::append((this + *(*this - 24) + 1656), "failed to replace builtins");
  }

  if (v14)
  {
    v16 = *(*v14 + 16);

    return v16(v14);
  }

  return result;
}

void AGCLLVMDriverShader::mutateAllConstantArgsToSharedRegister(uint64_t this, llvm::Function *a2, unsigned int a3)
{
  if (*(this + 96))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(this + 18))
      {
        llvm::Function::BuildLazyArguments(this);
      }

      v6 = *(this + 88);
      v7 = *(v6 + v4);
      if (v7)
      {
        v8 = *(v7 + 8) == 15;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        AGCLLVMObject::mutatePtrValueAddressSpace((v6 + v4), a2, a3);
      }

      ++v5;
      v4 += 40;
    }

    while (*(this + 96) > v5);
  }
}

uint64_t llvm::IRBuilderBase::CreateURem(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = llvm::IRBuilderBase::foldConstant(this, 22, a2, a3, a4);
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

llvm::ValueAsMetadata *AGCLLVMDriverShader::getTextureHeapGlobal(AGCLLVMDriverShader *this, unsigned int a2)
{
  if (!*(*(this + *(*this - 24) + 2168) + 1900))
  {
    return 0;
  }

  {
    v12 = *(*(this + *(*this - 24) + 2168) + 920);
    AGCLLVMDriverShader::getTextureHeapGlobal(BOOL)::buffer_indices[0] = (*(*v12 + 264))(v12);
    dword_27C8D8194 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 536))();
    dword_27C8D8198 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 256))();
    dword_27C8D819C = (*(**(*(this + *(*this - 24) + 2168) + 920) + 528))();
  }

  v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 22;
  v5 = this + 16 * a2 + 8 * v4;
  v8 = *(v5 + 2);
  v7 = v5 + 16;
  result = v8;
  if (!v8)
  {
    v9 = AGCLLVMDriverShader::getTextureHeapGlobal(BOOL)::buffer_indices[2 * a2 + v4];
    v10 = llvm::PointerType::get();
    v11 = *(*this - 24);
    v13[0] = "agc.texture_heap.";
    v13[2] = v9;
    v14 = 2051;
    result = AGCLLVMObject::createGlobalBufferBinding(this + v11, v10, v13, v9, 0, 5u);
    *v7 = result;
  }

  return result;
}

llvm::GlobalVariable *AGCLLVMDriverShader::getSamplerStateGlobal(AGCLLVMDriverShader *this, uint64_t a2, unsigned int a3)
{
  v4 = this + *(*this - 24);
  if (*(*(v4 + 271) + 1900))
  {
    v5 = *(v4 + 267);
    v13 = "agx.samplerHeapBufferIndex";
    v14 = 259;
    if (!llvm::Module::getNamedMetadata(v5, &v13))
    {
      AGCLLVMDriverShader::createGlobalSamplerHeap(this);
      llvm::Module::getOrInsertNamedMetadata();
      v6 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v7 = **(*(this + *(*this - 24) + 2168) + 920);
      if (v6 == 22)
      {
        (*(v7 + 560))();
      }

      else
      {
        (*(v7 + 288))();
      }

      llvm::ConstantInt::get();
      v13 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }

    return 0;
  }

  else
  {
    v8 = llvm::User::operator new(0x58);
    v13 = "agc.sampler_words";
    v14 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v9 = this + *(*this - 24);
    v10 = *(v9 + 268);
    v11 = AGCLLVMBuilder::buildGlobalMetadata(v9 + 213, v8, 1u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
  }

  return v8;
}

char *AGCLLVMDriverShader::createGlobalSamplerHeap(char *this)
{
  if (*(*&this[*(*this - 24) + 2168] + 1900))
  {
    v1 = this;
    {
      {
        v7 = *(*&v1[*(*v1 - 24) + 2168] + 920);
        AGCLLVMDriverShader::createGlobalSamplerHeap(void)::bind_indices[0] = (*(*v7 + 560))(v7);
        dword_27C8D818C = (*(**(*&v1[*(*v1 - 24) + 2168] + 920) + 288))();
      }
    }

    v2 = AGCLLVMDriverShader::createGlobalSamplerHeap(void)::bind_indices[(*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) != 22];
    v3 = llvm::PointerType::get();
    v4 = *(*v1 - 24);
    v8[0] = "agc.sampler_heap.";
    v8[2] = v2;
    v9 = 2051;
    GlobalBufferBinding = AGCLLVMObject::createGlobalBufferBinding(&v1[v4], v3, v8, v2, 0, 5u);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v6);
    return llvm::GlobalVariable::setInitializer();
  }

  return this;
}

uint64_t AGCLLVMDriverShader::isValidUberFunctionCombination(void *a1, uint64_t a2, int a3)
{
  v6 = *(a1 + *(*a1 - 24) + 2168);
  if (!(*(*v6 + 552))(v6))
  {
    return 0;
  }

  if (a3)
  {
    v7 = *(a1 + *(*a1 - 24) + 2168);
    if (!(*(*v7 + 592))(v7, a2))
    {
      return 0;
    }
  }

  v8 = *(**(a1 + *(*a1 - 24) + 2168) + 560);

  return v8();
}

void AGCLLVMDriverShader::handleUberInvalidCombinationFunction(AGCLLVMDriverShader *this, llvm::Function *a2)
{
  v8[32] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0x2000000000;
  if (this)
  {
    v2 = this;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v6, *(v2 + 3));
      v2 = *(v2 + 1);
    }

    while (v2);
    v3 = v6;
    if (v7)
    {
      v4 = 8 * v7;
      do
      {
        v5 = *v3++;
        llvm::Instruction::eraseFromParent(v5);
        v4 -= 8;
      }

      while (v4);
      v3 = v6;
    }

    if (v3 != v8)
    {
      free(v3);
    }
  }
}

void AGCLLVMBackgroundObjectFragmentShader::buildStateless(AGCLLVMBackgroundObjectFragmentShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = (*(*(this + 102) + 32) & 0xC00) == 0;
  v78 = *(*(this + 102) + 32) & 0xC00;
  if (v78)
  {
    v6 = "_msaa";
  }

  else
  {
    v6 = &unk_20E75F419;
  }

  *(this + 8) = 1;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  memset(v88, 0, 24);
  std::string::reserve(v88, v7 | 8);
  std::string::append(v88, "bgo_uber", 8uLL);
  std::string::append(v88, v6, v7);
  if (v88[23] >= 0)
  {
    v8 = v88;
  }

  else
  {
    v8 = *v88;
  }

  if (v88[23] >= 0)
  {
    v9 = v88[23];
  }

  else
  {
    v9 = *&v88[8];
  }

  Bitcode = AGCLLVMObject::readBitcode(a2, v8, v9, 0);
  v11 = *(*(this + *(*this - 24) + 1688) + 32);
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = strlen(*(v11 + 8));
  }

  else
  {
    v13 = 0;
  }

  llvm::Module::setTargetTriple(Bitcode, v12, v13);
  v14 = *(*(this + *(*this - 24) + 1688) + 32);
  if (*(v14 + 16))
  {
    strlen(*(v14 + 16));
  }

  llvm::Module::setDataLayout();
  v87 = Bitcode;
  v98 = 0;
  llvm::Linker::linkModules();
  std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v97);
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v87);
  if ((v88[23] & 0x80000000) != 0)
  {
    operator delete(*v88);
  }

  *(*(this + *(*this - 24) + 2168) + 432) = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  llvm::Module::getFunction();
  llvm::Module::getFunction();
  v16 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(*(this + *(*this - 24) + 2016), 8);
  *v88 = "agc.clear_colors";
  v89 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v17 = this + *(*this - 24);
  v18 = *(v17 + 268);
  v80 = v16;
  v19 = AGCLLVMBuilder::buildGlobalMetadata(v17 + 213, v16, 0x79u, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v18, v19);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
  }

  llvm::Type::isOpaquePointerTy(*(*(Function + 88) + 120));
  v20 = llvm::User::operator new(0x58);
  *v88 = *(this + *(*this - 24) + 1928);
  *&v88[8] = *v88;
  *&v88[16] = *v88;
  v21 = llvm::StructType::get();
  llvm::ArrayType::get(v21, 8);
  *v88 = "agc.pbe_rotations";
  v89 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v22 = this + *(*this - 24);
  v23 = *(v22 + 268);
  v79 = v20;
  v24 = AGCLLVMBuilder::buildGlobalMetadata(v22 + 213, v20, 0x7Bu, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, v24);
  v25 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(*(this + *(*this - 24) + 1872), 8);
  *v88 = "agc.slice_indices";
  v89 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v26 = this + *(*this - 24);
  v27 = *(v26 + 268);
  v28 = AGCLLVMBuilder::buildGlobalMetadata(v26 + 213, v25, 0x7Au, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v27, v28);
  v29 = llvm::User::operator new(0x58);
  *v88 = "agc.draw_buffer_state";
  v89 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v30 = this + *(*this - 24);
  v31 = *(v30 + 268);
  v32 = AGCLLVMBuilder::buildGlobalMetadata(v30 + 213, v29, 0x7Cu, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, v32);
  v33 = llvm::User::operator new(0x58);
  *v88 = "agc.bgo_state";
  v89 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v34 = this + *(*this - 24);
  v35 = *(v34 + 268);
  v36 = AGCLLVMBuilder::buildGlobalMetadata(v34 + 213, v33, 0x7Du, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v35, v36);
  AGCLLVMDriverShader::getSamplerStateGlobal(this, v37, v38);
  AGCLLVMDriverShader::getTextureHeapGlobal(this, 1u);
  v39 = *this;
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    *(this + 6) |= 0xFFuLL;
  }

  else
  {
    llvm::User::operator new(0x58);
    llvm::ArrayType::get(*(*(this + *(*this - 24) + 2168) + 1784), 8);
    *v88 = "agc.read_image_words_indirect";
    v89 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    *v88 = &v88[16];
    *&v88[8] = 0x2000000000;
    v40 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v88, v40);
    llvm::ConstantInt::get();
    v41 = llvm::ValueAsMetadata::get();
    for (i = 0; i != 8; ++i)
    {
      Cast = v41;
      v93 = 0;
      llvm::ConstantInt::get();
      v93 = llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v88, Impl);
    }

    v44 = *(this + *(*this - 24) + 2144);
    v45 = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v44, v45);
    if (*v88 != &v88[16])
    {
      free(*v88);
    }

    v39 = *this;
  }

  v46 = this + *(v39 - 24);
  v47 = *(Function + 80);
  if (v47)
  {
    v48 = (v47 - 24);
  }

  else
  {
    v48 = 0;
  }

  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v48);
  llvm::IRBuilderBase::SetInsertPoint((v46 + 1712), FirstNonPHI);
  v52 = *this;
  if (*(*(this + *(*this - 24) + 2168) + 972) != 2)
  {
    AGCLLVMDriverShader::mutateAllConstantArgsToSharedRegister(Function, v50, v51);
    v52 = *this;
  }

  v95 = 0;
  v96 = 0;
  v53 = this + *(v52 - 24);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v52 = *this;
  }

  v54 = llvm::PointerType::getWithSamePointeeType(**(Function + 88), *(*(this + *(v52 - 24) + 2168) + 972), v51);
  v89 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v53 + 1712), 49, v29, v54, v88);
  v56 = *this;
  v57 = this + *(*this - 24);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v56 = *this;
  }

  v58 = llvm::PointerType::getWithSamePointeeType(*(*(Function + 88) + 40), *(*(this + *(v56 - 24) + 2168) + 972), v55);
  v86 = 257;
  v93 = llvm::IRBuilderBase::CreateCast((v57 + 1712), 49, v33, v58, &v85);
  v59 = this + *(*this - 24);
  v60 = llvm::PointerType::get();
  v84 = 257;
  v94 = llvm::IRBuilderBase::CreateCast((v59 + 1712), 49, v80, v60, v83);
  v62 = *this;
  v63 = this + *(*this - 24);
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v62 = *this;
  }

  v64 = llvm::PointerType::getWithSamePointeeType(*(*(Function + 88) + 120), *(*(this + *(v62 - 24) + 2168) + 972), v61);
  v82 = 257;
  v95 = llvm::IRBuilderBase::CreateCast((v63 + 1712), 49, v79, v64, &v81);
  v65 = this + *(*this - 24);
  v66 = llvm::PointerType::get();
  v91 = 257;
  v96 = llvm::IRBuilderBase::CreateCast((v65 + 1712), 49, v25, v66, &v90);
  v67 = llvm::Function::args(Function);
  if (v67 != v68)
  {
    v69 = v67;
    v70 = v68;
    v71 = 0;
    do
    {
      v72 = v71 + 1;
      llvm::Value::replaceAllUsesWith();
      v69 += 40;
      v71 = v72;
    }

    while (v69 != v70);
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "agc.background", 14, *(this + *(*this - 24) + 1848));
  v74 = inserted;
  v75 = *(inserted + 18) & 0xC00F;
  if (v78)
  {
    *(inserted + 18) = v75 | 0x680;
    if ((*(*(this + *(*this - 24) + 2168) + 1842) & 1) == 0)
    {
      llvm::Module::getOrInsertNamedMetadata();
      llvm::ConstantInt::get();
      *v88 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }

    if ((*(*(this + 102) + 35) & 0xF) != 0)
    {
      llvm::Module::getOrInsertNamedMetadata();
      llvm::ConstantInt::get();
      *v88 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }
  }

  else
  {
    *(inserted + 18) = v75 | 0x650;
  }

  if (*(Function + 72) != Function + 72)
  {
    llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(v74 + 72, (v74 + 72), Function + 72, *(Function + 80), (Function + 72));
  }

  llvm::Function::eraseFromParent(Function);
  v76 = llvm::PointerType::get();
  v77 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 24) + 1704, "agc.bgo_get_texture", 19, v76, *(this + *(*this - 24) + 1896));
  *(v77 + 32) = *(v77 + 32) & 0xFFFFBFC0 | 0x4007;
  *v88 = "entry";
  v89 = 259;
  operator new();
}

void std::vector<llvm::Function *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(a2);
  }
}

void AGCLLVMEndOfTileProgram::buildStateless(AGCLLVMEndOfTileProgram *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v160 = *MEMORY[0x277D85DE8];
  v5 = *(this + *(*this - 24) + 2168);
  v6 = (*(*v5 + 688))(v5, a2, a3);
  v7 = **(this + 9);
  v131 = v6;
  if (v6)
  {
    v8 = "3";
  }

  else
  {
    v8 = "2";
  }

  v102 = **(this + 9) == 0;
  v132 = **(this + 9);
  *(this + 8) = 1;
  v9 = v7 != 0;
  if (v102)
  {
    v10 = &unk_20E75F419;
  }

  else
  {
    v10 = "_offChip";
  }

  v11 = 8 * v9;
  memset(&v154, 0, sizeof(v154));
  std::string::reserve(&v154, v11 + 13);
  std::string::append(&v154, "eot", 3uLL);
  std::string::append(&v154, v10, v11);
  std::string::append(&v154, "_uber_gen", 9uLL);
  std::string::append(&v154, v8, 1uLL);
  if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v154;
  }

  else
  {
    v12 = v154.__r_.__value_.__r.__words[0];
  }

  if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v154.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v154.__r_.__value_.__l.__size_;
  }

  Bitcode = AGCLLVMObject::readBitcode(a2, v12, size, 0);
  v15 = *(*(this + *(*this - 24) + 1688) + 32);
  v16 = *(v15 + 8);
  if (v16)
  {
    v17 = strlen(*(v15 + 8));
  }

  else
  {
    v17 = 0;
  }

  llvm::Module::setTargetTriple(Bitcode, v16, v17);
  v18 = *(*(this + *(*this - 24) + 1688) + 32);
  if (*(v18 + 16))
  {
    strlen(*(v18 + 16));
  }

  llvm::Module::setDataLayout();
  v146[0] = Bitcode;
  v159 = 0;
  llvm::Linker::linkModules();
  std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v158);
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v146);
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  *(*(this + *(*this - 24) + 2168) + 432) = *(this + *(*this - 24) + 2136);
  llvm::Module::getFunction();
  Function = llvm::Module::getFunction();
  if (*(*(this + *(*this - 24) + 2168) + 1850))
  {
    v20 = 17;
  }

  else
  {
    v20 = 16;
  }

  v21 = llvm::User::operator new(0x58);
  v154.__r_.__value_.__r.__words[0] = "agc.eot_key";
  v22 = 259;
  v155 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v23 = this + *(*this - 24);
  v24 = *(v23 + 268);
  v25 = AGCLLVMBuilder::buildGlobalMetadata(v23 + 213, v21, 0x81u, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, v25);
  v26 = llvm::User::operator new(0x58);
  llvm::Type::getInt32Ty(*(this + *(*this - 24) + 2160), v27);
  v154.__r_.__value_.__r.__words[0] = "agc.emit_enabled";
  v155 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v28 = this + *(*this - 24);
  v29 = *(v28 + 268);
  v30 = AGCLLVMBuilder::buildGlobalMetadata(v28 + 213, v26, 0x3Fu, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v29, v30);
  v31 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(*(this + *(*this - 24) + 1904), 0x11);
  v154.__r_.__value_.__r.__words[0] = "agc.emit_info_array";
  v155 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v32 = this + *(*this - 24);
  v33 = *(v32 + 268);
  v34 = AGCLLVMBuilder::buildGlobalMetadata(v32 + 213, v31, 0x7Eu, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v34);
  v35 = llvm::User::operator new(0x58);
  v36 = llvm::PointerType::get();
  llvm::ArrayType::get(v36, v20);
  v154.__r_.__value_.__r.__words[0] = "agc.sstt_address_array";
  v155 = 259;
  llvm::GlobalVariable::GlobalVariable();
  *(v35 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v37 = this + *(*this - 24);
  v38 = *(v37 + 268);
  v39 = AGCLLVMBuilder::buildGlobalMetadata(v37 + 213, v35, 0x80u, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v38, v39);
  v40 = llvm::User::operator new(0x58);
  v41 = llvm::PointerType::get();
  llvm::ArrayType::get(v41, v20);
  v154.__r_.__value_.__r.__words[0] = "agc.queue_address_array";
  v155 = 259;
  llvm::GlobalVariable::GlobalVariable();
  *(v40 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v42 = this + *(*this - 24);
  v43 = *(v42 + 268);
  v44 = AGCLLVMBuilder::buildGlobalMetadata(v42 + 213, v40, 0x7Fu, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v43, v44);
  v45 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(*(this + *(*this - 24) + 1904), v20);
  v154.__r_.__value_.__r.__words[0] = "agc.slice_level_array";
  v155 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v46 = this + *(*this - 24);
  v47 = *(v46 + 268);
  v48 = AGCLLVMBuilder::buildGlobalMetadata(v46 + 213, v45, 0x7Au, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, v48);
  v49 = (this + *(*this - 24));
  if (*(v49[271] + 1955) == 1)
  {
    v50 = llvm::User::operator new(0x58);
    llvm::ArrayType::get(*(this + *(*this - 24) + 1904), 0x11);
    v154.__r_.__value_.__r.__words[0] = "agc.slab_index_array";
    v155 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v51 = this + *(*this - 24);
    v52 = *(v51 + 268);
    v53 = AGCLLVMBuilder::buildGlobalMetadata(v51 + 213, v50, 0x8Eu, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v52, v53);
  }

  else
  {
    llvm::ArrayType::get(v49[238], 0x11);
    llvm::ConstantAggregateZero::get();
    v50 = llvm::User::operator new(0x58);
    llvm::ArrayType::get(*(this + *(*this - 24) + 1904), 0x11);
    v154.__r_.__value_.__r.__words[0] = "agc.slab_index_dummy_zero_array";
    v155 = 259;
    llvm::GlobalVariable::GlobalVariable();
  }

  v157 = 0;
  memset(v156, 0, sizeof(v156));
  v139 = v50;
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    *(this + 7) |= ~(-1 << v20);
  }

  else
  {
    v54 = llvm::VectorType::get();
    v137 = v31;
    v138 = v26;
    if (*(*(this + *(*this - 24) + 2168) + 1852))
    {
      llvm::User::operator new(0x58);
      llvm::ArrayType::get(v54, v20);
      v154.__r_.__value_.__r.__words[0] = "agc.pbe_words_indirect";
      v155 = 259;
      llvm::GlobalVariable::GlobalVariable();
      v55 = *(this + *(*this - 24) + 2168);
      if (*(v55 + 1824))
      {
        strlen(*(v55 + 1824));
      }

      llvm::GlobalObject::setSection();
      llvm::GlobalObject::setAlignment();
      v154.__r_.__value_.__r.__words[0] = &v154.__r_.__value_.__r.__words[2];
      v154.__r_.__value_.__l.__size_ = 0x2000000000;
      v66 = llvm::ValueAsMetadata::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v154, v66);
      llvm::ConstantInt::get();
      v67 = llvm::ValueAsMetadata::get();
      for (i = 0; i != v20; ++i)
      {
        v152 = 0;
        FnAttrs = v67;
        llvm::ConstantInt::get();
        v152 = llvm::ValueAsMetadata::get();
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v154, Impl);
      }

      v70 = *(this + *(*this - 24) + 2144);
      v71 = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v70, v71);
      if (v154.__r_.__value_.__l.__data_ != &v154.__r_.__value_.__r.__words[2])
      {
        free(v154.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v136 = v21;
      v56 = 0;
      v57 = this + 2168;
      do
      {
        v58 = llvm::User::operator new(0x58);
        v154.__r_.__value_.__r.__words[0] = "agc.pbe_words";
        v154.__r_.__value_.__r.__words[2] = v56;
        v155 = 2307;
        *(v156 + v56) = llvm::GlobalVariable::GlobalVariable();
        v59 = *&v57[*(*this - 24)];
        if (*(v59 + 1824))
        {
          strlen(*(v59 + 1824));
        }

        llvm::GlobalObject::setSection();
        v60 = *(*&v57[*(*this - 24)] + 1836);
        v61 = __clz(v60) ^ 0x13F;
        if (v60)
        {
          v62 = v61;
        }

        else
        {
          v62 = 0;
        }

        v22 = v62 | v22 & 0xFFFFFFFFFFFF0000;
        llvm::GlobalObject::setAlignment();
        v63 = this + *(*this - 24);
        v64 = *(v63 + 268);
        v65 = AGCLLVMBuilder::buildGlobalMetadata(v63 + 213, v58, *(*(v63 + 271) + 1832), v56);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v64, v65);
        ++v56;
      }

      while (v20 != v56);
      v21 = v136;
    }

    v31 = v137;
    v26 = v138;
  }

  v72 = *(this + *(*this - 24) + 2168);
  if (*(v72 + 1852) != 1 || *(v72 + 1900))
  {
    v73 = this + *(*this - 24);
    v74 = *(Function + 80);
    if (v74)
    {
      v75 = (v74 - 24);
    }

    else
    {
      v75 = 0;
    }

    FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v75);
    llvm::IRBuilderBase::SetInsertPoint((v73 + 1712), FirstNonPHI);
    v79 = *this;
    if (*(*(this + *(*this - 24) + 2168) + 972) != 2)
    {
      AGCLLVMDriverShader::mutateAllConstantArgsToSharedRegister(Function, v77, v78);
      v79 = *this;
    }

    v148 = 0;
    Cast = 0;
    v80 = this + *(v79 - 3);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
    }

    v81 = **(Function + 88);
    v155 = 257;
    v146[6] = llvm::IRBuilderBase::CreateCast((v80 + 1712), 49, v21, v81, &v154);
    v82 = this + *(*this - 24);
    v83 = *(v82 + 238);
    v153 = 257;
    llvm::Type::isOpaquePointerTy(*v26);
    v146[7] = llvm::IRBuilderBase::CreateAlignedLoad(v82 + 214, v83, v26, 0, &FnAttrs);
    v84 = this + *(*this - 24);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
    }

    v85 = *(*(Function + 88) + 80);
    v145 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v84 + 1712), 49, v31, v85, &v144);
    v86 = this + *(*this - 24);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
    }

    v87 = *(*(Function + 88) + 120);
    v150 = 257;
    v148 = llvm::IRBuilderBase::CreateCast((v86 + 1712), 49, v139, v87, &v149);
    v88 = llvm::Function::args(Function);
    if (v88 != v89)
    {
      v90 = v88;
      v91 = v89;
      v92 = 0;
      do
      {
        v93 = v92 + 1;
        llvm::Value::replaceAllUsesWith();
        v90 += 40;
        v92 = v93;
      }

      while (v90 != v91);
    }

    inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "agc.eot", 7, *(this + *(*this - 24) + 1848));
    v95 = inserted;
    *(inserted + 18) = *(inserted + 18) & 0xC00F | 0x6B0;
    if (*(Function + 72) != Function + 72)
    {
      llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(inserted + 72, (inserted + 72), Function + 72, *(Function + 80), (Function + 72));
    }

    if (*(*(this + *(*this - 24) + 2168) + 1843))
    {
      v154.__r_.__value_.__r.__words[0] = *(v95 + 112);
      FnAttrs = llvm::AttributeList::getFnAttrs(&v154);
      FnAttrs = llvm::AttributeSet::addAttribute();
      LODWORD(v154.__r_.__value_.__l.__data_) = -1;
      v154.__r_.__value_.__l.__size_ = FnAttrs;
      *(v95 + 112) = llvm::AttributeList::get();
    }

    llvm::Function::eraseFromParent(Function);
    v142 = 0;
    __p = 0;
    v143 = 0;
    std::vector<llvm::Function *>::reserve(&__p, 0x678uLL);
    v96 = *(this + *(*this - 24) + 2136);
    v97 = v96 + 24;
    v135 = this + 1712;
    v98 = *(v96 + 32);
    if (v98 != v96 + 24)
    {
      v133 = this + 2168;
      v134 = v96 + 24;
      do
      {
        if (v98)
        {
          v99 = (v98 - 56);
        }

        else
        {
          v99 = 0;
        }

        Name = llvm::Value::getName(v99);
        FnAttrs = Name;
        v152 = v101;
        if (v101 >= 0x10)
        {
          v102 = *Name == 0x5F746F652E636761 && *(Name + 1) == 0x5F78695074696D65;
          if (v102)
          {
            llvm::StringRef::find();
            llvm::StringRef::find();
            llvm::StringRef::find();
            v154.__r_.__value_.__r.__words[0] = 0;
            AsUnsignedInteger = llvm::getAsUnsignedInteger();
            v104 = v154.__r_.__value_.__s.__data_[0];
            if (v154.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v104 = 0;
            }

            if (AsUnsignedInteger)
            {
              v105 = 0;
            }

            else
            {
              v105 = v104;
            }

            v154.__r_.__value_.__r.__words[0] = 0;
            v106 = llvm::getAsUnsignedInteger();
            v107 = v154.__r_.__value_.__s.__data_[0];
            if (v154.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v107 = 0;
            }

            if (v106)
            {
              v107 = 0;
            }

            v140 = v107;
            v154.__r_.__value_.__r.__words[0] = 0;
            v108 = llvm::getAsUnsignedInteger();
            v109 = v154.__r_.__value_.__s.__data_[0];
            if (v154.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v109 = 0;
            }

            v110 = v109 != 0;
            v154.__r_.__value_.__r.__words[0] = 0;
            v111 = llvm::getAsUnsignedInteger();
            v112 = v154.__r_.__value_.__s.__data_[0];
            if (v154.__r_.__value_.__r.__words[0] >= 0x100)
            {
              v112 = 0;
            }

            v113 = v112 != 0;
            if (AGCLLVMDriverShader::isValidUberFunctionCombination(this, v105, v110 & ~v108))
            {
              v115 = *&v133[*(*this - 24)];
              if ((*(*v115 + 544))(v115, v140))
              {
                v116 = *&v133[*(*this - 24)];
                if ((*(*v116 + 200))(v116) & 1) != 0 || ((v113 & ~v111 ^ 1))
                {
                  v154.__r_.__value_.__r.__words[0] = "entry";
                  v155 = 259;
                  operator new();
                }
              }
            }

            AGCLLVMDriverShader::handleUberInvalidCombinationFunction(v99[1], v114);
            v154.__r_.__value_.__r.__words[0] = v99;
            std::vector<llvm::User *>::push_back[abi:nn200100](&__p, &v154);
            v97 = v134;
          }
        }

        v98 = *(v98 + 8);
      }

      while (v98 != v97);
    }

    v117 = __p;
    v118 = v142;
    if (__p != v142)
    {
      v119 = __p;
      do
      {
        v120 = *v119++;
        llvm::Function::eraseFromParent(v120);
      }

      while (v119 != v118);
    }

    v142 = v117;
    if (v132)
    {
      if (v131)
      {
        v121 = llvm::Module::getFunction();
        v122 = v121;
        if (*(v121 + 9))
        {
          llvm::Function::BuildLazyArguments(v121);
          if (*(v122 + 9))
          {
            llvm::Function::BuildLazyArguments(v122);
            if (*(v122 + 9))
            {
              llvm::Function::BuildLazyArguments(v122);
              if (*(v122 + 9))
              {
                llvm::Function::BuildLazyArguments(v122);
                if (*(v122 + 9))
                {
                  llvm::Function::BuildLazyArguments(v122);
                  if (*(v122 + 9))
                  {
                    llvm::Function::BuildLazyArguments(v122);
                    if (*(v122 + 9))
                    {
                      llvm::Function::BuildLazyArguments(v122);
                      if (*(v122 + 9))
                      {
                        llvm::Function::BuildLazyArguments(v122);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v154.__r_.__value_.__r.__words[0] = "entry";
        v155 = 259;
        operator new();
      }

      v123 = llvm::Module::getFunction();
      v124 = v123;
      if (*(v123 + 9))
      {
        llvm::Function::BuildLazyArguments(v123);
        if (*(v124 + 9))
        {
          llvm::Function::BuildLazyArguments(v124);
        }
      }

      v154.__r_.__value_.__r.__words[0] = "entry";
      v155 = 259;
      operator new();
    }

    v154.__r_.__value_.__r.__words[0] = &v154.__r_.__value_.__r.__words[2];
    v154.__r_.__value_.__l.__size_ = 0x2000000000;
    for (j = *(llvm::Module::getFunction() + 8); j; j = *(j + 8))
    {
      v127 = *(j + 24);
      llvm::IRBuilderBase::SetInsertPoint(&v135[*(*this - 24)], v127);
      llvm::ConstantInt::get();
      llvm::Value::replaceAllUsesWith();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v154, v127);
    }

    for (k = *(llvm::Module::getFunction() + 8); k; k = *(k + 8))
    {
      v129 = *(k + 24);
      llvm::IRBuilderBase::SetInsertPoint(&v135[*(*this - 24)], v129);
      v130 = *(this + *(*this - 24) + 2168);
      (*(*v130 + 200))(v130);
      llvm::ConstantInt::get();
      llvm::Value::replaceAllUsesWith();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v154, v129);
    }

    llvm::Module::getFunction();
    if ((*(this + 81) & 1) == 0)
    {
      FnAttrs = "entry";
      v153 = 259;
      operator new();
    }

    llvm::Module::getFunction();
    FnAttrs = "entry";
    v153 = 259;
    operator new();
  }

  v125 = llvm::PointerType::get();
  AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 24) + 1704, "agc.eot_get_pbe_words", 21, v125, *(this + *(*this - 24) + 1896));
  v154.__r_.__value_.__r.__words[0] = "entry";
  v155 = 259;
  operator new();
}

uint64_t AGCLLVMEndOfTileProgram::buildEmitSlice(AGCLLVMEndOfTileProgram *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, llvm::Value *a6, llvm::Value *a7)
{
  v120[2] = *MEMORY[0x277D85DE8];
  llvm::FixedVectorType::get();
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    v93 = 0;
    v12 = a2;
  }

  else
  {
    v13 = llvm::User::operator new(0x58);
    v12 = a2;
    *&v116 = "agc.pbe_words";
    v117 = a2;
    v119 = 2051;
    llvm::GlobalVariable::GlobalVariable();
    v14 = *(this + *(*this - 24) + 2168);
    if (*(v14 + 1824))
    {
      strlen(*(v14 + 1824));
    }

    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v15 = this + *(*this - 24);
    v16 = *(v15 + 268);
    v93 = v13;
    v17 = AGCLLVMBuilder::buildGlobalMetadata(v15 + 213, v13, *(*(v15 + 271) + 1832), a2);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, v17);
  }

  v18 = llvm::User::operator new(0x58);
  *&v116 = "agc.emit_info";
  v117 = v12;
  v119 = 2051;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v19 = this + *(*this - 24);
  v20 = *(v19 + 268);
  v91 = v18;
  v21 = AGCLLVMBuilder::buildGlobalMetadata(v19 + 213, v18, 5u, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v20, v21);
  if (*(*(this + *(*this - 24) + 2168) + 1955) == 1)
  {
    v22 = llvm::User::operator new(0x58);
    *&v116 = "agc.slab_index";
    v117 = v12;
    v119 = 2051;
    v23 = llvm::GlobalVariable::GlobalVariable();
    *(v23 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v24 = this + *(*this - 24);
    v25 = *(v24 + 268);
    v26 = AGCLLVMBuilder::buildGlobalMetadata(v24 + 213, v22, 0x8Du, a2);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v25, v26);
    v27 = this + *(*this - 24);
    v119 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v27 + 1704), v22, &v116);
    v29 = *(this + *(*this - 24) + 1896);
    v115 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v27 + 1712), 38, Load, v29, &v112);
  }

  else
  {
    Cast = llvm::ConstantInt::get();
  }

  v92 = Cast;
  v31 = *(this + 9);
  v32 = *(v31 + 4 * v12);
  if (v32 != a3)
  {
    v33 = this + *(*this - 24);
    v34 = *(v33 + 271);
    v109 = *(v33 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v110, (v33 + 1712));
    v111 = *(v33 + 452);
    (*(*v34 + 264))(&v116, v34, &v109, a2 & 7, *(this + 9), *(this + 81));
    if (v110)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v116)
    {
      v35 = this + *(*this - 24);
      v106 = v116;
      v107 = v117;
      if (v117)
      {
        llvm::MetadataTracking::track();
      }

      v108 = v118;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v106, (v35 + 1712));
      if (v107)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if (v117)
    {
      llvm::MetadataTracking::untrack();
    }

    a3 = v32;
  }

  v89 = a3;
  if (a6)
  {
    *&v116 = "cond_emit";
    v119 = 259;
    operator new();
  }

  if (a7)
  {
    *&v116 = "config";
    v119 = 259;
    operator new();
  }

  v36 = v31 + 4 * v12;
  if ((*(v36 + 3) & 2) != 0)
  {
    *(this + 80) = 1;
    v37 = llvm::User::operator new(0x58);
    llvm::PointerType::get();
    *&v116 = "agc.sstt_address";
    v117 = v12;
    v119 = 2051;
    llvm::GlobalVariable::GlobalVariable();
    *(v37 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v38 = this + *(*this - 24);
    v39 = *(v38 + 268);
    v40 = AGCLLVMBuilder::buildGlobalMetadata(v38 + 213, v37, 0x63u, a2);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v39, v40);
    v41 = (this + *(*this - 24));
    v42 = llvm::PointerType::get();
    v119 = 257;
    llvm::Type::isOpaquePointerTy(*v37);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v41 + 214, v42, v37, 0, &v116);
    v43 = llvm::User::operator new(0x58);
    llvm::PointerType::get();
    *&v116 = "agc.queue_address";
    v117 = v12;
    v119 = 2051;
    llvm::GlobalVariable::GlobalVariable();
    *(v43 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v44 = this + *(*this - 24);
    v45 = *(v44 + 268);
    v46 = AGCLLVMBuilder::buildGlobalMetadata(v44 + 213, v43, 0x64u, a2);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v45, v46);
    v47 = (this + *(*this - 24));
    v48 = llvm::PointerType::get();
    v119 = 257;
    llvm::Type::isOpaquePointerTy(*v43);
    v49 = llvm::IRBuilderBase::CreateAlignedLoad(v47 + 214, v48, v43, 0, &v116);
    v50 = llvm::User::operator new(0x58);
    *&v116 = "agc.slice_level";
    v117 = v12;
    v119 = 2051;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v51 = this + *(*this - 24);
    v52 = *(v51 + 268);
    v53 = AGCLLVMBuilder::buildGlobalMetadata(v51 + 213, v50, 1u, a2);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v52, v53);
    v54 = this + *(*this - 24);
    v55 = *(v54 + 238);
    v119 = 257;
    llvm::Type::isOpaquePointerTy(*v50);
    v56 = llvm::IRBuilderBase::CreateAlignedLoad(v54 + 214, v55, v50, 0, &v116);
    AGCLLVMEndOfTileProgram::setupOnDemandHwSparse(this, AlignedLoad, v49, v56);
  }

  if (*(this + 81) == 1 && (*(v36 + 3) & 0x20) != 0)
  {
    v120[0] = llvm::ConstantInt::get();
    v120[1] = llvm::ConstantInt::get();
    AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v120, 2);
    v57 = this + *(*this - 24);
    v58 = *(v57 + 271);
    v103 = *(v57 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v104, (v57 + 1712));
    v105 = *(v57 + 452);
    v59 = (*(*v58 + 208))(v58, &v103, v92);
    if (v104)
    {
      llvm::MetadataTracking::untrack();
    }

    v60 = this + *(*this - 24);
    v61 = *(v60 + 271);
    v100 = *(v60 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v101, (v60 + 1712));
    v102 = *(v60 + 452);
    v62 = *(v31 + 4 * v12);
    v63 = BYTE1(v62);
    v64 = (v62 >> 26) & 7;
    v65 = HIBYTE(v62) & 1;
    v66 = *(*(this + 9) + 72);
    v67 = llvm::ConstantInt::get();
    v68 = this + *(*this - 24);
    v119 = 257;
    v69 = AGCLLVMBuilder::CreateLoad((v68 + 1704), v91, &v116);
    (*(*v61 + 304))(&v112, v61, &v100, v63, v64, v65, HIDWORD(v66) & 0xF, v67, v69, v92, v59, 0);
    if (v101)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v112)
    {
      v70 = this + *(*this - 24);
      v97 = v112;
      v98 = v113;
      if (v113)
      {
        llvm::MetadataTracking::track();
      }

      v99 = v114;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v97, (v70 + 1712));
      if (v98)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    AGCLLVMObject::buildWGBarrier(this + *(*this - 24), v120, 2);
    if (v113)
    {
      llvm::MetadataTracking::untrack();
    }

    v87 = 1;
  }

  else
  {
    v87 = 0;
  }

  v71 = *this;
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    v93 = *(this + 11);
    *(this + 7) |= 1 << v12;
    v72 = llvm::ConstantInt::get();
    v71 = *this;
  }

  else
  {
    v72 = 0;
  }

  v73 = this + *(v71 - 24);
  v74 = *(v73 + 271);
  v94 = *(v73 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v95, (v73 + 1712));
  v96 = *(v73 + 452);
  v75 = *(v31 + 4 * v12);
  v76 = this + *(*this - 24);
  v77 = *(v76 + 238);
  v119 = 257;
  llvm::Type::isOpaquePointerTy(*v91);
  v78 = llvm::IRBuilderBase::CreateAlignedLoad(v76 + 214, v77, v91, 0, &v116);
  LOBYTE(v85) = v87;
  (*(*v74 + 256))(v74, &v94, v93, v72, a4, BYTE1(v75), HIBYTE(v75) & 1, BYTE2(v75), v78, v92, v85);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a5)
  {
    v79 = this + *(*this - 24);
    v80 = *(v79 + 271);
    v81 = *(v80 + 1752);
    if (v81)
    {
      v82 = strlen(*(v80 + 1752));
    }

    else
    {
      v82 = 0;
    }

    inserted = AGCLLVMBuilder::getOrInsertFunction<>((v79 + 1704), v81, v82, *(v79 + 231));
    v119 = 257;
    llvm::IRBuilderBase::CreateCall(v79 + 214, *(inserted + 24), inserted, 0, 0, &v116);
  }

  return v89;
}

llvm::Instruction *AGCLLVMEndOfTileProgram::buildFastClearOfMetadata(AGCLLVMEndOfTileProgram *this, unsigned int a2, llvm::Value *a3, llvm::GlobalVariable *a4, llvm::GlobalVariable *a5)
{
  v119 = *MEMORY[0x277D85DE8];
  v110 = *(this + *(*this - 24) + 1896);
  v111 = v110;
  llvm::FunctionType::get();
  v96 = llvm::PointerType::get();
  v9 = llvm::ConstantPointerNull::get(v96, v8);
  v10 = this + *(*this - 24);
  if (*(*(v10 + 271) + 1844) == 1 && (*(*(this + 9) + 79) & 4) != 0)
  {
    v100[0] = "agc.eot_fastClearGin1403FetchFn.";
    v100[2] = a2;
    v101 = 2051;
    llvm::Twine::str(&v110, v100);
    if (v112[0] >= 0)
    {
      v11 = &v110;
    }

    else
    {
      v11 = v110;
    }

    if (v112[0] >= 0)
    {
      v12 = SHIBYTE(v112[0]);
    }

    else
    {
      v12 = v111;
    }

    AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v10 + 1704), v11, v12, *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1896), *(this + *(*this - 24) + 1896));
    if (SHIBYTE(v112[0]) < 0)
    {
      operator delete(v110);
    }

    v13 = this + *(*this - 24);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v98, (v13 + 1712));
    v99 = *(v13 + 452);
    v14 = this + *(*this - 24);
    llvm::Twine::str(&v110, v100);
    if (v112[0] >= 0)
    {
      v15 = &v110;
    }

    else
    {
      v15 = v110;
    }

    if (v112[0] >= 0)
    {
      v16 = SHIBYTE(v112[0]);
    }

    else
    {
      v16 = v111;
    }

    v17 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v14 + 1704), v15, v16, *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1896), *(this + *(*this - 24) + 1896));
    if (SHIBYTE(v112[0]) < 0)
    {
      operator delete(v110);
    }

    *(v17 + 32) = *(v17 + 32) & 0xFFFFBFC0 | 0x4008;
    v110 = "entry";
    LOWORD(v113) = 259;
    operator new();
  }

  v97 = v9;
  if (a3)
  {
    v110 = "cond_emit";
    LOWORD(v113) = 259;
    operator new();
  }

  v18 = llvm::User::operator new(0x58);
  llvm::PointerType::get();
  v110 = "agc.metadata_address";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  llvm::GlobalVariable::GlobalVariable();
  *(v18 + 80) |= 1u;
  v19 = a2;
  v94 = v18;
  llvm::GlobalObject::setSection();
  v20 = this + *(*this - 24);
  v21 = *(v20 + 268);
  v22 = AGCLLVMBuilder::buildGlobalMetadata(v20 + 213, v18, 0x89u, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v21, v22);
  llvm::User::operator new(0x58);
  v110 = "agc.width_in_blocks";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  v23 = llvm::GlobalVariable::GlobalVariable();
  *(v23 + 80) |= 1u;
  v24 = v23;
  v92 = v23;
  llvm::GlobalObject::setSection();
  v25 = this + *(*this - 24);
  v26 = *(v25 + 268);
  v27 = AGCLLVMBuilder::buildGlobalMetadata(v25 + 213, v24, 0x85u, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v26, v27);
  v28 = llvm::User::operator new(0x58);
  v110 = "agc.height_in_blocks";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  v29 = llvm::GlobalVariable::GlobalVariable();
  *(v29 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v30 = this + *(*this - 24);
  v31 = *(v30 + 268);
  v32 = AGCLLVMBuilder::buildGlobalMetadata(v30 + 213, v28, 0x86u, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, v32);
  v33 = llvm::User::operator new(0x58);
  v110 = "agc.block_width";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  v34 = llvm::GlobalVariable::GlobalVariable();
  *(v34 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v35 = this + *(*this - 24);
  v36 = *(v35 + 268);
  v37 = AGCLLVMBuilder::buildGlobalMetadata(v35 + 213, v33, 0x8Au, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v36, v37);
  v38 = llvm::User::operator new(0x58);
  v110 = "agc.block_height";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  v39 = llvm::GlobalVariable::GlobalVariable();
  *(v39 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v40 = this + *(*this - 24);
  v41 = *(v40 + 268);
  v42 = AGCLLVMBuilder::buildGlobalMetadata(v40 + 213, v38, 0x84u, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v41, v42);
  v43 = llvm::User::operator new(0x58);
  v110 = "agc.metadata_mb_info";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  v44 = llvm::GlobalVariable::GlobalVariable();
  *(v44 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v45 = this + *(*this - 24);
  v46 = *(v45 + 268);
  v47 = AGCLLVMBuilder::buildGlobalMetadata(v45 + 213, v43, 0x87u, a2);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v46, v47);
  v48 = llvm::User::operator new(0x58);
  v110 = "agc.metadata_mb_per_tile";
  v112[0] = a2;
  LOWORD(v113) = 2051;
  v49 = llvm::GlobalVariable::GlobalVariable();
  *(v49 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v50 = this + *(*this - 24);
  v51 = *(v50 + 268);
  v52 = AGCLLVMBuilder::buildGlobalMetadata(v50 + 213, v48, 0x88u, v19);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v51, v52);
  v53 = (this + *(*this - 24));
  v54 = llvm::PointerType::get();
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v94);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v53 + 214, v54, v94, 0, &v110);
  v55 = this + *(*this - 24);
  v56 = *(v55 + 238);
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v92);
  v93 = llvm::IRBuilderBase::CreateAlignedLoad(v55 + 214, v56, v92, 0, &v110);
  v57 = this + *(*this - 24);
  v58 = *(v57 + 238);
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v28);
  v91 = llvm::IRBuilderBase::CreateAlignedLoad(v57 + 214, v58, v28, 0, &v110);
  v59 = this + *(*this - 24);
  v60 = *(v59 + 238);
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v33);
  v90 = llvm::IRBuilderBase::CreateAlignedLoad(v59 + 214, v60, v33, 0, &v110);
  v61 = this + *(*this - 24);
  v62 = *(v61 + 238);
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v38);
  v89 = llvm::IRBuilderBase::CreateAlignedLoad(v61 + 214, v62, v38, 0, &v110);
  v63 = this + *(*this - 24);
  v64 = *(v63 + 238);
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v43);
  v65 = llvm::IRBuilderBase::CreateAlignedLoad(v63 + 214, v64, v43, 0, &v110);
  v66 = this + *(*this - 24);
  v67 = *(v66 + 238);
  LOWORD(v113) = 257;
  llvm::Type::isOpaquePointerTy(*v48);
  v68 = llvm::IRBuilderBase::CreateAlignedLoad(v66 + 214, v67, v48, 0, &v110);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "llvm.agx2.dispatch.threadgroup.x.size", 37, *(this + *(*this - 24) + 1904));
  v70 = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "llvm.agx2.threadgroup.x", 23, *(this + *(*this - 24) + 1904));
  v71 = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "llvm.agx2.dispatch.threadgroup.y.size", 37, *(this + *(*this - 24) + 1904));
  v72 = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "llvm.agx2.threadgroup.y", 23, *(this + *(*this - 24) + 1904));
  v73 = (this + *(*this - 24));
  LOWORD(v113) = 257;
  v74 = llvm::IRBuilderBase::CreateCall(v73 + 214, *(v70 + 24), v70, 0, 0, &v110);
  v75 = (this + *(*this - 24));
  LOWORD(v103) = 257;
  v76 = llvm::IRBuilderBase::CreateCall(v75 + 214, *(inserted + 24), inserted, 0, 0, __src);
  v101 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v73 + 214), v74, v76, v100);
  v78 = (this + *(*this - 24));
  LOWORD(v113) = 257;
  v79 = llvm::IRBuilderBase::CreateCall(v78 + 214, *(v72 + 24), v72, 0, 0, &v110);
  v80 = (this + *(*this - 24));
  LOWORD(v103) = 257;
  v81 = llvm::IRBuilderBase::CreateCall(v80 + 214, *(v71 + 24), v71, 0, 0, __src);
  v101 = 257;
  v82 = llvm::IRBuilderBase::CreateMul((v78 + 214), v79, v81, v100);
  v83 = llvm::PointerType::get();
  v84 = *(this + *(*this - 24) + 1904);
  __src[0] = v83;
  __src[1] = v84;
  __src[2] = v84;
  __src[3] = v84;
  v103 = v84;
  v104 = v84;
  v105 = v84;
  v106 = v84;
  v107 = v84;
  v108 = v96;
  v110 = v112;
  v111 = 0xA00000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v110, __src, &v109);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v86 = v85;
  if (v110 != v112)
  {
    free(v110);
  }

  v110 = AlignedLoad;
  v111 = Mul;
  v112[0] = v82;
  v112[1] = v93;
  v113 = v91;
  v114 = v90;
  v115 = v89;
  v116 = v65;
  v117 = v68;
  v118 = v97;
  v87 = (this + *(*this - 24));
  LOWORD(v103) = 257;
  return llvm::IRBuilderBase::CreateCall(v87 + 214, *(v86 + 24), v86, &v110, 10, __src);
}

llvm::Instruction *AGCLLVMEndOfTileProgram::setupOnDemandHwSparse(AGCLLVMEndOfTileProgram *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = this + *(*this - 24);
  v8 = *(v7 + 271);
  v9 = *(v8 + 1688);
  if (v9)
  {
    v10 = strlen(*(v8 + 1688));
  }

  else
  {
    v10 = 0;
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v7 + 1704), v9, v10, *(v7 + 234));
  v12 = this + *(*this - 24);
  v13 = *(v12 + 271);
  v14 = *(v13 + 1696);
  if (v14)
  {
    v15 = strlen(*(v13 + 1696));
  }

  else
  {
    v15 = 0;
  }

  v16 = AGCLLVMBuilder::getOrInsertFunction<>((v12 + 1704), v14, v15, *(v12 + 234));
  v17 = (this + *(*this - 24));
  LOWORD(v36) = 257;
  v18 = llvm::IRBuilderBase::CreateCall(v17 + 214, *(inserted + 24), inserted, 0, 0, &v33);
  v19 = (this + *(*this - 24));
  LOWORD(v36) = 257;
  v20 = llvm::IRBuilderBase::CreateCall(v19 + 214, *(v16 + 24), v16, 0, 0, &v33);
  v21 = llvm::PointerType::get();
  v22 = llvm::PointerType::get();
  v23 = this + *(*this - 24);
  v24 = *(v23 + 234);
  v25 = *(v23 + 238);
  __src[0] = v21;
  __src[1] = v22;
  __src[2] = v24;
  __src[3] = v24;
  v32 = v25;
  v33 = v35;
  v34 = 0x500000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v33, __src, &v33);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v27 = v26;
  if (v33 != v35)
  {
    free(v33);
  }

  v33 = a3;
  v34 = a2;
  v35[0] = v18;
  v35[1] = v20;
  v36 = a4;
  v28 = (this + *(*this - 24));
  LOWORD(v32) = 257;
  return llvm::IRBuilderBase::CreateCall(v28 + 214, *(v27 + 24), v27, &v33, 5, __src);
}

void AGCLLVMTextureFetchFragmentShader::buildDefaultBlitShader(void *a1, uint64_t a2, int *a3, int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1 + *(*a1 - 24);
  (*(*a1 + 80))(__p);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v5 + 1704), v6, v7, *(a1 + *(*a1 - 24) + 1848));
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  *(inserted + 18) = *(inserted + 18) & 0xC00F | 0x650;
  __p[0] = "entry";
  LOWORD(v11) = 259;
  operator new();
}

void AGCLLVMTextureFetchFragmentShader::buildMRCDownsampleBlitShader(AGCLLVMDriverShader *a1, unsigned int *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1 + *(*a1 - 24);
  (*(*a1 + 80))(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v9 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v4 + 1704), v5, v6, *(a1 + *(*a1 - 24) + 1848));
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *(inserted + 18) = *(inserted + 18) & 0xC00F | 0x6C0;
  __p[0] = "entry";
  LOWORD(v10) = 259;
  operator new();
}

llvm::GlobalVariable *AGCLLVMDriverShader::getWriteImageStateGlobal(AGCLLVMDriverShader *this, unsigned int a2, unsigned int a3)
{
  if (*(*(this + *(*this - 24) + 2168) + 1900))
  {
    return 0;
  }

  v3 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v6 = this + *(*this - 24);
  v7 = *(v6 + 268);
  v8 = AGCLLVMBuilder::buildGlobalMetadata(v6 + 213, v3, 6u, a2 & 0xFFFFF);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v7, v8);
  return v3;
}

void *AGCLLVMDriverShader::setImageWriteSampleArgs(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(*(result + *(*result - 24) + 2168) + 1900))
  {
    v6 = result;
    result[7] |= 1uLL;
    v7 = llvm::ConstantInt::get();
    v8 = v6 + *(*v6 - 24);
    v9 = llvm::PointerType::get();
    v13 = 257;
    *(a2 + 32) = llvm::IRBuilderBase::CreateCast((v8 + 1712), 48, v7, v9, v12);
    v10 = v6 + *(*v6 - 24);
    v11 = llvm::PointerType::get();
    v13 = 257;
    result = llvm::IRBuilderBase::CreateCast((v10 + 1712), 49, a4, v11, v12);
    a3 = result;
  }

  *(a2 + 56) = a3;
  return result;
}

llvm::Value *AGCLLVMTextureFetchFragmentShader::buildUDivURem(AGCLLVMTextureFetchFragmentShader *this, llvm::Value *a2, llvm::Value *a3, llvm::Value **a4, llvm::Value **a5)
{
  v9 = this + *(*this - 24);
  v13 = 257;
  *a4 = llvm::IRBuilderBase::CreateUDiv((v9 + 1712), a2, a3, v12);
  v10 = (this + *(*this - 24));
  v13 = 257;
  result = llvm::IRBuilderBase::CreateURem(v10 + 214, a2, a3, v12);
  *a5 = result;
  return result;
}

uint64_t AGCLLVMDriverCDMShader::buildLocalID(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + *(*a1 - 24) + 2168);
  v9 = (*(*v8 + 688))(v8);
  if (v9)
  {
    v10 = v9;
    v28 = *a2;
    v29 = *(a2 + 2);
    if (v29)
    {
      llvm::MetadataTracking::track();
    }

    v30 = *(a2 + 6);
    v11 = (*(*v10 + 272))(v10, &v28, a3, a4);
    if (v29)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v12 = *(*(a1 + 72) + 24 * a4 + 56);
    if (v12)
    {
      v13 = a1 + *(*a1 - 24);
      v31 = 257;
      return llvm::IRBuilderBase::CreateCast(v13 + 1712, 38, v12, a3, &v28);
    }

    else
    {
      v14 = a4;
      if (*a2)
      {
        v15 = a1 + *(*a1 - 24);
        v32 = *a2;
        v33 = *(a2 + 2);
        if (v33)
        {
          llvm::MetadataTracking::track();
        }

        v34 = *(a2 + 6);
        AGCLLVMBuilder::InsertPoint::restoreIP(&v32, v15 + 1712);
        if (v33)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v16 = *(*(a1 + 72) + 4 * a4 + 24);
      if (v16 == -2)
      {
        return 0;
      }

      else
      {
        v17 = *(a1 + 88);
        if (*(v17 + 18))
        {
          llvm::Function::BuildLazyArguments(*(a1 + 88));
        }

        if (v16)
        {
          v18 = *(v17 + 88) + 40 * (v16 - 1) + 40;
        }

        else
        {
          v18 = *(v17 + 88);
        }

        if (a4)
        {
          v19 = a1 + *(*a1 - 24);
          v20 = *(v19 + 1944);
          v31 = 257;
          Cast = llvm::IRBuilderBase::CreateCast(v19 + 1712, 49, v18, v20, &v28);
          v22 = a1 + *(*a1 - 24);
          v31 = 257;
          v23 = llvm::ConstantInt::get();
          Element = llvm::IRBuilderBase::CreateExtractElement((v22 + 1712), Cast, v23, &v28);
          v25 = a1 + *(*a1 - 24);
          v31 = 257;
          v18 = llvm::IRBuilderBase::CreateCast(v25 + 1712, 39, Element, a3, &v28);
        }

        v26 = a1 + *(*a1 - 24);
        v31 = 257;
        v11 = llvm::IRBuilderBase::CreateCast(v26 + 1712, 38, v18, a3, &v28);
        llvm::ValueHandleBase::operator=((*(a1 + 72) + 24 * v14 + 40), v11);
      }
    }
  }

  return v11;
}

uint64_t AGCLLVMDriverCDMBlitShader::getSampleResultType(void *a1, char a2, unsigned int a3)
{
  if ((a3 & 0x1F00) != 0)
  {
    AGCLLVMDriverShader::getFormatInfo(&v12, a1, (a3 >> 8) & 0x1F);
    return v14;
  }

  else
  {
    v5 = a2 & 0x1F;
    if (v5 == 23 || (v6 = *(a1 + *(*a1 - 24) + 2168), v7 = (*(*v6 + 688))(v6), AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v12, v7, v5, 0, 0, 0), (v15 & 1) == 0))
    {
      v9 = std::__throw_bad_optional_access[abi:nn200100]();
      return AGCLLVMDriverCDMBlitShader::readDestinationTexture(v9, v10, v11);
    }

    else
    {
      v8 = v13;
      if ((*(v13 + 8) & 0xFE) == 0x12)
      {
        v8 = **(v13 + 16);
      }

      LODWORD(result) = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), v8, &v12);
      if ((result - 3) >= 3)
      {
        return result;
      }

      else
      {
        return (result + 4);
      }
    }
  }
}