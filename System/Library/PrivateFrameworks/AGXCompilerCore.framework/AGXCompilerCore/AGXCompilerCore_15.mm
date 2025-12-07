uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::ScsLayoutDumper& AGCLLVMUserObject::ScsLayoutDumper::dump<RaytracingConstantsGen1>(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::{lambda(anonymous namespace::ScsSectionInfo const&,anonymous namespace::ScsSectionInfo const&)#1} &,anonymous namespace::ScsSectionInfo*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 1);
  v6 = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 1) < *(result + 1))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 1) < HIDWORD(v17))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 1) < *(result + 1))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 1) < *(result + 1))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::ScsLayoutDumper& AGCLLVMUserObject::ScsLayoutDumper::dump<RaytracingConstantsGen1>(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::{lambda(anonymous namespace::ScsSectionInfo const&,anonymous namespace::ScsSectionInfo const&)#1} &,anonymous namespace::ScsSectionInfo*>(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 3);
      v7 = *(a1 + 16);
      v8 = *(a2 - 2);
      if (v7 < *(a1 + 4))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 2) >= *(a1 + 16))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 1);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 1);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 1);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 1) = v23;
LABEL_50:
      if (*(a1 + 16) < *(a1 + 4))
      {
        v56 = *(a1 + 8);
        v57 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v57;
        *(a1 + 20) = v56;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v18 = *(a1 + 16);
    v19 = *(a1 + 4);
    v20 = *(a1 + 28);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 16) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v48 = *(a1 + 8);
      v49 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v49;
      *(a1 + 20) = v48;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 2) >= *(a1 + 28))
    {
      return 1;
    }

    v50 = a2 - 3;
    v51 = *(a1 + 32);
    v52 = *(a1 + 24);
    v53 = *(a2 - 1);
    *(a1 + 24) = *(a2 - 3);
    *(a1 + 32) = v53;
    *v50 = v52;
    v50[2] = v51;
    if (*(a1 + 28) >= *(a1 + 16))
    {
      return 1;
    }

    v54 = *(a1 + 20);
    v55 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v55;
    *(a1 + 32) = v54;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *(a1 + 4))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 8) = v5;
      *(a2 - 3) = v4;
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 24);
  v13 = *(a1 + 16);
  v14 = *(a1 + 4);
  v15 = *(a1 + 28);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 16) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = v39[1];
    if (v42 < v12[1])
    {
      v43 = *v39;
      v44 = v39[2];
      v45 = v40;
      while (1)
      {
        v46 = a1 + v45;
        *(v46 + 36) = *(a1 + v45 + 24);
        *(v46 + 44) = *(a1 + v45 + 32);
        if (v45 == -24)
        {
          break;
        }

        v45 -= 12;
        if (v42 >= *(v46 + 16))
        {
          v47 = (a1 + v45 + 36);
          goto LABEL_41;
        }
      }

      v47 = a1;
LABEL_41:
      *v47 = v43;
      v47[1] = v42;
      v47[2] = v44;
      if (++v41 == 8)
      {
        return v39 + 3 == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 += 3;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t AGCLLVMUserObject::collectResourceCopyValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, unsigned int a7)
{
  v13 = *(a4 + 8);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = *a4;
    while (*v15 != a3)
    {
      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v15 = *a4;
  }

  if (v15 != (*a4 + 8 * v13))
  {
    return 0;
  }

LABEL_9:
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a4, a3);
  v17 = *(a3 + 8);
  if (!v17)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_44;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(v17 + 24);
    v21 = v20[16];
    if (v20 && v21 == 61)
    {
      v22 = *(v20 - 8);
      if (*(*v22 + 8) != 15 && (a5 & 1) == 0 && v22[16] != 75)
      {
        LOBYTE(v21) = 61;
        goto LABEL_32;
      }

      if (((a5 | a7) & 1) == 0)
      {
        *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](a1 + 3440, *(v17 + 24)) = a2;
      }

      v18 = 1;
      v19 = a5 ^ 1;
    }

    else
    {
      if (!v20 || v21 != 60)
      {
        goto LABEL_32;
      }

      if (*(*v20 + 8) != 15 && a5 == 0)
      {
        LOBYTE(v21) = 60;
LABEL_32:
        v24 = (((v21 - 75) >> 1) | ((v21 - 75) << 7));
        v25 = v24 > 5;
        v26 = (1 << v24) & 0x33;
        if (v25 || v26 == 0)
        {
          *a6 |= a5 ^ 1;
        }

        else
        {
          v28 = AGCLLVMUserObject::collectResourceCopyValues(a1, a2, v20, a4, a5, a6, a7);
          v18 = v28;
          v19 = HIBYTE(v28);
        }

        goto LABEL_37;
      }

      if ((AGCLLVMUserObject::collectResourceCopyValues(a1, a2, *(v17 + 24), a4, a5, a6, 1u) & 1) == 0)
      {
        LOBYTE(v21) = v20[16];
        goto LABEL_32;
      }

      if (((a5 | a7) & 1) == 0)
      {
        *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](a1 + 3440, v20) = a2;
      }

      v18 = 1;
    }

LABEL_37:
    v17 = *(v17 + 8);
  }

  while (v17);
  if ((v18 & 1) != 0 && *(a3 + 16) == 62)
  {
    *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](a1 + 3440, a3) = a2;
  }

LABEL_44:
  --*(a4 + 8);
  return v18 | (v19 << 8);
}

void *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825A7350;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
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

uint64_t AGCLLVMUserObject::countNestingLevelsToInnerType(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a1 != a2)
  {
    result = 0;
    v4 = *(a1 + 8);
    do
    {
      if ((v4 & 0xFE) != 0x10)
      {
        break;
      }

      a1 = **(a1 + 16);
      v4 = *(a1 + 8);
      v5 = (v4 & 0xFE) == 0x10 ? a1 : 0;
      result = (result + 1);
    }

    while (v5 && v5 != a2);
  }

  return result;
}

void *AGCLLVMUserObject::replacePointerLoadsFromBitcast(void *result, llvm::Instruction *this)
{
  v3 = result;
  v4 = **(*this + 16);
  if (*(v4 + 8) == 15 || (result = llvm::Type::isIntegerTy(**(*this + 16)), result))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      return llvm::Instruction::eraseFromParent(this);
    }

    Cast = 0;
    v7 = *(this - 4);
    v8 = v3 + 214;
    do
    {
      v9 = *(v5 + 24);
      v5 = *(v5 + 8);
      if (v9 && *(v9 + 16) == 60)
      {
        if (!Cast)
        {
          v10 = *(*v3 - 24);
          v16 = 257;
          Load = AGCLLVMBuilder::CreateLoad((v3 + v10 + 1704), v7, v15);
          v12 = *(*v3 - 24);
          if (*(v4 + 8) == 15)
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 49;
          }

          else
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 47;
          }

          Cast = llvm::IRBuilderBase::CreateCast(v13, v14, Load, v4, v15);
        }

        llvm::Value::replaceAllUsesWith();
        result = llvm::Instruction::eraseFromParent(v9);
      }
    }

    while (v5);
    if (!*(this + 1))
    {
      return llvm::Instruction::eraseFromParent(this);
    }
  }

  return result;
}

void std::deque<llvm::GetElementPtrInst *>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<llvm::MDNode const**>::emplace_back<llvm::MDNode const**&>(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<std::move_iterator<llvm::Value **>,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3 != a2)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

void AGCLLVMUserObject::lowerGlobalBindingVariable(AGCLLVMUserObject *this, llvm::GlobalVariable *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  AGCLLVMObject::replaceConstantChainWithInstrs(a2, a2);
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = this + 1712;
    while (1)
    {
      v6 = *(v4 + 24);
      v4 = *(v4 + 8);
      v7 = *(v6 + 16);
      if (v6)
      {
        v8 = v7 >= 0x1C;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_30;
      }

      if (v7 != 83)
      {
        break;
      }

      v9 = *(v6 + 20);
      v10 = v9 & 0x7FFFFFF;
      if ((v9 & 0x7FFFFFF) != 0)
      {
        v11 = 0;
        v12 = v6 - 32 * v10;
        while (1)
        {
          v13 = v6 - 32 * v10;
          if ((v9 & 0x40000000) != 0)
          {
            v13 = *(v6 - 8);
          }

          if (*(v13 + 32 * v11) == a2)
          {
            break;
          }

          if (++v11 == v10)
          {
            goto LABEL_29;
          }
        }

        if ((v9 & 0x40000000) != 0)
        {
          v12 = *(v6 - 8);
        }

        v16 = *(v12 + 32 * *(v6 + 60) + 8 * v11);
        v17 = *(v16 + 40);
        if (v17 == v16 + 40)
        {
          v15 = 0;
        }

        else
        {
          v18 = (v17 - 24);
          if (v17)
          {
            v19 = v17 - 24;
          }

          else
          {
            v19 = 0;
          }

          if (*(v19 + 16) - 29 >= 0xB)
          {
            v15 = 0;
          }

          else
          {
            v15 = v18;
          }
        }

        v14 = &v5[*(*this - 24)];
        goto LABEL_28;
      }

LABEL_29:
      GlobalBindingTablePtr = AGCLLVMUserObject::getGlobalBindingTablePtr(this);
      v21 = *(this + *(*this - 24) + 2168);
      v27[0] = *a2;
      v22 = (*(*v21 + 1416))(v21);
      v23 = *(*this - 24);
      v29[0] = GlobalBindingTablePtr;
      v29[1] = a2;
      v28 = 257;
      v24 = llvm::IRBuilderBase::CreateCall(&v5[v23], *(v22 + 24), v22, v29, 2, v27);
      v25 = *(*this - 24);
      v26 = *a2;
      v28 = 257;
      llvm::IRBuilderBase::CreateCast(&v5[v25], 49, v24, v26, v27);
      llvm::User::replaceUsesOfWith();
LABEL_30:
      if (!v4)
      {
        return;
      }
    }

    v14 = &v5[*(*this - 24)];
    v15 = v6;
LABEL_28:
    llvm::IRBuilderBase::SetInsertPoint(v14, v15);
    goto LABEL_29;
  }
}

uint64_t AGCLLVMUserObject::getGlobalBindingTablePtr(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v28 = *(v2 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (v2 + 1712));
  v30 = *(v2 + 452);
  v3 = *(v28 + 56);
  v27 = v3;
  v4 = *(this + 932);
  if (v4)
  {
    v5 = *(this + 464);
    LODWORD(v6) = ((v3 >> 4) ^ (v3 >> 9)) & (v4 - 1);
    v7 = (v5 + 16 * v6);
    v8 = *v7;
    if (v3 == *v7)
    {
LABEL_3:
      if (v7 != (v5 + 16 * v4))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = 1;
      while (v8 != -4096)
      {
        v23 = v6 + v22++;
        v6 = v23 & (v4 - 1);
        v8 = *(v5 + 16 * v6);
        if (v3 == v8)
        {
          v7 = (v5 + 16 * v6);
          goto LABEL_3;
        }
      }
    }
  }

  v9 = this + *(*this - 24);
  v10 = *(v3 + 80);
  if (v10)
  {
    v11 = (v10 - 24);
  }

  else
  {
    v11 = 0;
  }

  FirstNonPHIOrDbgOrAlloca = llvm::BasicBlock::getFirstNonPHIOrDbgOrAlloca(v11);
  llvm::IRBuilderBase::SetInsertPoint((v9 + 1712), v11, FirstNonPHIOrDbgOrAlloca);
  v13 = (this + *(*this - 24));
  v14 = *(this + 360);
  if (!v14)
  {
    llvm::PointerType::get();
    llvm::FunctionType::get();
    llvm::Module::getOrInsertFunction();
    v16 = v15;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addRetAttr();
    *(v16 + 32) = *(v16 + 32) & 0xFFFFBFC0 | 0x4007;
    v17 = this + *(*this - 24);
    v31 = *(v17 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (v17 + 1712));
    v33 = *(v17 + 452);
    *&v34 = "entry";
    v35 = 259;
    operator new();
  }

  v35 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(v13 + 214, *(v14 + 24), v14, 0, 0, &v34);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>,llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::FindAndConstruct(this + 3712, &v27)[1] = v18;
  v19 = this + *(*this - 24);
  v24 = v28;
  v25 = v29;
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v26 = v30;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v24, (v19 + 1712));
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

LABEL_13:
  v20 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>,llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::FindAndConstruct(this + 3712, &v27)[1];
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  return v20;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>,llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
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
    llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::grow(a1, v7);
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
  result[1] = 0;
  return result;
}

uint64_t *llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::grow(uint64_t a1, int a2)
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
          v22[1] = v20[1];
          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
        }

        v20 += 2;
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

llvm::ValueAsMetadata *AGCLLVMUserObject::allocateBindlessHeapIndexForRange(void *a1, unsigned int *a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2[1] - *a2 + 1;
  if (v6 >= 2)
  {
    llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 1912), (a2[1] - *a2 + 1));
  }

  v7 = llvm::User::operator new(0x58);
  v19[0] = "agc.global_";
  v19[2] = a3;
  v20 = 1027;
  __src = v19;
  v27 = ".";
  v29 = 770;
  v8 = *a2;
  p_src = &__src;
  v23[0] = v8;
  v24 = 2050;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  if (v6 <= 1)
  {
    __src = llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
    v26 = llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
    v27 = llvm::ValueAsMetadata::get();
    p_src = v23;
    v22 = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&p_src, &__src, v28);
    v17 = a1 + *(*a1 - 24);
    Impl = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v17 + 4896), Impl);
    v15 = p_src;
    if (p_src == v23)
    {
      return v7;
    }

    goto LABEL_8;
  }

  p_src = v23;
  v22 = 0x2000000000;
  v9 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&p_src, v9);
  llvm::ConstantInt::get();
  v10 = llvm::ValueAsMetadata::get();
  for (i = 0; i < a2[1] - *a2 + 1; ++i)
  {
    __src = v10;
    v26 = 0;
    llvm::ConstantInt::get();
    v26 = llvm::ValueAsMetadata::get();
    v12 = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&p_src, v12);
  }

  v13 = a1 + *(*a1 - 24);
  v14 = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v13 + 4896), v14);
  v15 = p_src;
  if (p_src != v23)
  {
LABEL_8:
    free(v15);
  }

  return v7;
}

llvm::Type **AGCLLVMUserObject::buildNonConstantSamplerArgumentPointer(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = &a1[8 * a3];
  v6 = v5[237];
  if (v6)
  {
    v8 = v5[241];
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 237);
    v72 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 47, a2, v10, v70);
    v12 = *a1;
    v13 = a1 + *(*a1 - 24);
    if (!a3 && *(Cast + 16) >= 0x15u)
    {
      v14 = llvm::PointerType::get();
      v15 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + *(*a1 - 24) + 1704, "llvm.agx.samplerState", 21, v14, v14, *(a1 + *(*a1 - 24) + 1912));
      v16 = (a1 + *(*a1 - 24));
      v72 = 257;
      v69[0] = llvm::IRBuilderBase::CreateCast((v16 + 214), 49, v6, v14, v70);
      v17 = a1 + *(*a1 - 24);
      v18 = *(v17 + 239);
      v68 = 257;
      v69[1] = llvm::IRBuilderBase::CreateCast((v17 + 1712), 39, Cast, v18, &__p);
      v64 = 257;
      AllocaInEntryBlock = llvm::IRBuilderBase::CreateCall(v16 + 214, *(v15 + 24), v15, v69, 2, &__src);
      v20 = a1 + *(*a1 - 24);
      v21 = llvm::PointerType::get();
      v72 = 257;
      return llvm::IRBuilderBase::CreateCast((v20 + 1712), 49, AllocaInEntryBlock, v21, v70);
    }

    if (a3 == 2 && (*(*(v13 + 271) + 1869) & 1) == 0)
    {
      if ((*(a1 + 15) & 1) != 0 || (v23 = AGCLLVMUserObject::needsDylibResources(a1), v12 = *a1, v23))
      {
        v24 = *(a1 + *(v12 - 24) + 2168);
        (*(*v24 + 488))(v24);
        v25 = a1 + *(*a1 - 24);
        v26 = llvm::ConstantInt::get();
        v27 = AGCLLVMBuilder::buildICmpSel((v25 + 1704), Cast, v26, 36);
        v28 = v27;
        v29 = (a1 + *(*a1 - 24));
        v30 = v29[239];
        v31 = a1[366];
        if (!v31)
        {
          v59 = v27;
          std::string::basic_string[abi:nn200100]<0>(&__p, "agc.global_sampler_unique_id_table");
          v32 = llvm::User::operator new(0x58);
          v72 = 260;
          v70[0] = &__p;
          llvm::GlobalVariable::GlobalVariable();
          llvm::GlobalObject::setSection();
          llvm::GlobalObject::setAlignment();
          __src = llvm::ValueAsMetadata::get();
          llvm::ConstantInt::get();
          v61 = llvm::ValueAsMetadata::get();
          llvm::ConstantInt::get();
          v62 = llvm::ValueAsMetadata::get();
          v70[0] = v71;
          v70[1] = 0x300000000;
          llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v70, &__src, v63);
          v33 = a1 + *(*a1 - 24);
          Impl = llvm::MDTuple::getImpl();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v33 + 4896), Impl);
          llvm::ValueHandleBase::operator=((a1 + 364), v32);
          if (v70[0] != v71)
          {
            free(v70[0]);
          }

          if (v67 < 0)
          {
            operator delete(__p);
          }

          v31 = a1[366];
          v28 = v59;
        }

        GlobalBindingTablePtr = AGCLLVMUserObject::getGlobalBindingTablePtr(a1);
        v36 = a1 + *(*a1 - 24);
        v37 = *(v36 + 271);
        v38 = *(v36 + 267);
        v70[0] = *v31;
        v39 = (*(*v37 + 1416))(v37, v38, v70);
        v40 = (a1 + *(*a1 - 24));
        __p = GlobalBindingTablePtr;
        v66 = v31;
        v72 = 257;
        v41 = llvm::IRBuilderBase::CreateCall(v40 + 214, *(v39 + 24), v39, &__p, 2, v70);
        v42 = a1 + *(*a1 - 24);
        v43 = llvm::PointerType::get();
        v72 = 257;
        v44 = llvm::IRBuilderBase::CreateCast((v42 + 1712), 49, v41, v43, v70);
        v72 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((v29 + 214), v30, v44, v28, v70);
        v68 = 257;
        AGCLLVMBuilder::CreateLoad((v29 + 213), GEP, &__p);
      }

      else
      {
        v46 = a1 + *(v12 - 24);
        v47 = llvm::ConstantInt::get();
        v48 = AGCLLVMBuilder::buildICmpSel((v46 + 1704), Cast, v47, 36);
        v49 = a1 + *(*a1 - 24);
        v50 = *(v49 + 239);
        __src = llvm::ConstantInt::get();
        v61 = v48;
        v72 = 257;
        llvm::Type::isOpaquePointerTy(*v6);
        v51 = llvm::IRBuilderBase::CreateGEP((v49 + 1712), v8, v6, &__src, 2, v70);
        v68 = 257;
        llvm::Type::isOpaquePointerTy(*v51);
        llvm::IRBuilderBase::CreateAlignedLoad(v49 + 214, v50, v51, 0, &__p);
      }

      v52 = a1 + *(*a1 - 24);
      v53 = *(v52 + 239);
      v72 = 257;
      llvm::IRBuilderBase::CreateCast((v52 + 1712), 47, a2, v53, v70);
      v54 = (a1 + *(*a1 - 24));
      v55 = llvm::ConstantInt::get();
      v72 = 257;
      llvm::IRBuilderBase::CreateICmp(v54 + 214, 36, Cast, v55, v70);
      v68 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((a1 + *(*a1 - 24) + 1704), *(a1 + *(*a1 - 24) + 1912));
      llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), Select, AllocaInEntryBlock, 0, 0);
      goto LABEL_24;
    }

    __p = llvm::ConstantInt::get();
    v66 = Cast;
    v72 = 257;
    llvm::Type::isOpaquePointerTy(*v6);
    AllocaInEntryBlock = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v8, v6, &__p, 2, v70);
    if (!a3)
    {
      v20 = a1 + *(*a1 - 24);
      v21 = llvm::PointerType::get();
      v72 = 257;
      return llvm::IRBuilderBase::CreateCast((v20 + 1712), 49, AllocaInEntryBlock, v21, v70);
    }
  }

  else
  {
    llvm::PointerType::get();
    AllocaInEntryBlock = llvm::UndefValue::get();
  }

  if (a3 == 2)
  {
LABEL_24:
    v57 = a1 + *(*a1 - 24);
    v72 = 257;
    return AGCLLVMBuilder::CreateLoad((v57 + 1704), AllocaInEntryBlock, v70);
  }

  return AllocaInEntryBlock;
}

llvm::Type **AGCLLVMUserObject::buildConstantSamplerArgumentPointer(void *a1, uint64_t a2, unsigned int a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = &a1[8 * a3];
  v6 = v5[269];
  if (v6)
  {
    v7 = v5[273];
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 237);
    v26 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v8 + 1712), 47, a2, v9, v25);
    v11 = a1 + *(*a1 - 24);
    if (!a3 && *(Cast + 16) >= 0x15u)
    {
      v12 = llvm::PointerType::get();
      v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + *(*a1 - 24) + 1704, "llvm.agx.samplerState", 21, v12, v12, *(a1 + *(*a1 - 24) + 1912));
      v14 = (a1 + *(*a1 - 24));
      v26 = 257;
      v29[0] = llvm::IRBuilderBase::CreateCast((v14 + 214), 49, v6, v12, v25);
      v15 = a1 + *(*a1 - 24);
      v16 = *(v15 + 239);
      v28 = 257;
      v29[1] = llvm::IRBuilderBase::CreateCast((v15 + 1712), 39, Cast, v16, v27);
      v24[16] = 257;
      GEP = llvm::IRBuilderBase::CreateCall(v14 + 214, *(v13 + 24), v13, v29, 2, v24);
      v18 = a1 + *(*a1 - 24);
      v19 = llvm::PointerType::get();
      v26 = 257;
      return llvm::IRBuilderBase::CreateCast((v18 + 1712), 49, GEP, v19, v25);
    }

    v27[0] = llvm::ConstantInt::get();
    v27[1] = Cast;
    v26 = 257;
    llvm::Type::isOpaquePointerTy(*v6);
    GEP = llvm::IRBuilderBase::CreateGEP((v11 + 1712), v7, v6, v27, 2, v25);
    if (!a3)
    {
      v18 = a1 + *(*a1 - 24);
      v19 = llvm::PointerType::get();
      v26 = 257;
      return llvm::IRBuilderBase::CreateCast((v18 + 1712), 49, GEP, v19, v25);
    }
  }

  else
  {
    llvm::PointerType::get();
    GEP = llvm::UndefValue::get();
  }

  if (a3 == 2)
  {
    v20 = (a1 + *(*a1 - 24));
    v21 = a1[255];
    v26 = 257;
    llvm::Type::isOpaquePointerTy(*GEP);
    return llvm::IRBuilderBase::CreateAlignedLoad(v20 + 214, v21, GEP, 0, v25);
  }

  return GEP;
}

uint64_t AGCLLVMUserObject::buildEmulatedIsF16Format(_BYTE *a1, __int128 *a2, AGCLLVMUserObject *a3)
{
  v6 = &a1[*(*a1 - 24)];
  v18 = *a2;
  v19 = *(a2 + 2);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v18, (v6 + 1712));
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = &a1[*(*a1 - 24)];
  v8 = AGCLLVMUserObject::buildImageArgumentPointer(a1, a3, 4);
  Load = AGCLLVMBuilder::CreateLoad(v7 + 213, v8, "packedFormat");
  v10 = &a1[*(*a1 - 24)];
  v11 = llvm::ConstantInt::get();
  v17 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((v10 + 214), Load, v11, v16);
  v13 = llvm::ConstantInt::get();
  v15[16] = 257;
  return llvm::IRBuilderBase::CreateICmp(v10 + 214, 33, v12, v13, v15);
}

uint64_t AGCLLVMBuilder::CreateLoad(unsigned int **this, llvm::Type **a2, const char *a3)
{
  v6 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v6)
  {
    llvm::Type::isOpaquePointerTy(*a2);
  }

  v7 = 1;
  v11 = 1;
  if (*a3)
  {
    v9 = a3;
    v7 = 3;
  }

  v10 = v7;
  return llvm::IRBuilderBase::CreateAlignedLoad(this + 1, v6, a2, 0, &v9);
}

uint64_t AGCLLVMUserObject::createGetDispatchPrivateBufferPtrFunction(unsigned int)::$_1::operator()(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 4000);
  v4 = *a1 + *(**a1 - 24);
  v5 = *(v4 + 2168);
  v17 = *(v4 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (v4 + 1712));
  v19 = *(v4 + 1808);
  v6 = (*(*v5 + 984))(v5, &v17, v3);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = v2 + *(*v2 - 24);
  v8 = a1[2];
  v16 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 48, v6, v8, v15);
  v10 = v2 + *(*v2 - 24);
  v11 = *(v10 + 239);
  v20[0] = llvm::ConstantInt::get();
  v16 = 257;
  llvm::Type::isOpaquePointerTy(*Cast);
  v12 = llvm::IRBuilderBase::CreateInBoundsGEP((v10 + 1712), v11, Cast, v20, 1, v15);
  v14[16] = 257;
  llvm::Type::isOpaquePointerTy(*v12);
  return llvm::IRBuilderBase::CreateAlignedLoad(v10 + 214, v11, v12, 0, v14);
}

uint64_t AGCLLVMUserObject::createGetDispatchPrivateBufferPtrFunction(unsigned int)::$_0::operator()(uint64_t a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a1 + *(**a1 - 24);
  v4 = (*(*v3 + 80))(v3);
  v5 = v2 + *(*v2 - 24);
  if (v4 == 8)
  {
    v6 = llvm::PointerType::get();
    v7 = (v2 + *(*v2 - 24));
    DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v7);
    v48 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v7 + 213), DylibBuiltinPerCommandStateVar, v47);
    v10 = *(a1 + 16);
    v46 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v7 + 214, Load, v10, v45, v11);
    v13 = v2 + *(*v2 - 24);
    v14 = *(v13 + 271);
    v42 = *(v13 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (v13 + 1712));
    v44 = *(v13 + 452);
    v15 = (*(*v14 + 968))(v14, &v42);
    if (v43)
    {
      llvm::MetadataTracking::untrack();
    }

    v16 = v2 + *(*v2 - 24);
    v17 = (*(**(v16 + 271) + 696))(*(v16 + 271));
    (*(*v17 + 1904))(v17, 6);
    v18 = llvm::ConstantInt::get();
    v48 = 257;
    llvm::IRBuilderBase::CreateICmp(v16 + 214, 32, v15, v18, v47);
    v19 = v2 + *(*v2 - 24);
    v20 = *(v19 + 236);
    v48 = 257;
    v22 = llvm::IRBuilderBase::CreatePointerCast(v19 + 214, PointerCast, v6, v47, v21);
    v23 = llvm::ConstantInt::get();
    v46 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v19 + 1712), v20, v22, v23, v45);
    v25 = (v2 + *(*v2 - 24));
    v26 = *(a1 + 16);
    v48 = 257;
    llvm::IRBuilderBase::CreatePointerCast(v25 + 214, GEP, v26, v47, v27);
    v48 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v29 = v2 + *(*v2 - 24);
    v30 = *(v29 + 239);
    v49[0] = llvm::ConstantInt::get();
    v48 = 257;
    llvm::Type::isOpaquePointerTy(*Select);
    v31 = llvm::IRBuilderBase::CreateInBoundsGEP((v29 + 1712), v30, Select, v49, 1, v47);
    v46 = 257;
    llvm::Type::isOpaquePointerTy(*v31);
    return llvm::IRBuilderBase::CreateAlignedLoad(v29 + 214, v30, v31, 0, v45);
  }

  else
  {
    v33 = *(a1 + 8);
    v34 = v2 + 24 * v33;
    v35 = *(v34 + 376);
    if (!v35)
    {
      v36 = (v34 + 2992);
      if ((*(*v5 + 80))(v5) == 7 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 22 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 8 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 3 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 4)
      {
        v37 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
        v38 = (*(*v37 + 776))(v37);
      }

      else
      {
        v41 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
        v38 = (*(*v41 + 392))(v41);
      }

      v39 = *(v2 + *(*v2 - 24) + 1912);
      v47[0] = "agc.private_dispatch_buffer";
      v48 = 259;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v2, v39, v47, v38 + v33, 0, 5u, 0);
      llvm::ValueHandleBase::operator=(v36, GlobalBufferBinding);
      v35 = *(v36 + 2);
    }

    v48 = 257;
    return AGCLLVMBuilder::CreateLoad((v5 + 1704), v35, v47);
  }
}

void AGCLLVMUserObject::createSamplerArrays(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8))
  {
    v5 = 0x27C8D7000uLL;
    {
      v5 = 0x27C8D7000;
      if (v21)
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        v5 = 0x27C8D7000;
      }
    }

    if (*(v5 + 2944) == 1 && (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", a2)) != 0 && *Value != 48 && atoi(Value) && *(*(a1 + *(*a1 - 24) + 2168) + 1869) != 1 || *(*(a1 + *(*a1 - 24) + 2168) + 1900) || (*(a1 + 15) & 1) != 0)
    {
      v7 = llvm::PointerType::get();
      NullValue = llvm::Constant::getNullValue(v7, v8);
      llvm::ValueHandleBase::operator=((a1 + 1880), NullValue);
    }

    else
    {
      v16 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 1880);
      if (*(a1 + 3856) == 1)
      {
        AGCLLVMObject::setDylibLinkage(v16, v17);
      }
    }

    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 1944);
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 2008);
    v10 = (a1 + 656);
    llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(v10, *(a2 + 8));
    if (*(a2 + 8))
    {
      v11 = 0;
      v12 = *a2;
      v13 = *v10;
      do
      {
        v14 = *v12;
        v12 += 6;
        *(v13 + 4 * v11++) = v14;
      }

      while (v11 < *(a2 + 8));
    }
  }

  else
  {
    v15 = *(a1 + *(*a1 - 24) + 2168);
    if ((*(v15 + 1869) & 1) == 0 && !*(v15 + 1900))
    {
      v18 = llvm::PointerType::get();
      v20 = llvm::Constant::getNullValue(v18, v19);
      llvm::ValueHandleBase::operator=((a1 + 1880), v20);
      *(a1 + 1928) = *(a1 + 1912);

      AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 2008);
    }
  }
}

void AGCLLVMUserObject::createTextureArrays(void *a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x400000000;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = 32 * v4;
    do
    {
      if ((*(v5 + 8) & 2) != 0)
      {
        v7 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(&v12, v5);
        v8 = v12 + 32 * v13;
        v9 = v7[1];
        *v8 = *v7;
        v8[1] = v9;
        LODWORD(v13) = v13 + 1;
      }

      v5 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  v10 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 155));
  AGCLLVMUserObject::setupTextureArrayRasterOrderGroup(a1, a2, v10);
  v11 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, &v12, (a1 + 163));
  AGCLLVMUserObject::setupTextureArrayRasterOrderGroup(a1, &v12, v11);
  if (*(*(a1 + *(*a1 - 24) + 2168) + 1869))
  {
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 171));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 179));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 195));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 203));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 187));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 211));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 227));
  }

  if (v12 != v14)
  {
    free(v12);
  }
}

void *AGCLLVMUserObject::setupTextureArrayRasterOrderGroup(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 4;
    do
    {
      if (*(*a2 + v8) != -1)
      {
        v9 = v6 + *(*v6 - 24);
        if ((v9[2284] & 1) == 0)
        {
          v10 = std::__throw_bad_optional_access[abi:nn200100]();
          return AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(v10, v11);
        }

        result = (*(**(v9 + 271) + 176))(*(v9 + 271), a3);
      }

      ++v7;
      v8 += 32;
    }

    while (v3 != v7);
  }

  return result;
}

void *AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(void *result, int a2)
{
  if (a2 != -1)
  {
    v3 = result + *(*result - 24);
    if (v3[2284])
    {
      v4 = *(**(v3 + 271) + 176);

      return v4();
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:nn200100]();
      return llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](v5, v6);
    }
  }

  return result;
}

uint64_t llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BDF98;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

uint64_t *std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(uint64_t *result, unint64_t a2, void *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 48);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

BOOL AGCLLVMUserObject::replaceTensorInput<llvm::Argument>(AGCLLVMUserObject *a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v21 = a3;
  v20 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v6 = parseMDBuffer(a4, 1, &v21, &v20 + 1, &v20, &v19, &v17, &v16, &v15, &v18, &v14);
  v7 = HIDWORD(v20) < 2 && v6;
  v8 = (a1 + *(*a1 - 24));
  if (v7)
  {
    v9 = *(*(a1 + 21) + 80);
    if (v9)
    {
      v10 = v9 - 24;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v10 + 40);
    if (v11)
    {
      v12 = (v11 - 24);
    }

    else
    {
      v12 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint(&v8[71].__r_.__value_.__r.__words[1], v12);
    AGCLLVMUserObject::setupBufferArgumentData(a1, *a2, v21, -1, 0, v16, 0xFFFFFFFFLL);
    llvm::Value::replaceAllUsesWith();
  }

  else
  {
    std::string::append(v8 + 69, " Failed to parse the Tensor Metadata ");
  }

  return v7;
}

uint64_t AGCLLVMUserObject::getBindlessConstantSampler(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v6 = a1[118];
  v7 = a1[119];
  v8 = v6;
  if (*&v6 != *&v7)
  {
    while (*v8 != a2 || v8[1] != a3)
    {
      v8 += 2;
      if (v8 == *&v7)
      {
        v8 = a1[119];
        break;
      }
    }
  }

  if (*&v7 == v8)
  {
    std::vector<AIRConstSampler>::push_back[abi:nn200100](&a1[118], &v59);
    v8 = v7;
  }

  v9 = (v8 - *&v6) >> 4;
  if (a1[487].i8[0] == 1)
  {
    v10 = a1 + *(*a1 - 24);
    v11 = llvm::ConstantInt::get();
    LOWORD(v56[0].__locale_) = 257;
    return llvm::IRBuilderBase::CreateCast((v10 + 1712), 48, v11, a4, v53);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v53);
    *(&v56[1].__locale_ + *(v54 - 24)) = 16;
    std::operator<<[abi:nn200100]<std::char_traits<char>>(&v54, 48);
    v47[0] = &v59;
    v48 = 0;
    LOWORD(v50[0].__locale_) = 270;
    llvm::Twine::str(&__p, v47);
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

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v54, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v47);
    *(&v50[1].__locale_ + *(v48 - 24)) = 16;
    std::operator<<[abi:nn200100]<std::char_traits<char>>(&v48, 48);
    __p.__r_.__value_.__r.__words[0] = &v59 + 8;
    __p.__r_.__value_.__r.__words[2] = 0;
    v44 = 270;
    llvm::Twine::str(v45, &__p);
    if (v46 >= 0)
    {
      v15 = v45;
    }

    else
    {
      v15 = v45[0];
    }

    if (v46 >= 0)
    {
      v16 = HIBYTE(v46);
    }

    else
    {
      v16 = v45[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v48, v15, v16);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    std::stringbuf::str();
    v17 = std::string::insert(&v41, 0, "agc.const_sampler_heap_index_");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v42, "_");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::stringbuf::str();
    if ((v40 & 0x80u) == 0)
    {
      v21 = v39;
    }

    else
    {
      v21 = v39[0];
    }

    if ((v40 & 0x80u) == 0)
    {
      v22 = v40;
    }

    else
    {
      v22 = v39[1];
    }

    v23 = std::string::append(&__p, v21, v22);
    v24 = v23->__r_.__value_.__r.__words[2];
    *v45 = *&v23->__r_.__value_.__l.__data_;
    v46 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    GlobalVariable = llvm::Module::getGlobalVariable();
    if (!GlobalVariable)
    {
      GlobalVariable = llvm::User::operator new(0x58);
      v44 = 260;
      __p.__r_.__value_.__r.__words[0] = v45;
      v26 = llvm::GlobalVariable::GlobalVariable();
      *(v26 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      llvm::DataLayout::getPrefTypeAlignment(&a1[28], *(&a1[238] + *(*a1 - 24)));
      llvm::GlobalObject::setAlignment();
      v27 = a1 + *(*a1 - 24);
      v28 = *(v27 + 268);
      v29 = AGCLLVMBuilder::buildGlobalMetadata(v27 + 213, GlobalVariable, 0x72u, v9);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v29);
    }

    if (llvm::Type::isOpaquePointerTy(*GlobalVariable))
    {
      v30 = llvm::PointerType::get(*(&a1[270] + *(*a1 - 24)), (*(a4 + 8) >> 8));
    }

    else
    {
      v30 = llvm::PointerType::get();
    }

    v31 = a1 + *(*a1 - 24);
    v44 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v31 + 1712), 50, GlobalVariable, v30, &__p);
    v33 = a1 + *(*a1 - 24);
    v44 = 257;
    v12 = llvm::IRBuilderBase::CreateCast((v33 + 1712), 49, Cast, a4, &__p);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    v47[0] = *MEMORY[0x277D82818];
    v34 = v47[0];
    v35 = *(MEMORY[0x277D82818] + 72);
    v36 = *(MEMORY[0x277D82818] + 64);
    *(v47 + *(v47[0] - 24)) = v36;
    v37 = v35;
    v48 = v35;
    v49 = MEMORY[0x277D82878] + 16;
    if (v51 < 0)
    {
      operator delete(v50[7].__locale_);
    }

    v49 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v50);
    std::iostream::~basic_iostream();
    MEMORY[0x20F331D40](&v52);
    v53[0] = v34;
    *(v53 + *(v34 - 24)) = v36;
    v54 = v37;
    v55 = MEMORY[0x277D82878] + 16;
    if (v57 < 0)
    {
      operator delete(v56[7].__locale_);
    }

    v55 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v56);
    std::iostream::~basic_iostream();
    MEMORY[0x20F331D40](&v58);
  }

  return v12;
}

uint64_t AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v19[0] = "agc.const_sampler_state_struct_ptr_";
  v20 = &v18;
  v21 = 3587;
  llvm::Twine::str(&__p, v19);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v6 = (*(a1 + 952) - *(a1 + 944)) >> 4;
    std::vector<AIRConstSampler>::push_back[abi:nn200100](a1 + 944, &v18);
    (*(*a1 + 424))(a1);
    v7 = *(a1 + 15);
    v8 = llvm::User::operator new(0x58);
    v9 = "agc.const_sampler_state_words_";
    if (v7)
    {
      v9 = "_agx_const_ss.";
    }

    v19[0] = v9;
    v20 = &v18;
    v21 = 3587;
    v10 = llvm::GlobalVariable::GlobalVariable();
    *(v10 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v11 = a1 + *(*a1 - 24);
    v12 = *(v11 + 2144);
    v13 = AGCLLVMBuilder::buildGlobalMetadata((v11 + 1704), v8, 0x12u, v6);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v12, v13);
    v19[0] = llvm::PointerType::get();
    llvm::StructType::get();
    v19[0] = v8;
    llvm::ConstantStruct::get();
    GlobalVariable = llvm::User::operator new(0x58);
    v21 = 260;
    v19[0] = &__p;
    v14 = llvm::GlobalVariable::GlobalVariable();
    *(v14 + 80) |= 1u;
    llvm::GlobalVariable::setInitializer();
    v19[0] = 4;
    v19[1] = 0;
    v20 = GlobalVariable;
    v15 = GlobalVariable;
    if (GlobalVariable != -8192)
    {
      v15 = GlobalVariable;
      if (GlobalVariable != -4096)
      {
        v15 = GlobalVariable;
        if (GlobalVariable)
        {
          llvm::ValueHandleBase::AddToUseList(v19);
          v15 = v20;
        }
      }
    }

    std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>((a1 + 816), v15, v19);
    if (v20 != -8192 && v20 != -4096 && v20)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  return GlobalVariable;
}

void AGCLLVMUserObject::handleGLIndirectSamplerFunction(AGCLLVMUserObject *this, llvm::Function *a2, unsigned int a3, unsigned int a4)
{
  v145[16] = *MEMORY[0x277D85DE8];
  v143 = v145;
  v144 = 0x1000000000;
  v4 = *(a2 + 1);
  if (!v4)
  {
    return;
  }

  do
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v143, *(v4 + 24));
    v4 = *(v4 + 8);
  }

  while (v4);
  v7 = v143;
  if (!v144)
  {
    goto LABEL_224;
  }

  v8 = &v143[8 * v144];
  v125 = a3;
  v127 = 32 * a3;
  v128 = this + 1712;
  v9 = a4;
  v123 = v8;
  do
  {
    v10 = *v7;
    v11 = *v7 - 32 * (*(*v7 + 20) & 0x7FFFFFF);
    if (v9)
    {
      v12 = *(v11 + 32 * a4);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v11 + v127);
    if (*(v13 + 16) != 83)
    {
      goto LABEL_60;
    }

    v14 = *(v10 + 40);
    v15 = *(v14 + 1);
    if (v15)
    {
      v16 = *(v14 + 1);
      while (1)
      {
        v17 = *(v16 + 24);
        v18 = *(v17 + 16);
        v19 = v17 && v18 >= 0x1C;
        if (v19 && v18 - 29 <= 0xA)
        {
          break;
        }

        v16 = *(v16 + 8);
        if (!v16)
        {
LABEL_50:
          while (1)
          {
            v34 = *(v15 + 24);
            v35 = *(v34 + 16);
            v36 = v34 && v35 >= 0x1C;
            if (v36 && v35 - 40 > 0xFFFFFFF4)
            {
              break;
            }

            v15 = *(v15 + 8);
            if (!v15)
            {
              goto LABEL_58;
            }
          }

          if ((*(v13 + 20) & 0x7FFFFFF) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All predecessors of the indirect sampler call have an unconditional branch, may need more code changes to handle this", buf, 2u);
            }

            abort();
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v13);
          if (v12)
          {
            if (*(v12 + 16) == 83)
            {
              v10 = v12;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      v21 = 0;
LABEL_21:
      v22 = *(v17 + 40);
      v23 = *(v22 + 40);
      v24 = v23 - 24;
      if (v23)
      {
        v25 = v23 - 24;
      }

      else
      {
        v25 = 0;
      }

      v26 = *(v25 + 16) - 40;
      if (v26 < 0xFFFFFFF5)
      {
        v24 = 0;
      }

      v27 = *(v24 + 16) == 30 && v26 >= 0xFFFFFFF5;
      if (!v27 || (*(v23 - 4) & 0x7FFFFFF) != 1)
      {
        v21 = v22;
      }

      while (1)
      {
        v16 = *(v16 + 8);
        if (!v16)
        {
          break;
        }

        v17 = *(v16 + 24);
        v28 = *(v17 + 16);
        if (v17)
        {
          v29 = v28 >= 0x1C;
        }

        else
        {
          v29 = 0;
        }

        if (v29 && v28 - 29 < 0xB)
        {
          goto LABEL_21;
        }
      }

      if (!v21)
      {
        goto LABEL_50;
      }

      v31 = *(v21 + 40);
      if (v31 == (v21 + 40))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31 - 3;
        if (v31)
        {
          v33 = v31 - 3;
        }

        else
        {
          v33 = 0;
        }

        if (*(v33 + 16) - 29 >= 0xB)
        {
          v32 = 0;
        }
      }

      v38 = *(v32 + 5);
      if ((v38 & 0x7FFFFFF) != 0)
      {
        v39 = (v38 & 0x40000000) != 0 ? *(v32 - 1) : &v32[-4 * (v38 & 0x7FFFFFF)];
        v40 = *v39;
        if (*(*v39 + 16) == 60)
        {
          v41 = *(v40 - 4);
          v42 = *(*v41 + 8);
          if ((v42 & 0xFE) == 0x12)
          {
            v42 = *(**(*v41 + 16) + 8);
          }

          if (v42 <= 0xFF && v41[16] == 59)
          {
            while (1)
            {
              v43 = (v31 - 3);
              if (!v31)
              {
                v43 = 0;
              }

              if (v43 == v40)
              {
                break;
              }

              v31 = *v31;
            }

            while (v31 != (v21 + 40))
            {
              if (v31 && *(v31 - 8) == 61)
              {
                v44 = *(v31 - 7);
                if (v44 == v41)
                {
                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v40);
                  llvm::ConstantFoldTerminator();
                  v15 = *(v14 + 1);
                  break;
                }

                v45 = *(*v44 + 8);
                if ((v45 & 0xFE) == 0x12)
                {
                  v45 = *(**(*v44 + 16) + 8);
                }

                if (v45 <= 0xFF && v44[16] != 59)
                {
                  break;
                }
              }

              v31 = *v31;
            }
          }
        }
      }

      if (v15)
      {
        while (1)
        {
          v46 = *(v15 + 24);
          v47 = *(v46 + 16);
          v48 = v46 && v47 >= 0x1C;
          if (v48 && v47 - 29 <= 0xA)
          {
            break;
          }

          v15 = *(v15 + 8);
          if (!v15)
          {
            goto LABEL_128;
          }
        }

        do
        {
          v50 = v15;
          do
          {
            v15 = *(v15 + 8);
            if (!v15)
            {
              break;
            }

            v51 = *(v15 + 24);
            v52 = *(v51 + 16);
            v53 = v51 && v52 >= 0x1C;
          }

          while (!v53 || v52 - 29 >= 0xB);
          v55 = *(*(v50 + 24) + 40);
          v56 = *(v55 + 1);
          if (v56)
          {
            while (1)
            {
              v57 = *(v56 + 24);
              v58 = *(v57 + 16);
              v59 = v57 && v58 >= 0x1C;
              if (v59 && v58 - 40 > 0xFFFFFFF4)
              {
                break;
              }

              v56 = *(v56 + 8);
              if (!v56)
              {
                goto LABEL_121;
              }
            }
          }

          else
          {
LABEL_121:
            v61 = *(*(v55 + 7) + 80);
            if (v61)
            {
              v62 = (v61 - 24);
            }

            else
            {
              v62 = 0;
            }

            if (v55 != v62)
            {
              llvm::BasicBlock::removePredecessor(v14, v55);
              if (!*(v55 + 1))
              {
                llvm::BasicBlock::eraseFromParent(v55);
              }
            }
          }
        }

        while (v15);
      }

LABEL_128:
      v63 = v10 - 32 * (*(v10 + 20) & 0x7FFFFFF);
      v64 = *(v63 + v127);
      if (v9)
      {
        if (*(v64 + 16) != 83 || v64 == 0)
        {
          goto LABEL_60;
        }

        v66 = *(v63 + 32 * a4);
        if (v66)
        {
          if (*(v66 + 16) == 83)
          {
            v67 = *(v63 + 32 * a4);
          }

          else
          {
            v67 = 0;
          }

LABEL_143:
          v69 = 0;
          v137 = 0u;
          v138 = 0u;
          *__p = 0u;
          v131 = v135;
          v132 = v135;
          v133 = 4;
          v70 = v10;
          v134 = 0;
          while (1)
          {
            v71 = llvm::CallBase::arg_end(v10);
            v72 = *(v10 + 20) & 0x7FFFFFF;
            if (v69 >= ((v71 - (v10 + 32 * -v72)) >> 5))
            {
              break;
            }

            v73 = *(v70 - 32 * v72);
            if (*(v73 + 16) <= 0x1Bu)
            {
              v74 = 0;
            }

            else
            {
              v74 = v73;
            }

            v129[0] = v74;
            if (v74)
            {
              v75 = v74 == v64;
            }

            else
            {
              v75 = 1;
            }

            if (!v75 && v74 != v66 && v74[5] == v14)
            {
              llvm::SmallPtrSetImpl<void *>::insert(buf, &v131, v74);
              if (v141[0] == 1)
              {
                std::deque<llvm::GetElementPtrInst *>::push_back(__p, v129);
              }
            }

            ++v69;
            v70 += 32;
          }

          v77 = *(&v138 + 1);
          if (*(&v138 + 1))
          {
            v78 = v138;
            do
            {
              v79 = *(*(__p[1] + ((v78 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v78 & 0x1FF));
              v80 = *(v79 + 20) & 0x7FFFFFF;
              if (v80)
              {
                v81 = 0;
                v82 = 32 * v80;
                do
                {
                  v83 = *(v79 + 20);
                  if ((v83 & 0x40000000) != 0)
                  {
                    v84 = *(v79 - 8);
                  }

                  else
                  {
                    v84 = v79 - 32 * (v83 & 0x7FFFFFF);
                  }

                  v85 = *(v84 + v81);
                  if (*(v85 + 16) <= 0x1Bu)
                  {
                    v86 = 0;
                  }

                  else
                  {
                    v86 = v85;
                  }

                  v129[0] = v86;
                  if (v86)
                  {
                    if (v86[5] == v14)
                    {
                      llvm::SmallPtrSetImpl<void *>::insert(buf, &v131, v86);
                      if (v141[0] == 1)
                      {
                        std::deque<llvm::GetElementPtrInst *>::push_back(__p, v129);
                      }
                    }
                  }

                  v81 += 32;
                }

                while (v82 != v81);
                v77 = *(&v138 + 1);
                v78 = v138;
              }

              --v77;
              v87 = v78 + 1;
              *&v138 = v78 + 1;
              *(&v138 + 1) = v77;
              if (v78 + 1 >= 0x400)
              {
                v88 = __p[1] + 8;
                operator delete(*__p[1]);
                v87 = v78 - 511;
                __p[1] = v88;
                *&v138 = v78 - 511;
              }

              v78 = v87;
            }

            while (v77);
          }

          v89 = *(v14 + 6);
          if (v89 != (v14 + 40))
          {
            do
            {
              if (HIDWORD(v133) == v134)
              {
                break;
              }

              v90 = v89[1];
              if (v89)
              {
                v91 = v89 - 3;
              }

              else
              {
                v91 = 0;
              }

              if (llvm::SmallPtrSetImplBase::erase_imp(&v131, v91))
              {
                llvm::Instruction::moveBefore();
              }

              v89 = v90;
            }

            while (v90 != (v14 + 40));
          }

          v92 = *(*this - 24);
          FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v10 + 40));
          llvm::IRBuilderBase::SetInsertPoint(&v128[v92], FirstNonPHI);
          v94 = *(*this - 24);
          v95 = *v10;
          v96 = *(v64 + 20);
          v142 = 257;
          PHI = llvm::IRBuilderBase::CreatePHI(&v128[v94], v95, v96 & 0x7FFFFFF, buf);
          v98 = 0;
          *buf = v141;
          v140 = 0x1000000000;
          for (i = v10; ; i += 32)
          {
            v100 = llvm::CallBase::arg_end(v10);
            v101 = *(v10 + 20) & 0x7FFFFFF;
            if (v98 >= ((v100 - (v10 + 32 * -v101)) >> 5))
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(buf, *(i - 32 * v101));
            ++v98;
          }

          v102 = *(v64 + 20);
          if ((v102 & 0x40000000) != 0)
          {
            v104 = *(v64 - 8);
            v105 = *(v64 + 60);
            v106 = (v104 + 32 * v105);
            v103 = v102 & 0x7FFFFFF;
          }

          else
          {
            v103 = v102 & 0x7FFFFFF;
            v104 = v64 - 32 * v103;
            v105 = *(v64 + 60);
            v106 = (v104 + 32 * v105);
          }

          v107 = v104 + 32 * v105 + 8 * v103;
          while (v106 != v107)
          {
            v108 = *v106;
            v109 = *(*v106 + 5);
            if (v109 == (*v106 + 40))
            {
              v112 = 0;
            }

            else
            {
              v110 = (v109 - 24);
              if (v109)
              {
                v111 = v109 - 24;
              }

              else
              {
                v111 = 0;
              }

              if (*(v111 + 16) - 29 >= 0xB)
              {
                v112 = 0;
              }

              else
              {
                v112 = v110;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(&v128[*(*this - 24)], v112);
            IncomingValueForBlock = llvm::PHINode::getIncomingValueForBlock(v64, v108);
            v114 = IncomingValueForBlock;
            if (v67)
            {
              v115 = llvm::PHINode::getIncomingValueForBlock(v67, v108);
              *(*buf + 8 * v125) = v114;
              if (v115)
              {
                *(*buf + 8 * a4) = v115;
              }
            }

            else
            {
              *(*buf + 8 * v125) = IncomingValueForBlock;
            }

            v116 = *(*this - 24);
            v130 = 257;
            v117 = llvm::IRBuilderBase::CreateCall(&v128[v116], *(a2 + 3), a2, *buf, v140, v129);
            llvm::PHINode::addIncoming(PHI, v117, v108);
            ++v106;
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v10);
          if (!*(v64 + 8))
          {
            llvm::Instruction::eraseFromParent(v64);
          }

          if (v67 && !*(v67 + 1))
          {
            llvm::Instruction::eraseFromParent(v67);
          }

          if (*buf != v141)
          {
            free(*buf);
          }

          if (v132 != v131)
          {
            free(v132);
          }

          v118 = __p[1];
          v119 = v137;
          v120 = v137 - __p[1];
          if (v137 - __p[1] >= 0x11)
          {
            do
            {
              v121 = *v118++;
              operator delete(v121);
              v120 -= 8;
            }

            while (v120 > 0x10);
          }

          while (v118 != v119)
          {
            v122 = *v118++;
            operator delete(v122);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v9 = a4;
          v8 = v123;
          goto LABEL_60;
        }
      }

      else
      {
        if (*(v64 + 16) != 83 || v64 == 0)
        {
          goto LABEL_60;
        }

        v66 = 0;
      }

      v67 = 0;
      goto LABEL_143;
    }

LABEL_58:
    llvm::UndefValue::get();
LABEL_59:
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v10);
LABEL_60:
    v7 += 8;
  }

  while (v7 != v8);
  v7 = v143;
LABEL_224:
  if (v7 != v145)
  {
    free(v7);
  }
}

uint64_t llvm::PHINode::getIncomingValueForBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = v2 & 0x7FFFFFF;
  if ((v2 & 0x7FFFFFF) != 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1 - 32 * v3;
      if ((v2 & 0x40000000) != 0)
      {
        v5 = *(a1 - 8);
      }

      if (*(v5 + 32 * *(a1 + 60) + 8 * v4) == a2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = -1;
        break;
      }
    }

    v4 = v4;
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = *(a1 - 8);
    return *(v6 + 32 * v4);
  }

  v4 = 0xFFFFFFFFLL;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = a1 - 32 * v3;
  return *(v6 + 32 * v4);
}

void AGCLLVMUserObject::setupIndirectSamplersGL(AGCLLVMUserObject *this)
{
  AGCLLVMUserObject::getDimensionFunctionMap(this);
  v2 = *(this + *(*this - 24) + 2136);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    v6 = v3 == 0;
    v3 = *(v3 + 8);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    AGCLLVMUserObject::getSampleFunctionInfo(v13, this, v7);
    if (v13[56] == 1)
    {
      v8 = v13[30];
      v9 = v13[31];
      v10 = this;
      v11 = v5;
    }

    else
    {
      llvm::Value::getName(v5);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == dword_28117E5D8)
      {
        continue;
      }

      v10 = this;
      v11 = v5;
      v8 = 0;
      v9 = 0;
    }

    AGCLLVMUserObject::handleGLIndirectSamplerFunction(v10, v11, v8, v9);
  }
}

unint64_t AGCLLVMUserObject::getInternalConstSampler(uint64_t a1, unsigned int a2)
{
  result = 0x807BFF0000002049;
  if (a2 > 1)
  {
    if (a2 == 4)
    {
      result = 0x807BFF0000002000;
      return result & 0xFFFFFFFFFFFF9FFFLL | 0x2000;
    }

    if (a2 == 3)
    {
LABEL_10:
      if (a2 <= 1)
      {
        result &= 0xFFFFFFFFFFFF9FFFLL;
        return result;
      }

      return result & 0xFFFFFFFFFFFF9FFFLL | 0x2000;
    }

    if (a2 != 2)
    {
      return result;
    }

LABEL_9:
    result = ((8 * *(a1 + 14)) | (*(a1 + 14) << 6) | *(a1 + 14)) - 0x7F8400FFFFFFE000;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildEmulatePCF(AGCLLVMUserObject *a1, uint64_t a2, __int16 *a3)
{
  v4 = a2;
  v81 = *MEMORY[0x277D85DE8];
  if (*a2 == 5)
  {
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 271);
    v63 = *(v7 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v64, (v7 + 1712));
    v65 = *(v7 + 452);
    (*(*v8 + 288))(v8, &v63, v4);
    if (v64)
    {
      llvm::MetadataTracking::untrack();
    }

    if ((*a3 & 0xF) != 0)
    {
      v10 = *(v4 + 200);
      if ((*a3 & 0x10) != 0)
      {
        v11 = a1 + *(*a1 - 24);
        v12 = *(v11 + 271);
        v78 = *(v11 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v79, (v11 + 1712));
        v80 = *(v11 + 452);
        v10 = (*(*v12 + 40))(v12, &v78, v10, 0);
        if (v79)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 4, v10, v9);
      v13 = (a1 + *(*a1 - 24));
      v14 = llvm::ConstantFP::get();
      AGCLLVMBuilder::splat(v13 + 213, 4, v14, v15);
      v16 = (a1 + *(*a1 - 24));
      v17 = llvm::ConstantFP::get();
      AGCLLVMBuilder::splat(v16 + 213, 4, v17, v18);
      v75 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v75 = 257;
      llvm::IRBuilderBase::CreateSelect();
    }

    *(v4 + 8) = v6;
    v22 = **(a1 + *(*a1 - 24) + 1704);
    return v22();
  }

  v19 = *(a2 + 8);
  if ((*a3 & 0xF) == 0 || (*a3 & 0x1C0) == 0)
  {
    *(a2 + 208) = 1;
    if ((*a3 & 0xF) != 0)
    {
      *(a2 + 8) = 0;
    }
  }

  else
  {
    if ((*a3 & 0x40) != 0)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *(a2 + 208) = v21;
  }

  v23 = *(a2 + 200);
  v24 = a1 + *(*a1 - 24);
  v25 = *(v24 + 271);
  v71 = *(v24 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v72, (v24 + 1712));
  v73 = *(v24 + 452);
  v28 = (*(*v25 + 288))(v25, &v71, v4);
  if (v72)
  {
    llvm::MetadataTracking::untrack();
  }

  v29 = *a3;
  if ((*a3 & 0xF) == 0)
  {
    v30 = a1 + *(*a1 - 24);
    XComponent = AGCLLVMUserObject::buildExtractXComponent(a1, v28, v26, v27);
    return (**(v30 + 213))((v30 + 1704), XComponent, *(v4 + 8));
  }

  if ((*a3 & 0xFu) - 2 <= 6)
  {
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_31;
    }

LABEL_29:
    v33 = a1 + *(*a1 - 24);
    v34 = *(v33 + 271);
    v68 = *(v33 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v69, (v33 + 1712));
    v70 = *(v33 + 452);
    (*(*v34 + 40))(v34, &v68, v23, 0);
    if (v69)
    {
      llvm::MetadataTracking::untrack();
    }

    goto LABEL_31;
  }

  if ((v29 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  if ((*a3 & 0x1C0) != 0)
  {
    *(&v78 + 1) = 0;
    v77 = 0;
    Select = llvm::ConstantFP::get();
    v36 = a1 + *(*a1 - 24);
    LODWORD(v63) = 0;
    v75 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v36 + 1712), v28, &v63, 1, v74);
    *&v78 = AGCLLVMBuilder::bitCastElements((v36 + 1704), Value, *(a1 + *(*a1 - 24) + 1872));
    v38 = a1 + *(*a1 - 24);
    v67 = 1;
    v75 = 257;
    v39 = llvm::IRBuilderBase::CreateExtractValue((v38 + 1712), v28, &v67, 1, v74);
    v40 = AGCLLVMBuilder::bitCastElements((v38 + 1704), v39, *(a1 + *(*a1 - 24) + 1872));
    v41 = *(a1 + *(*a1 - 24) + 2000);
    v66 = 257;
    FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v38 + 1712), v40, v41, &v63);
    v61 = v4;
    v60 = v19;
    if ((*a3 & 0x40) != 0)
    {
      v43 = a1 + *(*a1 - 24);
      LODWORD(v63) = 2;
      v75 = 257;
      v44 = llvm::IRBuilderBase::CreateExtractValue((v43 + 1712), v28, &v63, 1, v74);
      *(&v78 + 1) = AGCLLVMBuilder::bitCastElements((v43 + 1704), v44, *(a1 + *(*a1 - 24) + 1872));
      v45 = a1 + *(*a1 - 24);
      v67 = 3;
      v75 = 257;
      v46 = llvm::IRBuilderBase::CreateExtractValue((v45 + 1712), v28, &v67, 1, v74);
      v47 = AGCLLVMBuilder::bitCastElements((v45 + 1704), v46, *(a1 + *(*a1 - 24) + 1872));
      v48 = *(a1 + *(*a1 - 24) + 2000);
      v66 = 257;
      v77 = llvm::IRBuilderBase::CreateFPTrunc((v45 + 1712), v47, v48, &v63);
      v42 = 8;
    }

    else
    {
      v42 = 4;
    }

    v49 = 0;
    v62 = a1 + 1704;
    do
    {
      v50 = &v62[*(*a1 - 24)];
      v51 = *(&v78 + (v49 >> 2));
      v75 = 257;
      v52 = llvm::ConstantInt::get();
      llvm::IRBuilderBase::CreateExtractElement((v50 + 8), v51, v52, v74);
      v53 = &v62[*(*a1 - 24)];
      v54 = *(&FPTrunc + (v49 >> 2));
      v75 = 257;
      v55 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v53 + 8), v54, v55, v74);
      v75 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v57 = *(*a1 - 24);
      v75 = 257;
      llvm::IRBuilderBase::CreateFAdd(a1 + v57 + 1712, Select, Element, v74);
      v75 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      ++v49;
    }

    while (v42 != v49);
    v58 = a1 + *(*a1 - 24);
    v59 = *(v58 + 234);
    v75 = 257;
    llvm::IRBuilderBase::CreateFPExt((v58 + 1712), Select, v59, v74);
    v4 = v61;
    v19 = v60;
  }

  else
  {
    AGCLLVMUserObject::buildExtractXComponent(a1, v28, v26, v27);
    v75 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    v75 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  *(v4 + 8) = v19;
  v22 = **(a1 + *(*a1 - 24) + 1704);
  return v22();
}

llvm::Instruction *AGCLLVMBuilder::CreateGEP(AGCLLVMBuilder *this, llvm::Type **a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v8 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v8)
  {
    v9 = v8;
    llvm::Type::isOpaquePointerTy(*a2);
    v10 = (this + 8);
    v11 = v9;
  }

  else
  {
    v10 = (this + 8);
    v11 = 0;
  }

  return llvm::IRBuilderBase::CreateGEP(v10, v11, a2, a3, a4);
}

unsigned __int8 *AGCLLVMUserObject::buildExtractXComponent(AGCLLVMUserObject *this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v4 = a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = this + *(*this - 24);
    v9 = 257;
    v6 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v5 + 1712), v4, v6, v8);
  }

  return v4;
}

void AGCLLVMUserObject::allocateBindlessTextures(uint64_t *a1, uint64_t *a2, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a3, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a4, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a5)
{
  v104 = *MEMORY[0x277D85DE8];
  v81 = (a2[1] - *a2) >> 3;
  v100 = 0u;
  v98 = &unk_2825A73B8;
  v99 = &v100;
  v101[0] = &v102;
  v101[1] = 0x800000000;
  v103 = 0;
  llvm::IntEqClasses::grow(v101);
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (!(((v8 - *a2) >> 3) >> 58))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v95 = a1;
  v96 = &v98;
  v97 = &v81;
  v86 = &unk_2825A79A8;
  v87 = &v98;
  v88[0] = &v81;
  v88[1] = &v86;
  v93[0] = &unk_2825A79F0;
  v93[1] = &v86;
  v94 = v93;
  for (i = *(a3 + 3); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v94, i[5], v7);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v93);
  v91[0] = &unk_2825A7A38;
  v91[1] = &v95;
  v92 = v91;
  for (j = *(a4 + 3); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v92, j[5], v10);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v91);
  v89[0] = &unk_2825A7AC8;
  v89[1] = &v95;
  v90 = v89;
  for (k = *(a5 + 3); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v90, k[5], v12);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v89);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v86);
  llvm::IntEqClasses::compress(v101);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (((AGCEnv::isEnabled(void)::is_internal & 1) == 0 || (v15 = AGCEnv::getValue("AGC_FORCE_BINDLESS", v14)) == 0 || *v15 == 48 || !atoi(v15)) && !*(*(a1 + *(*a1 - 24) + 2168) + 1900))
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_MAX_TEXTURE_REGISTERS", v14))
    {
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1)
      {
        Value = AGCEnv::getValue("AGC_MAX_TEXTURE_REGISTERS", v16);
        if (Value)
        {
          if (*Value != 48)
          {
            atoi(Value);
          }
        }
      }
    }
  }

  if (v103)
  {
    operator new();
  }

  v18 = v99;
  if (v99 != &v100)
  {
    v19 = v101[0];
    do
    {
      v20 = *(v18 + 7);
      v21 = *(v18 + 8);
      v22 = *(v18 + 9);
      v23 = 12 * *(v19 + 4 * v22);
      *v23 = v22;
      *(v23 + 4) = 1;
      *(v23 + 8) += v21 - v20 + 1;
      v24 = *(v18 + 1);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v18 + 2);
          v26 = *v25 == v18;
          v18 = v25;
        }

        while (!v26);
      }

      v18 = v25;
    }

    while (v25 != &v100);
  }

  llvm::IntEqClasses::uncompress(v101);
  llvm::IntEqClasses::compress(v101);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v28 = a1;
  if (AGCEnv::isEnabled(void)::is_internal)
  {
    v29 = AGCEnv::getValue("AGC_DEBUG_LLVM_IR", v27);
    if (v29 && *v29 != 48 && atoi(v29))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "----- Texture allocations ------\n");
      }

      v77 = 1;
    }

    else
    {
      v77 = 0;
    }
  }

  else
  {
    v77 = 0;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v86 = v88;
  v87 = 0x800000000;
  v80[0] = 0;
  v80[1] = 0;
  v79 = v80;
  v33 = a1 + 212;
  v34 = a1 + 126;
  v35 = 1;
  do
  {
    v36 = v32;
    v37 = v99;
    if (v99 != &v100)
    {
      v76 = v32;
      do
      {
        v38 = *(v37 + 7);
        v39 = v80[0];
        if (!v80[0])
        {
          goto LABEL_56;
        }

        v40 = v80;
        do
        {
          v41 = *(v39 + 32);
          v42 = v41 >= v38;
          v43 = v41 < v38;
          if (v42)
          {
            v40 = v39;
          }

          v39 = *(v39 + 8 * v43);
        }

        while (v39);
        if (v40 == v80 || v38 < *(v40 + 7))
        {
LABEL_56:
          if (*(v101[0] + 4 * *(v37 + 9)) == *(v101[0] + 4 * v81))
          {
            v95 = v37 + 28;
            *(std::__tree<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::__map_value_compare<AGCArgumentBuffer::Resource::Bounds,std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::less<AGCArgumentBuffer::Resource::Bounds>,true>,std::allocator<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>>>::__emplace_unique_key_args<AGCArgumentBuffer::Resource::Bounds,std::piecewise_construct_t const&,std::tuple<AGCArgumentBuffer::Resource::Bounds const&>,std::tuple<>>(&v79, v38, *(v37 + 8), &v95) + 36) = 1;
            if ((v77 & v35) != 0 && AGCTargetPrinter::isValidToPrintMessage(*(v33 + *(*v28 - 24))))
            {
              AGCTargetPrinter::printMessage(*(v33 + *(*v28 - 24)), "[%08x - %08x] bindless");
            }
          }

          else if (((v38 & 0x80000000) != 0) != (v35 & 1))
          {
            v95 = v37 + 28;
            *(std::__tree<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::__map_value_compare<AGCArgumentBuffer::Resource::Bounds,std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::less<AGCArgumentBuffer::Resource::Bounds>,true>,std::allocator<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>>>::__emplace_unique_key_args<AGCArgumentBuffer::Resource::Bounds,std::piecewise_construct_t const&,std::tuple<AGCArgumentBuffer::Resource::Bounds const&>,std::tuple<>>(&v79, v38, *(v37 + 8), &v95) + 36) = 1;
            v44 = *v34;
            if (!*v34)
            {
              goto LABEL_68;
            }

            v45 = *(v37 + 7);
            v46 = a1 + 126;
            do
            {
              v47 = *(v44 + 36) + *(v44 + 32);
              v48 = v47 > v45;
              v49 = v47 <= v45;
              if (v48)
              {
                v46 = v44;
              }

              v44 = *(v44 + 8 * v49);
            }

            while (v44);
            if (v46 == v34 || v45 < *(v46 + 8))
            {
LABEL_68:
              v46 = a1 + 126;
            }

            if (v87)
            {
              v50 = 0;
              v51 = 32 * v87;
              v52 = v86 + 8;
              do
              {
                v53 = *v52;
                v52 += 32;
                v50 += (v53 >> 1) & 1;
                v51 -= 32;
              }

              while (v51);
              v54 = v50 << 16;
            }

            else
            {
              v54 = 0;
            }

            *(v37 + 9) = v54 | v87;
            for (m = *(v37 + 7); m <= *(v37 + 8); ++m)
            {
              AGCLLVMUserObject::Texture::getAllocationInfo(&v95, (v46 + 4), m);
              v56 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(&v86, &v95);
              v57 = v86 + 32 * v87;
              v58 = v56[1];
              *v57 = *v56;
              v57[1] = v58;
              LODWORD(v87) = v87 + 1;
            }

            v28 = a1;
            if ((v77 & 1) != 0 && AGCTargetPrinter::isValidToPrintMessage(*(v33 + *(*a1 - 24))))
            {
              AGCTargetPrinter::printMessage(*(v33 + *(*a1 - 24)), "[%08x - %08x] TS%d - TS%d");
            }
          }
        }

        v59 = *(v37 + 1);
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = *(v37 + 2);
            v26 = *v60 == v37;
            v37 = v60;
          }

          while (!v26);
        }

        v37 = v60;
      }

      while (v60 != &v100);
      v30 = v87;
      v36 = v76;
    }

    if (v35)
    {
      v31 = v30;
    }

    v32 = 1;
    v35 = 0;
  }

  while ((v36 & 1) == 0);
  AGCLLVMUserObject::createTextureArrays(v28, &v86);
  if (v31 != v87)
  {
    if (v31 >= v87)
    {
      if (v31 > HIDWORD(v87))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v87 != v31)
      {
        v61 = v86 + 32 * v87;
        v62 = 32 * v31 - 32 * v87;
        do
        {
          *v61 = 0uLL;
          v61[1] = 0uLL;
          v61 += 2;
          v62 -= 32;
        }

        while (v62);
      }
    }

    LODWORD(v87) = v31;
  }

  v95 = &v97;
  v96 = 0x800000000;
  __src[0] = v85;
  __src[1] = v85;
  __src[2] = 4;
  LODWORD(v84) = 0;
  v63 = *a2;
  if (a2[1] != *a2)
  {
    v64 = 0;
    v65 = 0;
    do
    {
      if (*(v101[0] + 4 * v64) == *(v101[0] + 4 * v81))
      {
        llvm::SmallPtrSetImpl<void *>::insert(&v82, (a1 + 131), *(v63 + 8 * v64));
      }

      else
      {
        v66 = (v64 << 6);
        v67 = *((v64 << 6) + 8);
        if (v67 == *v66)
        {
          v68 = 20;
        }

        else
        {
          v68 = 16;
        }

        v69 = *(v66 + v68);
        if (v69)
        {
          v70 = 8 * v69;
          v71 = v67;
          while (*v71 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v71;
            v70 -= 8;
            if (!v70)
            {
              goto LABEL_109;
            }
          }
        }

        else
        {
          v71 = v67;
        }

        v72 = &v67[v69];
LABEL_113:
        if (v71 != v72)
        {
          v73 = *v71++;
          llvm::SmallPtrSetImpl<void *>::insert(&v82, __src, v73);
          while (v71 != v72)
          {
            if (*v71 < 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_113;
            }

            ++v71;
          }
        }
      }

LABEL_109:
      v63 = *a2;
      v64 = ++v65;
    }

    while (v65 < ((a2[1] - *a2) >> 3));
  }

  operator new();
}

BOOL AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::contains(const char **this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  v5 = *this;
  if (!v5)
  {
    return 1;
  }

  v6 = Name;
  v7 = v4;
  v8 = strlen(v5);
  if (v7 < v8)
  {
    return 0;
  }

  return !v8 || memcmp(v6, v5, v8) == 0;
}

uint64_t *std::__tree<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::__map_value_compare<AGCArgumentBuffer::Resource::Bounds,std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::less<AGCArgumentBuffer::Resource::Bounds>,true>,std::allocator<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>>>::__emplace_unique_key_args<AGCArgumentBuffer::Resource::Bounds,std::piecewise_construct_t const&,std::tuple<AGCArgumentBuffer::Resource::Bounds const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, unsigned int a3, void **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      if (*(v4 + 7) <= a3)
      {
        break;
      }

      v4 = *v4;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (*(v4 + 8) >= a2)
    {
      return v4;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }
}

void AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_14::operator()(uint64_t a1, uint64_t a2)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v15 = v17;
  v16 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v15, &v13, v14);
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(a1 + 4448));
  AGCLLVMUserObject::getDimensionFunctionMap(SampleFunctionMap);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v4);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v5);
  for (i = v16; v16; i = v16)
  {
    v7 = *(v15 + i - 1);
    LODWORD(v16) = i - 1;
    llvm::SmallPtrSetImpl<void *>::insert(&v13, (a1 + 1144), v7);
    if (v14[8] == 1)
    {
      if (v7 && *(v7 + 16) == 84)
      {
        v8 = *(v7 - 32);
        if (v8 && !*(v8 + 16) && *(v8 + 24) == *(v7 + 72))
        {
          llvm::Value::getName(v8);
        }

        else
        {
          Key = llvm::StringMapImpl::FindKey();
          if (Key != -1 && Key != SampleFunctionMap[2])
          {
            continue;
          }

          v10 = llvm::StringMapImpl::FindKey();
          if (v10 != -1 && v10 != dword_28117E5D8)
          {
            continue;
          }

          v11 = llvm::StringMapImpl::FindKey();
          if (v11 != -1 && v11 != dword_28117E5B8)
          {
            continue;
          }

          v12 = llvm::StringMapImpl::FindKey();
          if (v12 != -1 && v12 != dword_28117E598)
          {
            continue;
          }
        }
      }

      llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v15, *(v7 + 8));
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  if (a2)
  {
    v4 = a2;
    do
    {
      ++v3;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  v5 = *(result + 8);
  if (v3 + v5 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v6 = (*result + 8 * v5);
    do
    {
      *v6++ = *(v2 + 24);
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  *(result + 8) = v5 + v3;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v5[0] = &unk_2825A7E88;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((*(*v3 - 3) + v3 + 1712), v7);
  v8 = *(*v3 - 3) + v3;
  v12 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  if (llvm::SmallPtrSetImplBase::erase_imp(v3 + 131, v2))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v11, (v3 + 131), Load);
  }

  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7E88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7E40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v6[0] = &unk_2825A7DF8;
  v6[1] = v4;
  v6[3] = v6;
  v7[0] = &unk_2825A7D20;
  v7[1] = v3;
  v7[2] = v6;
  v7[3] = v7;
  iterateResourceUsers(v2, v7);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v6);
}

void *std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((*(*v4 - 3) + v4 + 1712), *a2);
  v5 = *(*v4 - 3) + v4;
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v17);
  v9 = llvm::ConstantInt::get();
  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(&v19, 1uLL, v9);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v19, Add);
  v10 = *(*v4 - 3) + v4;
  v11 = v4[229];
  v18 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v10 + 1704), v11, v19, v20, v17);
  v13 = *(*v4 - 3) + v4;
  v14 = *v3;
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v13 + 1712), 49, GEP, v14, v17);
  if (llvm::SmallPtrSetImplBase::erase_imp(v4 + 131, v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v17, (v4 + 131), Cast);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return Cast;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7DF8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7DB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v6[0] = &unk_2825A7D68;
  v6[1] = v4;
  v6[3] = v6;
  v7[0] = &unk_2825A7D20;
  v7[1] = v3;
  v7[2] = v6;
  v7[3] = v7;
  iterateResourceUsers(v2, v7);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v6);
}

void *std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v17);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v9 + 1712, 48, Add, v10, v17);
  v12 = AGCLLVMUserObject::buildImageHeapIndex(v4, Cast);
  v13 = v4 + *(*v4 - 24);
  v14 = *v3;
  v18 = 257;
  v15 = llvm::IRBuilderBase::CreateCast(v13 + 1712, 48, v12, v14, v17);
  if (llvm::SmallPtrSetImplBase::erase_imp((v4 + 1048), v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v17, (v4 + 1048), v15);
  }

  return v15;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7D68;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7CD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A7C90;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7C90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7C48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A7C00;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7C00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7BB8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Constant ***a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v17, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v8 = *(v4 + 16);
  v7 = v4 + 16;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= v17;
    v12 = v10 < v17;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 28) > v17)
  {
LABEL_9:
    v9 = v7;
  }

  v13 = *(a1 + 8) + 16;
  if (v13 != v9)
  {
    v14 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF) + 8];
    v15 = (v14 + 24);
    if (*(v14 + 8) >= 0x41u)
    {
      v15 = *v15;
    }

    std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(*(*(a1 + 16) + 24), v3, (*(v9 + 36) + ((*v15 - *(v9 + 28)) << 16)) & 0xFFFF0000 | (*v15 - *(v9 + 28) + *(v9 + 36)), v5);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v13 != v9;
}

__n128 std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  if (*a2 && (v6 = *(v4 - 32)) != 0 && !*(v6 + 16) && *(v6 + 24) == *(v4 + 72) && (v7 = llvm::Value::stripPointerCasts(v6), !*(v7 + 16)) && AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::contains(*(a1 + 8), v7))
  {
    v8 = *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF) + 96);
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = v9 == *(v8 + 40) + 40;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v9 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), v11);
    v12 = v5 + *(*v5 - 24);
    v36 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v12 + 1704), v8, v35);
    v14 = *(v5 + *(*v5 - 24) + 1912);
    v34 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v12 + 1712), 47, Load, v14, v33);
    v16 = v5 + *(*v5 - 24);
    v17 = llvm::ConstantInt::get();
    AddOffset = AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(v5, v17, *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)), v18);
    v20 = *(v5 + *(*v5 - 24) + 1912);
    v36 = 257;
    v21 = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, AddOffset, v20, v35);
    v22 = v5 + *(*v5 - 24);
    v23 = llvm::ConstantInt::get();
    v36 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((v22 + 1712), Cast, v23, v35);
    v34 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v22 + 1712), Shl, v21, v33);
    v26 = v5 + *(*v5 - 24);
    v27 = *v4;
    v36 = 257;
    v28 = llvm::IRBuilderBase::CreateCast((v26 + 1712), 48, Add, v27, v35);
    AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_14::operator()(**(a1 + 24), v28);
  }

  else
  {
    llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), v4);
    v29 = llvm::ConstantInt::get();
    AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(v5, v29, *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)), v30);
    v31 = (v5 + *(*v5 - 24));
    v36 = 257;
    v28 = llvm::CastInst::Create();
    v34 = 257;
    llvm::IRBuilderBase::Insert<llvm::CastInst>(v31 + 214, v28, v33);
    if (**(a1 + 32) == 1)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(*(a1 + 40), v28);
    }
  }

  return v28;
}

uint64_t AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(AGCLLVMUserObject::ResourceArrayIndex16x2 *this, AGCLLVMUserObject *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  v8 = llvm::ConstantInt::get();
  v26 = 257;
  v9 = llvm::IRBuilderBase::CreateAnd((v7 + 1712), a2, v8, v25);
  v10 = this + *(*this - 24);
  v11 = llvm::ConstantInt::get();
  v26 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v10 + 1712), a2, v11, v25);
  v13 = this + *(*this - 24);
  v26 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), v9, a3, v25);
  v15 = this + *(*this - 24);
  v26 = 257;
  v16 = llvm::IRBuilderBase::CreateAdd((v15 + 1712), LShr, a3, v25);
  v17 = this + *(*this - 24);
  v18 = llvm::ConstantInt::get();
  v26 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((v17 + 1712), Add, v18, v25);
  v20 = this + *(*this - 24);
  v21 = llvm::ConstantInt::get();
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((v20 + 1712), v16, v21, v25);
  v23 = this + *(*this - 24);
  v26 = 257;
  return llvm::IRBuilderBase::CreateOr((v23 + 1712), Shl, v19, v25);
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7B70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  v21 = v25;
  v22 = v25;
  v23 = 8;
  v24 = 0;
  v5 = *(v3 + 8);
  v26 = v28;
  v27 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v26, v5);
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(v4 + 4448));
  AGCLLVMUserObject::getDimensionFunctionMap(SampleFunctionMap);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v7);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v8);
  for (i = v27; v27; i = v27)
  {
    v10 = *(v26 + i - 1);
    LODWORD(v27) = i - 1;
    llvm::SmallPtrSetImpl<void *>::insert(v19, &v21, v10);
    if (v20 == 1)
    {
      llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v26, *(v10 + 8));
      v11 = *(v10 + 16);
      if (v10 && v11 == 84)
      {
        v12 = *(v10 - 32);
        if (!v12 || *(v12 + 16) || *(v12 + 24) != *(v10 + 72) || ((llvm::Value::getName(v12), Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == SampleFunctionMap[2]) && ((v14 = llvm::StringMapImpl::FindKey(), v14 == -1) || v14 == dword_28117E5D8) && ((v15 = llvm::StringMapImpl::FindKey(), v15 == -1) || v15 == dword_28117E5B8) && ((v16 = llvm::StringMapImpl::FindKey(), v16 == -1) || v16 == dword_28117E598))
        {
LABEL_20:
          v17 = *(a1 + 16);
          AGCArgumentBuffer::Resource::Bounds::Bounds(v19, *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF) + 32));
          IntervalMap<unsigned int>::insert(v17, v19[0], **(a1 + 24));
          break;
        }
      }

      else if (v11 == 61)
      {
        goto LABEL_20;
      }
    }
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v22 != v21)
  {
    free(v22);
  }

  return 1;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7A80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_4,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_4>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7AC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_3,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_3>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7A38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::__value_func[abi:nn200100](v4, *(a1 + 8));
  iterateResourceUsers(v2, v4);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A79F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v5, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  IntervalMap<unsigned int>::insert(v3, v5, **(a1 + 16));
  return 1;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A79A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject *this, const AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a2, __n128 a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 1;
  v6[0] = &unk_2825A7ED0;
  v6[1] = &v5;
  v6[2] = this;
  v7 = v6;
  if (a2)
  {
    v3 = a2;
    do
    {
      std::function<void ()(llvm::Function *)>::operator()(v7, *(v3 + 5), a3);
      v3 = *v3;
    }

    while (v3);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v6);
  return v5;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6[0] = &unk_2825A7F18;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v24[32] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(v21, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  if (v21[1] != v21[0])
  {
    return 0;
  }

  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(v3 + 4448));
  AGCLLVMUserObject::getUniqueIDFunctionSet(SampleFunctionMap);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v5);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v6);
  AGCLLVMUserObject::getDimensionFunctionMap(v7);
  v22 = v24;
  v23 = 0x2000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v22, v2);
  v8 = v23;
  if (v23)
  {
    while (1)
    {
      v9 = *(v22 + --v8);
      LODWORD(v23) = v8;
      v10 = *(v9 + 8);
      if (v10)
      {
        break;
      }

LABEL_27:
      if (!v8)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v11 = *(v10 + 24);
      v12 = *(v11 + 16);
      if (v12 <= 0x1B)
      {
        break;
      }

      if (v12 != 84)
      {
        if (v12 != 77)
        {
          goto LABEL_30;
        }

LABEL_10:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v22, v11);
        goto LABEL_11;
      }

      v13 = *(v11 - 32);
      if (!v13 || *(v13 + 16) || *(v13 + 24) != *(v11 + 72))
      {
        goto LABEL_30;
      }

      llvm::Value::getName(v13);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == SampleFunctionMap[2])
      {
        v15 = llvm::StringMapImpl::FindKey();
        if (v15 == -1 || v15 == dword_28117E5F8)
        {
          v16 = llvm::StringMapImpl::FindKey();
          if (v16 == -1 || v16 == dword_28117E5B8)
          {
            v17 = llvm::StringMapImpl::FindKey();
            if (v17 == -1 || v17 == dword_28117E598)
            {
              v18 = llvm::StringMapImpl::FindKey();
              v19 = 0;
              if (v18 == -1 || v18 == dword_28117E5D8)
              {
                goto LABEL_31;
              }
            }
          }
        }
      }

LABEL_11:
      v10 = *(v10 + 8);
      if (!v10)
      {
        v8 = v23;
        goto LABEL_27;
      }
    }

    if (v12 != 5 || *(v11 + 18) != 49)
    {
LABEL_30:
      v19 = 0;
      goto LABEL_31;
    }

    goto LABEL_10;
  }

LABEL_28:
  v19 = 1;
LABEL_31:
  if (v22 != v24)
  {
    free(v22);
  }

  return v19;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7F18;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7ED0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *llvm::DenseMap<llvm::Type *,std::pair<BOOL,BOOL>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::pair<BOOL,BOOL>>>::grow(uint64_t a1, int a2)
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
          *(v22 + 4) = *(v20 + 4);
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

uint64_t *std::function<BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(v3, v4, v5);
}

uint64_t **std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = (result + 1);
      if (*result == (result + 1))
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = (result + 1);
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = (result + 1);
        }
      }

      else
      {
        v10 = (result + 1);
        if (v4)
        {
          v10 = (result + 1);
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject *a1, const char *a2, __n128 a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v37 = 1;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v5 = (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", a2)) == 0 || *Value == 48 || !atoi(Value)) && *(*(a1 + *(*a1 - 24) + 2168) + 1900) == 0;
  v36 = v5;
  v35[0] = 0;
  v35[1] = 0;
  v33[1] = &v34;
  v34 = v35;
  v33[0] = &v38;
  v47[0] = &unk_2825A81A0;
  v47[1] = v33;
  v48 = v47;
  for (i = *(a1 + 396); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v48, i[5], a3);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v47);
  v45[0] = &unk_2825A8230;
  v45[1] = v33;
  v46 = v45;
  for (j = *(a1 + 420); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v46, j[5], v7);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v45);
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  v10 = v34;
  if (v34 != v35)
  {
    do
    {
      v24 = *(v10 + 28);
      LODWORD(v25) = *(v10 + 9);
      BindlessHeapIndexForRange = AGCLLVMUserObject::allocateBindlessHeapIndexForRange(a1, &v24 + 1, a1 + 4384);
      v39[0] = &v24;
      std::__tree<std::__value_type<unsigned int,llvm::GlobalVariable *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::GlobalVariable *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v31, v24, v39)[5] = BindlessHeapIndexForRange;
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != v35);
  }

  v30 = 0;
  v24 = &v38;
  v25 = &v31;
  v26 = &v34;
  v27 = a1;
  v28 = &v36;
  v29 = &v30;
  v43[0] = &unk_2825A8278;
  v43[1] = &v37;
  v43[2] = &v24;
  v44 = v43;
  for (k = *(a1 + 396); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v44, k[5], v9);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v43);
  v30 = 1;
  v41[0] = &unk_2825A8308;
  v41[1] = &v37;
  v41[2] = &v24;
  v42 = v41;
  for (m = *(a1 + 420); m; m = *m)
  {
    std::function<void ()(llvm::Function *)>::operator()(v42, m[5], v16);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v41);
  if (v36)
  {
    v39[0] = v40;
    v39[1] = 0x100000000;
    AGCLLVMUserObject::createSamplerArrays(a1, v39, v18);
    if (v39[0] != v40)
    {
      free(v39[0]);
    }
  }

  else
  {
    v19 = v31;
    if (v31 != v32)
    {
      do
      {
        AGCLLVMUserObject::lowerGlobalBindingVariable(a1, v19[5]);
        v20 = v19[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v14 = *v21 == v19;
            v19 = v21;
          }

          while (!v14);
        }

        v19 = v21;
      }

      while (v21 != v32);
    }
  }

  v22 = v37;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v32[0]);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v35[0]);
  return v22;
}

void AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v21[12] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = &unk_2825A73D0;
  v14[1] = v15;
  a5.n128_u64[0] = 0x400000000;
  v20[1] = 0x400000000;
  v18[0] = &unk_2825A83E0;
  v18[1] = v14;
  v19 = v18;
  v20[0] = v21;
  for (i = *(a2 + 24); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v19, i[5], a5);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v18);
  v16[0] = &unk_2825A8470;
  v16[1] = v14;
  v17 = v16;
  for (j = *(a3 + 24); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v17, j[5], v9);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v16);
  addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(v14, v20, a4);
  AGCLLVMUserObject::createSamplerArrays(a1, v20, v11);
  v13 = a1;
  v12 = 1;
  operator new();
}

uint64_t **std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = (result + 1);
      if (*result == (result + 1))
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = (result + 1);
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = (result + 1);
        }
      }

      else
      {
        v10 = (result + 1);
        if (v4)
        {
          v10 = (result + 1);
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v158 = *MEMORY[0x277D85DE8];
  a5.n128_u64[0] = 0x400000000;
  v151 = 0x400000000;
  v133[0] = 0;
  v133[1] = 0;
  v131 = &unk_2825A73D0;
  v132 = v133;
  v148[0] = &unk_2825A8B78;
  v148[1] = &v131;
  v149 = v148;
  v150 = v152;
  for (i = *(a2 + 24); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v149, i[5], a5);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v148);
  v146[0] = &unk_2825A8C08;
  v146[1] = &v131;
  v147 = v146;
  v117 = a3;
  for (j = *(a3 + 24); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v147, j[5], v9);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v146);
  v11 = 0uLL;
  memset(v129, 0, sizeof(v129));
  v130 = 1065353216;
  v12 = v132;
  if (v132 != v133)
  {
    v13 = (a4 + 8);
    v118 = (a4 + 8);
    do
    {
      v14 = *v13;
      if (!*v13)
      {
        goto LABEL_78;
      }

      v15 = *(v12 + 9);
      v16 = v13;
      do
      {
        v17 = *(v14 + 36) + *(v14 + 32);
        v18 = v17 > v15;
        v19 = v17 <= v15;
        if (v18)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * v19);
      }

      while (v14);
      if (v16 == v13 || (v21 = *(v16 + 8), v20 = (v16 + 4), v15 < v21) || (v22 = *(v12 + 7), *(v12 + 8) != v22))
      {
LABEL_78:
        v114 = 0;
        goto LABEL_79;
      }

      AGCLLVMUserObject::Texture::getAllocationInfo(&v125, v20, v22);
      v23 = llvm::PointerType::get();
      v24 = *(a1 + *(*a1 - 24) + 1904);
      *&v153 = v23;
      *(&v153 + 1) = v24;
      *&v154 = v24;
      llvm::StructType::get();
      if ((*(v128 + 9) & 1) == 0)
      {
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
        *&v153 = llvm::PointerType::get();
        *(&v153 + 1) = llvm::PointerType::get();
        llvm::FixedVectorType::get();
        *&v154 = llvm::PointerType::get();
        *(&v154 + 1) = llvm::PointerType::get();
        *&v155 = llvm::PointerType::get();
        *(&v155 + 1) = llvm::PointerType::get();
        *&v156 = llvm::PointerType::get();
        *(&v156 + 1) = llvm::PointerType::get();
        *&v157 = llvm::PointerType::get();
        *(&v157 + 1) = llvm::PointerType::get();
        llvm::StructType::setBody();
      }

      v25 = v125;
      v123 = (v125 >> 20) & 0x7FF;
      v124 = v125 & 0xFFFFFLL;
      v26 = v127;
      if (v127)
      {
        v31 = llvm::User::operator new(0x58);
        if ((v25 & 0x80000000) != 0)
        {
          v134[0] = v123;
          v135 = ".";
          v136 = 776;
          v32 = 2;
          v33 = 8;
          v34 = &v137;
          v137 = v134;
          v139 = v124;
        }

        else
        {
          LODWORD(v137) = v124;
          v32 = 8;
          v33 = 1;
          v34 = v137;
        }

        v140 = v32;
        v141 = v33;
        *&v153 = "agc.read_image_words";
        *&v154 = v34;
        *(&v154 + 1) = v138;
        LOBYTE(v155) = 3;
        BYTE1(v155) = v32;
        llvm::GlobalVariable::GlobalVariable();
        *(v31 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        llvm::GlobalObject::setAlignment();
        v38 = a1 + *(*a1 - 24);
        v39 = *(v38 + 268);
        v40 = AGCLLVMBuilder::buildGlobalMetadata(v38 + 213, v31, 0, v25);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v39, v40);
        v122 = v31;
        AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(a1, v126);
        if ((v26 & 2) != 0)
        {
LABEL_19:
          v27 = llvm::User::operator new(0x58);
          if ((v25 & 0x80000000) != 0)
          {
            v134[0] = v123;
            v135 = ".";
            v136 = 776;
            v137 = v134;
            v139 = v124;
            v28 = 2;
            v29 = 8;
            v30 = &v137;
          }

          else
          {
            LODWORD(v137) = v124;
            v28 = 8;
            v29 = 1;
            v30 = v137;
          }

          v140 = v28;
          v141 = v29;
          *&v153 = "agc.write_image_words";
          *&v154 = v30;
          *(&v154 + 1) = v138;
          LOBYTE(v155) = 3;
          BYTE1(v155) = v28;
          llvm::GlobalVariable::GlobalVariable();
          *(v27 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          llvm::GlobalObject::setAlignment();
          v35 = a1 + *(*a1 - 24);
          v36 = *(v35 + 268);
          v37 = AGCLLVMBuilder::buildGlobalMetadata(v35 + 213, v27, 6u, v25);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v36, v37);
          v121 = v27;
          AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(a1, v126);
          goto LABEL_28;
        }
      }

      else
      {
        v122 = 0;
        if ((v127 & 2) != 0)
        {
          goto LABEL_19;
        }
      }

      v121 = 0;
LABEL_28:
      v41 = llvm::User::operator new(0x58);
      llvm::FixedVectorType::get();
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v42 = 2;
        v43 = 8;
        v44 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v42 = 8;
        v43 = 1;
        v44 = v137;
      }

      v140 = v42;
      v141 = v43;
      *&v153 = "agc.image_dim";
      *&v154 = v44;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v42;
      llvm::GlobalVariable::GlobalVariable();
      *(v41 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v45 = a1 + *(*a1 - 24);
      v46 = *(v45 + 268);
      v47 = AGCLLVMBuilder::buildGlobalMetadata(v45 + 213, v41, 0xBu, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v46, v47);
      v48 = llvm::User::operator new(0x58);
      v120 = v41;
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v49 = 2;
        v50 = 8;
        v51 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v49 = 8;
        v50 = 1;
        v51 = v137;
      }

      v140 = v49;
      v141 = v50;
      *&v153 = "agc.image_array_info";
      *&v154 = v51;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v49;
      llvm::GlobalVariable::GlobalVariable();
      *(v48 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v52 = a1 + *(*a1 - 24);
      v53 = *(v52 + 268);
      v54 = AGCLLVMBuilder::buildGlobalMetadata(v52 + 213, v48, 0xCu, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v53, v54);
      v55 = llvm::User::operator new(0x58);
      v119 = v48;
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v56 = 2;
        v57 = 8;
        v58 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v56 = 8;
        v57 = 1;
        v58 = v137;
      }

      v140 = v56;
      v141 = v57;
      *&v153 = "agc.image_pack_format";
      *&v154 = v58;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v56;
      llvm::GlobalVariable::GlobalVariable();
      *(v55 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v59 = a1 + *(*a1 - 24);
      v60 = *(v59 + 268);
      v61 = AGCLLVMBuilder::buildGlobalMetadata(v59 + 213, v55, 0xDu, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, v61);
      v62 = llvm::User::operator new(0x58);
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v63 = 2;
        v64 = 8;
        v65 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v63 = 8;
        v64 = 1;
        v65 = v137;
      }

      v140 = v63;
      v141 = v64;
      *&v153 = "agc.image_mipmap_count";
      *&v154 = v65;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v63;
      llvm::GlobalVariable::GlobalVariable();
      *(v62 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v66 = a1 + *(*a1 - 24);
      v67 = *(v66 + 268);
      v68 = AGCLLVMBuilder::buildGlobalMetadata(v66 + 213, v62, 0x10u, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v67, v68);
      v69 = llvm::User::operator new(0x58);
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v70 = 2;
        v71 = 8;
        v72 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v70 = 8;
        v71 = 1;
        v72 = v137;
      }

      v140 = v70;
      v141 = v71;
      *&v153 = "agc.image_sample_count";
      *&v154 = v72;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v70;
      llvm::GlobalVariable::GlobalVariable();
      *(v69 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v73 = a1 + *(*a1 - 24);
      v74 = *(v73 + 268);
      v75 = AGCLLVMBuilder::buildGlobalMetadata(v73 + 213, v69, 0x11u, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v74, v75);
      v76 = llvm::User::operator new(0x58);
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v77 = 2;
        v78 = 8;
        v79 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v77 = 8;
        v78 = 1;
        v79 = v137;
      }

      v140 = v77;
      v141 = v78;
      *&v153 = "agc.image_base_level";
      *&v154 = v79;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v77;
      llvm::GlobalVariable::GlobalVariable();
      *(v76 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v80 = a1 + *(*a1 - 24);
      v81 = *(v80 + 268);
      v82 = AGCLLVMBuilder::buildGlobalMetadata(v80 + 213, v76, 0x3Eu, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v81, v82);
      v83 = llvm::User::operator new(0x58);
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v84 = 2;
        v85 = 8;
        v86 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v84 = 8;
        v85 = 1;
        v86 = v137;
      }

      v140 = v84;
      v141 = v85;
      *&v153 = "agc.image_heap_index";
      *&v154 = v86;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v84;
      llvm::GlobalVariable::GlobalVariable();
      *(v83 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v87 = a1 + *(*a1 - 24);
      v88 = *(v87 + 268);
      v89 = AGCLLVMBuilder::buildGlobalMetadata(v87 + 213, v83, 0x5Du, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v88, v89);
      v90 = llvm::User::operator new(0x58);
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v91 = 2;
        v92 = 8;
        v93 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v91 = 8;
        v92 = 1;
        v93 = v137;
      }

      v140 = v91;
      v141 = v92;
      *&v153 = "agc.image_unique_id";
      *&v154 = v93;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v91;
      llvm::GlobalVariable::GlobalVariable();
      *(v90 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v94 = a1 + *(*a1 - 24);
      v95 = *(v94 + 268);
      v96 = AGCLLVMBuilder::buildGlobalMetadata(v94 + 213, v90, 0x61u, v25);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v95, v96);
      NullValue = v122;
      if (!v122)
      {
        v98 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v98, v99);
      }

      *&v153 = NullValue;
      v100 = v121;
      if (!v121)
      {
        v101 = llvm::PointerType::get();
        v100 = llvm::Constant::getNullValue(v101, v102);
      }

      *(&v153 + 1) = v100;
      *&v154 = v120;
      *(&v154 + 1) = v119;
      *&v155 = v55;
      *(&v155 + 1) = v62;
      *&v156 = v69;
      *(&v156 + 1) = v76;
      *&v157 = v83;
      *(&v157 + 1) = v90;
      llvm::ConstantStruct::get();
      v103 = llvm::User::operator new(0x58);
      if ((v25 & 0x80000000) != 0)
      {
        v134[0] = v123;
        v135 = ".";
        v136 = 776;
        v137 = v134;
        v139 = v124;
        v104 = 2;
        v105 = 8;
        v106 = &v137;
      }

      else
      {
        LODWORD(v137) = v124;
        v104 = 8;
        v105 = 1;
        v106 = v137;
      }

      v140 = v104;
      v141 = v105;
      *&v153 = "agc.image_state_struct_ptr";
      *&v154 = v106;
      *(&v154 + 1) = v138;
      LOBYTE(v155) = 3;
      BYTE1(v155) = v104;
      llvm::GlobalVariable::GlobalVariable();
      *(v103 + 80) |= 1u;
      llvm::GlobalVariable::setInitializer();
      v153 = 4uLL;
      v107 = v103;
      *&v154 = v103;
      if (v103 != -8192)
      {
        v107 = v103;
        if (v103 != -4096)
        {
          v107 = v103;
          if (v103)
          {
            llvm::ValueHandleBase::AddToUseList(&v153);
            v107 = v154;
          }
        }
      }

      std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(a1 + 102, v107, &v153);
      if (v154 != -8192 && v154 != -4096 && v154)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v153);
      }

      *&v153 = v12 + 28;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v129, *(v12 + 7), &v153)[3] = v103;
      v108 = v12[1];
      if (v108)
      {
        do
        {
          v109 = v108;
          v108 = *v108;
        }

        while (v108);
      }

      else
      {
        do
        {
          v109 = v12[2];
          v110 = *v109 == v12;
          v12 = v109;
        }

        while (!v110);
      }

      v12 = v109;
      v13 = v118;
    }

    while (v109 != v133);
  }

  *&v153 = v129;
  LOBYTE(v137) = 1;
  v144[0] = &unk_2825A8C98;
  v144[1] = &v137;
  v144[2] = &v153;
  v145 = v144;
  for (k = *(a2 + 24); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v145, k[5], v11);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v144);
  v142[0] = &unk_2825A8D28;
  v142[1] = &v137;
  v142[2] = &v153;
  v143 = v142;
  for (m = *(v117 + 24); m; m = *m)
  {
    std::function<void ()(llvm::Function *)>::operator()(v143, m[5], v112);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v142);
  v114 = v137;
LABEL_79:
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v129);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v133[0]);
  if (v150 != v152)
  {
    free(v150);
  }

  return v114 & 1;
}

void AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(AGCLLVMUserObject *a1, __n128 a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v28 = 1;
  v27[0] = 0;
  v27[1] = 0;
  v25[1] = &v26;
  v26 = v27;
  v25[0] = &v29;
  v37[0] = &unk_2825A8D70;
  v37[1] = v25;
  v38 = v37;
  for (i = *(a1 + 390); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v38, i[5], a2);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v37);
  v35[0] = &unk_2825A8E00;
  v35[1] = v25;
  v36 = v35;
  for (j = *(a1 + 414); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v36, j[5], v4);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v35);
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v7 = v26;
  if (v26 != v27)
  {
    do
    {
      v18 = *(v7 + 28);
      LODWORD(v19) = *(v7 + 9);
      BindlessHeapIndexForRange = AGCLLVMUserObject::allocateBindlessHeapIndexForRange(a1, &v18 + 1, a1 + 4352);
      v30 = &v18;
      std::__tree<std::__value_type<unsigned int,llvm::GlobalVariable *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::GlobalVariable *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v23, v18, &v30)[5] = BindlessHeapIndexForRange;
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v27);
  }

  LOBYTE(v30) = 0;
  v18 = &v29;
  v19 = &v23;
  v20 = &v26;
  v21 = a1;
  v22 = &v30;
  v33[0] = &unk_2825A8E48;
  v33[1] = &v28;
  v33[2] = &v18;
  v34 = v33;
  for (k = *(a1 + 390); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v34, k[5], v6);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v33);
  LOBYTE(v30) = 1;
  v31[0] = &unk_2825A8ED8;
  v31[1] = &v28;
  v31[2] = &v18;
  v32 = v31;
  for (m = *(a1 + 414); m; m = *m)
  {
    std::function<void ()(llvm::Function *)>::operator()(v32, m[5], v13);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v31);
  v15 = v23;
  if (v23 != v24)
  {
    do
    {
      AGCLLVMUserObject::lowerGlobalBindingVariable(a1, v15[5]);
      v16 = v15[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v11 = *v17 == v15;
          v15 = v17;
        }

        while (!v11);
      }

      v15 = v17;
    }

    while (v17 != v24);
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v24[0]);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v27[0]);
}

unint64_t addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex16x2,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(unint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      v13 = a2[2];
      if (v13)
      {
        v14 = 0;
        v15 = 32 * v13;
        v16 = (*a2 + 8);
        do
        {
          v17 = *v16;
          v16 += 32;
          v14 += (v17 >> 1) & 1;
          v15 -= 32;
        }

        while (v15);
        v18 = v14 << 16;
      }

      else
      {
        v18 = 0;
      }

      *(v3 + 9) = v18 | v13;
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        AGCLLVMUserObject::Texture::getAllocationInfo(v25, (v9 + 4), i);
        result = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(a2, v25);
        v20 = (*a2 + 32 * a2[2]);
        v21 = *(result + 16);
        *v20 = *result;
        v20[1] = v21;
        ++a2[2];
      }

      v22 = v3[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v3[2];
          v24 = *v23 == v3;
          v3 = v23;
        }

        while (!v24);
      }

      v3 = v23;
    }

    while (v23 != v4);
  }

  return result;
}

uint64_t *std::vector<llvm::Value *>::vector[abi:nn200100]<llvm::SmallPtrSetIterator<llvm::Value *>,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a4)
  {
    v5 = 0;
    v6 = a2;
    while (1)
    {
      do
      {
        ++v6;
      }

      while (v6 != a3 && *v6 >= 0xFFFFFFFFFFFFFFFELL);
      ++v5;
      if (v6 == a4)
      {
        std::vector<llvm::Type *>::__vallocate[abi:nn200100](a1, v5);
      }
    }
  }

  return a1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v5[0] = &unk_2825A9598;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((*(*v3 - 3) + v3 + 1712), v7);
  v8 = *(*v3 - 3) + v3;
  v12 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  if (llvm::SmallPtrSetImplBase::erase_imp(v3 + 131, v2))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v11, (v3 + 131), Load);
  }

  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9598;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9550;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v6[0] = &unk_2825A9508;
  v6[1] = v4;
  v6[3] = v6;
  v7[0] = &unk_2825A9118;
  v7[1] = v3;
  v7[2] = v6;
  v7[3] = v7;
  iterateResourceUsers(v2, v7);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v6);
}

BOOL std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Constant ***a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v17, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v8 = *(v4 + 16);
  v7 = v4 + 16;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= v17;
    v12 = v10 < v17;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 28) > v17)
  {
LABEL_9:
    v9 = v7;
  }

  v13 = *(a1 + 8) + 16;
  if (v13 != v9)
  {
    v14 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF) + 8];
    v15 = (v14 + 24);
    if (*(v14 + 8) >= 0x41u)
    {
      v15 = *v15;
    }

    std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(*(*(a1 + 16) + 24), v3, (*(v9 + 36) + ((*v15 - *(v9 + 28)) << 16)) & 0xFFFF0000 | (*v15 - *(v9 + 28) + *(v9 + 36)), v5);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v13 != v9;
}

__n128 std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A9118;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((*(*v4 - 3) + v4 + 1712), *a2);
  v5 = *(*v4 - 3) + v4;
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v17);
  v9 = llvm::ConstantInt::get();
  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(&v19, 1uLL, v9);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v19, Add);
  v10 = *(*v4 - 3) + v4;
  v11 = v4[229];
  v18 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v10 + 1704), v11, v19, v20, v17);
  v13 = *(*v4 - 3) + v4;
  v14 = *v3;
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v13 + 1712), 49, GEP, v14, v17);
  if (llvm::SmallPtrSetImplBase::erase_imp(v4 + 131, v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v17, (v4 + 131), Cast);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return Cast;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9508;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A94C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v6[0] = &unk_2825A9478;
  v6[1] = v4;
  v6[3] = v6;
  v7[0] = &unk_2825A9118;
  v7[1] = v3;
  v7[2] = v6;
  v7[3] = v7;
  iterateResourceUsers(v2, v7);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v6);
}

void *std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v17);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v9 + 1712, 48, Add, v10, v17);
  v12 = AGCLLVMUserObject::buildImageHeapIndex(v4, Cast);
  v13 = v4 + *(*v4 - 24);
  v14 = *v3;
  v18 = 257;
  v15 = llvm::IRBuilderBase::CreateCast(v13 + 1712, 48, v12, v14, v17);
  if (llvm::SmallPtrSetImplBase::erase_imp((v4 + 1048), v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v17, (v4 + 1048), v15);
  }

  return v15;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9478;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A9430;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A93E8;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A93E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A93A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A9358;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9358;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = &unk_2825A92C8;
    v9 = *v6;
    v10 = &v8;
    v11[0] = &unk_2825A7D20;
    v11[1] = v5;
    v11[2] = &v8;
    v11[3] = v11;
    v7 = iterateResourceUsers(v4, v11);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v11);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](&v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((*(*v4 - 3) + v4 + 1712), *a2);
  v5 = *(*v4 - 3) + v4;
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v18);
  Mul = Add;
  v10 = *v4;
  if (!*(*(*(*v4 - 3) + v4 + 2168) + 1900))
  {
    v11 = AGCLLVMObject::useTextureIDLegacyMode(Add);
    v10 = *v4;
    if (v11)
    {
      v12 = *(v10 - 3) + v4;
      v13 = llvm::ConstantInt::get();
      v19 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v12 + 1712), Mul, v13, v18);
      v10 = *v4;
    }
  }

  v14 = *(v10 - 3) + v4;
  v15 = *v3;
  v19 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v14 + 1712), 48, Mul, v15, v18);
  if (llvm::SmallPtrSetImplBase::erase_imp(v4 + 131, v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v18, (v4 + 131), Cast);
  }

  return Cast;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A92C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A9280;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A9238;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A91F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A9160;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A9118;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = llvm::ConstantInt::get();
  AddOffset = AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(v4, v5, *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF)), v6);
  v8 = v4 + *(*v4 - 24);
  v9 = *(v8 + 239);
  v17[0] = "extended_offset";
  v18 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((v8 + 1712), 39, AddOffset, v9, v17);
  v11 = v4 + *(*v4 - 24);
  v12 = llvm::ConstantInt::get();
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v11 + 1712), Cast, v12, v17);
  v14 = v4 + *(*v4 - 24);
  v15 = *v3;
  v18 = 257;
  return llvm::IRBuilderBase::CreateCast((v14 + 1712), 48, Add, v15, v17);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9160;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A91A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A9160;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A9118;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A90D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A9088;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9040;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8FF8;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8FF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8FB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v12 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  llvm::SmallPtrSetImpl<void *>::insert(v11, (v3 + 131), Load);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8F68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8F20;
  a2[1] = v2;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,llvm::GlobalVariable *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::GlobalVariable *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    operator new();
  }

  *v2 = 0;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = *a2 - 32 * (*(*a2 + 5) & 0x7FFFFFF);
  if (**(a1 + 8))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 12);
  v7 = (v6 + 24);
  if (*(v6 + 32) >= 0x41u)
  {
    v7 = *v7;
  }

  if (*v7)
  {
LABEL_5:
    v8 = *(a1 + 16);
    v9 = *(v5 + 8);
    v10 = (v9 + 24);
    v11 = *(v9 + 32);
    v12 = v10;
    if (v11 >= 0x41)
    {
      v12 = *v10;
    }

    v15 = *(v8 + 8);
    v13 = v8 + 8;
    v14 = v15;
    if (!v15)
    {
      return 0;
    }

    v16 = *v12;
    v17 = v13;
    do
    {
      v18 = *(v14 + 32);
      v19 = v18 >= v16;
      v20 = v18 < v16;
      if (v19)
      {
        v17 = v14;
      }

      v14 = *(v14 + 8 * v20);
    }

    while (v14);
    if (v17 == v13 || *(v17 + 32) > v16)
    {
      return 0;
    }

    v22 = *(a1 + 24);
    if (v11 >= 0x41)
    {
      v10 = *v10;
    }

    LODWORD(v40[0]) = *v10;
    v38[0] = v40;
    v23 = std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, v40[0], v38);
    v24 = *(v23 + 9) - *(v23 + 8) + 1;
    llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), v3);
    GEP = *(v17 + 40);
    if (v24 >= 2)
    {
      v26 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
      v27 = v4 + *(*v4 - 24);
      v40[0] = llvm::ConstantInt::get();
      v40[1] = v26;
      v39 = 257;
      GEP = AGCLLVMBuilder::CreateGEP((v27 + 1704), GEP, v40, 2, v38);
    }

    v28 = v4 + *(*v4 - 24);
    if (**(a1 + 40))
    {
      v29 = *v3;
      v39 = 257;
      llvm::IRBuilderBase::CreateCast((v28 + 1712), 49, GEP, v29, v38);
    }

    else
    {
      v30 = llvm::PointerType::get();
      v31 = v4 + *(*v4 - 24);
      v32 = *(v31 + 238);
      v39 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v31 + 1712), 49, GEP, v30, v38);
      v41 = 257;
      llvm::Type::isOpaquePointerTy(*Cast);
      AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v31 + 214, v32, Cast, 0, v40);
      v35 = v4 + *(*v4 - 24);
      v36 = *v3;
      v39 = 257;
      v37 = llvm::IRBuilderBase::CreateCast((v35 + 1712), 48, AlignedLoad, v36, v38);
      llvm::SmallPtrSetImpl<void *>::insert(v38, (v4 + 131), v37);
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8E90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8ED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    operator new();
  }

  *v2 = 0;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8E48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = &unk_2825A8DB8;
  v6 = *v3;
  v7 = &v5;
  iterateResourceUsers(v2, &v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF);
  if (**(a1 + 8))
  {
    goto LABEL_5;
  }

  v5 = *(v4 + 96);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  if (*v6)
  {
LABEL_5:
    v7 = *(a1 + 16);
    v8 = *(v4 + 64);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v12 = *(v7 + 8);
    v10 = (v7 + 8);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *v9;
    v14 = v10;
    do
    {
      v15 = v11[7];
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v11;
      }

      v11 = *&v11[2 * v17];
    }

    while (v11);
    if (v14 != v10 && v14[7] <= v13)
    {
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v23 = v14[8];
      v24 = v14[9];
      if (v26 < v23)
      {
        v23 = v26;
      }

      if (v24 <= HIDWORD(v26))
      {
        v24 = HIDWORD(v26);
      }

      v14[8] = v23;
      v14[9] = v24;
    }

    else
    {
LABEL_15:
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v18 = v26;
      v19 = *(a1 + 16);
      v20 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF) + 64);
      v21 = (v20 + 24);
      if (*(v20 + 32) >= 0x41u)
      {
        v21 = *v21;
      }

      v25 = *v21;
      v26 = &v25;
      std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v19, v25, &v26)[4] = v18;
    }
  }

  return 1;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8E00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = &unk_2825A8DB8;
  v6 = *v3;
  v7 = &v5;
  iterateResourceUsers(v2, &v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8D70;
  a2[1] = v2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
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

  return v7;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_2825A8CE0;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

BOOL std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Constant ***a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v6, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::find<unsigned int>(v3, v6);
  if (v4)
  {
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v4 != 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8CE0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8D28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_2825A8CE0;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8C98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8C50;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8C50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8C08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8BC0;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8BC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8B78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_2825A8B30;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v11 = 257;
  AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8B30;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8AE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A8AA0;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A7D20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v18);
  v9 = v4 + *(*v4 - 24);
  v10 = v4[253];
  v20[0] = llvm::ConstantInt::get();
  v20[1] = Add;
  v19 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v9 + 1704), v10, v20, 2, v18);
  v17 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), GEP, v16);
  v13 = v4 + *(*v4 - 24);
  v14 = *v3;
  v19 = 257;
  return llvm::IRBuilderBase::CreateCast((v13 + 1712), 48, Load, v14, v18);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8AA0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8A58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8A10;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8A10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A89C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_2825A8980;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v11 = 257;
  AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8980;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A88F0;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A7D20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v17);
  v9 = llvm::ConstantInt::get();
  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(&v19, 1uLL, v9);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v19, Add);
  v10 = v4 + *(*v4 - 24);
  v11 = v4[253];
  v18 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v10 + 1704), v11, v19, v20, v17);
  v13 = v4 + *(*v4 - 24);
  v14 = *v3;
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v13 + 1712), 49, GEP, v14, v17);
  if (v19 != v21)
  {
    free(v19);
  }

  return Cast;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A88F0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A88A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A8860;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A7D20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v20 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v19);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 48, Add, v10, v19);
  v12 = (v4 + *(*v4 - 24));
  v13 = v4[263];
  v14 = AGCLLVMUserObject::buildSamplerArgumentPointer(v4, Cast, 3);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v14);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v12 + 214, v13, v14, 0, v19);
  v16 = v4 + *(*v4 - 24);
  v17 = *v3;
  v20 = 257;
  return llvm::IRBuilderBase::CreateCast((v16 + 1712), 48, AlignedLoad, v17, v19);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8860;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A87D0;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A87D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8788;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8740;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8740;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A86F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A86B0;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A7D20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v13 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v5 + 1712), v6, v7, v12);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCast((v9 + 1712), 48, Add, v10, v12);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A86B0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8620;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A85D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A8548;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A7D20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), *a2);
  v5 = llvm::ConstantInt::get();
  v6 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v7 = v4 + *(*v4 - 24);
  v19 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v7 + 1712), v5, v6, v18);
  v9 = v4 + *(*v4 - 24);
  v10 = *(v9 + 239);
  v18[0] = "extended_offset";
  v19 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 39, Add, v10, v18);
  v12 = v4 + *(*v4 - 24);
  v13 = llvm::ConstantInt::get();
  v19 = 257;
  v14 = llvm::IRBuilderBase::CreateAdd((v12 + 1712), Cast, v13, v18);
  v15 = v4 + *(*v4 - 24);
  v16 = *v3;
  v19 = 257;
  return llvm::IRBuilderBase::CreateCast((v15 + 1712), 48, v14, v16, v18);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8548;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8590;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_2825A8548;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_2825A7D20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = iterateResourceUsers(v4, v9);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v9);
    **(v3 + 8) = v7;
    return std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8500;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A84B8;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A84B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8470;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8428;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8428;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A83E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v11 = 257;
  AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8398;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8350;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    operator new();
  }

  *v2 = 0;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = *a2 - 32 * (*(*a2 + 5) & 0x7FFFFFF);
  if ((**(a1 + 8) & 1) == 0)
  {
    v6 = *(v5 + 12);
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    if (!*v7)
    {
      return 1;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(v5 + 8);
  v10 = (v9 + 24);
  v11 = *(v9 + 32);
  v12 = v10;
  if (v11 >= 0x41)
  {
    v12 = *v10;
  }

  v15 = *(v8 + 8);
  v13 = v8 + 8;
  v14 = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = *v12;
  v17 = v13;
  do
  {
    v18 = *(v14 + 32);
    v19 = v18 >= v16;
    v20 = v18 < v16;
    if (v19)
    {
      v17 = v14;
    }

    v14 = *(v14 + 8 * v20);
  }

  while (v14);
  if (v17 == v13 || *(v17 + 32) > v16)
  {
    return 0;
  }

  v22 = *(a1 + 24);
  if (v11 >= 0x41)
  {
    v10 = *v10;
  }

  LODWORD(__p) = *v10;
  v63[0] = &__p;
  v23 = std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, __p, v63);
  v24 = *(v23 + 9) - *(v23 + 8) + 1;
  llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), v3);
  if (**(a1 + 40) == 1)
  {
    v25 = llvm::PointerType::get();
    NullValue = llvm::Constant::getNullValue(v25, v26);
    v28 = *(v4 + *(*v4 - 24) + 2168);
    v63[0] = **(v17 + 40);
    v29 = (*(*v28 + 1416))();
    v30 = (v4 + *(*v4 - 24));
    v31 = *(v17 + 40);
    v62[0] = NullValue;
    v62[1] = v31;
    v65 = 257;
    v32 = llvm::IRBuilderBase::CreateCall(v30 + 214, *(v29 + 24), v29, v62, 2, v63);
    v33 = *(v4 + *(*v4 - 24) + 1904);
    v61 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v30 + 214), 47, v32, v33, &__p);
    if (v24 >= 2)
    {
      v35 = v4 + *(*v4 - 24);
      v36 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
      v65 = 257;
      Cast = llvm::IRBuilderBase::CreateAdd((v35 + 1712), Cast, v36, v63);
    }

    v37 = v4 + *(*v4 - 24);
    if (**(a1 + 48))
    {
      v38 = v4[363];
      if (!v38)
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, "agc.global_sampler_api_reference_array");
        v39 = (*(**(v4 + *(*v4 - 24) + 2168) + 488))();
        v40 = v39;
        llvm::ArrayType::get(*(v4 + *(*v4 - 24) + 1912), v39);
        v41 = llvm::User::operator new(0x58);
        v65 = 260;
        v63[0] = &__p;
        v42 = llvm::GlobalVariable::GlobalVariable();
        *(v42 + 80) |= 1u;
        v63[0] = v64;
        v63[1] = 0x1C00000000;
        if (v39)
        {
          v43 = 0;
          do
          {
            v44 = llvm::ConstantInt::get();
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v63, v44);
            ++v43;
          }

          while (v40 != v43);
        }

        llvm::ConstantArray::get();
        llvm::GlobalVariable::setInitializer();
        llvm::ValueHandleBase::operator=((v4 + 361), v41);
        if (v63[0] != v64)
        {
          free(v63[0]);
        }

        if (v60 < 0)
        {
          operator delete(__p);
        }

        v38 = v4[363];
      }

      __p = llvm::ConstantInt::get();
      v59 = Cast;
      v65 = 257;
      GEP = AGCLLVMBuilder::CreateGEP((v37 + 1704), v38, &__p, 2, v63);
      v57 = v4 + *(*v4 - 24);
      v48 = *v3;
      v65 = 257;
      v49 = (v57 + 1712);
      v50 = 49;
      goto LABEL_40;
    }

    v48 = *v3;
    v65 = 257;
    v49 = (v37 + 1712);
    v50 = 48;
  }

  else
  {
    Cast = *(v17 + 40);
    if (v24 >= 2)
    {
      v45 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
      v46 = v4 + *(*v4 - 24);
      __p = llvm::ConstantInt::get();
      v59 = v45;
      v65 = 257;
      Cast = AGCLLVMBuilder::CreateGEP((v46 + 1704), Cast, &__p, 2, v63);
    }

    v47 = v4 + *(*v4 - 24);
    if ((**(a1 + 48) & 1) == 0)
    {
      v52 = llvm::PointerType::get();
      v53 = v4 + *(*v4 - 24);
      v54 = *(v53 + 238);
      v65 = 257;
      v55 = llvm::IRBuilderBase::CreateCast((v53 + 1712), 49, Cast, v52, v63);
      v61 = 257;
      llvm::Type::isOpaquePointerTy(*v55);
      GEP = llvm::IRBuilderBase::CreateAlignedLoad(v53 + 214, v54, v55, 0, &__p);
      v56 = v4 + *(*v4 - 24);
      v48 = *v3;
      v65 = 257;
      v49 = (v56 + 1712);
      v50 = 48;
      goto LABEL_40;
    }

    v48 = *v3;
    v65 = 257;
    v49 = (v47 + 1712);
    v50 = 49;
  }

  GEP = Cast;
LABEL_40:
  llvm::IRBuilderBase::CreateCast(v49, v50, GEP, v48, v63);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v3);
  return 1;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A82C0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8308;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    operator new();
  }

  *v2 = 0;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8278;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = &unk_2825A81E8;
  v6 = *v3;
  v7 = &v5;
  iterateResourceUsers(v2, &v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF);
  if (**(a1 + 8))
  {
    goto LABEL_5;
  }

  v5 = *(v4 + 96);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  if (*v6)
  {
LABEL_5:
    v7 = *(a1 + 16);
    v8 = *(v4 + 64);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v12 = *(v7 + 8);
    v10 = (v7 + 8);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *v9;
    v14 = v10;
    do
    {
      v15 = v11[7];
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v11;
      }

      v11 = *&v11[2 * v17];
    }

    while (v11);
    if (v14 != v10 && v14[7] <= v13)
    {
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v23 = v14[8];
      v24 = v14[9];
      if (v26 < v23)
      {
        v23 = v26;
      }

      if (v24 <= HIDWORD(v26))
      {
        v24 = HIDWORD(v26);
      }

      v14[8] = v23;
      v14[9] = v24;
    }

    else
    {
LABEL_15:
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v18 = v26;
      v19 = *(a1 + 16);
      v20 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF) + 64);
      v21 = (v20 + 24);
      if (*(v20 + 32) >= 0x41u)
      {
        v21 = *v21;
      }

      v25 = *v21;
      v26 = &v25;
      std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v19, v25, &v26)[4] = v18;
    }
  }

  return 1;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A81E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8230;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = &unk_2825A81E8;
  v6 = *v3;
  v7 = &v5;
  iterateResourceUsers(v2, &v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A81A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_2825A8110;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

BOOL std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Constant ***a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v6, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::find<unsigned int>(v3, v6);
  if (v4)
  {
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v4 != 0;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8110;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_2825A8110;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = iterateResourceUsers(v4, v6);
    return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A80C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A8080;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8080;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8038;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_2825A7FF0;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7FF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7FA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0>,BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(uint64_t a1, void **a2, llvm::SmallPtrSetImplBase *this)
{
  v4 = *a2;
  llvm::SmallPtrSetImpl<void *>::insert(v10, this, *a2);
  if (v10[16] != 1)
  {
    return 0;
  }

  v5 = v4;
  while (1)
  {
    v5 = v5[1];
    result = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = v5[3];
    v8 = *(v7 + 16);
    if (!v7 || v8 != 92)
    {
      if (!v7 || v8 != 83)
      {
        if (v7 && v8 == 85)
        {
          if (*(v7 - 96) == v4)
          {
            return 1;
          }
        }

        else
        {
          result = 1;
          if (!v7 || v8 != 95)
          {
            return result;
          }
        }
      }

      v9 = *(*(a1 + 8) + 24);

      return std::function<BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(v9, v7);
    }

    if (*(v7 + 72) != 1 || **(v7 + 64))
    {
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0>,BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7F60;
  a2[1] = v2;
  return result;
}

BOOL AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::$_5::operator()(uint64_t a1)
{
  v2 = *(a1 - 32);
  if (!v2 || *(v2 + 16) || *(v2 + 24) != *(a1 + 72))
  {
    v2 = 0;
  }

  Name = llvm::Value::getName(v2);
  if (v4 < 0x10)
  {
    if (v4 < 0xE)
    {
      return 0;
    }

LABEL_12:
    v6 = *Name == 0x622E67772E726961 && *(Name + 6) == 0x726569727261622ELL;
    if (v6 || v4 >= 0x15 && (*Name == 0x646D69732E726961 ? (v7 = Name[1] == 0x61622E70756F7267) : (v7 = 0), v7 ? (v8 = *(Name + 13) == 0x726569727261622ELL) : (v8 = 0), v8))
    {
      v9 = (a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
      v10 = (*v9 + 24);
      if (*(*v9 + 32) >= 0x41u)
      {
        v10 = *v10;
      }

      v11 = *v10;
      v12 = v9[4];
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      if ((v11 & 5) != 0)
      {
        return (*v13 & 0xFFFFFFFELL) == 2;
      }
    }

    return 0;
  }

  if (*Name != 0x6D6F74612E726961 || Name[1] != 0x65636E65662E6369)
  {
    goto LABEL_12;
  }

  v15 = (a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
  v16 = (*v15 + 24);
  if (*(*v15 + 32) >= 0x41u)
  {
    v16 = *v16;
  }

  v17 = v15[4];
  v18 = (v17 + 24);
  if (*(v17 + 32) >= 0x41u)
  {
    v18 = *v18;
  }

  v19 = *v16;
  v20 = v15[8];
  v21 = (v20 + 24);
  if (*(v20 + 32) >= 0x41u)
  {
    v21 = *v21;
  }

  if ((v19 & 5) != 0)
  {
    v22 = *v18 - 3;
    if ((*v21 & 0xFFFFFFFELL) == 2 && v22 < 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::operator[](void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(*a1, *(a1 + 4), *a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 8;
  }

  v11 = v10;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(*a1, *(a1 + 4), *a2, &v11);
    v6 = *(a1 + 2);
    v5 = v11;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  v8 = *a2;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 24) = 0u;
  *v5 = v8;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x800000000;
  *(v5 + 88) = v5 + 120;
  *(v5 + 96) = v5 + 120;
  *(v5 + 104) = 8;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 184 * v5);
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
        v6 = (a1 + 184 * (v13 & v4));
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x20F330650](v8, 184 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 184 * v10 - 184;
      v13 = vdupq_n_s64(v12 / 0xB8);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[23] = -4096;
        }

        v11 += 2;
        result += 46;
      }

      while (((v12 / 0xB8 + 2) & 0x3FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 184 * v3;
      v16 = (v4 + 88);
      do
      {
        v17 = *(v16 - 11);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = v17;
          v18[1] = (v18 + 3);
          v18[2] = 0x800000000;
          if (*(v16 - 18))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 1), (v16 - 10));
          }

          llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
          ++*(a1 + 8);
          v19 = v16[1];
          if (v19 != *v16)
          {
            free(v19);
          }

          v20 = *(v16 - 10);
          if (v16 - 8 != v20)
          {
            free(v20);
          }
        }

        v16 += 23;
        v15 -= 184;
      }

      while (v15);
    }

    return llvm::deallocate_buffer(0xB8, v4, (184 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = 184 * v21 - 184;
      v24 = vdupq_n_s64(v23 / 0xB8);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_20E70C4F0)));
        if (v25.i8[0])
        {
          *result = -4096;
        }

        if (v25.i8[4])
        {
          result[23] = -4096;
        }

        v22 += 2;
        result += 46;
      }

      while (((v23 / 0xB8 + 2) & 0x3FFFFFFFFFFFFFELL) != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>,llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>::LookupBucketFor<llvm::BasicBlock *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 72 * v5);
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
        v6 = (a1 + 72 * (v13 & v4));
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

uint64_t *llvm::DenseMap<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x20F330650](v8, 72 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = 72 * v11 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v10 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
    }

    v15 = 9 * v3;
    if (v3)
    {
      v16 = v4 + 24;
      v17 = 8 * v15;
      do
      {
        v18 = *(v16 - 3);
        v10 = v18 | 0x1000;
        if ((v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>,llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>::LookupBucketFor<llvm::BasicBlock *>(*a1, *(a1 + 16), v18, &v27);
          v19 = v27;
          *v27 = *(v16 - 3);
          v19[2] = 0x600000000;
          v19[1] = v19 + 3;
          v20 = (v19 + 1);
          if (*(v16 - 2))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v20, (v16 - 16));
          }

          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
          v21 = *(v16 - 2);
          if (v16 != v21)
          {
            free(v21);
          }
        }

        v16 += 72;
        v17 -= 72;
      }

      while (v17);
    }

    return llvm::deallocate_buffer(v10, v4, (8 * v15));
  }

  else
  {
    *(a1 + 8) = 0;
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = 72 * v22 - 72;
      v25 = vdupq_n_s64(v24 / 0x48);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_20E70C4F0)));
        if (v26.i8[0])
        {
          *result = -4096;
        }

        if (v26.i8[4])
        {
          result[9] = -4096;
        }

        v23 += 2;
        result += 18;
      }

      while (((v24 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v23);
    }
  }

  return result;
}

void AGCLLVMUserObject::remapDriverBindpoint(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[21];
  if (*(v4 + 18))
  {
    llvm::Function::BuildLazyArguments(a1[21]);
    v6 = a1[21];
    v5 = *(v4 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(a1[21]);
    }

    v4 = v6;
  }

  else
  {
    v5 = *(v4 + 88);
  }

  v7 = *(v4 + 88) + 40 * *(v4 + 96);
  if (v5 == v7)
  {
    return;
  }

  v68 = a1 + 214;
  v67 = *(v4 + 88) + 40 * *(v4 + 96);
  do
  {
    v8 = *(a1[10] + 8 * *(v5 + 32));
    if (*(v5 + 8))
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_107;
    }

    v10 = *(a1[21] + 80);
    v11 = v10 ? v10 - 24 : 0;
    v12 = *(v11 + 40);
    v13 = v12 ? (v12 - 24) : 0;
    llvm::IRBuilderBase::SetInsertPoint((v68 + *(*a1 - 24)), v13);
    if (!isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.buffer") && !isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.indirect_buffer"))
    {
      goto LABEL_107;
    }

    v75 = 0;
    v76 = 0;
    LODWORD(v14) = *(v8 + 8);
    if (v14 < 3)
    {
      goto LABEL_34;
    }

    v15 = 2;
    while (1)
    {
      v16 = *(v8 - 8 * v14 + 8 * v15);
      if (!*v16)
      {
        break;
      }

LABEL_33:
      if (++v15 >= v14)
      {
        goto LABEL_34;
      }
    }

    String = llvm::MDString::getString(v16);
    if (v18 != 12)
    {
      LODWORD(v14) = *(v8 + 8);
      goto LABEL_33;
    }

    v19 = *String == 0x5F6772612E726961 && *(String + 8) == 1701667182;
    v14 = *(v8 + 8);
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = *(v8 - 8 * v14 + 8 * (v15 + 1));
    if (!v20 || *v20)
    {
      v15 += 2;
      goto LABEL_33;
    }

    v75 = llvm::MDString::getString(v20);
    v76 = v66;
LABEL_34:
    Key = llvm::StringMapImpl::FindKey();
    v22 = *a2;
    if (Key == -1)
    {
      v23 = *(a2 + 2);
    }

    else
    {
      v23 = Key;
    }

    v24 = *(v22 + 8 * v23);
    v25 = *(v24 + 12);
    if (v25 <= 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          std::string::basic_string[abi:nn200100]<0>(&v69, "agc.");
          llvm::StringRef::str(__p, &v75);
          if ((v72 & 0x80u) == 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          if ((v72 & 0x80u) == 0)
          {
            v27 = v72;
          }

          else
          {
            v27 = __p[1];
          }

          v28 = std::string::append(&v69, v26, v27);
          v29 = v28->__r_.__value_.__r.__words[2];
          v73 = *&v28->__r_.__value_.__l.__data_;
          v74 = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          if (v72 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          v30 = *(v5 + 8);
          if (v30)
          {
            v31 = **(v30 + 24);
          }

          else
          {
            v31 = 0;
          }

          v55 = 1;
          v56 = llvm::User::operator new(0x58);
          v57 = &v73;
          if (v74 < 0)
          {
            v57 = v73;
          }

          v70 = 257;
          if (*v57)
          {
            v69.__r_.__value_.__r.__words[0] = v57;
            v55 = 3;
          }

          LOBYTE(v70) = v55;
          llvm::GlobalVariable::GlobalVariable();
          *(v56 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v58 = a1 + *(*a1 - 24) + 1704;
          v59 = *(v22 + 8 * v23);
          v60 = *(v58 + 55);
          v61 = AGCLLVMBuilder::buildGlobalMetadata(v58, v56, *(v59 + 20), *(v59 + 24));
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, v61);
          v62 = *(*a1 - 24);
          v70 = 257;
          llvm::Type::isOpaquePointerTy(*v56);
          llvm::IRBuilderBase::CreateAlignedLoad((v68 + v62), v31, v56, 0, &v69);
          v63 = *(v5 + 8);
          if (v63)
          {
            do
            {
              v64 = *(v63 + 8);
              v65 = *(v63 + 24);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v65);
              v63 = v64;
            }

            while (v64);
          }

          v7 = v67;
          if (SHIBYTE(v74) < 0)
          {
            operator delete(v73);
          }
        }
      }

      else
      {
        AGCLLVMUserObject::replaceBufferInputArgument(a1, v5, *(v5 + 32), v8, *(v24 + 16));
      }

      goto LABEL_107;
    }

    if (v25 == 2)
    {
      llvm::ConstantInt::get();
      v52 = *(v5 + 8);
      if (v52)
      {
        do
        {
          v53 = *(v52 + 8);
          v54 = *(v52 + 24);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v54);
          v52 = v53;
        }

        while (v53);
      }

      goto LABEL_107;
    }

    if (v25 != 3)
    {
      goto LABEL_107;
    }

    *&v69.__r_.__value_.__r.__words[1] = 0uLL;
    v69.__r_.__value_.__r.__words[0] = &v69.__r_.__value_.__l.__size_;
    v73 = 0uLL;
    v74 = 0;
    __p[0] = v5;
    std::vector<llvm::User *>::push_back[abi:nn200100](&v73, __p);
LABEL_55:
    v32 = *(&v73 + 1);
    v33 = v73;
    while (v73 != v32)
    {
      v34 = *(v32 - 8);
      v32 -= 8;
      *(&v73 + 1) = v32;
      v35 = *(v34 + 8);
      if (v35)
      {
        do
        {
          __p[0] = *(v35 + 24);
          std::vector<llvm::User *>::push_back[abi:nn200100](&v73, __p);
          v36 = *(v35 + 24);
          size = v69.__r_.__value_.__l.__size_;
          if (!v69.__r_.__value_.__l.__size_)
          {
LABEL_64:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v38 = size;
              v39 = *(size + 32);
              if (v36 >= v39)
              {
                break;
              }

              size = *v38;
              if (!*v38)
              {
                goto LABEL_64;
              }
            }

            if (v39 >= v36)
            {
              break;
            }

            size = v38[1];
            if (!size)
            {
              goto LABEL_64;
            }
          }

          v35 = *(v35 + 8);
        }

        while (v35);
        goto LABEL_55;
      }
    }

    v40 = v69.__r_.__value_.__r.__words[0];
    if (v69.__r_.__value_.__l.__data_ == &v69.__r_.__value_.__r.__words[1])
    {
      goto LABEL_84;
    }

    while (2)
    {
      v41 = *(v40 + 32);
      v42 = *(v41 + 20);
      if ((v42 & 0x40000000) != 0)
      {
        v44 = *(v41 - 8);
        v43 = v42 & 0x7FFFFFF;
        if (!v43)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v43 = v42 & 0x7FFFFFF;
        v44 = v41 - 32 * v43;
        if (!v43)
        {
          goto LABEL_77;
        }
      }

      v45 = 32 * v43;
      v46 = (v44 + 16);
      do
      {
        if (*(v46 - 2))
        {
          v47 = *(v46 - 1);
          **v46 = v47;
          if (v47)
          {
            *(v47 + 16) = *v46;
          }
        }

        *(v46 - 2) = 0;
        v46 += 4;
        v45 -= 32;
      }

      while (v45);
LABEL_77:
      v48 = *(v40 + 8);
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = v48->__r_.__value_.__r.__words[0];
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = *(v40 + 16);
          v9 = v49->__r_.__value_.__r.__words[0] == v40;
          v40 = v49;
        }

        while (!v9);
      }

      v40 = v49;
      if (v49 != &v69.__r_.__value_.__r.__words[1])
      {
        continue;
      }

      break;
    }

    v40 = v69.__r_.__value_.__r.__words[0];
LABEL_84:
    if (v40 != &v69.__r_.__value_.__r.__words[1])
    {
      do
      {
        llvm::Instruction::eraseFromParent(*(v40 + 32));
        v50 = *(v40 + 8);
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = v50->__r_.__value_.__r.__words[0];
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = *(v40 + 16);
            v9 = v51->__r_.__value_.__r.__words[0] == v40;
            v40 = v51;
          }

          while (!v9);
        }

        v40 = v51;
      }

      while (v51 != &v69.__r_.__value_.__r.__words[1]);
    }

    if (v33)
    {
      *(&v73 + 1) = v33;
      operator delete(v33);
    }

    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v69.__r_.__value_.__l.__size_);
LABEL_107:
    v5 += 40;
  }

  while (v5 != v7);
}