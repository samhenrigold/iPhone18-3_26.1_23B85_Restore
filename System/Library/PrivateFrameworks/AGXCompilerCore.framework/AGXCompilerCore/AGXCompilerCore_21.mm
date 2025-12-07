llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetPayloadPointer(uint64_t a1, uint64_t a2)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildEnableAllThreads(uint64_t a1, uint64_t a2)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildWriteChildcount(uint64_t a1, uint64_t a2, uint64_t a3)
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

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildStoreChildcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
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

void AGCLLVMUserIntersectionShaderArray<RaytracingConstantsGen2>::~AGCLLVMUserIntersectionShaderArray(AGCLLVMObjectArray *a1)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(a1);

  JUMPOUT(0x20F331DC0);
}

llvm::Value *AGCLLVMHAL300TargetLowerer::buildCoordinateDewarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateDewarpImpl(a1, &v12, a3, a4, a5, 0x401u, 0x1004u);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

llvm::Value *AGCLLVMHAL300TargetLowerer::buildCoordinateWarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateWarpImpl(a1, &v12, a3, a4, a5, 0x401u, 0x802u, 0x1405u);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMHAL300TargetLowerer::getFreeSpaceInRayCore(AGCLLVMHAL300TargetLowerer *this, int a2)
{
  if (a2 == 5)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 28;
  }
}

llvm::Instruction *AGCLLVMHAL300TargetLowerer::buildDisableAtomicSmashingIntrinsic(uint64_t a1, uint64_t a2, void *a3, llvm::Type *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = a3;
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

  v8 = *a3;
  if (llvm::Type::isIntegerTy(a4))
  {
    v15 = v8;
    v16 = v8;
  }

  else if (llvm::Type::isIntegerTy(a4))
  {
    v15 = v8;
    v16 = v8;
  }

  else
  {
    if (*(a4 + 8) != 2)
    {
      Declaration = 0;
      goto LABEL_12;
    }

    v15 = v8;
    v16 = v8;
  }

  Declaration = llvm::Intrinsic::getDeclaration();
LABEL_12:
  v17 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(Declaration + 24), Declaration, &v14, 1, &v15);
}

uint64_t *MarkInvariants::addSeed(uint64_t *this, llvm::Value *a2, int a3)
{
  if (*(a2 + 16) <= 0x1Bu)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  v23 = v3;
  if (v3)
  {
    v5 = this;
    v7 = this + 4;
    v6 = this[4];
    if (!v6)
    {
      goto LABEL_13;
    }

    v8 = this + 4;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= v3;
      v11 = v9 < v3;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 == v7 || v3 < v8[4])
    {
LABEL_13:
      v13 = this[1];
      v12 = this[2];
      if (v13 >= v12)
      {
        v15 = *this;
        v16 = v13 - *this;
        v17 = v16 >> 4;
        v18 = (v16 >> 4) + 1;
        if (v18 >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 60))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = 16 * v17;
        *v21 = v3;
        *(v21 + 8) = a3;
        v14 = 16 * v17 + 16;
        v22 = (v21 - 16 * (v16 >> 4));
        memcpy(v22, v15, v16);
        *v5 = v22;
        v5[1] = v14;
        v5[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v13 = v3;
        *(v13 + 8) = a3;
        v14 = v13 + 16;
      }

      v5[1] = v14;
      return std::__tree<llvm::Function *>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(v7 - 1, v3, &v23);
    }
  }

  return this;
}

uint64_t MarkInvariants::markInvariant(MarkInvariants *this, llvm::ConstantInt **a2)
{
  v143 = *MEMORY[0x277D85DE8];
  v129[0] = 0;
  v129[1] = 0;
  v127[1] = 0;
  v128 = v129;
  v126 = v127;
  v127[0] = 0;
  v2 = *(this + 1);
  if (*this != v2)
  {
    v4 = (this + 32);
    while (1)
    {
      v7 = *(v2 - 16);
      v5 = v2 - 16;
      v6 = v7;
      v8 = *(v5 + 8);
      *(this + 1) = v5;
      if (llvm::FPMathOperator::classof(v7))
      {
        llvm::Instruction::setFast(v6);
      }

      if (*(this + 56) != 1 || *(v6 + 16) != 42)
      {
        break;
      }

      v9 = *(v6 + 5);
      if ((v9 & 0x40000000) != 0)
      {
        v10 = *(v6 - 1);
      }

      else
      {
        v10 = &v6[-4 * (v9 & 0x7FFFFFF)];
      }

      v11 = *v10;
      v12 = v10[4];
      v13 = *(v11 + 16);
      if (v11 && v13 == 46)
      {
        v14 = *(v11 + 20);
        if ((v14 & 0x40000000) != 0)
        {
          v15 = *(v11 - 8);
        }

        else
        {
          v15 = (v11 - 32 * (v14 & 0x7FFFFFF));
        }

        InsertElement = *v15;
        v22 = v15[4];
        v11 = v12;
        if (!*v15)
        {
          break;
        }
      }

      else
      {
        v16 = *(v12 + 16);
        if (v16 != 46 || v12 == 0)
        {
          if (v11 && v13 == 90)
          {
            v18 = v11;
            v11 = v12;
          }

          else
          {
            v23 = v16 != 90 || v12 == 0;
            v18 = v12;
            if (v23)
            {
              break;
            }
          }

          *v140 = 0u;
          v141 = 0u;
          llvm::IRBuilderBase::SetInsertPoint((a2 + 1), v6);
          v24 = AGCLLVMBuilder::unboxVector(a2, v18, v140);
          v25 = v24;
          v122 = v11;
          if (!v24)
          {
            goto LABEL_37;
          }

          v26 = v24;
          v27 = 1;
          v28 = v140;
          do
          {
            v29 = *v28;
            if (*v28)
            {
              LOBYTE(v29) = *(v29 + 16) == 46;
            }

            v27 &= v29;
            ++v28;
            --v26;
          }

          while (v26);
          if ((v27 & 1) == 0)
          {
            v22 = 0;
            InsertElement = 0;
          }

          else
          {
LABEL_37:
            InsertElement = llvm::UndefValue::get();
            v22 = llvm::UndefValue::get();
            if (v25)
            {
              v31 = 0;
              v123 = v25;
              do
              {
                v32 = v140[v31];
                v33 = *(v32 + 5);
                if ((v33 & 0x40000000) != 0)
                {
                  v34 = *(v32 - 1);
                }

                else
                {
                  v34 = (v32 - 32 * (v33 & 0x7FFFFFF));
                }

                v35 = *v34;
                llvm::Type::getInt32Ty(a2[9], v30);
                v36 = llvm::ConstantInt::get();
                v133 = 257;
                InsertElement = llvm::IRBuilderBase::CreateInsertElement((a2 + 1), InsertElement, v35, v36, v130);
                v38 = *(v32 + 5);
                if ((v38 & 0x40000000) != 0)
                {
                  v39 = *(v32 - 1);
                }

                else
                {
                  v39 = v32 - 32 * (v38 & 0x7FFFFFF);
                }

                v40 = *(v39 + 4);
                llvm::Type::getInt32Ty(a2[9], v37);
                v41 = llvm::ConstantInt::get();
                v133 = 257;
                v22 = llvm::IRBuilderBase::CreateInsertElement((a2 + 1), v22, v40, v41, v130);
                ++v31;
              }

              while (v123 != v31);
            }
          }

          v11 = v122;
          if (!InsertElement)
          {
            break;
          }
        }

        else
        {
          v19 = *(v12 + 20);
          if ((v19 & 0x40000000) != 0)
          {
            v20 = *(v12 - 8);
          }

          else
          {
            v20 = (v12 - 32 * (v19 & 0x7FFFFFF));
          }

          InsertElement = *v20;
          v22 = v20[4];
          if (!*v20)
          {
            break;
          }
        }
      }

      if (!v22 || !v11)
      {
        break;
      }

      v42 = *v6;
      if ((*(*v6 + 8) & 0xFE) == 0x12)
      {
        v43 = *(v42 + 32) - 1;
      }

      else
      {
        v43 = 0;
      }

      std::string::basic_string[abi:nn200100]<0>(v130, ".");
      std::string::basic_string[abi:nn200100]<0>(&v132, ".v2");
      std::string::basic_string[abi:nn200100]<0>(v135, ".v3");
      std::string::basic_string[abi:nn200100]<0>(v136, ".v4");
      std::string::basic_string[abi:nn200100]<0>(&v125, "air.fma");
      v82 = &v130[3 * v43];
      v83 = *(v82 + 23);
      if (v83 >= 0)
      {
        v84 = &v130[3 * v43];
      }

      else
      {
        v84 = *v82;
      }

      if (v83 >= 0)
      {
        v85 = *(v82 + 23);
      }

      else
      {
        v85 = v82[1];
      }

      std::string::append(&v125, v84, v85);
      if ((*(v42 + 8) & 0xFE) == 0x12)
      {
        v86 = *(**(v42 + 16) + 8);
      }

      else
      {
        v86 = *(v42 + 8);
      }

      if (v86 == 2)
      {
        v87 = ".f32";
      }

      else
      {
        v87 = ".f16";
      }

      std::string::append(&v125, v87);
      __src = v42;
      v138 = v42;
      v139 = v42;
      v140[0] = &v141;
      v140[1] = 0x300000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v140, &__src, v140);
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v89 = v88;
      if (v140[0] != &v141)
      {
        free(v140[0]);
      }

      llvm::IRBuilderBase::SetInsertPoint((a2 + 1), v6);
      __src = InsertElement;
      v138 = v22;
      v139 = v11;
      v142 = 257;
      v44 = llvm::IRBuilderBase::CreateCall(a2 + 1, *(v89 + 24), v89, &__src, 3, v140);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v6);
      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      for (i = 0; i != -12; i -= 3)
      {
        if (SHIBYTE(v136[i + 2]) < 0)
        {
          operator delete(v136[i]);
        }
      }

LABEL_57:
      v45 = *(v44 + 16);
      if (v44 && v45 == 60)
      {
        v46 = **(v44 - 4);
        v47 = *(v46 + 8);
        if ((v47 & 0xFE) == 0x12)
        {
          v47 = *(**(v46 + 16) + 8);
        }

        v48 = v47 >> 8;
        LODWORD(v130[0]) = v47 >> 8;
        v49 = v129[0];
        if (!v129[0])
        {
          goto LABEL_70;
        }

        v50 = v129;
        do
        {
          v51 = v49;
          v52 = v50;
          v53 = *(v49 + 7);
          if (v53 >= v48)
          {
            v50 = v49;
          }

          v49 = v49[v53 < v48];
        }

        while (v49);
        if (v50 == v129)
        {
          goto LABEL_70;
        }

        if (v53 < v48)
        {
          v51 = v52;
        }

        if (v48 < *(v51 + 7))
        {
LABEL_70:
          v54 = *(this + 6);
          v55 = v54 + 24;
          for (j = *(v54 + 32); j != v55; j = *(j + 8))
          {
            v57 = j - 56;
            if (!j)
            {
              v57 = 0;
            }

            v58 = v57 + 72;
            v59 = *(v57 + 80);
            if (v59 == v57 + 72)
            {
              v61 = 0;
            }

            else
            {
              do
              {
                v60 = v59 - 24;
                if (!v59)
                {
                  v60 = 0;
                }

                v61 = *(v60 + 48);
                if (v61 != v60 + 40)
                {
                  break;
                }

                v59 = *(v59 + 8);
              }

              while (v59 != v58);
            }

            while (v59 != v58)
            {
              if (v61 && *(v61 - 8) == 61)
              {
                v62 = **(v61 - 56);
                v63 = *(v62 + 8);
                if ((v63 & 0xFE) == 0x12)
                {
                  v63 = *(**(v62 + 16) + 8);
                }

                if (v48 == v63 >> 8)
                {
                  MarkInvariants::addSeed(this, *(v61 - 88), 0);
                }
              }

              v61 = *(v61 + 8);
              v64 = v59 - 24;
              if (!v59)
              {
                v64 = 0;
              }

              while (v61 == v64 + 40)
              {
                v59 = *(v59 + 8);
                if (v59 == v58)
                {
                  break;
                }

                v64 = v59 - 24;
                if (!v59)
                {
                  v64 = 0;
                }

                v61 = *(v64 + 48);
              }
            }
          }

          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v128, v48, v130);
        }

        goto LABEL_102;
      }

      if (v44 && v45 == 92)
      {
        if (*(v44 + 18) != 1)
        {
          goto LABEL_213;
        }

        v65 = **(v44 + 8);
        v66 = *(v44 - 4);
        v67 = this;
LABEL_100:
        MarkInvariants::addSeed(v67, v66, v65);
        goto LABEL_102;
      }

      if (!v44 || v45 != 93)
      {
        if (!v44 || v45 != 84)
        {
          v79 = *(v44 + 5);
          if ((v79 & 0x40000000) != 0)
          {
            v81 = *(v44 - 1);
            v80 = v79 & 0x7FFFFFF;
            if (!v80)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v80 = v79 & 0x7FFFFFF;
            v81 = (v44 - 32 * v80);
            if (!v80)
            {
              goto LABEL_102;
            }
          }

          v107 = 32 * v80;
          do
          {
            v108 = *v81;
            v81 += 4;
            MarkInvariants::addSeed(this, v108, v8);
            v107 -= 32;
          }

          while (v107);
          goto LABEL_102;
        }

        v75 = *(v44 - 4);
        if (!v75 || *(v75 + 16) || *(v75 + 24) != *(v44 + 9))
        {
LABEL_213:
          v120 = 0;
          goto LABEL_214;
        }

        v130[0] = *(v44 - 4);
        if (llvm::GlobalValue::isDeclaration(v75))
        {
          v76 = *(v44 + 5) & 0x7FFFFFF;
          if (v76)
          {
            v77 = -32 * v76;
            do
            {
              MarkInvariants::addSeed(this, *(v44 + v77), v8);
              v77 += 32;
            }

            while (v77);
          }
        }

        else
        {
          std::__tree<llvm::Function *>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(&v126, v75, v130);
          v109 = v75 + 72;
          for (k = *(v75 + 80); k != v109; k = *(k + 8))
          {
            v111 = k - 24;
            if (!k)
            {
              v111 = 0;
            }

            v112 = *(v111 + 40);
            v113 = v112 - 24;
            if (v112)
            {
              v114 = v112 - 24;
            }

            else
            {
              v114 = 0;
            }

            v115 = *(v114 + 16) - 40;
            if (v115 >= 0xFFFFFFF5)
            {
              v116 = v112 - 24;
            }

            else
            {
              v116 = 0;
            }

            v117 = *(v116 + 16) == 29 && v115 >= 0xFFFFFFF5;
            if (v117)
            {
              v118 = *(v112 - 4) & 0x7FFFFFF;
              if (v118)
              {
                v119 = *(v113 - 32 * v118);
              }

              else
              {
                v119 = 0;
              }

              MarkInvariants::addSeed(this, v119, v8);
            }
          }
        }

LABEL_102:
        v68 = v127[0];
        if (!v127[0])
        {
          goto LABEL_186;
        }

        v69 = *(*(v44 + 5) + 56);
        v70 = v127;
        do
        {
          v71 = v68;
          v72 = v70;
          v73 = v68[4];
          if (v73 >= v69)
          {
            v70 = v68;
          }

          v68 = v68[v73 < v69];
        }

        while (v68);
        if (v70 == v127)
        {
          goto LABEL_186;
        }

        if (v73 < v69)
        {
          v71 = v72;
        }

        if (v69 < v71[4])
        {
          goto LABEL_186;
        }

        v131 = 128;
        v130[0] = MEMORY[0x20F330650](6144, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(v130);
        LOBYTE(v132) = 0;
        LOBYTE(v135[0]) = 0;
        if ((*(v69 + 18) & 1) == 0)
        {
          v74 = *(v69 + 88);
          goto LABEL_129;
        }

        llvm::Function::BuildLazyArguments(v69);
        v74 = *(v69 + 88);
        if (*(v69 + 18))
        {
          llvm::Function::BuildLazyArguments(v69);
          v78 = *(v69 + 88);
        }

        else
        {
LABEL_129:
          v78 = v74;
        }

        v91 = (v78 + 40 * *(v69 + 96));
        if (v74 != v91)
        {
          v92 = 0;
          do
          {
            *llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](v130, v74) = v92;
            v74 = (v74 + 40);
            ++v92;
          }

          while (v74 != v91);
        }

        v93 = *(v44 + 5);
        if ((v93 & 0x40000000) != 0)
        {
          v95 = *(v44 - 1);
          v94 = v93 & 0x7FFFFFF;
        }

        else
        {
          v94 = v93 & 0x7FFFFFF;
          v95 = (v44 - 32 * v94);
        }

        if (v94)
        {
          v96 = &v95[4 * v94];
          do
          {
            v97 = *v95;
            v140[0] = 0;
            v98 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v130[0], v131, v97, v140);
            v99 = v140[0];
            if (v98)
            {
              v100 = v140[0] == (v130[0] + 48 * v131);
            }

            else
            {
              v100 = 1;
            }

            if (!v100)
            {
              for (m = *(v69 + 8); m; m = *(m + 8))
              {
                v102 = *(m + 24);
                if (*(v102 + 16) != 84)
                {
                  v102 = 0;
                }

                v103 = *v4;
                if (*v4)
                {
                  v104 = v4;
                  do
                  {
                    v105 = v103[4];
                    v117 = v105 >= v102;
                    v106 = v105 < v102;
                    if (v117)
                    {
                      v104 = v103;
                    }

                    v103 = v103[v106];
                  }

                  while (v103);
                  if (v104 != v4 && v102 >= v104[4])
                  {
                    MarkInvariants::addSeed(this, *(v102 - 32 * (*(v102 + 20) & 0x7FFFFFF) + 32 * *(v99 + 10)), v8);
                  }
                }
              }
            }

            v95 += 4;
          }

          while (v95 != v96);
        }

        if (LOBYTE(v135[0]) == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v132);
          llvm::deallocate_buffer(v134, v132, (16 * v134));
          LOBYTE(v135[0]) = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(v130);
        llvm::deallocate_buffer((3 * v131), v130[0], (48 * v131));
        goto LABEL_186;
      }

      if (*(v44 + 18) != 1)
      {
        goto LABEL_213;
      }

      if (**(v44 + 8) == v8)
      {
        v66 = *(v44 - 4);
        v67 = this;
        v65 = 0;
        goto LABEL_100;
      }

      MarkInvariants::addSeed(this, *(v44 - 8), v8);
LABEL_186:
      v2 = *(this + 1);
      if (*this == v2)
      {
        goto LABEL_212;
      }
    }

    v44 = v6;
    goto LABEL_57;
  }

LABEL_212:
  v120 = 1;
LABEL_214:
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v127[0]);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v129[0]);
  return v120;
}

llvm::LLVMContext *AGCBitcodeModuleAccessor::release@<X0>(llvm::LLVMContext *this@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v3 = this;
  v5 = *(this + 4);
  if (!v5)
  {
    this = AGCBitcodeModuleAccessor::deserializeModule(&v7, this, a3);
    v5 = v7;
    if (v7)
    {
      v6 = *(a2 + 8) | 1;
      goto LABEL_5;
    }

    v5 = *(v3 + 4);
  }

  *(v3 + 4) = 0;
  v6 = *(a2 + 8) & 0xFE;
LABEL_5:
  *(a2 + 8) = v6;
  *a2 = v5;
  return this;
}

const llvm::MemoryBuffer *AGCBitcodeModuleAccessor::deserializeModule(AGCBitcodeModuleAccessor *this, llvm::LLVMContext *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a2 + 3))
  {
    strlen(*(a2 + 3));
  }

  llvm::MemoryBuffer::getMemBuffer();
  llvm::MemoryBufferRef::MemoryBufferRef();
  llvm::parseBitcodeFile();
  if (v10)
  {
    v5 = v9;
    v9 = 0;
  }

  else
  {
    v6 = v9;
    v9 = 0;
    std::unique_ptr<llvm::Module>::reset[abi:nn200100](a2 + 4, v6);
    v5 = 0;
  }

  *this = v5;
  llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v9);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))();
  }

  return result;
}

uint64_t std::unique_ptr<llvm::Module>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x20F330EC0]();

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

const llvm::MemoryBuffer *AGCBitcodeModuleAccessor::get@<X0>(const llvm::MemoryBuffer *this@<X0>, llvm::LLVMContext *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 4);
  if (!v4)
  {
    v6 = this;
    this = AGCBitcodeModuleAccessor::deserializeModule(&v7, this, a2);
    v4 = v7;
    if (v7)
    {
      v5 = *(a3 + 8) | 1;
      goto LABEL_5;
    }

    v4 = *(v6 + 4);
  }

  v5 = *(a3 + 8) & 0xFE;
LABEL_5:
  *(a3 + 8) = v5;
  *a3 = v4;
  return this;
}

void AGCBitcodeModuleAccessor::~AGCBitcodeModuleAccessor(AGCBitcodeModuleAccessor *this)
{
  *this = &unk_2825BDFC0;
  std::unique_ptr<llvm::Module>::reset[abi:nn200100](this + 4, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BDFC0;
  std::unique_ptr<llvm::Module>::reset[abi:nn200100](this + 4, 0);
}

void AGCLLVMModuleAccessor::updateHashWithModule(AGCLLVMModuleAccessor *this, llvm::SHA256 *a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &v12;
  v3 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  v2 = MEMORY[0x277D82200] + 16;
  v10 = v11;
  llvm::raw_ostream::SetUnbuffered(&v2);
  llvm::WriteBitcodeToFile();
  llvm::SHA256::update();
  llvm::raw_ostream::~raw_ostream(&v2);
  if (v11[0] != &v12)
  {
    free(v11[0]);
  }
}

uint64_t AGCLLVMModuleAccessor::release@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *(result + 8) = 0;
  *(a2 + 8) &= ~1u;
  *a2 = v2;
  return result;
}

uint64_t AGCLLVMModuleAccessor::get@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) &= ~1u;
  *a2 = *(result + 8);
  return result;
}

uint64_t std::function<void ()(unsigned int,llvm::StringRef)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(unsigned int,llvm::StringRef)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__value_func<void ()(unsigned int,llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1>,void ()(unsigned int,llvm::StringRef)>::operator()(uint64_t a1, int *a2, unsigned __int8 **a3)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*a2 <= 62)
  {
    switch(v3)
    {
      case '<':
        *v5 = (*(v4 + 3) & 0x4000000) != 0;
        *(v5 + 1) = v4[13] & 1;
        *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
        *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
        *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
        *(v5 + 9) = (*(v4 + 4) & 0x800000) != 0;
        *(v5 + 10) = v4[19] & 1;
        *(v5 + 11) = (*(v4 + 4) & 0x8000000) != 0;
        *(v5 + 3) = (*(v4 + 2) & 0x20000000000) != 0;
        *(v5 + 4) = (*(v4 + 2) & 0x40000000000) != 0;
        *(v5 + 5) = (*(v4 + 2) & 0x80000000000) != 0;
        *(v5 + 16) = v4[12] & 1;
        *(v5 + 17) = (v4[12] & 2) != 0;
        *(v5 + 18) = (v4[12] & 8) != 0;
        *(v5 + 19) = (*(v4 + 4) & 0x4000000) != 0;
        v9 = *(a1 + 16);
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v47, *v9, *(v9 + 8));
        }

        else
        {
          v47 = *v9;
        }

        if (*(v9 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v46, *(v9 + 24), *(v9 + 32));
        }

        else
        {
          v46 = *(v9 + 24);
        }

        v13 = *(v9 + 48);
        v49[0] = v47.__r_.__value_.__l.__size_;
        v14 = v47.__r_.__value_.__r.__words[0];
        *(v49 + 7) = *(&v47.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        v48[0] = v46.__r_.__value_.__l.__size_;
        v16 = v46.__r_.__value_.__r.__words[0];
        *(v48 + 7) = *(&v46.__r_.__value_.__r.__words[1] + 7);
        v17 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        if (*(v5 + 232) == 1)
        {
          if (*(v5 + 199) < 0)
          {
            operator delete(*(v5 + 176));
          }

          v18 = v49[0];
          *(v5 + 176) = v14;
          *(v5 + 184) = v18;
          *(v5 + 191) = *(v49 + 7);
          *(v5 + 199) = v15;
          if (*(v5 + 223) < 0)
          {
            operator delete(*(v5 + 200));
          }

          v19 = v48[0];
          *(v5 + 200) = v16;
          *(v5 + 208) = v19;
          *(v5 + 215) = *(v48 + 7);
          *(v5 + 223) = v17;
          *(v5 + 224) = v13;
        }

        else
        {
          v20 = v49[0];
          *(v5 + 176) = v47.__r_.__value_.__r.__words[0];
          *(v5 + 184) = v20;
          *(v5 + 191) = *(v49 + 7);
          *(v5 + 199) = v15;
          v21 = v48[0];
          *(v5 + 200) = v16;
          *(v5 + 208) = v21;
          *(v5 + 215) = *(v48 + 7);
          *(v5 + 223) = v17;
          *(v5 + 224) = v13;
          *(v5 + 232) = 1;
        }

        break;
      case '=':
        *v5 = (*(v4 + 3) & 0x4000000) != 0;
        *(v5 + 1) = v4[13] & 1;
        *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
        *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
        *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
        *(v5 + 3) = (*(v4 + 4) & 0x80) != 0;
        *(v5 + 4) = v4[17] & 1;
        *(v5 + 5) = (*(v4 + 4) & 0x200) != 0;
        *(v5 + 16) = v4[12] & 1;
        *(v5 + 17) = (v4[12] & 2) != 0;
        *(v5 + 18) = (v4[12] & 8) != 0;
        v12 = (v4[16] >> 1) & 1 | (((v4[16] >> 2) & 1) << 8);
        if ((*(v5 + 242) & 1) == 0)
        {
          *(v5 + 242) = 1;
        }

        *(v5 + 240) = v12;
        break;
      case '>':
        *v5 = (*(v4 + 3) & 0x4000000) != 0;
        *(v5 + 1) = v4[13] & 1;
        *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
        *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
        *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
        *(v5 + 3) = (*(v4 + 4) & 0x200) != 0;
        *(v5 + 4) = (*(v4 + 4) & 0x400) != 0;
        *(v5 + 5) = (*(v4 + 4) & 0x800) != 0;
        *(v5 + 16) = v4[12] & 1;
        *(v5 + 17) = (v4[12] & 2) != 0;
        *(v5 + 18) = (v4[12] & 8) != 0;
        v6 = *(a1 + 16);
        v7 = *(v4 + 4);
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v47, *v6, *(v6 + 8));
        }

        else
        {
          v47 = *v6;
        }

        v35 = v7 & 0x100 | (v7 >> 7) & 1;
        if (*(v6 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v46, *(v6 + 24), *(v6 + 32));
        }

        else
        {
          v46 = *(v6 + 24);
        }

        v36 = *(v6 + 48);
        v49[0] = v47.__r_.__value_.__l.__size_;
        v37 = v47.__r_.__value_.__r.__words[0];
        *(v49 + 7) = *(&v47.__r_.__value_.__r.__words[1] + 7);
        v38 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        v48[0] = v46.__r_.__value_.__l.__size_;
        v39 = v46.__r_.__value_.__r.__words[0];
        *(v48 + 7) = *(&v46.__r_.__value_.__r.__words[1] + 7);
        v40 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        v41 = *(v5 + 88);
        *(v5 + 24) = v35;
        if (v41 == 1)
        {
          if (*(v5 + 55) < 0)
          {
            operator delete(*(v5 + 32));
          }

          v42 = v49[0];
          *(v5 + 32) = v37;
          *(v5 + 40) = v42;
          *(v5 + 47) = *(v49 + 7);
          *(v5 + 55) = v38;
          if (*(v5 + 79) < 0)
          {
            operator delete(*(v5 + 56));
          }

          v43 = v48[0];
          *(v5 + 56) = v39;
          *(v5 + 64) = v43;
          *(v5 + 71) = *(v48 + 7);
          *(v5 + 79) = v40;
          *(v5 + 80) = v36;
        }

        else
        {
          v44 = v49[0];
          *(v5 + 32) = v37;
          *(v5 + 40) = v44;
          *(v5 + 47) = *(v49 + 7);
          *(v5 + 55) = v38;
          v45 = v48[0];
          *(v5 + 56) = v39;
          *(v5 + 64) = v45;
          *(v5 + 71) = *(v48 + 7);
          *(v5 + 79) = v40;
          *(v5 + 80) = v36;
          *(v5 + 88) = 1;
        }

        break;
    }
  }

  else if (v3 > 78)
  {
    if (v3 == 79)
    {
      *v5 = (*v4 & 0x4000000) != 0;
      *(v5 + 1) = v4[1] & 1;
      *(v5 + 2) = (*v4 & 0x10000000) != 0;
      *(v5 + 6) = (*v4 & 0x20000000) != 0;
      *(v5 + 8) = (*v4 & 0x40000000) != 0;
      *(v5 + 4) = (v4[4] & 2) != 0;
      *(v5 + 5) = (v4[4] & 4) != 0;
      *(v5 + 16) = *v4 & 1;
      *(v5 + 17) = (*v4 & 2) != 0;
      v8 = (*v4 >> 3) & 1;
    }

    else
    {
      if (v3 != 84)
      {
        return;
      }

      *(v5 + 3) = (*v4 & 0x40000) != 0;
      *(v5 + 4) = (*v4 & 0x200000) != 0;
      *(v5 + 5) = (*v4 & 0x400000) != 0;
      *(v5 + 16) = (*v4 & 8) != 0;
      *(v5 + 17) = (*v4 & 0x10) != 0;
      v8 = (*v4 >> 5) & 1;
    }

    *(v5 + 18) = v8;
  }

  else if (v3 == 63)
  {
    *v5 = (*(v4 + 15) & 0x4000000) != 0;
    *(v5 + 1) = v4[61] & 1;
    *(v5 + 2) = (*(v4 + 15) & 0x10000000) != 0;
    *(v5 + 6) = (*(v4 + 15) & 0x20000000) != 0;
    *(v5 + 8) = (*(v4 + 15) & 0x40000000) != 0;
    *(v5 + 12) = (v4[68] & 8) != 0;
    *(v5 + 3) = (*(v4 + 17) & 0x800) != 0;
    *(v5 + 4) = (*(v4 + 17) & 0x1000) != 0;
    *(v5 + 5) = (*(v4 + 17) & 0x2000) != 0;
    *(v5 + 16) = v4[60] & 1;
    *(v5 + 17) = (v4[60] & 2) != 0;
    *(v5 + 18) = (v4[60] & 8) != 0;
    *(v5 + 19) = (*(v4 + 17) & 0x80) != 0;
    v10 = *(a1 + 16);
    v11 = v4[69] & 1;
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, *v10, *(v10 + 8));
    }

    else
    {
      v47 = *v10;
    }

    if (*(v10 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, *(v10 + 24), *(v10 + 32));
    }

    else
    {
      v46 = *(v10 + 24);
    }

    v49[0] = v47.__r_.__value_.__l.__size_;
    v22 = v47.__r_.__value_.__r.__words[0];
    *(v49 + 7) = *(&v47.__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    v48[0] = v46.__r_.__value_.__l.__size_;
    v24 = v46.__r_.__value_.__r.__words[0];
    *(v48 + 7) = *(&v46.__r_.__value_.__r.__words[1] + 7);
    v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    v26 = *(v4 + 17);
    v27 = v26 >> 14;
    v28 = (*v4 >> 20) & 7;
    v29 = HIWORD(v26) & 1;
    v30 = *(v5 + 168);
    *(v5 + 96) = v11;
    if (v30 == 1)
    {
      if (*(v5 + 127) < 0)
      {
        operator delete(*(v5 + 104));
      }

      v31 = v49[0];
      *(v5 + 104) = v22;
      *(v5 + 112) = v31;
      *(v5 + 119) = *(v49 + 7);
      *(v5 + 127) = v23;
      if (*(v5 + 151) < 0)
      {
        operator delete(*(v5 + 128));
      }

      v32 = v48[0];
      *(v5 + 128) = v24;
      *(v5 + 136) = v32;
      *(v5 + 143) = *(v48 + 7);
      *(v5 + 151) = v25;
      *(v5 + 152) = v27;
      *(v5 + 156) = v28;
      *(v5 + 160) = v29;
    }

    else
    {
      v33 = v49[0];
      *(v5 + 104) = v22;
      *(v5 + 112) = v33;
      *(v5 + 119) = *(v49 + 7);
      *(v5 + 127) = v23;
      v34 = v48[0];
      *(v5 + 128) = v24;
      *(v5 + 136) = v34;
      *(v5 + 143) = *(v48 + 7);
      *(v5 + 151) = v25;
      *(v5 + 152) = v27;
      *(v5 + 156) = v28;
      *(v5 + 160) = v29;
      *(v5 + 168) = 1;
    }
  }

  else if (v3 == 78)
  {
    *v5 = (*(v4 + 3) & 0x4000000) != 0;
    *(v5 + 1) = v4[13] & 1;
    *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
    *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
    *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
    *(v5 + 13) = (v4[16] & 4) != 0;
    *(v5 + 14) = (v4[16] & 0x40) != 0;
    *(v5 + 15) = (*(v4 + 4) & 0x80) != 0;
    *(v5 + 3) = (*(v4 + 4) & 0x800) != 0;
    *(v5 + 4) = (*(v4 + 4) & 0x1000) != 0;
    *(v5 + 5) = (*(v4 + 4) & 0x2000) != 0;
    *(v5 + 16) = v4[12] & 1;
    *(v5 + 17) = (v4[12] & 2) != 0;
    *(v5 + 18) = (v4[12] & 8) != 0;
    *(v5 + 19) = v4[17] & 1;
  }
}

__n128 std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1>,void ()(unsigned int,llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BE858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0>,void ()(unsigned int,llvm::StringRef)>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v4 == 76)
  {
    std::string::basic_string[abi:nn200100](&__dst, v5, v6);
    v9 = *(a1 + 8);
    if (*(v9 + 47) < 0)
    {
      operator delete(*(v9 + 24));
    }

    *&v8 = __dst;
    *(v9 + 24) = __dst;
    *(v9 + 40) = v12;
  }

  else if (v4 == 75)
  {
    std::string::basic_string[abi:nn200100](&__dst, v5, v6);
    v7 = *(a1 + 8);
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v8 = __dst;
    *(v7 + 16) = v12;
    *v7 = v8;
  }

  return *&v8;
}

uint64_t std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0>,void ()(unsigned int,llvm::StringRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE810;
  a2[1] = v2;
  return result;
}

uint64_t AIRNTDispose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 87) < 0)
    {
      operator delete(*(result + 64));
    }

    v2 = *(v1 + 40);
    if (v2)
    {
      do
      {
        v3 = *v2;
        std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v2[4]);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 8));

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

uint64_t AIRNTDisposeCompilationContext(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 232) == 1)
    {
      if (*(result + 223) < 0)
      {
        operator delete(*(result + 200));
      }

      if (*(v1 + 199) < 0)
      {
        operator delete(*(v1 + 176));
      }
    }

    if (*(v1 + 168) == 1)
    {
      if (*(v1 + 151) < 0)
      {
        operator delete(*(v1 + 128));
      }

      if (*(v1 + 127) < 0)
      {
        operator delete(*(v1 + 104));
      }
    }

    if (*(v1 + 88) == 1)
    {
      if (*(v1 + 79) < 0)
      {
        operator delete(*(v1 + 56));
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

void AIRNTGetVersion(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = 2;
  *a3 = 0;
  *a4 = 1;
}

uint64_t AIRNTGetDefaultArch(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  GetAGCActiveTargets();
  result = AGCTarget::TargetArchToCPUSubtypeImpl(*GetAGCActiveTargets(void)::active_impls);
  *a2 = 16777235;
  *a3 = result;
  return result;
}

void AIRNTGetSupportedArchs(void *a1, void **a2, void *a3, void *a4)
{
  v16 = 0;
  v17 = 0;
  v15 = &v16;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v15, *a1, a1 + 1);
  *a2 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
  *a3 = v7;
  v8 = v15;
  if (v15 == &v16)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *a2;
    do
    {
      v11 = *(v8 + 7);
      *(v10 + 4 * v9) = 16777235;
      v7[v9] = v11;
      v12 = v8[1];
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
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      ++v9;
      v8 = v13;
    }

    while (v13 != &v16);
    v9 = v9;
  }

  *a4 = v9;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v16);
}

uint64_t **std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

      v9 = *(v3 + 7);
      if (*(v5 + 7) < v9)
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
              v14 = *(v4 + 28);
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

void AIRNTGetSupportedImpls(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5)
{
  v17 = a3;
  v14 = &v17;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 24), a3, &v14);
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v14, v7[3], v7 + 4);
  v8 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
  *a4 = v8;
  v9 = v14;
  if (v14 == &v15)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v8[v10] = *(v9 + 7);
      v11 = v9[1];
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
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      ++v10;
      v9 = v12;
    }

    while (v12 != &v15);
    v10 = v10;
  }

  *a5 = v10;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v15);
}

uint64_t AIRNTSupportsArch(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 != 16777235)
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v19, *a1, (a1 + 8));
  v5 = v19;
  if (v19 == v20)
  {
LABEL_18:
    v15 = 0;
  }

  else
  {
    while (1)
    {
      v21 = *(v5 + 7);
      v22 = &v21;
      v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 24), v21, &v22);
      v18[0] = 0;
      v18[1] = 0;
      v17 = v18;
      std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v17, v6[3], v6 + 4);
      if (v18[0])
      {
        v7 = v18;
        v8 = v18[0];
        do
        {
          v9 = v8;
          v10 = v7;
          v11 = *(v8 + 7);
          if (v11 >= a3)
          {
            v7 = v8;
          }

          v8 = v8[v11 < a3];
        }

        while (v8);
        if (v7 != v18)
        {
          if (v11 < a3)
          {
            v9 = v10;
          }

          if (*(v9 + 7) <= a3)
          {
            break;
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v18[0]);
      v12 = v5[1];
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
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
      if (v13 == v20)
      {
        goto LABEL_18;
      }
    }

    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v18[0]);
    v15 = 1;
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v20[0]);
  return v15;
}

BOOL AIRNTSupportsTarget(uint64_t a1, int a2, AGCTarget *a3, unsigned int a4, __int16 a5, __int16 a6, __int16 a7)
{
  if (a2 != 16777235)
  {
    return 0;
  }

  v9 = ((16 * a6) | (a5 << 8) | a7);
  result = pluginSupportsOSVersion(a4 | (v9 << 32));
  if (!result)
  {
    return result;
  }

  v13 = AGCTarget::CPUSubtypeToTargetArch(a3, v11, v12);
  result = 0;
  if (a4 <= 2)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        result = 0;
        switch(v13)
        {
          case 0xEu:
          case 0x10u:
          case 0x11u:
          case 0x16u:
            return v9 > 0xFFF;
          case 0x12u:
            return v9 >> 4 > 0x100;
          case 0x13u:
          case 0x15u:
          case 0x18u:
          case 0x22u:
          case 0x23u:
          case 0x26u:
            return v9 != 0;
          case 0x1Fu:
            return v9 >> 8 > 0x10;
          case 0x20u:
            return v9 >> 4 > 0x114;
          default:
            return result;
        }
      }

      return result;
    }

    if (v13 > 0x17u)
    {
      if (v13 <= 0x1Au)
      {
        if (v13 == 24)
        {
          return v9 > 0xD4F;
        }

        v18 = v9 > 0xCFF;
        v19 = v13 == 25;
        return v19 && v18;
      }

      if (v13 != 27)
      {
        if (v13 == 32)
        {
          return v9 != 0;
        }

        v18 = v9 != 0;
        v19 = v13 == 35;
        return v19 && v18;
      }
    }

    else
    {
      if (v13 > 0x12u)
      {
        if (v13 != 19 && v13 != 20)
        {
          v18 = v9 > 0xD3F;
          v19 = v13 == 21;
          return v19 && v18;
        }

        return v9 > 0xCFF;
      }

      if (v13 != 16)
      {
        v18 = v9 > 0xCFF;
        v19 = v13 == 18;
        return v19 && v18;
      }
    }

    return v9 > 0xCFF;
  }

  if (a4 == 3)
  {
    if (v13 != 34)
    {
      v14 = v9 > 0xFFF;
      v15 = v13 == 17;
      return v15 && v14;
    }

    return v9 != 0;
  }

  if (a4 != 4)
  {
    if (a4 != 11)
    {
      return result;
    }

    if (v13 != 35)
    {
      v14 = v9 > 0xFF;
      v15 = v13 == 18;
      return v15 && v14;
    }

    return v9 != 0;
  }

  return v9 > 0x9FF && v13 == 22;
}

BOOL pluginSupportsOSVersion(uint64_t a1)
{
  v1 = WORD2(a1) - 4864;
  v2 = v1 < 0x800;
  v3 = WORD2(a1) - 3072 < 0xF00;
  v4 = (WORD2(a1) - 768) >> 11 < 3;
  if (a1 != 11)
  {
    v4 = 0;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v5 = WORD2(a1) - 4096 < 0xB00;
  v6 = v1 < 0x800;
  if (a1 != 2)
  {
    v6 = 0;
  }

  if (a1 != 1)
  {
    v5 = v6;
  }

  if (a1 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

BOOL AIRNTParseCommandLineOptions(uint64_t a1, uint64_t a2, unint64_t a3, AGCError *a4)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v7 = a3 - 1;
    v8 = (a2 + 8);
    v9 = 2;
    while (1)
    {
      v10 = *v8;
      v24.n128_u64[0] = v10;
      if (!v10)
      {
        break;
      }

      v11 = strlen(v10);
      v24.n128_u64[1] = v11;
      if (v11 < 6)
      {
        goto LABEL_14;
      }

      if (*v10 != 1885564205 || *(v10 + 4) != 15733)
      {
        goto LABEL_14;
      }

      LOBYTE(v25[0]) = 61;
      v13 = llvm::StringRef::split(&v20, &v24, v25, 1);
      MEMORY[0x20F331AB0](a1 + 64, v21, v22, v13);
      v4 = v9++ >= a3;
      ++v8;
      if (!--v7)
      {
        return 1;
      }
    }

    v11 = 0;
    v24.n128_u64[1] = 0;
LABEL_14:
    v23 = 1283;
    v20.n128_u64[0] = "Unsupported translator option: ";
    v21 = v10;
    v22 = v11;
    llvm::Twine::str(v25, &v20);
    v15 = v26;
    v16 = v25[0];
    if (v26 >= 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = v25[0];
    }

    AGCError::logError(a4, v17, v14);
    if (v15 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

char *AGCError::logError(char *this, char **a2, const char *a3)
{
  v3 = this;
  if (a2 && *a2)
  {
    if (!this)
    {
      return this;
    }

    v4 = a2;
  }

  else
  {
    if (!this)
    {
      return this;
    }

    v4 = "Internal compiler error.";
  }

  this = strdup(v4);
  *v3 = this;
  return this;
}

uint64_t AIRNTEmitAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::string::basic_string[abi:nn200100]<0>(&v18, "[AGX] Plugin interface not implemented: ");
  v11 = std::string::append(&v18, "AIRNTEmitAssembly");
  v13 = v11->__r_.__value_.__r.__words[2];
  v19 = *&v11->__r_.__value_.__l.__data_;
  v20 = v13;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v20);
  v15 = v19;
  if (v20 >= 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19;
  }

  AGCError::logError(a11, v16, v12);
  if (v14 < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AIRNTEmitObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::string::basic_string[abi:nn200100]<0>(&v18, "[AGX] Plugin interface not implemented: ");
  v11 = std::string::append(&v18, "AIRNTEmitObject");
  v13 = v11->__r_.__value_.__r.__words[2];
  v19 = *&v11->__r_.__value_.__l.__data_;
  v20 = v13;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v20);
  v15 = v19;
  if (v20 >= 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19;
  }

  AGCError::logError(a11, v16, v12);
  if (v14 < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AIRNTEmitDylibImage(int a1, uint64_t a2, const char *a3, int a4, int a5, AGCTarget *this, int a7, int a8, uint64_t a9, uint64_t a10, char *a11)
{
  v11 = this;
  v26 = *MEMORY[0x277D85DE8];
  v14 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (v14)
  {
    TargetContext = AGCNativeTranslator::getTargetContext(v14);
    (*(**TargetContext + 80))(&v23);
    AGCModule<AGX::Impl::DynamicLibraryKey>::AGCModule(&v24, a2, a3, &v23);
  }

  std::to_string(&v23, v11);
  v16 = std::string::insert(&v23, 0, "Unknown AGC target for CPU subtype: ");
  v18 = v16->__r_.__value_.__r.__words[2];
  v24 = *&v16->__r_.__value_.__l.__data_;
  v25 = v18;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v19 = SHIBYTE(v25);
  v20 = v24;
  if (v25 >= 0)
  {
    v21 = &v24;
  }

  else
  {
    v21 = v24;
  }

  AGCError::logError(a11, v21, v17);
  if (v19 < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AGCNativeTranslator::getTargetContext(uint64_t a1)
{
  v1 = a1;
  {
    AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts = 0u;
    *&qword_27C8DB7A0 = 0u;
    dword_27C8DB7B0 = 1065353216;
    __cxa_atexit(std::unordered_map<AGCTargetArch,std::unique_ptr<AGCTargetContext>>::~unordered_map[abi:nn200100], &AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts, &dword_20E4E1000);
  }

  {
    __cxa_atexit(MEMORY[0x277D82690], &AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContextsMutex, &dword_20E4E1000);
  }

  std::mutex::lock(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContextsMutex);
  if (!*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
    goto LABEL_19;
  }

  v2 = vcnt_s8(*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8));
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = v1;
    if (*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) <= v1)
    {
      v3 = v1 % DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts);
    }
  }

  else
  {
    v3 = (DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts) - 1) & v1;
  }

  v4 = *(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8 * v3);
  if (!v4 || (v5 = *v4) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == v1)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
      {
        v6 %= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1);
      }
    }

    else
    {
      v6 &= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) - 1;
    }

    if (v6 != v3)
    {
      goto LABEL_19;
    }

LABEL_18:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (*(v5 + 4) != v1)
  {
    goto LABEL_18;
  }

  if (!*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
    goto LABEL_37;
  }

  v7 = vcnt_s8(*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v1;
    if (*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) <= v1)
    {
      v8 = v1 % DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts);
    }
  }

  else
  {
    v8 = (DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts) - 1) & v1;
  }

  v9 = *(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_37:
    operator new();
  }

  while (2)
  {
    v11 = v10[1];
    if (v11 != v1)
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
        {
          v11 %= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1);
        }
      }

      else
      {
        v11 &= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (*(v10 + 4) != v1)
    {
LABEL_36:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v12 = v10[3];
  std::mutex::unlock(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContextsMutex);
  return v12;
}

void AGCModule<AGX::Impl::DynamicLibraryKey>::AGCModule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2825BE060;
  *(a1 + 8) = &unk_2825BE090;
  *(a1 + 16) = *(a4 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a4 + 16));
  *(a1 + 8) = &unk_2825BF6F0;
  *(a1 + 48) = *(a4 + 40);
  MEMORY[0x20F32FFB0](a1 + 56);
  operator new();
}

uint64_t AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v67 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v11 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v11)
  {
    v22 = "Failed to initialize AGX backend for target architecture.";
LABEL_46:
    AGCError::logError(a5, v22, v10);
    return 0;
  }

  *(v11 + 1953) = 0;
  v12 = *(a1 + 64);
  if (v12)
  {
    (*(*v12 + 24))(&v62);
    if (BYTE8(v62))
    {
      v13 = v62;
      *&v62 = 0;
      v59 = v13;
      llvm::toString(v64, &v59);
      v14 = std::string::insert(v64, 0, "Error parsing bitcode file: ");
      v16 = v14->__r_.__value_.__r.__words[2];
      *c.count = *&v14->__r_.__value_.__l.__data_;
      *&c.hash[2] = v16;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = SHIBYTE(c.hash[3]);
      v18 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v15);
      if (v17 < 0)
      {
        operator delete(v18);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }

      if (v59)
      {
        (*(*v59 + 8))(v59);
      }

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = v62;
      v65 = 260;
      *v64 = v62 + 216;
      MEMORY[0x20F330F20](&c, v64);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v64, &c), pluginSupportsOSVersion(*v64)) && ((llvm::Triple::getEnvironmentName(&c), !v23) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v64, &c);
        v21 = 1;
      }

      else
      {
        std::operator+<char>();
        v25 = v64[23];
        v26 = *v64;
        if (v64[23] >= 0)
        {
          v27 = v64;
        }

        else
        {
          v27 = *v64;
        }

        AGCError::logError(a5, v27, v24);
        if (v25 < 0)
        {
          operator delete(v26);
        }

        v21 = 0;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v62))
    {
      v28 = v62;
      *&v62 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v29 = (**a1)(a1, v11, a1 + 56, v20);
  if (!v29)
  {
    v22 = "Cannot create AGC LLVM object.";
    goto LABEL_46;
  }

  v31 = v29;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v30)) != 0 && *Value != 48 && (v33 = atoi(Value), v33))
  {
    AGCPrinterFactory::Get(v33);
    v34 = (*(*v31 + 48))(v31);
    std::string::basic_string[abi:nn200100]<0>(v57, v34);
    (*(*v31 + 40))(__p, v31);
    if (*(a1 + 104) == 1)
    {
      v35 = *(a1 + 88);
      v62 = *(a1 + 72);
      v63 = v35;
    }

    else
    {
      llvm::SHA256::SHA256(&v60);
      v49 = *(a1 + 64);
      if (v49)
      {
        (*(*v49 + 32))(v49, &v60);
      }

      memset(v64, 0, sizeof(v64));
      CC_SHA256_Init(&c);
      (**(a1 + 8))(a1 + 8, &c);
      CC_SHA256_Final(v64, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v60);
      v50 = *(a1 + 104);
      v51 = *&c.hash[2];
      *(a1 + 72) = *c.count;
      *(a1 + 88) = v51;
      if ((v50 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v52 = *(a1 + 88);
      v62 = *(a1 + 72);
      v63 = v52;
      llvm::SHA256::~SHA256(&v60);
    }

    *c.count = v62;
    *&c.hash[2] = v63;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v64, 0, v57, __p, &c);
    v37 = *v64;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    v36 = v37;
  }

  else
  {
    v36 = 0;
    v37 = *(v11 + 2032);
  }

  (*(*v31 + 64))(v31, v37);
  if ((*(*v31 + 16))(v31))
  {
    memset(&c, 0, 32);
    v60 = 0;
    v61[0] = &unk_2825BE8E8;
    v61[1] = a1;
    v61[3] = v61;
    *&v62 = 0;
    v38 = (*(*v31 + 24))(v31, &v62, &v60, &c, v61);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v61);
    if (v38)
    {
      *a3 = v62;
      *a4 = v60;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v64, "Error occurred composing compiler reply.");
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v53, *v64, *&v64[8]);
      }

      else
      {
        v53 = *v64;
      }

      v42 = &v53;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v53.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v42);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      v44 = v64[23];
      v45 = *v64;
      if (v64[23] >= 0)
      {
        v46 = v64;
      }

      else
      {
        v46 = *v64;
      }

      AGCError::logError(a5, v46, v43);
      if (v44 < 0)
      {
        operator delete(v45);
      }
    }
  }

  else
  {
    if (*(v31 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v54, *(v31 + 1656), *(v31 + 1664));
    }

    else
    {
      v54 = *(v31 + 1656);
    }

    v39 = &v54;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v54.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v39);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (*(v31 + 1679) >= 0)
    {
      v41 = (v31 + 1656);
    }

    else
    {
      v41 = *(v31 + 1656);
    }

    AGCError::logError(a5, v41, v40);
    v38 = 0;
  }

  if (v36)
  {
    v47 = *v36;
    if (*v36 && v47 != MEMORY[0x277D82670])
    {
      (*(*v47 + 8))(v47);
      *v36 = 0;
    }

    MEMORY[0x20F331DC0](v36, 0x1020C409DFBF432);
  }

  (*(*v31 + 8))(v31);
  return v38;
}

void ProgramKey<(_AGCStreamToken)8,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t AGCPerThreadContext::getTargetContext(uint64_t a1)
{
  v1 = a1;
  {
    v11 = AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts(&AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts);
    *v11 = 0u;
    v11[1] = 0u;
    *(v11 + 8) = 1065353216;
    _tlv_atexit(std::unordered_map<AGCTargetArch,std::unique_ptr<AGCPerThreadPerTargetContext>>::~unordered_map[abi:nn200100], v11);
  }

  v3 = AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts(&AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts);
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v1;
    if (v4 <= v1)
    {
      v6 = v1 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & v1;
  }

  v7 = *(*v3 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v1)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
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

  if (*(v8 + 4) != v1)
  {
    goto LABEL_18;
  }

  return v8[3];
}

void llvm::toString(std::string *this, void **a2)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v3 = v60;
  v58 = v60;
  v59 = 0x200000000;
  v4 = *a2;
  *a2 = 0;
  v50 = &v58;
  if (!v4)
  {
    v51 = 0;
    goto LABEL_54;
  }

  if (!(*(*v4 + 48))(v4, MEMORY[0x277D821A8]))
  {
    v57[0] = v4;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v51, v57, &v50);
    if (v57[0])
    {
      (*(*v57[0] + 8))(v57[0]);
    }

    goto LABEL_54;
  }

  v51 = 0;
  v5 = v4[1];
  v6 = v4[2];
  if (v5 == v6)
  {
    goto LABEL_50;
  }

  v7 = 0;
  v8 = MEMORY[0x277D821A8];
  do
  {
    v9 = *v5;
    *v5 = 0;
    v52 = v9;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v53, &v52, &v50);
    v10 = v53[0];
    if (!v7)
    {
      goto LABEL_45;
    }

    if (v53[0])
    {
      v11 = (*(*v7 + 48))(v7, v8);
      v10 = v53[0];
      if (!v11)
      {
        if (!v53[0] || !(*(*v53[0] + 48))(v53[0], v8))
        {
          operator new();
        }

        v15 = v10[1];
        v14 = v10[2];
        v16 = v10[3];
        if (v14 >= v16)
        {
          v20 = ((v14 - v15) >> 3) + 1;
          if (!(v20 >> 61))
          {
            v21 = v16 - v15;
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

            v56 = (v10 + 1);
            if (v22)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v22);
            }

            v53[3] = 0;
            v54 = 0uLL;
            v55 = 0;
            v57[4] = v56;
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(1uLL);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v15 == v14)
        {
          *v14 = v7;
          v10[2] = (v14 + 8);
        }

        else
        {
          v17 = v14 - 8;
          v49 = v3;
          if (v14 < 8)
          {
            v19 = v10[2];
          }

          else
          {
            v18 = *v17;
            *v17 = 0;
            *v14 = v18;
            v19 = v14 + 8;
          }

          v10[2] = v19;
          if (v14 != v15 + 8)
          {
            v23 = v14 - v15;
            v24 = v15 - 16;
            do
            {
              v25 = *&v24[v23];
              *&v24[v23] = 0;
              v26 = *v17;
              *v17 = v25;
              if (v26)
              {
                (*(*v26 + 8))(v26);
              }

              v17 -= 8;
              v23 -= 8;
            }

            while (v23 != 8);
          }

          v27 = *v15;
          *v15 = v7;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          v3 = v49;
          v8 = MEMORY[0x277D821A8];
        }

LABEL_45:
        v53[0] = 0;
        v7 = v10;
        goto LABEL_46;
      }

      if (v53[0] && (*(*v53[0] + 48))(v53[0], v8))
      {
        v53[0] = 0;
        v13 = v10[1];
        v12 = v10[2];
        while (v13 != v12)
        {
          std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v7 + 1, v13++);
        }

        (*(*v10 + 8))(v10);
      }

      else
      {
        v57[0] = v10;
        v53[0] = 0;
        std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v7 + 1, v57);
        if (v57[0])
        {
          (*(*v57[0] + 8))(v57[0]);
        }
      }

      if (v53[0])
      {
        (*(*v53[0] + 8))(v53[0]);
      }
    }

LABEL_46:
    v28 = v52;
    v52 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    ++v5;
  }

  while (v5 != v6);
  v51 = v7;
LABEL_50:
  (*(*v4 + 8))(v4);
LABEL_54:
  v29 = v58;
  v30 = v59;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  if (v30)
  {
    v31 = 24 * v30;
    v32 = v30 - 1;
    v33 = v29 + 23;
    v34 = 24 * v30;
    do
    {
      v35 = *v33;
      if (v35 < 0)
      {
        v35 = *(v33 - 15);
      }

      v32 += v35;
      v33 += 24;
      v34 -= 24;
    }

    while (v34);
    std::string::reserve(this, v32);
    v36 = v29[23];
    if (v36 >= 0)
    {
      v37 = v29;
    }

    else
    {
      v37 = *v29;
    }

    if (v36 >= 0)
    {
      v38 = v29[23];
    }

    else
    {
      v38 = *(v29 + 1);
    }

    std::string::append(this, v37, v38);
    if (v30 != 1)
    {
      v39 = v29 + 24;
      v40 = v31 - 24;
      do
      {
        std::string::append(this, "\n", 1uLL);
        v41 = v39[23];
        if (v41 >= 0)
        {
          v42 = v39;
        }

        else
        {
          v42 = *v39;
        }

        if (v41 >= 0)
        {
          v43 = v39[23];
        }

        else
        {
          v43 = *(v39 + 1);
        }

        std::string::append(this, v42, v43);
        v39 += 24;
        v40 -= 24;
      }

      while (v40);
    }
  }

  v44 = v58;
  if (v59)
  {
    v45 = v58 + 24 * v59 - 1;
    v46 = -24 * v59;
    v47 = v45;
    do
    {
      v48 = *v47;
      v47 -= 24;
      if (v48 < 0)
      {
        operator delete(*(v45 - 23));
      }

      v45 = v47;
      v46 += 24;
    }

    while (v46);
    v44 = v58;
  }

  if (v44 != v3)
  {
    free(v44);
  }
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE8E8;
  a2[1] = v2;
  return result;
}

void AGCOSVersion::AGCOSVersion(AGCOSVersion *this, const llvm::Triple *a2)
{
  *this = 0;
  OSVersion = llvm::Triple::getOSVersion(a2);
  v6 = (OSVersion >> 28) & 0xFFF0;
  if (v5 < 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (OSVersion >= 0)
  {
    LOWORD(v6) = 0;
  }

  *(this + 2) = v7 | (OSVersion << 8) | v6;
  v8 = *(a2 + 9);
  if (v8 <= 27)
  {
    if (v8 == 7)
    {
      v9 = 2;
    }

    else
    {
      if (v8 != 11)
      {
        return;
      }

      v9 = 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 33:
        v9 = 11;
        break;
      case 29:
        v9 = 4;
        break;
      case 28:
        v9 = 3;
        break;
      default:
        return;
    }
  }

  *this = v9;
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, MEMORY[0x277D81FF0]);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    (*(*v7 + 24))(&__p, v7);
    v9 = *(v8 + 8);
    v10 = *v8;
    if (v9 >= *(v8 + 12))
    {
      if (v10 > &__p || v10 + 24 * v9 <= &__p)
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow(v8, v9 + 1);
      }

      llvm::SmallVectorTemplateBase<std::string,false>::grow(v8, v9 + 1);
    }

    v11 = v10 + 24 * *(v8 + 8);
    v12 = __p;
    *(v11 + 16) = v14;
    *v11 = v12;
    v14 = 0;
    __p = 0uLL;
    ++*(v8 + 8);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<AGCPerThreadPerTargetContext>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<AGCCompilationResultCache>::reset[abi:nn200100]((v2 + 8), 0);
    std::unique_ptr<AGCLLVMCtx>::reset[abi:nn200100](v2, 0);
    MEMORY[0x20F331DC0](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<AGCCompilationResultCache>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(*(v2 + 8));

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

AGCLLVMCtx *std::unique_ptr<AGCLLVMCtx>::reset[abi:nn200100](AGCLLVMCtx **a1, AGCLLVMCtx *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AGCLLVMCtx::~AGCLLVMCtx(result);

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

void std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(*a1);
    std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      free(v2);
    }

    if (a1[183] < 0)
    {
      operator delete(*(a1 + 20));
    }

    if (a1[159] < 0)
    {
      operator delete(*(a1 + 17));
    }

    if (a1[127] < 0)
    {
      operator delete(*(a1 + 13));
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    operator delete(a1);
  }
}

uint64_t std::unordered_map<AGCTargetArch,std::unique_ptr<AGCPerThreadPerTargetContext>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::unique_ptr<AGCPerThreadPerTargetContext>::~unique_ptr[abi:nn200100](v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void AGX::Impl::DynamicLibraryKey::serialize(AGX::Impl::DynamicLibraryKey *this, std::vector<unsigned int>::pointer *a2, unint64_t *a3)
{
  v5 = (this + 16);
  *(this + 3) = *(this + 2);
  v9 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v9);
  v6 = v5->__end_ - v5->__begin_;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 4);
  v7 = v5->__begin_ + v6;
  *v7 = ((LODWORD(v5->__end_) - v5->__begin_) >> 2 << 8) | 0x4F;
  *(v7 + 4) = v5[1].__begin_;
  v10 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v10);
  begin = v5->__begin_;
  *a2 = v5->__begin_;
  *a3 = v5->__end_ - begin;
}

void std::default_delete<AGCTargetContext>::operator()[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void std::__hash_table<std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>,std::__unordered_map_hasher<AGCTargetArch,std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>,std::hash<AGCTargetArch>,std::equal_to<AGCTargetArch>,true>,std::__unordered_map_equal<AGCTargetArch,std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>,std::equal_to<AGCTargetArch>,std::hash<AGCTargetArch>,true>,std::allocator<std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1);
  if (prime > *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
    v3 = vcvtps_u32_f32(qword_27C8DB7A8 / *&dword_27C8DB7B0);
    if (*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) < 3uLL || (v4 = vcnt_s8(*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts;
      *&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) = 0;
    }
  }
}

uint64_t std::unordered_map<AGCTargetArch,std::unique_ptr<AGCTargetContext>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        std::default_delete<AGCTargetContext>::operator()[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t AIRNTEmitExecutableImage(int a1, uint64_t a2, const char *a3, int a4, int a5, AGCTarget *this, Air::FunctionScript *a7, int a8, void *a9, void *a10, char *a11)
{
  v12 = this;
  v43[8] = *MEMORY[0x277D85DE8];
  v15 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = *AGCNativeTranslator::getTargetContext(v15);
    v18 = Air::FunctionScript::function_as_visible(a7);
    if (v18)
    {
      (*(*v17 + 64))(&v31, v17, v18);
      goto LABEL_4;
    }

    v25 = Air::FunctionScript::function_as_intersection(a7);
    if (v25)
    {
      v27 = v25;
      v28 = AGCTarget::Get(v16);
      if (!((*v28)[3])(v28))
      {
        (*(*v17 + 88))(&v31, v17, v27);
        *&v36 = &unk_2825BE100;
        *(&v36 + 1) = &unk_2825BE130;
        LODWORD(v37) = v31.__r_.__value_.__r.__words[1];
        v39 = 0;
        v40 = 0;
        __p = 0;
        v30 = v32 - v31.__r_.__value_.__r.__words[2];
        if (v32 != v31.__r_.__value_.__r.__words[2])
        {
          if (!((v30 >> 2) >> 62))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v30 >> 2);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        *(&v36 + 1) = &unk_2825BF730;
        v41 = v33;
        memset(v42, 0, sizeof(v42));
        if (v35 != v34)
        {
          std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v42, (v35 - v34) >> 5);
        }

        MEMORY[0x20F32FFB0](v43);
        operator new();
      }

      (*(*v17 + 72))(&v31, v17, v27);
LABEL_4:
      AGCModule<AGX::Impl::DynamicLibraryKey>::AGCModule(&v36, a2, a3, &v31);
    }

    AGCError::logError(a11, "Unsupported function script.", v26);
  }

  else
  {
    std::to_string(&v31, v12);
    v19 = std::string::insert(&v31, 0, "Unknown AGC target for CPU subtype: ");
    v21 = v19->__r_.__value_.__r.__words[2];
    v36 = *&v19->__r_.__value_.__l.__data_;
    v37 = v21;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v22 = SHIBYTE(v37);
    v23 = v36;
    if (v37 >= 0)
    {
      v24 = &v36;
    }

    else
    {
      v24 = v36;
    }

    AGCError::logError(a11, v24, v20);
    if (v22 < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

uint64_t Air::FunctionScript::function_as_visible(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 5) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::FunctionScript::function_as_intersection(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 6) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v67 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v11 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v11)
  {
    v22 = "Failed to initialize AGX backend for target architecture.";
LABEL_46:
    AGCError::logError(a5, v22, v10);
    return 0;
  }

  *(v11 + 1953) = 0;
  v12 = *(a1 + 88);
  if (v12)
  {
    (*(*v12 + 24))(&v62);
    if (BYTE8(v62))
    {
      v13 = v62;
      *&v62 = 0;
      v59 = v13;
      llvm::toString(v64, &v59);
      v14 = std::string::insert(v64, 0, "Error parsing bitcode file: ");
      v16 = v14->__r_.__value_.__r.__words[2];
      *c.count = *&v14->__r_.__value_.__l.__data_;
      *&c.hash[2] = v16;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = SHIBYTE(c.hash[3]);
      v18 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v15);
      if (v17 < 0)
      {
        operator delete(v18);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }

      if (v59)
      {
        (*(*v59 + 8))(v59);
      }

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = v62;
      v65 = 260;
      *v64 = v62 + 216;
      MEMORY[0x20F330F20](&c, v64);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v64, &c), pluginSupportsOSVersion(*v64)) && ((llvm::Triple::getEnvironmentName(&c), !v23) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v64, &c);
        v21 = 1;
      }

      else
      {
        std::operator+<char>();
        v25 = v64[23];
        v26 = *v64;
        if (v64[23] >= 0)
        {
          v27 = v64;
        }

        else
        {
          v27 = *v64;
        }

        AGCError::logError(a5, v27, v24);
        if (v25 < 0)
        {
          operator delete(v26);
        }

        v21 = 0;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v62))
    {
      v28 = v62;
      *&v62 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v29 = (**a1)(a1, v11, a1 + 80, v20);
  if (!v29)
  {
    v22 = "Cannot create AGC LLVM object.";
    goto LABEL_46;
  }

  v31 = v29;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v30)) != 0 && *Value != 48 && (v33 = atoi(Value), v33))
  {
    AGCPrinterFactory::Get(v33);
    v34 = (*(*v31 + 48))(v31);
    std::string::basic_string[abi:nn200100]<0>(v57, v34);
    (*(*v31 + 40))(__p, v31);
    if (*(a1 + 128) == 1)
    {
      v35 = *(a1 + 112);
      v62 = *(a1 + 96);
      v63 = v35;
    }

    else
    {
      llvm::SHA256::SHA256(&v60);
      v49 = *(a1 + 88);
      if (v49)
      {
        (*(*v49 + 32))(v49, &v60);
      }

      memset(v64, 0, sizeof(v64));
      CC_SHA256_Init(&c);
      (**(a1 + 8))(a1 + 8, &c);
      CC_SHA256_Final(v64, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v60);
      v50 = *(a1 + 128);
      v51 = *&c.hash[2];
      *(a1 + 96) = *c.count;
      *(a1 + 112) = v51;
      if ((v50 & 1) == 0)
      {
        *(a1 + 128) = 1;
      }

      v52 = *(a1 + 112);
      v62 = *(a1 + 96);
      v63 = v52;
      llvm::SHA256::~SHA256(&v60);
    }

    *c.count = v62;
    *&c.hash[2] = v63;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v64, 0, v57, __p, &c);
    v37 = *v64;
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    v36 = v37;
  }

  else
  {
    v36 = 0;
    v37 = *(v11 + 2032);
  }

  (*(*v31 + 64))(v31, v37);
  if ((*(*v31 + 16))(v31))
  {
    memset(&c, 0, 32);
    v60 = 0;
    v61[0] = &unk_2825BE930;
    v61[1] = a1;
    v61[3] = v61;
    *&v62 = 0;
    v38 = (*(*v31 + 24))(v31, &v62, &v60, &c, v61);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v61);
    if (v38)
    {
      *a3 = v62;
      *a4 = v60;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v64, "Error occurred composing compiler reply.");
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v53, *v64, *&v64[8]);
      }

      else
      {
        v53 = *v64;
      }

      v42 = &v53;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v53.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v42);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      v44 = v64[23];
      v45 = *v64;
      if (v64[23] >= 0)
      {
        v46 = v64;
      }

      else
      {
        v46 = *v64;
      }

      AGCError::logError(a5, v46, v43);
      if (v44 < 0)
      {
        operator delete(v45);
      }
    }
  }

  else
  {
    if (*(v31 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v54, *(v31 + 1656), *(v31 + 1664));
    }

    else
    {
      v54 = *(v31 + 1656);
    }

    v39 = &v54;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v54.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v39);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (*(v31 + 1679) >= 0)
    {
      v41 = (v31 + 1656);
    }

    else
    {
      v41 = *(v31 + 1656);
    }

    AGCError::logError(a5, v41, v40);
    v38 = 0;
  }

  if (v36)
  {
    v47 = *v36;
    if (*v36 && v47 != MEMORY[0x277D82670])
    {
      (*(*v47 + 8))(v47);
      *v36 = 0;
    }

    MEMORY[0x20F331DC0](v36, 0x1020C409DFBF432);
  }

  (*(*v31 + 8))(v31);
  return v38;
}

void ProgramKey<(_AGCStreamToken)7,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::Impl::UserIntersectionProgramKey::serialize(AGX::Impl::UserIntersectionProgramKey *this, std::vector<unsigned int>::pointer *a2, unint64_t *a3)
{
  v5 = (this + 16);
  *(this + 3) = *(this + 2);
  v9 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v9);
  v6 = v5->__end_ - v5->__begin_;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 2);
  v7 = (v5->__begin_ + v6);
  *v7 = ((LODWORD(v5->__end_) - v5->__begin_) >> 2 << 8) | 0x54;
  v7[1] = v5[1].__begin_;
  v10 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v10);
  begin = v5->__begin_;
  *a2 = v5->__begin_;
  *a3 = v5->__end_ - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE930;
  a2[1] = v2;
  return result;
}

uint64_t *std::vector<MTLUINT256_t>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 5);
  }

  return a1;
}

void std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t AIRNTEmitBuiltinExecutableImage(int a1, unsigned int a2, AGCTarget *this, int *a4, uint64_t a5, void *a6, void *a7, char *a8)
{
  v12 = this;
  v182 = *MEMORY[0x277D85DE8];
  v13 = AGCTarget::CPUSubtypeToTargetArch(this, a2, this);
  if (!v13)
  {
    std::to_string(&v173, v12);
    v21 = std::string::insert(&v173, 0, "Unknown AGC target for CPU subtype: ");
    v23 = v21->__r_.__value_.__r.__words[2];
    v160 = *&v21->__r_.__value_.__l.__data_;
    v161 = v23;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v24 = SHIBYTE(v161);
    v25 = v160;
    if (v161 >= 0)
    {
      v26 = &v160;
    }

    else
    {
      v26 = v160;
    }

    AGCError::logError(a8, v26, v22);
    if (v24 < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v173.hash[3]) < 0)
    {
      operator delete(*v173.count);
    }

    return 0;
  }

  v14 = v13;
  TargetContext = AGCNativeTranslator::getTargetContext(v13);
  v16 = *AGCNativeTranslator::getTargetContext(v14);
  if (!v16)
  {
    v27 = "AGX key factory does not exist for target architecture.";
LABEL_50:
    AGCError::logError(a8, v27, v17);
    return 0;
  }

  v18 = (a4 - *a4);
  v19 = *v18;
  if (v19 < 9 || !v18[4])
  {
    goto LABEL_49;
  }

  v20 = v19 >= 0xB && *(a4 + v18[4]) == 1;
  if (v20 && v18[5])
  {
    (*(*v16 + 96))(&v176);
    v151 = *&v176.hash[2];
    v43 = *&v176.hash[2];
    memset(&v176.hash[2], 0, 24);
    *&v160 = &unk_2825BE1E0;
    *(&v160 + 1) = &unk_2825BE170;
    LODWORD(v161) = v176.hash[0];
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v44 = *(&v43 + 1) - v43;
    if (*(&v43 + 1) != v43)
    {
      if (!((v44 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v44 >> 2);
      }

      goto LABEL_327;
    }

    *(&v160 + 1) = &unk_2825BF770;
    v165 = *v176.wbuf;
    *v166 = *&v176.wbuf[4];
    *&v166[16] = *&v176.wbuf[8];
    MEMORY[0x20F32FFB0](&v166[32]);
    *&v166[40] = 0;
    LOBYTE(v167) = 0;
    LOBYTE(v169) = 0;
    *&v160 = &unk_2825BE1B0;
    if (v151)
    {
      operator delete(v151);
    }

    v45 = *(TargetContext + 8);
    mach_absolute_time();
    v32 = *AGCPerThreadContext::getTargetContext(v45);
    if (!v32)
    {
      AGCError::logError(a8, "Failed to initialize AGX backend for target architecture.", v46);
LABEL_221:
      v126 = *&v166[40];
      *&v160 = &unk_2825BE1E0;
      *&v166[40] = 0;
      if (v126)
      {
        (*(*v126 + 8))(v126);
      }

      llvm::LLVMContext::~LLVMContext(&v166[32]);
      *(&v160 + 1) = &unk_2825BE170;
      if (v162)
      {
        v163 = v162;
        operator delete(v162);
      }

      v127 = &unk_2825BE170;
      goto LABEL_226;
    }

    *(v32 + 1953) = 0;
    if (*&v166[40])
    {
      (*(**&v166[40] + 24))(&v177);
      if (BYTE8(v177))
      {
        v47 = v177;
        *&v177 = 0;
        v159 = v47;
        llvm::toString(&v179, &v159);
        v48 = std::string::insert(&v179, 0, "Error parsing bitcode file: ");
        v50 = v48->__r_.__value_.__r.__words[2];
        *v173.count = *&v48->__r_.__value_.__l.__data_;
        *&v173.hash[2] = v50;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v51 = SHIBYTE(v173.hash[3]);
        v52 = *v173.count;
        if ((v173.hash[3] & 0x80000000) == 0)
        {
          v53 = &v173;
        }

        else
        {
          v53 = *v173.count;
        }

        AGCError::logError(a8, v53, v49);
        if (v51 < 0)
        {
          operator delete(v52);
        }

        if (SBYTE7(v180) < 0)
        {
          operator delete(v179);
        }

        if (v159)
        {
          (*(*v159 + 8))(v159);
        }

        v54 = 0;
        v55 = 0;
      }

      else
      {
        v54 = v177;
        v181 = 260;
        *&v179 = v177 + 216;
        MEMORY[0x20F330F20](&v173, &v179);
        if (v173.hash[4] == 49 && v173.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(&v179, &v173), pluginSupportsOSVersion(v179)) && ((llvm::Triple::getEnvironmentName(&v173), !v69) || v173.wbuf[0] == 21))
        {
          AGCTargetOS::AGCTargetOS(&v179, &v173);
          v55 = 1;
        }

        else
        {
          std::operator+<char>();
          v71 = SBYTE7(v180);
          v72 = v179;
          if ((SBYTE7(v180) & 0x80u) == 0)
          {
            v73 = &v179;
          }

          else
          {
            v73 = v179;
          }

          AGCError::logError(a8, v73, v70);
          if (v71 < 0)
          {
            operator delete(v72);
          }

          v55 = 0;
        }

        if (SHIBYTE(v173.hash[3]) < 0)
        {
          operator delete(*v173.count);
        }
      }

      if (BYTE8(v177))
      {
        v74 = v177;
        *&v177 = 0;
        if (v74)
        {
          (*(*v74 + 8))(v74);
        }
      }

      if (!v55)
      {
LABEL_122:
        v32 = 0;
        goto LABEL_221;
      }
    }

    else
    {
      v54 = 0;
    }

    v75 = (*v160)(&v160, v32, &v166[32], v54);
    if (v75)
    {
      v78 = v75;
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v76)) != 0 && *Value != 48 && (v80 = atoi(Value), v80))
      {
        AGCPrinterFactory::Get(v80);
        v81 = (*(*v78 + 48))(v78);
        std::string::basic_string[abi:nn200100]<0>(v157, v81);
        (*(*v78 + 40))(v155, v78);
        if (v169 == 1)
        {
          v177 = v167;
          v178 = v168;
        }

        else
        {
          llvm::SHA256::SHA256(&v152);
          if (*&v166[40])
          {
            (*(**&v166[40] + 32))(*&v166[40], &v152);
          }

          v179 = 0u;
          v180 = 0u;
          CC_SHA256_Init(&v173);
          (**(&v160 + 1))(&v160 + 8, &v173);
          CC_SHA256_Final(&v179, &v173);
          llvm::SHA256::update();
          llvm::SHA256::final(&v173, &v152);
          v167 = *v173.count;
          v168 = *&v173.hash[2];
          if ((v169 & 1) == 0)
          {
            LOBYTE(v169) = 1;
          }

          v177 = v167;
          v178 = v168;
          llvm::SHA256::~SHA256(&v152);
        }

        *v173.count = v177;
        *&v173.hash[2] = v178;
        LOBYTE(v173.hash[6]) = 1;
        AGCPrinterFactory::createObjectPrinter(&v179, 0, v157, v155, &v173);
        v83 = v179;
        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        if (v158 < 0)
        {
          operator delete(v157[0]);
        }

        v82 = v83;
      }

      else
      {
        v82 = 0;
        v83 = *(v32 + 2032);
      }

      (*(*v78 + 64))(v78, v83);
      if ((*(*v78 + 16))(v78))
      {
        v153 = 0;
        v154 = 0;
        memset(&v173, 0, 32);
        *&v179 = &unk_2825BE978;
        *(&v179 + 1) = &v160;
        *(&v180 + 1) = &v179;
        v32 = (*(*v78 + 24))(v78, &v154, &v153, &v173, &v179);
        std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](&v179);
        if (v32)
        {
          v84 = v153;
          *a6 = v154;
          *a7 = v84;
        }

        else
        {
          std::string::basic_string[abi:nn200100]<0>(&v177, "Error occurred composing compiler reply.");
          if (SBYTE7(v178) < 0)
          {
            std::string::__init_copy_ctor_external(&v152, v177, *(&v177 + 1));
          }

          else
          {
            *&v152.__r_.__value_.__l.__data_ = v177;
            v152.__r_.__value_.__r.__words[2] = v178;
          }

          v120 = &v152;
          if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v120 = v152.__r_.__value_.__r.__words[0];
          }

          AGCTargetPrinter::printMessage(*(v78 + 1696), "** Compilation failed with error: %s **", v120);
          if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v152.__r_.__value_.__l.__data_);
          }

          v122 = SBYTE7(v178);
          v123 = v177;
          if ((SBYTE7(v178) & 0x80u) == 0)
          {
            v124 = &v177;
          }

          else
          {
            v124 = v177;
          }

          AGCError::logError(a8, v124, v121);
          if (v122 < 0)
          {
            operator delete(v123);
          }
        }
      }

      else
      {
        if (*(v78 + 1679) < 0)
        {
          std::string::__init_copy_ctor_external(&v173, *(v78 + 1656), *(v78 + 1664));
        }

        else
        {
          *v173.count = *(v78 + 1656);
          *&v173.hash[2] = *(v78 + 1672);
        }

        v101 = &v173;
        if ((v173.hash[3] & 0x80000000) != 0)
        {
          v101 = *v173.count;
        }

        AGCTargetPrinter::printMessage(*(v78 + 1696), "** Compilation failed with error: %s **", v101);
        if (SHIBYTE(v173.hash[3]) < 0)
        {
          operator delete(*v173.count);
        }

        if (*(v78 + 1679) >= 0)
        {
          v103 = (v78 + 1656);
        }

        else
        {
          v103 = *(v78 + 1656);
        }

        AGCError::logError(a8, v103, v102);
        v32 = 0;
      }

      if (v82)
      {
        v125 = *v82;
        if (*v82 && v125 != MEMORY[0x277D82670])
        {
          (*(*v125 + 8))(v125);
          *v82 = 0;
        }

        MEMORY[0x20F331DC0](v82, 0x1020C409DFBF432);
      }

      (*(*v78 + 8))(v78);
      goto LABEL_221;
    }

    AGCError::logError(a8, "Cannot create AGC LLVM object.", v77);
    goto LABEL_122;
  }

  if (!v18[4])
  {
LABEL_49:
    v27 = "Unsupported driver shader script.";
    goto LABEL_50;
  }

  v28 = v19 >= 0xB && *(a4 + v18[4]) == 2;
  if (!v28 || !v18[5])
  {
    if (v18[4] && v19 >= 0xB && *(a4 + v18[4]) == 3 && v18[5])
    {
      (*(*v16 + 112))(&v176);
      *__p = *&v176.hash[2];
      memset(&v176.hash[2], 0, 24);
      *&v160 = &unk_2825BE2E0;
      *(&v160 + 1) = &unk_2825BE270;
      LODWORD(v161) = v176.hash[0];
      v163 = 0;
      v164 = 0;
      v162 = 0;
      v29 = __p[1] - __p[0];
      if (__p[1] != __p[0])
      {
        if (!((v29 >> 2) >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v29 >> 2);
        }

        goto LABEL_327;
      }

      *(&v160 + 1) = &unk_2825BF830;
      LODWORD(v165) = v176.wbuf[0];
      MEMORY[0x20F32FFB0](&v165 + 8);
      *v166 = 0;
      v166[8] = 0;
      v166[40] = 0;
      *&v160 = &unk_2825BE2B0;
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v30 = *(TargetContext + 8);
      mach_absolute_time();
      v32 = *AGCPerThreadContext::getTargetContext(v30);
      if (!v32)
      {
        AGCError::logError(a8, "Failed to initialize AGX backend for target architecture.", v31);
LABEL_311:
        v148 = *v166;
        *&v160 = &unk_2825BE2E0;
        *v166 = 0;
        if (v148)
        {
          (*(*v148 + 8))(v148);
        }

        llvm::LLVMContext::~LLVMContext((&v165 + 8));
        *(&v160 + 1) = &unk_2825BE270;
        if (v162)
        {
          v163 = v162;
          operator delete(v162);
        }

        v127 = &unk_2825BE270;
LABEL_226:
        *v176.count = v127;
        v128 = *&v176.hash[2];
        if (*&v176.hash[2])
        {
          *&v176.hash[4] = *&v176.hash[2];
LABEL_274:
          operator delete(v128);
          return v32;
        }

        return v32;
      }

      *(v32 + 1953) = 0;
      if (*v166)
      {
        (*(**v166 + 24))(&v177);
        if (BYTE8(v177))
        {
          v33 = v177;
          *&v177 = 0;
          v159 = v33;
          llvm::toString(&v179, &v159);
          v34 = std::string::insert(&v179, 0, "Error parsing bitcode file: ");
          v36 = v34->__r_.__value_.__r.__words[2];
          *v173.count = *&v34->__r_.__value_.__l.__data_;
          *&v173.hash[2] = v36;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          v37 = SHIBYTE(v173.hash[3]);
          v38 = *v173.count;
          if ((v173.hash[3] & 0x80000000) == 0)
          {
            v39 = &v173;
          }

          else
          {
            v39 = *v173.count;
          }

          AGCError::logError(a8, v39, v35);
          if (v37 < 0)
          {
            operator delete(v38);
          }

          if (SBYTE7(v180) < 0)
          {
            operator delete(v179);
          }

          if (v159)
          {
            (*(*v159 + 8))(v159);
          }

          v40 = 0;
          v41 = 0;
        }

        else
        {
          v40 = v177;
          v181 = 260;
          *&v179 = v177 + 216;
          MEMORY[0x20F330F20](&v173, &v179);
          if (v173.hash[4] == 49 && v173.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(&v179, &v173), pluginSupportsOSVersion(v179)) && ((llvm::Triple::getEnvironmentName(&v173), !v104) || v173.wbuf[0] == 21))
          {
            AGCTargetOS::AGCTargetOS(&v179, &v173);
            v41 = 1;
          }

          else
          {
            std::operator+<char>();
            v106 = SBYTE7(v180);
            v107 = v179;
            if ((SBYTE7(v180) & 0x80u) == 0)
            {
              v108 = &v179;
            }

            else
            {
              v108 = v179;
            }

            AGCError::logError(a8, v108, v105);
            if (v106 < 0)
            {
              operator delete(v107);
            }

            v41 = 0;
          }

          if (SHIBYTE(v173.hash[3]) < 0)
          {
            operator delete(*v173.count);
          }
        }

        if (BYTE8(v177))
        {
          v109 = v177;
          *&v177 = 0;
          if (v109)
          {
            (*(*v109 + 8))(v109);
          }
        }

        if (!v41)
        {
LABEL_202:
          v32 = 0;
          goto LABEL_311;
        }
      }

      else
      {
        v40 = 0;
      }

      v110 = (*v160)(&v160, v32, &v165 + 8, v40);
      if (v110)
      {
        v113 = v110;
        {
          AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        }

        if (AGCEnv::isEnabled(void)::is_internal == 1 && (v114 = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v111)) != 0 && *v114 != 48 && (v115 = atoi(v114), v115))
        {
          AGCPrinterFactory::Get(v115);
          v116 = (*(*v113 + 48))(v113);
          std::string::basic_string[abi:nn200100]<0>(v157, v116);
          (*(*v113 + 40))(v155, v113);
          if (v166[40] == 1)
          {
            v177 = *&v166[8];
            v178 = *&v166[24];
          }

          else
          {
            llvm::SHA256::SHA256(&v152);
            if (*v166)
            {
              (*(**v166 + 32))(*v166, &v152);
            }

            v179 = 0u;
            v180 = 0u;
            CC_SHA256_Init(&v173);
            (**(&v160 + 1))(&v160 + 8, &v173);
            CC_SHA256_Final(&v179, &v173);
            llvm::SHA256::update();
            llvm::SHA256::final(&v173, &v152);
            *&v166[8] = *v173.count;
            *&v166[24] = *&v173.hash[2];
            if ((v166[40] & 1) == 0)
            {
              v166[40] = 1;
            }

            v177 = *&v166[8];
            v178 = *&v166[24];
            llvm::SHA256::~SHA256(&v152);
          }

          *v173.count = v177;
          *&v173.hash[2] = v178;
          LOBYTE(v173.hash[6]) = 1;
          AGCPrinterFactory::createObjectPrinter(&v179, 0, v157, v155, &v173);
          v118 = v179;
          if (v156 < 0)
          {
            operator delete(v155[0]);
          }

          if (v158 < 0)
          {
            operator delete(v157[0]);
          }

          v117 = v118;
        }

        else
        {
          v117 = 0;
          v118 = *(v32 + 2032);
        }

        (*(*v113 + 64))(v113, v118);
        if ((*(*v113 + 16))(v113))
        {
          v153 = 0;
          v154 = 0;
          memset(&v173, 0, 32);
          *&v179 = &unk_2825BEA08;
          *(&v179 + 1) = &v160;
          *(&v180 + 1) = &v179;
          v32 = (*(*v113 + 24))(v113, &v154, &v153, &v173, &v179);
          std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](&v179);
          if (v32)
          {
            v119 = v153;
            *a6 = v154;
            *a7 = v119;
          }

          else
          {
            std::string::basic_string[abi:nn200100]<0>(&v177, "Error occurred composing compiler reply.");
            if (SBYTE7(v178) < 0)
            {
              std::string::__init_copy_ctor_external(&v152, v177, *(&v177 + 1));
            }

            else
            {
              *&v152.__r_.__value_.__l.__data_ = v177;
              v152.__r_.__value_.__r.__words[2] = v178;
            }

            v142 = &v152;
            if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v142 = v152.__r_.__value_.__r.__words[0];
            }

            AGCTargetPrinter::printMessage(*(v113 + 1696), "** Compilation failed with error: %s **", v142);
            if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v152.__r_.__value_.__l.__data_);
            }

            v144 = SBYTE7(v178);
            v145 = v177;
            if ((SBYTE7(v178) & 0x80u) == 0)
            {
              v146 = &v177;
            }

            else
            {
              v146 = v177;
            }

            AGCError::logError(a8, v146, v143);
            if (v144 < 0)
            {
              operator delete(v145);
            }
          }
        }

        else
        {
          if (*(v113 + 1679) < 0)
          {
            std::string::__init_copy_ctor_external(&v173, *(v113 + 1656), *(v113 + 1664));
          }

          else
          {
            *v173.count = *(v113 + 1656);
            *&v173.hash[2] = *(v113 + 1672);
          }

          v139 = &v173;
          if ((v173.hash[3] & 0x80000000) != 0)
          {
            v139 = *v173.count;
          }

          AGCTargetPrinter::printMessage(*(v113 + 1696), "** Compilation failed with error: %s **", v139);
          if (SHIBYTE(v173.hash[3]) < 0)
          {
            operator delete(*v173.count);
          }

          if (*(v113 + 1679) >= 0)
          {
            v141 = (v113 + 1656);
          }

          else
          {
            v141 = *(v113 + 1656);
          }

          AGCError::logError(a8, v141, v140);
          v32 = 0;
        }

        if (v117)
        {
          v147 = *v117;
          if (*v117 && v147 != MEMORY[0x277D82670])
          {
            (*(*v147 + 8))(v147);
            *v117 = 0;
          }

          MEMORY[0x20F331DC0](v117, 0x1020C409DFBF432);
        }

        (*(*v113 + 8))(v113);
        goto LABEL_311;
      }

      AGCError::logError(a8, "Cannot create AGC LLVM object.", v112);
      goto LABEL_202;
    }

    goto LABEL_49;
  }

  (*(*v16 + 104))(&v173);
  v150 = *&v173.hash[2];
  v56 = *&v173.hash[2];
  memset(&v173.hash[2], 0, 24);
  *&v160 = &unk_2825BE240;
  *(&v160 + 1) = &unk_2825BF7F0;
  LODWORD(v161) = v173.hash[0];
  v163 = 0;
  v164 = 0;
  v162 = 0;
  v57 = *(&v56 + 1) - v56;
  if (*(&v56 + 1) != v56)
  {
    if (!((v57 >> 2) >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v57 >> 2);
    }

LABEL_327:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *&v166[16] = *&v173.wbuf[8];
  *&v166[32] = *&v173.wbuf[12];
  v167 = v174;
  *(&v160 + 1) = &unk_2825BF7B0;
  *&v168 = v175;
  v165 = *v173.wbuf;
  *v166 = *&v173.wbuf[4];
  MEMORY[0x20F32FFB0](&v168 + 8);
  v169 = 0;
  LOBYTE(v170) = 0;
  v172 = 0;
  *&v160 = &unk_2825BE210;
  if (v150)
  {
    operator delete(v150);
  }

  v58 = *(TargetContext + 8);
  mach_absolute_time();
  v32 = *AGCPerThreadContext::getTargetContext(v58);
  if (!v32)
  {
    AGCError::logError(a8, "Failed to initialize AGX backend for target architecture.", v59);
    goto LABEL_268;
  }

  *(v32 + 1953) = 0;
  if (v169)
  {
    (*(*v169 + 24))(&v177);
    if (BYTE8(v177))
    {
      v60 = v177;
      *&v177 = 0;
      v159 = v60;
      llvm::toString(&v179, &v159);
      v61 = std::string::insert(&v179, 0, "Error parsing bitcode file: ");
      v63 = v61->__r_.__value_.__r.__words[2];
      *v176.count = *&v61->__r_.__value_.__l.__data_;
      *&v176.hash[2] = v63;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v64 = SHIBYTE(v176.hash[3]);
      v65 = *v176.count;
      if ((v176.hash[3] & 0x80000000) == 0)
      {
        v66 = &v176;
      }

      else
      {
        v66 = *v176.count;
      }

      AGCError::logError(a8, v66, v62);
      if (v64 < 0)
      {
        operator delete(v65);
      }

      if (SBYTE7(v180) < 0)
      {
        operator delete(v179);
      }

      if (v159)
      {
        (*(*v159 + 8))(v159);
      }

      v67 = 0;
      v68 = 0;
    }

    else
    {
      v67 = v177;
      v181 = 260;
      *&v179 = v177 + 216;
      MEMORY[0x20F330F20](&v176, &v179);
      if (v176.hash[4] == 49 && v176.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(&v179, &v176), pluginSupportsOSVersion(v179)) && ((llvm::Triple::getEnvironmentName(&v176), !v85) || v176.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(&v179, &v176);
        v68 = 1;
      }

      else
      {
        std::operator+<char>();
        v87 = SBYTE7(v180);
        v88 = v179;
        if ((SBYTE7(v180) & 0x80u) == 0)
        {
          v89 = &v179;
        }

        else
        {
          v89 = v179;
        }

        AGCError::logError(a8, v89, v86);
        if (v87 < 0)
        {
          operator delete(v88);
        }

        v68 = 0;
      }

      if (SHIBYTE(v176.hash[3]) < 0)
      {
        operator delete(*v176.count);
      }
    }

    if (BYTE8(v177))
    {
      v90 = v177;
      *&v177 = 0;
      if (v90)
      {
        (*(*v90 + 8))(v90);
      }
    }

    if (!v68)
    {
      goto LABEL_156;
    }
  }

  else
  {
    v67 = 0;
  }

  v91 = (*v160)(&v160, v32, &v168 + 8, v67);
  if (!v91)
  {
    AGCError::logError(a8, "Cannot create AGC LLVM object.", v93);
LABEL_156:
    v32 = 0;
    goto LABEL_268;
  }

  v94 = v91;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (v95 = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v92)) != 0 && *v95 != 48 && (v96 = atoi(v95), v96))
  {
    AGCPrinterFactory::Get(v96);
    v97 = (*(*v94 + 48))(v94);
    std::string::basic_string[abi:nn200100]<0>(v157, v97);
    (*(*v94 + 40))(v155, v94);
    if (v172 == 1)
    {
      v177 = v170;
      v178 = v171;
    }

    else
    {
      llvm::SHA256::SHA256(&v152);
      if (v169)
      {
        (*(*v169 + 32))(v169, &v152);
      }

      v179 = 0u;
      v180 = 0u;
      CC_SHA256_Init(&v176);
      (**(&v160 + 1))(&v160 + 8, &v176);
      CC_SHA256_Final(&v179, &v176);
      llvm::SHA256::update();
      llvm::SHA256::final(&v176, &v152);
      v170 = *v176.count;
      v171 = *&v176.hash[2];
      if ((v172 & 1) == 0)
      {
        v172 = 1;
      }

      v177 = v170;
      v178 = v171;
      llvm::SHA256::~SHA256(&v152);
    }

    *v176.count = v177;
    *&v176.hash[2] = v178;
    LOBYTE(v176.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(&v179, 0, v157, v155, &v176);
    v99 = v179;
    if (v156 < 0)
    {
      operator delete(v155[0]);
    }

    if (v158 < 0)
    {
      operator delete(v157[0]);
    }

    v98 = v99;
  }

  else
  {
    v98 = 0;
    v99 = *(v32 + 2032);
  }

  (*(*v94 + 64))(v94, v99);
  if ((*(*v94 + 16))(v94))
  {
    v153 = 0;
    v154 = 0;
    memset(&v176, 0, 32);
    *&v179 = &unk_2825BE9C0;
    *(&v179 + 1) = &v160;
    *(&v180 + 1) = &v179;
    v32 = (*(*v94 + 24))(v94, &v154, &v153, &v176, &v179);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](&v179);
    if (v32)
    {
      v100 = v153;
      *a6 = v154;
      *a7 = v100;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(&v177, "Error occurred composing compiler reply.");
      if (SBYTE7(v178) < 0)
      {
        std::string::__init_copy_ctor_external(&v152, v177, *(&v177 + 1));
      }

      else
      {
        *&v152.__r_.__value_.__l.__data_ = v177;
        v152.__r_.__value_.__r.__words[2] = v178;
      }

      v132 = &v152;
      if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v132 = v152.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v94 + 1696), "** Compilation failed with error: %s **", v132);
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
      }

      v134 = SBYTE7(v178);
      v135 = v177;
      if ((SBYTE7(v178) & 0x80u) == 0)
      {
        v136 = &v177;
      }

      else
      {
        v136 = v177;
      }

      AGCError::logError(a8, v136, v133);
      if (v134 < 0)
      {
        operator delete(v135);
      }
    }
  }

  else
  {
    if (*(v94 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v176, *(v94 + 1656), *(v94 + 1664));
    }

    else
    {
      *v176.count = *(v94 + 1656);
      *&v176.hash[2] = *(v94 + 1672);
    }

    v129 = &v176;
    if ((v176.hash[3] & 0x80000000) != 0)
    {
      v129 = *v176.count;
    }

    AGCTargetPrinter::printMessage(*(v94 + 1696), "** Compilation failed with error: %s **", v129);
    if (SHIBYTE(v176.hash[3]) < 0)
    {
      operator delete(*v176.count);
    }

    if (*(v94 + 1679) >= 0)
    {
      v131 = (v94 + 1656);
    }

    else
    {
      v131 = *(v94 + 1656);
    }

    AGCError::logError(a8, v131, v130);
    v32 = 0;
  }

  if (v98)
  {
    v137 = *v98;
    if (*v98 && v137 != MEMORY[0x277D82670])
    {
      (*(*v137 + 8))(v137);
      *v98 = 0;
    }

    MEMORY[0x20F331DC0](v98, 0x1020C409DFBF432);
  }

  (*(*v94 + 8))(v94);
LABEL_268:
  v138 = v169;
  *&v160 = &unk_2825BE240;
  v169 = 0;
  if (v138)
  {
    (*(*v138 + 8))(v138);
  }

  llvm::LLVMContext::~LLVMContext((&v168 + 8));
  *(&v160 + 1) = &unk_2825BF7F0;
  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

  *v173.count = &unk_2825BF7F0;
  v128 = *&v173.hash[2];
  if (*&v173.hash[2])
  {
    *&v173.hash[4] = *&v173.hash[2];
    goto LABEL_274;
  }

  return v32;
}

uint64_t std::__function::__func<AGCModule<AGX::BVHBuilderProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::BVHBuilderProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEA08;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)24,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::BVHBuilderProgramKey::serialize(AGX::BVHBuilderProgramKey *this, std::vector<unsigned int>::pointer *a2, unint64_t *a3)
{
  v5 = (this + 16);
  *(this + 3) = *(this + 2);
  v9 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v9);
  v6 = v5->__end_ - v5->__begin_;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 2);
  v7 = (v5->__begin_ + v6);
  *v7 = ((LODWORD(v5->__end_) - v5->__begin_) >> 2 << 8) | 0x55;
  v7[1] = v5[1].__begin_;
  v10 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v10);
  begin = v5->__begin_;
  *a2 = v5->__begin_;
  *a3 = v5->__end_ - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::EndOfTileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::EndOfTileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE9C0;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)19,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

BOOL AGX::EndOfTileProgramKey::isPrecompiledToPipelineCache(AGX::EndOfTileProgramKey *this)
{
  v8 = 19;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = &unk_2825BF7B0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  if (AGX::EndOfTileProgramKey::operator==(this, &v7))
  {
    return 1;
  }

  v3 = 0;
  for (i = 40; i != 108; i += 4)
  {
    v3 |= *(this + i) != 0;
  }

  LOBYTE(v5) = 0;
  for (j = 40; j != 108; j += 4)
  {
    v5 = v5 & 1 | ((*(this + j) & 0x2000000) != 0);
  }

  v18 = 19;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v17 = &unk_2825BF7B0;
  v26 = 0;
  *(v27 + 6) = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v27[0] = 0x200000000000000;
  LODWORD(v22) = v3 & 1 | (v5 << 25);
  return AGX::EndOfTileProgramKey::operator==(&v17, this);
}

BOOL AGX::EndOfTileProgramKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 40; i != 108; i += 4)
  {
    v2 |= (*(a2 + i) ^ *(a1 + i));
  }

  return (*(a2 + 112) ^ *(a1 + 112) | (*(a2 + 120) ^ *(a1 + 120)) | (*(a2 + 122) ^ *(a1 + 122)) | (*(a2 + 124) ^ *(a1 + 124)) | v2) == 0;
}

void AGX::EndOfTileProgramKey::serialize(AGX::EndOfTileProgramKey *this, const void **a2, unint64_t *a3)
{
  v5 = this + 16;
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v12);
  v6 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 22);
  v7 = *v5 + v6;
  *v7 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x45;
  *(v7 + 4) = *(v5 + 24);
  v8 = *(v5 + 40);
  v9 = *(v5 + 56);
  v10 = *(v5 + 72);
  *(v7 + 68) = *(v5 + 88);
  *(v7 + 52) = v10;
  *(v7 + 36) = v9;
  *(v7 + 20) = v8;
  v13 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v13);
  v11 = *v5;
  *a2 = *v5;
  *a3 = *(v5 + 1) - v11;
}

uint64_t std::__function::__func<AGCModule<AGX::BackgroundObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::BackgroundObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE978;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)13,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t AGX::BackgroundObjectProgramKey::isPrecompiledToPipelineCache(AGX::BackgroundObjectProgramKey *this)
{
  v1 = *(this + 18);
  v2 = 1;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  WORD6(v14) = 256;
  v3 = v1 & 0x10000000 | (((3 - __clz(1 << ((v1 >> 10) & 3) << 24)) & 3) << 10) | 0x400000;
  LODWORD(v14) = v3;
  for (i = 40; i != 72; i += 4)
  {
    v2 &= *&v11[i] == *(this + i);
  }

  v5 = *(this + 10);
  if (v3 != v1 || *(&v14 + 1) != v5)
  {
    v2 = 0;
  }

  if (v2)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  LOBYTE(v8) = 1;
  for (j = 40; j != 72; j += 4)
  {
    v8 = v8 & (*(this + j) == *&v11[j]);
  }

  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 == 0;
  }

  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void AGX::BackgroundObjectProgramKey::serialize(AGX::BackgroundObjectProgramKey *this, const void **a2, unint64_t *a3)
{
  v5 = this + 16;
  *(this + 3) = *(this + 2);
  v13 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v13);
  v6 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 4);
  v7 = *v5 + v6;
  *v7 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x44;
  *(v7 + 4) = *(v5 + 8);
  v8 = *(v5 + 1) - *v5;
  std::vector<unsigned int>::resize(v5, (v8 >> 2) + 12);
  v9 = *v5 + v8;
  *v9 = ((*(v5 + 2) - *v5) >> 2 << 8) | 0x42;
  v10 = *(v5 + 24);
  v11 = *(v5 + 40);
  *(v9 + 36) = *(v5 + 7);
  *(v9 + 20) = v11;
  *(v9 + 4) = v10;
  v14 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v14);
  v12 = *v5;
  *a2 = *v5;
  *a3 = *(v5 + 1) - v12;
}

uint64_t AIRNTEmitPipelineImageInternal(int a1, unsigned __int8 *a2, const char *a3, AGCTarget *this, Air::FunctionScript *a5, void *a6, void *a7, void **a8, void *a9, char *a10)
{
  v14 = this;
  v174 = *MEMORY[0x277D85DE8];
  v17 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (!v17)
  {
    std::to_string(&v124, v14);
    v29 = std::string::insert(&v124, 0, "Unknown AGC target for CPU subtype: ");
    v31 = v29->__r_.__value_.__r.__words[2];
    v143 = *&v29->__r_.__value_.__l.__data_;
    v144 = v31;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = SHIBYTE(v144);
    v33 = v143;
    if (v144 >= 0)
    {
      v34 = &v143;
    }

    else
    {
      v34 = v143;
    }

    AGCError::logError(a10, v34, v30);
    if (v32 < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  v18 = v17;
  v84 = a6;
  TargetContext = AGCNativeTranslator::getTargetContext(v17);
  v21 = *AGCNativeTranslator::getTargetContext(v18);
  if (!v21)
  {
    v35 = "AGX key factory does not exist for target architecture.";
    v36 = a10;
LABEL_22:
    AGCError::logError(v36, v35, v20);
    return 0;
  }

  v22 = (a5 - *a5);
  v23 = *v22;
  if (v23 >= 9 && v22[4])
  {
    if (v23 >= 0xB && *(a5 + v22[4]) == 1)
    {
      v25 = v22[5];
      if (v22[5])
      {
        if (a2[232])
        {
          v26 = TargetContext;
          v27 = a5 + v25;
          v28 = *(a5 + v25);
          if (a2[199] < 0)
          {
            std::string::__init_copy_ctor_external(&v140, *(a2 + 22), *(a2 + 23));
          }

          else
          {
            v140 = *(a2 + 176);
          }

          if (a2[223] < 0)
          {
            std::string::__init_copy_ctor_external(&v141, *(a2 + 25), *(a2 + 26));
          }

          else
          {
            v141 = *(a2 + 200);
          }

          v142 = a2[224];
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v134 = 0;
          v135 = 0;
          (*(*v21 + 16))(&v124, v21, &v27[v28], &v140, 0, &v137, &v134, 0);
          if (v134)
          {
            v135 = v134;
            operator delete(v134);
          }

          if (v137)
          {
            v138 = v137;
            operator delete(v137);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          v72 = v127 & 0xFFFFF1FFF27FFFFFLL | (a2[9] << 23) | (a2[10] << 24) | (a2[11] << 27);
          v73 = a2[3];
          v74 = a2[4];
          v75 = a2[5];
          HIDWORD(v126) = HIDWORD(v126) & 0x8BFFFEF4 | (*a2 << 26) | (a2[1] << 8) | (a2[2] << 28) | (a2[6] << 29) | (a2[8] << 30) | a2[16] | (2 * a2[17]) | (8 * a2[18]);
          v127 = v72 | (v73 << 41) | (v74 << 42) | (v75 << 43) | (a2[19] << 26);
          v76 = *a3;
          *a3 = 0;
          *&v143 = &unk_2825BE340;
          AGX::Impl::VertexProgramKey::VertexProgramKey((&v143 + 8), &v124);
          MEMORY[0x20F32FFB0](&v162);
          v163 = v76;
          v164 = 0;
          v165 = 0;
          *&v143 = &unk_2825BE310;
          v37 = AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(&v143, *(v26 + 8), v84, a7, a10, a8, a9);
          v77 = v163;
          *&v143 = &unk_2825BE340;
          v163 = 0;
          if (v77)
          {
            (*(*v77 + 8))(v77);
          }

          llvm::LLVMContext::~LLVMContext(&v162);
          AGX::Impl::VertexProgramKey::~VertexProgramKey(&v143 + 1);
          AGX::Impl::VertexProgramKey::~VertexProgramKey(&v124.__r_.__value_.__l.__data_);
          return v37;
        }

        goto LABEL_148;
      }
    }

    if (v22[4])
    {
      if (v23 >= 0xB && *(a5 + v22[4]) == 2)
      {
        v39 = v22[5];
        if (v22[5])
        {
          if (a2[168])
          {
            v40 = a5 + v39;
            v41 = *(a5 + v39);
            v42 = a2[96];
            v122 = 0;
            v123 = 0;
            v120 = 0;
            v121 = 0;
            __p = 0;
            v119 = 0;
            (*(*v21 + 40))(&v124, v21, &v40[v41], v42, 0, &v121, &__p, *(a2 + 38), *(a2 + 39), *(a2 + 40));
            if (__p)
            {
              v119 = __p;
              operator delete(__p);
            }

            if (v121)
            {
              v122 = v121;
              operator delete(v121);
            }

            v43 = TargetContext;
            v44 = HIDWORD(v131) & 0xFFFFC777 | (8 * a2[12]) | (a2[3] << 11) | (a2[4] << 12) | (a2[5] << 13) | (a2[19] << 7);
            HIDWORD(v130) = HIDWORD(v130) & 0x8BFFFEF4 | (*a2 << 26) | (a2[1] << 8) | (a2[2] << 28) | (a2[6] << 29) | (a2[8] << 30) | a2[16] | (2 * a2[17]) | (8 * a2[18]);
            HIDWORD(v131) = v44;
            if (a2[96] == 1)
            {
              if (a2[127] < 0)
              {
                std::string::__init_copy_ctor_external(&v116, *(a2 + 13), *(a2 + 14));
              }

              else
              {
                v116 = *(a2 + 104);
              }

              if (a2[151] < 0)
              {
                std::string::__init_copy_ctor_external(&v117, *(a2 + 16), *(a2 + 17));
              }

              else
              {
                v117 = *(a2 + 128);
              }

              AGX::Impl::FragmentProgramKey::setVertexVaryings(&v124, &v116);
              if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v117.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
              }
            }

            v79 = *a3;
            *a3 = 0;
            *&v143 = &unk_2825BE428;
            AGX::Impl::FragmentProgramKey::FragmentProgramKey((&v143 + 8), &v124);
            MEMORY[0x20F32FFB0](&v166);
            v167 = v79;
            v168 = 0;
            v169 = 0;
            *&v143 = &unk_2825BE3F8;
            v170 = 0u;
            v171 = 0u;
            v172 = 0u;
            v173 = 0;
            v37 = AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(&v143, *(v43 + 8), v84, a7, a10, a8, a9);
            *&v143 = &unk_2825BE3F8;
            if (SHIBYTE(v172) < 0)
            {
              operator delete(*(&v171 + 1));
            }

            if (SBYTE7(v171) < 0)
            {
              operator delete(v170);
            }

            v80 = v167;
            *&v143 = &unk_2825BE428;
            v167 = 0;
            if (v80)
            {
              (*(*v80 + 8))(v80);
            }

            llvm::LLVMContext::~LLVMContext(&v166);
            AGX::Impl::FragmentProgramKey::~FragmentProgramKey((&v143 + 8));
            AGX::Impl::FragmentProgramKey::~FragmentProgramKey(&v124);
            return v37;
          }

LABEL_148:
          std::__throw_bad_optional_access[abi:nn200100]();
          goto LABEL_149;
        }
      }

      if (v22[4])
      {
        if (v23 >= 0xB && *(a5 + v22[4]) == 3)
        {
          v45 = v22[5];
          if (v22[5])
          {
            v46 = a5 + v45;
            v47 = *(a5 + v45);
            v114 = 0;
            v115 = 0;
            v112 = 0;
            v113 = 0;
            v110 = 0;
            v111 = 0;
            (*(*v21 + 48))(&v124, v21, &v46[v47], 0, &v113, &v110);
            if (v110)
            {
              v111 = v110;
              operator delete(v110);
            }

            v83 = TargetContext;
            if (v113)
            {
              v114 = v113;
              operator delete(v113);
            }

            v48 = v127 & 0xFFFFC63B | (4 * a2[13]) | (a2[14] << 6) | (a2[15] << 7) | (a2[3] << 11) | (a2[4] << 12) | (a2[5] << 13) | (a2[19] << 8);
            HIDWORD(v126) = HIDWORD(v126) & 0x8BFFFEF4 | (*a2 << 26) | (a2[1] << 8) | (a2[2] << 28) | (a2[6] << 29) | (a2[8] << 30) | a2[16] | (2 * a2[17]) | (8 * a2[18]);
            LODWORD(v127) = v48;
            v49 = *a3;
            *a3 = 0;
            *&v143 = &unk_2825BE4A0;
            *(&v143 + 1) = &unk_2825BE4D0;
            LODWORD(v144) = v124.__r_.__value_.__r.__words[1];
            v147 = 0;
            v145 = 0;
            v146 = 0;
            v50 = v125 - v124.__r_.__value_.__r.__words[2];
            if (v125 != v124.__r_.__value_.__r.__words[2])
            {
              if (!((v50 >> 2) >> 62))
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v50 >> 2);
              }

LABEL_149:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v148 = v126;
            *(&v143 + 1) = &unk_2825BF9D8;
            v149 = v127;
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v150, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              v150 = __s;
            }

            v151 = v129;
            v154 = 0;
            v152 = 0;
            __dst = 0;
            if (v131 != v130)
            {
              std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v152, (v131 - v130) >> 5);
            }

            v156 = 0;
            v155 = 0;
            v157 = 0;
            if (v133 != v132)
            {
              std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v155, (v133 - v132) >> 5);
            }

            MEMORY[0x20F32FFB0](&v158);
            v159 = v49;
            v160 = 0;
            v161 = 0;
            *&v143 = &unk_2825BE470;
            v37 = AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(&v143, *(v83 + 8), v84, a7, a10, a8, a9);
            v82 = v159;
            *&v143 = &unk_2825BE4A0;
            v159 = 0;
            if (v82)
            {
              (*(*v82 + 8))(v82);
            }

            llvm::LLVMContext::~LLVMContext(&v158);
            *(&v143 + 1) = &unk_2825BF9D8;
            if (v155)
            {
              v156 = v155;
              operator delete(v155);
            }

            if (v152)
            {
              __dst = v152;
              operator delete(v152);
            }

            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            *(&v143 + 1) = &unk_2825BE4D0;
            if (v145)
            {
              v146 = v145;
              operator delete(v145);
            }

            v124.__r_.__value_.__r.__words[0] = &unk_2825BF9D8;
            if (v132)
            {
              v133 = v132;
              operator delete(v132);
            }

            if (v130)
            {
              v131 = v130;
              operator delete(v130);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            v67 = &unk_2825BE4D0;
            goto LABEL_85;
          }
        }

        if (v22[4])
        {
          if (v23 >= 0xB && *(a5 + v22[4]) == 4)
          {
            v51 = v22[5];
            if (v51)
            {
              v52 = *(a5 + v51);
              v108 = 0;
              v109 = 0;
              v106 = 0;
              v107 = 0;
              v104 = 0;
              v105 = 0;
              (*(*v21 + 56))(&v124, v21, a5 + v51 + v52, &v107, &v104);
              if (v104)
              {
                v105 = v104;
                operator delete(v104);
              }

              if (v107)
              {
                v108 = v107;
                operator delete(v107);
              }

              AGX::DeviceOptions::modifyContextState<_AGCFragmentContextStateAGP>(a2, &v126);
              AGX::CompileOptions::modifyContextState<_AGCFragmentContextStateAGP>(a2 + 16, &v126);
              v53 = *a3;
              *a3 = 0;
              v103 = v53;
              AGCTileFunction::AGCTileFunction(&v143, &v103, &v124);
              if (v103)
              {
                (*(*v103 + 8))(v103);
              }

              v37 = AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(&v143, *(TargetContext + 8), v84, a7, a10, a8, a9);
              AGCTileFunction::~AGCTileFunction(&v143);
              AGX::Impl::TileProgramKey::~TileProgramKey(&v124);
              return v37;
            }
          }
        }
      }
    }
  }

  v54 = TargetContext;
  v55 = Air::FunctionScript::function_as_mesh(a5);
  if (!v55)
  {
    v60 = Air::FunctionScript::function_as_object(a5);
    if (v60)
    {
      if ((a2[242] & 1) == 0)
      {
        goto LABEL_148;
      }

      v61 = a2[240];
      v62 = a2[241];
      v93 = 0;
      v94 = 0;
      v91 = 0;
      v92 = 0;
      v89 = 0;
      v90 = 0;
      (*(*v21 + 24))(&v124, v21, v60, v61, v62, 0, &v92, &v89);
      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      AGX::DeviceOptions::modifyContextState<_AGCObjectContextStateAGP>(a2, &v126);
      HIDWORD(v126) = HIDWORD(v126) & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
      v63 = *a3;
      *a3 = 0;
      v88 = v63;
      AGCObjectFunction::AGCObjectFunction(&v143, &v88, &v124);
      if (v88)
      {
        (*(*v88 + 8))(v88);
      }

      v37 = AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(&v143, *(TargetContext + 8), v84, a7, a10, a8, a9);
      AGCObjectFunction::~AGCObjectFunction(&v143);
      AGX::Impl::ObjectProgramKey::~ObjectProgramKey(&v124);
      return v37;
    }

    v64 = Air::FunctionScript::function_as_visible(a5);
    if (v64)
    {
      (*(*v21 + 64))(&v124, v21, v64);
      AGX::Impl::DynamicLibraryKey::setDeviceOptions(&v124, a2);
      LODWORD(v126) = v126 & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
      v65 = *a3;
      *a3 = 0;
      v87 = v65;
      AGCDylib::AGCDylib(&v143, &v87, &v124);
      v66 = v87;
      if (v87)
      {
LABEL_83:
        (*(*v66 + 8))(v66);
      }

LABEL_84:
      v37 = AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(&v143, *(v54 + 8), v84, a7, a10);
      AGCDylib::~AGCDylib(&v143);
      v67 = &unk_2825BE090;
LABEL_85:
      v124.__r_.__value_.__r.__words[0] = v67;
      if (v124.__r_.__value_.__r.__words[2])
      {
        v125 = v124.__r_.__value_.__r.__words[2];
        operator delete(v124.__r_.__value_.__r.__words[2]);
      }

      return v37;
    }

    v68 = Air::FunctionScript::function_as_intersection(a5);
    if (v68)
    {
      v69 = v68;
      v70 = AGCTarget::Get(v18);
      if (!((*v70)[3])(v70))
      {
        (*(*v21 + 88))(&v124, v21, v69);
        LODWORD(v126) = v126 & 0xFF9BFFC7 | (a2[3] << 18) | (a2[4] << 21) | (a2[5] << 22) | (8 * a2[16]) | (16 * a2[17]) | (32 * a2[18]);
        v78 = *a3;
        *a3 = 0;
        v85 = v78;
        AGCIntersectionFunction::AGCIntersectionFunction(&v143, &v85, &v124);
        if (v85)
        {
          (*(*v85 + 8))(v85);
        }

        v37 = AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(&v143, *(v54 + 8), v84, a7, a10);
        AGCIntersectionFunction::~AGCIntersectionFunction(&v143);
        AGX::Impl::UserIntersectionProgramKey::~UserIntersectionProgramKey(&v124);
        return v37;
      }

      (*(*v21 + 72))(&v124, v21, v69);
      AGX::Impl::DynamicLibraryKey::setDeviceOptions(&v124, a2);
      LODWORD(v126) = v126 & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
      v71 = *a3;
      *a3 = 0;
      v86 = v71;
      AGCDylib::AGCDylib(&v143, &v86, &v124);
      v66 = v86;
      if (v86)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v35 = "Unsupported function script.";
    v36 = a10;
    goto LABEL_22;
  }

  if ((a2[88] & 1) == 0)
  {
    goto LABEL_148;
  }

  v56 = v55;
  AGX::FragmentProgramVaryings::FragmentProgramVaryings(&v102, a2 + 2);
  v57 = a2[24];
  v58 = a2[25];
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  (*(*v21 + 32))(&v124, v21, v56, &v102, v57, v58, 0, &v99, &v96, 0);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  AGX::FragmentProgramVaryings::~FragmentProgramVaryings(&v102.__r_.__value_.__l.__data_);
  AGX::DeviceOptions::modifyContextState<_AGCMeshContextStateAGP>(a2, &v126);
  HIDWORD(v126) = HIDWORD(v126) & 0xFFFFFFF4 | a2[16] | (2 * a2[17]) | (8 * a2[18]);
  v59 = *a3;
  *a3 = 0;
  v95 = v59;
  AGCMeshFunction::AGCMeshFunction(&v143, &v95, &v124);
  if (v95)
  {
    (*(*v95 + 8))(v95);
  }

  v37 = AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(&v143, *(v54 + 8), v84, a7, a10, a8, a9);
  AGCMeshFunction::~AGCMeshFunction(&v143);
  AGX::Impl::MeshProgramKey::~MeshProgramKey(&v124.__r_.__value_.__l.__data_);
  return v37;
}

AGX::Impl::VertexProgramKey *AGX::Impl::VertexProgramKey::VertexProgramKey(AGX::Impl::VertexProgramKey *this, const AGX::Impl::VertexProgramKey *a2)
{
  *this = &unk_2825BE3B8;
  *(this + 2) = *(a2 + 2);
  std::vector<unsigned int>::vector[abi:nn200100](this + 2, a2 + 2);
  *this = &unk_2825BE370;
  v4 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v4;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v5 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v5;
  }

  *(this + 22) = *(a2 + 22);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 12, a2 + 12);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 15, a2 + 15);
  *this = &unk_2825BF870;
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v6 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v6;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v7 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v7;
  }

  *(this + 192) = *(a2 + 192);
  return this;
}

uint64_t AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
    return 0;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 216);
  v70 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v81);
    if (BYTE8(v81))
    {
      v20 = v81;
      *&v81 = 0;
      v78 = v20;
      llvm::toString(v83, &v78);
      v21 = std::string::insert(v83, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v83[23] & 0x80000000) != 0)
      {
        operator delete(*v83);
      }

      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v81;
      v84 = 260;
      *v83 = v81 + 216;
      MEMORY[0x20F330F20](&c, v83);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v83, &c), pluginSupportsOSVersion(*v83)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v83, &c);
        v28 = 1;
      }

      else
      {
        v68 = v15;
        v69 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v83[23];
        v36 = *v83;
        if (v83[23] >= 0)
        {
          v37 = v83;
        }

        else
        {
          v37 = *v83;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v69;
        v15 = v68;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v81))
    {
      v38 = v81;
      *&v81 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v70)(v70, v18, v70 + 208, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v67 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v76, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v70 + 256) == 1)
    {
      v45 = *(v70 + 240);
      v81 = *(v70 + 224);
      v82 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v79);
      v63 = *(v70 + 216);
      if (v63)
      {
        (*(*v63 + 32))(v63, &v79);
      }

      memset(v83, 0, sizeof(v83));
      CC_SHA256_Init(&c);
      (**(v70 + 8))(v70 + 8, &c);
      CC_SHA256_Final(v83, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v79);
      v64 = *(v70 + 256);
      v65 = *&c.hash[2];
      *(v70 + 224) = *c.count;
      *(v70 + 240) = v65;
      if ((v64 & 1) == 0)
      {
        *(v70 + 256) = 1;
      }

      v66 = *(v70 + 240);
      v81 = *(v70 + 224);
      v82 = v66;
      llvm::SHA256::~SHA256(&v79);
    }

    *c.count = v81;
    *&c.hash[2] = v82;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v83, 0, v76, __p, &c);
    v47 = *v83;
    if (v75 < 0)
    {
      operator delete(__p[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v79 = 0;
    v80[0] = &unk_2825BEA50;
    v80[1] = v70;
    v80[3] = v80;
    *&v81 = 0;
    v49 = (*(*v41 + 24))(v41, &v81, &v79, &c, v80);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v80);
    if (v15)
    {
      v71 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v71;
    }

    if (v49)
    {
      *a3 = v81;
      *v67 = v79;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v83, "Error occurred composing compiler reply.");
      if ((v83[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v83, *&v83[8]);
      }

      else
      {
        v72 = *v83;
      }

      v56 = &v72;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v72.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v58 = v83[23];
      v59 = *v83;
      if (v83[23] >= 0)
      {
        v60 = v83;
      }

      else
      {
        v60 = *v83;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v73 = *(v41 + 1656);
    }

    v53 = &v73;
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v73.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
  return v49;
}

void AGX::Impl::VertexProgramKey::~VertexProgramKey(void **this)
{
  *this = &unk_2825BF870;
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  *this = &unk_2825BE370;
  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_2825BE3B8;
  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

__n128 AGX::Impl::FragmentProgramKey::setVertexVaryings(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v4 = *a2;
  *(a1 + 168) = *(a2 + 2);
  *(a1 + 152) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  result = *(a2 + 24);
  *(a1 + 192) = *(a2 + 5);
  *(a1 + 176) = result;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v85 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
    return 0;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 296);
  v70 = v15;
  if (v19)
  {
    (*(*v19 + 24))(&v80);
    if (BYTE8(v80))
    {
      v20 = v80;
      *&v80 = 0;
      v77 = v20;
      llvm::toString(v82, &v77);
      v21 = std::string::insert(v82, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v82[23] & 0x80000000) != 0)
      {
        operator delete(*v82);
      }

      if (v77)
      {
        (*(*v77 + 8))(v77);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v80;
      v83 = 260;
      *v82 = v80 + 216;
      MEMORY[0x20F330F20](&c, v82);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v82, &c), pluginSupportsOSVersion(*v82)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v82, &c);
        AGX::Impl::FragmentProgramKey::legalizeStateForTargetOS((a1 + 8), v82);
        v28 = 1;
      }

      else
      {
        v68 = v16;
        v69 = v8;
        v31 = a3;
        v32 = a4;
        std::operator+<char>();
        v34 = v82[23];
        v35 = *v82;
        if (v82[23] >= 0)
        {
          v36 = v82;
        }

        else
        {
          v36 = *v82;
        }

        AGCError::logError(a5, v36, v33);
        if (v34 < 0)
        {
          operator delete(v35);
        }

        v28 = 0;
        a4 = v32;
        a3 = v31;
        v8 = v69;
        v16 = v68;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v80))
    {
      v37 = v80;
      *&v80 = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }
    }

    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v38 = (**a1)(a1, v18, a1 + 288, v27);
  if (!v38)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v40 = v38;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v67 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v39)) != 0 && *Value != 48 && (v42 = atoi(Value), v42))
  {
    AGCPrinterFactory::Get(v42);
    v43 = (*(*v40 + 48))(v40);
    std::string::basic_string[abi:nn200100]<0>(v75, v43);
    (*(*v40 + 40))(__p, v40);
    if (*(a1 + 336) == 1)
    {
      v44 = *(a1 + 320);
      v80 = *(a1 + 304);
      v81 = v44;
    }

    else
    {
      llvm::SHA256::SHA256(&v78);
      v63 = *(a1 + 296);
      if (v63)
      {
        (*(*v63 + 32))(v63, &v78);
      }

      memset(v82, 0, sizeof(v82));
      CC_SHA256_Init(&c);
      (**(a1 + 8))(a1 + 8, &c);
      CC_SHA256_Final(v82, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v78);
      v64 = *(a1 + 336);
      v65 = *&c.hash[2];
      *(a1 + 304) = *c.count;
      *(a1 + 320) = v65;
      if ((v64 & 1) == 0)
      {
        *(a1 + 336) = 1;
      }

      v66 = *(a1 + 320);
      v80 = *(a1 + 304);
      v81 = v66;
      llvm::SHA256::~SHA256(&v78);
    }

    *c.count = v80;
    *&c.hash[2] = v81;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v82, 0, v75, __p, &c);
    v47 = *v82;
    if (v74 < 0)
    {
      operator delete(__p[0]);
    }

    v45 = v16;
    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    v46 = v47;
  }

  else
  {
    v45 = v16;
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v40 + 64))(v40, v47);
  if ((*(*v40 + 16))(v40))
  {
    memset(&c, 0, 32);
    v78 = 0;
    v79[0] = &unk_2825BE8A0;
    v79[1] = a1;
    v79[3] = v79;
    *&v80 = 0;
    v48 = (*(*v40 + 24))(v40, &v80, &v78, &c, v79);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v79);
    if (v70)
    {
      v49 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v45;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v49;
    }

    if (v48)
    {
      *a3 = v80;
      *v67 = v78;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v82, "Error occurred composing compiler reply.");
      if ((v82[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v71, *v82, *&v82[8]);
      }

      else
      {
        v71 = *v82;
      }

      v56 = &v71;
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v71.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v40 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v58 = v82[23];
      v59 = *v82;
      if (v82[23] >= 0)
      {
        v60 = v82;
      }

      else
      {
        v60 = *v82;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v40 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, *(v40 + 1656), *(v40 + 1664));
    }

    else
    {
      v72 = *(v40 + 1656);
    }

    v53 = &v72;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v72.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v40 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (*(v40 + 1679) >= 0)
    {
      v55 = (v40 + 1656);
    }

    else
    {
      v55 = *(v40 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v48 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v40 + 8))(v40);
  return v48;
}

void AGX::Impl::FragmentProgramKey::~FragmentProgramKey(AGX::Impl::FragmentProgramKey *this)
{
  *this = &unk_2825BF948;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  *this = &unk_2825BFA50;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
    return 0;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 160);
  v70 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v81);
    if (BYTE8(v81))
    {
      v20 = v81;
      *&v81 = 0;
      v78 = v20;
      llvm::toString(v83, &v78);
      v21 = std::string::insert(v83, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v83[23] & 0x80000000) != 0)
      {
        operator delete(*v83);
      }

      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v81;
      v84 = 260;
      *v83 = v81 + 216;
      MEMORY[0x20F330F20](&c, v83);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v83, &c), pluginSupportsOSVersion(*v83)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v83, &c);
        v28 = 1;
      }

      else
      {
        v68 = v15;
        v69 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v83[23];
        v36 = *v83;
        if (v83[23] >= 0)
        {
          v37 = v83;
        }

        else
        {
          v37 = *v83;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v69;
        v15 = v68;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v81))
    {
      v38 = v81;
      *&v81 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v70)(v70, v18, v70 + 152, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v67 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v76, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v70 + 200) == 1)
    {
      v45 = *(v70 + 184);
      v81 = *(v70 + 168);
      v82 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v79);
      v63 = *(v70 + 160);
      if (v63)
      {
        (*(*v63 + 32))(v63, &v79);
      }

      memset(v83, 0, sizeof(v83));
      CC_SHA256_Init(&c);
      (**(v70 + 8))(v70 + 8, &c);
      CC_SHA256_Final(v83, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v79);
      v64 = *(v70 + 200);
      v65 = *&c.hash[2];
      *(v70 + 168) = *c.count;
      *(v70 + 184) = v65;
      if ((v64 & 1) == 0)
      {
        *(v70 + 200) = 1;
      }

      v66 = *(v70 + 184);
      v81 = *(v70 + 168);
      v82 = v66;
      llvm::SHA256::~SHA256(&v79);
    }

    *c.count = v81;
    *&c.hash[2] = v82;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v83, 0, v76, __p, &c);
    v47 = *v83;
    if (v75 < 0)
    {
      operator delete(__p[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v79 = 0;
    v80[0] = &unk_2825BEA98;
    v80[1] = v70;
    v80[3] = v80;
    *&v81 = 0;
    v49 = (*(*v41 + 24))(v41, &v81, &v79, &c, v80);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v80);
    if (v15)
    {
      v71 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v71;
    }

    if (v49)
    {
      *a3 = v81;
      *v67 = v79;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v83, "Error occurred composing compiler reply.");
      if ((v83[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v83, *&v83[8]);
      }

      else
      {
        v72 = *v83;
      }

      v56 = &v72;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v72.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v58 = v83[23];
      v59 = *v83;
      if (v83[23] >= 0)
      {
        v60 = v83;
      }

      else
      {
        v60 = *v83;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v73 = *(v41 + 1656);
    }

    v53 = &v73;
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v73.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
  return v49;
}

_BYTE *AGX::DeviceOptions::modifyContextState<_AGCFragmentContextStateAGP>(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 60) & 0xFBFFFFFF | ((*result & 1) << 26);
  *(a2 + 60) = v2;
  v3 = v2 & 0xFFFFFEFF | ((result[1] & 1) << 8);
  *(a2 + 60) = v3;
  v4 = v3 & 0xEFFFFFFF | ((result[2] & 1) << 28);
  *(a2 + 60) = v4;
  v5 = v4 & 0xDFFFFFFF | ((result[6] & 1) << 29);
  *(a2 + 60) = v5;
  *(a2 + 60) = v5 & 0xBFFFFFFF | ((result[8] & 1) << 30);
  v6 = *(a2 + 68) & 0xFFFFFFF7 | (8 * (result[12] & 1));
  *(a2 + 68) = v6;
  v7 = v6 & 0xFFFFF7FF | ((result[3] & 1) << 11);
  *(a2 + 68) = v7;
  v8 = v7 & 0xFFFFEFFF | ((result[4] & 1) << 12);
  *(a2 + 68) = v8;
  *(a2 + 68) = v8 & 0xFFFFDFFF | ((result[5] & 1) << 13);
  return result;
}

unsigned __int8 *AGX::CompileOptions::modifyContextState<_AGCFragmentContextStateAGP>(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 60) & 0xFFFFFFFE | *result;
  *(a2 + 60) = v2;
  v3 = v2 & 0xFFFFFFFD | (2 * (result[1] & 1));
  *(a2 + 60) = v3;
  *(a2 + 60) = v3 & 0xFFFFFFF7 | (8 * (result[2] & 1));
  *(a2 + 68) = *(a2 + 68) & 0xFFFFFF7F | ((result[3] & 1) << 7);
  return result;
}

uint64_t AGCTileFunction::AGCTileFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE540;
  *(a1 + 8) = &unk_2825BE570;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BF998;
  v6 = *(a3 + 40);
  v7 = *(a3 + 56);
  v8 = *(a3 + 88);
  *(a1 + 80) = *(a3 + 72);
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = *(a3 + 104);
  v10 = *(a3 + 120);
  v11 = *(a3 + 136);
  *(a1 + 160) = *(a3 + 152);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 168), (a3 + 160));
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 192), (a3 + 184));
  MEMORY[0x20F32FFB0](a1 + 216);
  *(a1 + 224) = v5;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *a1 = &unk_2825BE510;
  AGCTileFunction::init(a1);
  return a1;
}

uint64_t AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
    return 0;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 224);
  v70 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v81);
    if (BYTE8(v81))
    {
      v20 = v81;
      *&v81 = 0;
      v78 = v20;
      llvm::toString(v83, &v78);
      v21 = std::string::insert(v83, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v83[23] & 0x80000000) != 0)
      {
        operator delete(*v83);
      }

      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v81;
      v84 = 260;
      *v83 = v81 + 216;
      MEMORY[0x20F330F20](&c, v83);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v83, &c), pluginSupportsOSVersion(*v83)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v83, &c);
        v28 = 1;
      }

      else
      {
        v68 = v15;
        v69 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v83[23];
        v36 = *v83;
        if (v83[23] >= 0)
        {
          v37 = v83;
        }

        else
        {
          v37 = *v83;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v69;
        v15 = v68;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v81))
    {
      v38 = v81;
      *&v81 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v70)(v70, v18, v70 + 216, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v67 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v76, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v70 + 264) == 1)
    {
      v45 = *(v70 + 248);
      v81 = *(v70 + 232);
      v82 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v79);
      v63 = *(v70 + 224);
      if (v63)
      {
        (*(*v63 + 32))(v63, &v79);
      }

      memset(v83, 0, sizeof(v83));
      CC_SHA256_Init(&c);
      (**(v70 + 8))(v70 + 8, &c);
      CC_SHA256_Final(v83, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v79);
      v64 = *(v70 + 264);
      v65 = *&c.hash[2];
      *(v70 + 232) = *c.count;
      *(v70 + 248) = v65;
      if ((v64 & 1) == 0)
      {
        *(v70 + 264) = 1;
      }

      v66 = *(v70 + 248);
      v81 = *(v70 + 232);
      v82 = v66;
      llvm::SHA256::~SHA256(&v79);
    }

    *c.count = v81;
    *&c.hash[2] = v82;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v83, 0, v76, __p, &c);
    v47 = *v83;
    if (v75 < 0)
    {
      operator delete(__p[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v79 = 0;
    v80[0] = &unk_2825BEAE0;
    v80[1] = v70;
    v80[3] = v80;
    *&v81 = 0;
    v49 = (*(*v41 + 24))(v41, &v81, &v79, &c, v80);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v80);
    if (v15)
    {
      v71 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v71;
    }

    if (v49)
    {
      *a3 = v81;
      *v67 = v79;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v83, "Error occurred composing compiler reply.");
      if ((v83[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v83, *&v83[8]);
      }

      else
      {
        v72 = *v83;
      }

      v56 = &v72;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v72.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v58 = v83[23];
      v59 = *v83;
      if (v83[23] >= 0)
      {
        v60 = v83;
      }

      else
      {
        v60 = *v83;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v73 = *(v41 + 1656);
    }

    v53 = &v73;
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v73.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
  return v49;
}

void AGCTileFunction::~AGCTileFunction(AGCTileFunction *this)
{
  *this = &unk_2825BE540;
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 216));
  *(this + 1) = &unk_2825BF998;
  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  *(this + 1) = &unk_2825BE570;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void AGX::Impl::TileProgramKey::~TileProgramKey(AGX::Impl::TileProgramKey *this)
{
  *this = &unk_2825BF998;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  *this = &unk_2825BE570;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t Air::FunctionScript::function_as_mesh(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 8) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

std::string *AGX::FragmentProgramVaryings::FragmentProgramVaryings(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  return this;
}

void AGX::FragmentProgramVaryings::~FragmentProgramVaryings(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

_BYTE *AGX::DeviceOptions::modifyContextState<_AGCMeshContextStateAGP>(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 12) & 0xFBFFFFFF | ((*result & 1) << 26);
  *(a2 + 12) = v3;
  v4 = v3 & 0xFFFFFEFF | ((result[1] & 1) << 8);
  *(a2 + 12) = v4;
  v5 = v4 & 0xEFFFFFFF | ((result[2] & 1) << 28);
  *(a2 + 12) = v5;
  v6 = v5 & 0xDFFFFFFF | ((result[6] & 1) << 29);
  *(a2 + 12) = v6;
  *(a2 + 12) = v6 & 0xBFFFFFFF | ((result[8] & 1) << 30);
  v7 = v2 & 0xFFFFFDFF | ((result[3] & 1) << 9);
  *(a2 + 16) = v7;
  v8 = v7 & 0xFFFFFBFF | ((result[4] & 1) << 10);
  *(a2 + 16) = v8;
  *(a2 + 16) = v8 & 0xFFFFF7FF | ((result[5] & 1) << 11);
  return result;
}

uint64_t AGCMeshFunction::AGCMeshFunction(uint64_t a1, uint64_t *a2, AGX::Impl::MeshProgramKey *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE5E0;
  AGX::Impl::MeshProgramKey::MeshProgramKey((a1 + 8), a3);
  MEMORY[0x20F32FFB0](a1 + 216);
  *(a1 + 224) = v4;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *a1 = &unk_2825BE5B0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  return a1;
}

uint64_t AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
    return 0;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 224);
  v70 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v81);
    if (BYTE8(v81))
    {
      v20 = v81;
      *&v81 = 0;
      v78 = v20;
      llvm::toString(v83, &v78);
      v21 = std::string::insert(v83, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v83[23] & 0x80000000) != 0)
      {
        operator delete(*v83);
      }

      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v81;
      v84 = 260;
      *v83 = v81 + 216;
      MEMORY[0x20F330F20](&c, v83);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v83, &c), pluginSupportsOSVersion(*v83)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v83, &c);
        v28 = 1;
      }

      else
      {
        v68 = v15;
        v69 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v83[23];
        v36 = *v83;
        if (v83[23] >= 0)
        {
          v37 = v83;
        }

        else
        {
          v37 = *v83;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v69;
        v15 = v68;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v81))
    {
      v38 = v81;
      *&v81 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v70)(v70, v18, v70 + 216, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v67 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v76, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v70 + 264) == 1)
    {
      v45 = *(v70 + 248);
      v81 = *(v70 + 232);
      v82 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v79);
      v63 = *(v70 + 224);
      if (v63)
      {
        (*(*v63 + 32))(v63, &v79);
      }

      memset(v83, 0, sizeof(v83));
      CC_SHA256_Init(&c);
      (**(v70 + 8))(v70 + 8, &c);
      CC_SHA256_Final(v83, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v79);
      v64 = *(v70 + 264);
      v65 = *&c.hash[2];
      *(v70 + 232) = *c.count;
      *(v70 + 248) = v65;
      if ((v64 & 1) == 0)
      {
        *(v70 + 264) = 1;
      }

      v66 = *(v70 + 248);
      v81 = *(v70 + 232);
      v82 = v66;
      llvm::SHA256::~SHA256(&v79);
    }

    *c.count = v81;
    *&c.hash[2] = v82;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v83, 0, v76, __p, &c);
    v47 = *v83;
    if (v75 < 0)
    {
      operator delete(__p[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v79 = 0;
    v80[0] = &unk_2825BE698;
    v80[1] = v70;
    v80[3] = v80;
    *&v81 = 0;
    v49 = (*(*v41 + 24))(v41, &v81, &v79, &c, v80);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v80);
    if (v15)
    {
      v71 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v71;
    }

    if (v49)
    {
      *a3 = v81;
      *v67 = v79;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v83, "Error occurred composing compiler reply.");
      if ((v83[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v83, *&v83[8]);
      }

      else
      {
        v72 = *v83;
      }

      v56 = &v72;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v72.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v58 = v83[23];
      v59 = *v83;
      if (v83[23] >= 0)
      {
        v60 = v83;
      }

      else
      {
        v60 = *v83;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v73 = *(v41 + 1656);
    }

    v53 = &v73;
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v73.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
  return v49;
}

void AGCMeshFunction::~AGCMeshFunction(void **this)
{
  *this = &unk_2825BE5B0;
  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  *this = &unk_2825BE5E0;
  v2 = this[28];
  this[28] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 27));
  AGX::Impl::MeshProgramKey::~MeshProgramKey(this + 1);
}

void AGX::Impl::MeshProgramKey::~MeshProgramKey(void **this)
{
  *this = &unk_2825BF8B8;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  *this = &unk_2825BE610;
  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }

  v3 = this[13];
  if (v3)
  {
    this[14] = v3;
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_2825BE658;
  v4 = this[2];
  if (v4)
  {
    this[3] = v4;
    operator delete(v4);
  }
}

uint64_t Air::FunctionScript::function_as_object(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 7) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

_BYTE *AGX::DeviceOptions::modifyContextState<_AGCObjectContextStateAGP>(_BYTE *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 12) & 0xFBFFFFFF | ((*result & 1) << 26);
  *(a2 + 12) = v3;
  v4 = v3 & 0xFFFFFEFF | ((result[1] & 1) << 8);
  *(a2 + 12) = v4;
  v5 = v4 & 0xEFFFFFFF | ((result[2] & 1) << 28);
  *(a2 + 12) = v5;
  v6 = v5 & 0xDFFFFFFF | ((result[6] & 1) << 29);
  *(a2 + 12) = v6;
  *(a2 + 12) = v6 & 0xBFFFFFFF | ((result[8] & 1) << 30);
  v7 = v2 & 0xFFFFFF7F | ((result[3] & 1) << 7);
  *(a2 + 16) = v7;
  v8 = v7 & 0xFFFFFEFF | ((result[4] & 1) << 8);
  *(a2 + 16) = v8;
  *(a2 + 16) = v8 & 0xFFFFFDFF | ((result[5] & 1) << 9);
  return result;
}

uint64_t AGCObjectFunction::AGCObjectFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE710;
  *(a1 + 8) = &unk_2825BE788;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BE740;
  v6 = *(a3 + 56);
  *(a1 + 48) = *(a3 + 40);
  *(a1 + 64) = v6;
  if (*(a3 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 72), *(a3 + 80));
  }

  else
  {
    v7 = *(a3 + 72);
    *(a1 + 96) = *(a3 + 88);
    *(a1 + 80) = v7;
  }

  *(a1 + 104) = *(a3 + 96);
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 112), (a3 + 104));
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 136), (a3 + 128));
  *(a1 + 8) = &unk_2825BF900;
  MEMORY[0x20F32FFB0](a1 + 160);
  *(a1 + 168) = v5;
  *(a1 + 176) = 0;
  *(a1 + 208) = 0;
  *a1 = &unk_2825BE6E0;
  return a1;
}

uint64_t AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void **a6, void *a7)
{
  v8 = a6;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = a7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = mach_absolute_time();
  v18 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v18)
  {
    v29 = "Failed to initialize AGX backend for target architecture.";
LABEL_56:
    AGCError::logError(a5, v29, v17);
    return 0;
  }

  *(v18 + 1953) = 0;
  v19 = *(a1 + 168);
  v70 = a1;
  if (v19)
  {
    (*(*v19 + 24))(&v81);
    if (BYTE8(v81))
    {
      v20 = v81;
      *&v81 = 0;
      v78 = v20;
      llvm::toString(v83, &v78);
      v21 = std::string::insert(v83, 0, "Error parsing bitcode file: ");
      v23 = v21->__r_.__value_.__r.__words[2];
      *c.count = *&v21->__r_.__value_.__l.__data_;
      *&c.hash[2] = v23;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v24 = SHIBYTE(c.hash[3]);
      v25 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v22);
      if (v24 < 0)
      {
        operator delete(v25);
      }

      if ((v83[23] & 0x80000000) != 0)
      {
        operator delete(*v83);
      }

      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = v81;
      v84 = 260;
      *v83 = v81 + 216;
      MEMORY[0x20F330F20](&c, v83);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v83, &c), pluginSupportsOSVersion(*v83)) && ((llvm::Triple::getEnvironmentName(&c), !v30) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v83, &c);
        v28 = 1;
      }

      else
      {
        v68 = v15;
        v69 = v16;
        v31 = v8;
        v32 = a3;
        v33 = a4;
        std::operator+<char>();
        v35 = v83[23];
        v36 = *v83;
        if (v83[23] >= 0)
        {
          v37 = v83;
        }

        else
        {
          v37 = *v83;
        }

        AGCError::logError(a5, v37, v34);
        if (v35 < 0)
        {
          operator delete(v36);
        }

        v28 = 0;
        a4 = v33;
        a3 = v32;
        v8 = v31;
        v16 = v69;
        v15 = v68;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v81))
    {
      v38 = v81;
      *&v81 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v39 = (**v70)(v70, v18, v70 + 160, v27);
  if (!v39)
  {
    v29 = "Cannot create AGC LLVM object.";
    goto LABEL_56;
  }

  v41 = v39;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v67 = a4;
  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v40)) != 0 && *Value != 48 && (v43 = atoi(Value), v43))
  {
    AGCPrinterFactory::Get(v43);
    v44 = (*(*v41 + 48))(v41);
    std::string::basic_string[abi:nn200100]<0>(v76, v44);
    (*(*v41 + 40))(__p, v41);
    if (*(v70 + 208) == 1)
    {
      v45 = *(v70 + 192);
      v81 = *(v70 + 176);
      v82 = v45;
    }

    else
    {
      llvm::SHA256::SHA256(&v79);
      v63 = *(v70 + 168);
      if (v63)
      {
        (*(*v63 + 32))(v63, &v79);
      }

      memset(v83, 0, sizeof(v83));
      CC_SHA256_Init(&c);
      (**(v70 + 8))(v70 + 8, &c);
      CC_SHA256_Final(v83, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v79);
      v64 = *(v70 + 208);
      v65 = *&c.hash[2];
      *(v70 + 176) = *c.count;
      *(v70 + 192) = v65;
      if ((v64 & 1) == 0)
      {
        *(v70 + 208) = 1;
      }

      v66 = *(v70 + 192);
      v81 = *(v70 + 176);
      v82 = v66;
      llvm::SHA256::~SHA256(&v79);
    }

    *c.count = v81;
    *&c.hash[2] = v82;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v83, 0, v76, __p, &c);
    v47 = *v83;
    if (v75 < 0)
    {
      operator delete(__p[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    v46 = v47;
  }

  else
  {
    v46 = 0;
    v47 = *(v18 + 2032);
  }

  (*(*v41 + 64))(v41, v47);
  if ((*(*v41 + 16))(v41))
  {
    v48 = v16;
    memset(&c, 0, 32);
    v79 = 0;
    v80[0] = &unk_2825BE7C8;
    v80[1] = v70;
    v80[3] = v80;
    *&v81 = 0;
    v49 = (*(*v41 + 24))(v41, &v81, &v79, &c, v80);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v80);
    if (v15)
    {
      v71 = a3;
      *v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *a7 = 32;
      v50 = mach_absolute_time() - v48;
      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
      }

      *c.hash = v50 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
      *&c.hash[2] = *c.hash - *&c.hash[4];
      v51 = *v8;
      v52 = *&c.hash[2];
      *v51 = *c.count;
      v51[1] = v52;
      a3 = v71;
    }

    if (v49)
    {
      *a3 = v81;
      *v67 = v79;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v83, "Error occurred composing compiler reply.");
      if ((v83[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v83, *&v83[8]);
      }

      else
      {
        v72 = *v83;
      }

      v56 = &v72;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v72.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v56);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v58 = v83[23];
      v59 = *v83;
      if (v83[23] >= 0)
      {
        v60 = v83;
      }

      else
      {
        v60 = *v83;
      }

      AGCError::logError(a5, v60, v57);
      if (v58 < 0)
      {
        operator delete(v59);
      }
    }
  }

  else
  {
    if (*(v41 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, *(v41 + 1656), *(v41 + 1664));
    }

    else
    {
      v73 = *(v41 + 1656);
    }

    v53 = &v73;
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v73.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v41 + 1696), "** Compilation failed with error: %s **", v53);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (*(v41 + 1679) >= 0)
    {
      v55 = (v41 + 1656);
    }

    else
    {
      v55 = *(v41 + 1656);
    }

    AGCError::logError(a5, v55, v54);
    v49 = 0;
  }

  if (v46)
  {
    v61 = *v46;
    if (*v46 && v61 != MEMORY[0x277D82670])
    {
      (*(*v61 + 8))(v61);
      *v46 = 0;
    }

    MEMORY[0x20F331DC0](v46, 0x1020C409DFBF432);
  }

  (*(*v41 + 8))(v41);
  return v49;
}

void AGCObjectFunction::~AGCObjectFunction(AGCObjectFunction *this)
{
  *this = &unk_2825BE710;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 160));
  *(this + 1) = &unk_2825BE740;
  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  *(this + 1) = &unk_2825BE788;
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void AGX::Impl::ObjectProgramKey::~ObjectProgramKey(AGX::Impl::ObjectProgramKey *this)
{
  *this = &unk_2825BE740;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_2825BE788;
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t AGX::Impl::DynamicLibraryKey::setDeviceOptions(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 44);
  v3 = *(result + 40) & 0xFBFFFFFF | ((*a2 & 1) << 26);
  *(result + 40) = v3;
  v4 = v3 & 0xFFFFFEFF | ((a2[1] & 1) << 8);
  *(result + 40) = v4;
  v5 = v4 & 0xEFFFFFFF | ((a2[2] & 1) << 28);
  *(result + 40) = v5;
  v6 = v5 & 0xDFFFFFFF | ((a2[6] & 1) << 29);
  *(result + 40) = v6;
  *(result + 40) = v6 & 0xBFFFFFFF | ((a2[8] & 1) << 30);
  v7 = v2 & 0xFFFFFFFD | (2 * (a2[4] & 1));
  *(result + 44) = v7;
  *(result + 44) = v7 & 0xFFFFFFFB | (4 * (a2[5] & 1));
  return result;
}

uint64_t AGCDylib::AGCDylib(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE060;
  *(a1 + 8) = &unk_2825BE090;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BF6F0;
  *(a1 + 48) = *(a3 + 40);
  MEMORY[0x20F32FFB0](a1 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *a1 = &unk_2825BE030;
  return a1;
}

void AGCDylib::~AGCDylib(AGCDylib *this)
{
  *this = &unk_2825BE060;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 56));
  *(this + 1) = &unk_2825BE090;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

uint64_t AGCIntersectionFunction::AGCIntersectionFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_2825BE100;
  *(a1 + 8) = &unk_2825BE130;
  *(a1 + 16) = *(a3 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a3 + 16));
  *(a1 + 8) = &unk_2825BF730;
  *(a1 + 48) = *(a3 + 40);
  std::vector<MTLUINT256_t>::vector[abi:nn200100]((a1 + 56), (a3 + 48));
  MEMORY[0x20F32FFB0](a1 + 80);
  *(a1 + 88) = v5;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *a1 = &unk_2825BE0D0;
  return a1;
}

void AGCIntersectionFunction::~AGCIntersectionFunction(AGCIntersectionFunction *this)
{
  *this = &unk_2825BE100;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::LLVMContext::~LLVMContext((this + 80));
  *(this + 1) = &unk_2825BF730;
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_2825BE130;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void AGX::Impl::UserIntersectionProgramKey::~UserIntersectionProgramKey(AGX::Impl::UserIntersectionProgramKey *this)
{
  *this = &unk_2825BF730;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_2825BE130;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void ProgramKey<(_AGCStreamToken)9,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCObjectContextStateAGP,(_AGCStreamToken)9>::serialize(uint64_t a1, std::vector<unsigned int>::pointer *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v11 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v11);
  v7 = *(a1 + 24) - v6->__begin_;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 10);
  v8 = v6->__begin_ + v7;
  *v8 = ((*(a1 + 24) - v6->__begin_) >> 2 << 8) | 0x3D;
  v9 = *(a1 + 40);
  *(v8 + 20) = *(a1 + 56);
  *(v8 + 4) = v9;
  (*(*a1 + 48))(a1);
  v12 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v12);
  begin = v6->__begin_;
  *a2 = v6->__begin_;
  *a3 = *(a1 + 24) - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::ObjectProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE7C8;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)10,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCMeshContextStateAGP,(_AGCStreamToken)10>::serialize(uint64_t a1, std::vector<unsigned int>::pointer *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v11 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v11);
  v7 = *(a1 + 24) - v6->__begin_;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 10);
  v8 = v6->__begin_ + v7;
  *v8 = ((*(a1 + 24) - v6->__begin_) >> 2 << 8) | 0x3E;
  v9 = *(a1 + 40);
  *(v8 + 20) = *(a1 + 56);
  *(v8 + 4) = v9;
  (*(*a1 + 48))(a1);
  v12 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v12);
  begin = v6->__begin_;
  *a2 = v6->__begin_;
  *a3 = *(a1 + 24) - begin;
}

std::string *AGCMeshFunction::cacheMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a2 + 72), (a1 + 272));
  result = std::string::operator=((a2 + 96), (a1 + 296));
  *(a2 + 120) = *(a1 + 320);
  return result;
}

std::string *AGCMeshFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 272), (a2 + 72));
  result = std::string::operator=((a1 + 296), (a2 + 96));
  *(a1 + 320) = *(a2 + 120);
  return result;
}

void AGCMeshFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 64) & 0x80) == 0)
  {
    goto LABEL_33;
  }

  v4 = 0;
  v43[0] = 0;
  *(v43 + 7) = 0;
  v42[0] = 0;
  *(v42 + 7) = 0;
  if (*(a2 + 464))
  {
    v5 = *(a2 + 472) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = 464;
  if (v5)
  {
    v6 = 1024;
  }

  v7 = a2 + 1024;
  if (!v5)
  {
    v7 = a2 + 464;
  }

  v8 = *(a2 + v6);
  if (v8)
  {
    v9 = *(v7 + 8) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v4 = (v8 + *v8);
  }

  v10 = (v4 - *v4);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = (v4 + v11 + *(v4 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 - *v12);
  v14 = *v13;
  if (v14 < 0xB)
  {
    goto LABEL_25;
  }

  if (v13[5])
  {
    v15 = (v12 + v13[5] + *(v12 + v13[5]));
  }

  else
  {
    v15 = 0;
  }

  if (v14 < 0xD || (v16 = v13[6]) == 0)
  {
    v17 = 0;
    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_27:
    std::string::basic_string[abi:nn200100](&v39, v15 + 1, *v15);
    v19 = v41;
    v18 = v39;
    v43[0] = *v40;
    *(v43 + 7) = *&v40[7];
    std::string::basic_string[abi:nn200100](&v39, v17 + 1, *v17);
    v21 = v41;
    v20 = v39;
    v42[0] = *v40;
    *(v42 + 7) = *&v40[7];
    goto LABEL_28;
  }

  v17 = (v12 + v16 + *(v12 + v16));
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_25:
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_28:
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v22 = v43[0];
  *(a1 + 272) = v18;
  *(a1 + 280) = v22;
  *(a1 + 287) = *(v43 + 7);
  *(a1 + 295) = v19;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v23 = v42[0];
  *(a1 + 296) = v20;
  *(a1 + 304) = v23;
  *(a1 + 311) = *(v42 + 7);
  *(a1 + 319) = v21;
LABEL_33:
  v24 = a2 + 1024;
  if (*(a2 + 464))
  {
    v25 = *(a2 + 472) == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = 464;
  if (v25)
  {
    v26 = 1024;
  }

  else
  {
    v24 = a2 + 464;
  }

  v27 = *(a2 + v26);
  v28 = *(v24 + 8);
  if (v27)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = (v27 + *v27);
  }

  v31 = (v30 - *v30);
  if (*v31 >= 0x17u && (v32 = v31[11]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  v34 = (v33 - *v33);
  v35 = *v34;
  if (v35 <= 0x32)
  {
    v38 = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    v36 = v34[25];
    if (v34[25])
    {
      LOBYTE(v36) = *(v33 + v36) != 0;
    }

    *(a1 + 320) = v36;
    v38 = v35 >= 0x3B && (v37 = v34[29]) != 0 && *(v33 + v37) != 0;
  }

  *(a1 + 321) = v38;
}