uint64_t AGCLLVMAirBuiltinsGen3::buildUnpackSRGB(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 5)
  {
    v6 = bswap64(*(a3 + a4 - 5) | (*(a3 + a4 - 1) << 32));
    v7 = v6 >= 0x7634663136000000;
    v8 = v6 > 0x7634663136000000;
    v9 = !v7;
    v10 = v8 == v9;
    v5 = 312;
    if (v10)
    {
      v5 = 296;
    }
  }

  else
  {
    v5 = 312;
  }

  v11 = *(a1 + v5);
  v12 = *(a1 + 320);
  v21 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v12, v20);
  v14 = *(a1 + 464);
  v17 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
  v19 = *(a1 + 104);
  v15 = (*(*v14 + 152))(v14, &v17, Cast, 0, v11);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildPackSRGB(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v5 = (*(*v4 + 144))(v4, &v10, a2, 0, *(this + 40));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(this + 25);
  v9 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 49, v5, v6, v8);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildUnpackNorm(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 464);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  v7 = (*(*v6 + 96))(v6, &v9, a2, a3[1], a3[3], *a3);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildPackNorm(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 464);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  v7 = (*(*v6 + 88))(v6, &v9, a2, a3[1], a3[3], a3[2]);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

void AGCLLVMAirBuiltinsGen3::~AGCLLVMAirBuiltinsGen3(AGCLLVMAirBuiltinsGen3 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdMatrixThreadElementsInit(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 12) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 9))
  {
    v5 = 0;
  }

  Name = llvm::Value::getName(v5);
  v17 = v6;
  v7 = llvm::StringRef::find() != -1;
  v8 = *a2;
  v9 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v10 = (*(*a1 + 528))(a1, 0, "i32", 3);
  v11 = (*(**(a1 + 464) + 696))();
  v13 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (a1 + 8));
  v15 = *(a1 + 104);
  (*(*v11 + 1888))(v11, &v13, v8, v9, v10, v7);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdMatrixMultiplyAccumulate(uint64_t a1, llvm::Instruction *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 12) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *a2;
  v6 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  ShuffleVector = *v6;
  v8 = *(v6 + 4);
  v9 = *(v6 + 8);
  v10 = *(a1 + 464);
  if (v10[1947] == 1)
  {
    (*(*v10 + 760))(&v62);
    v59 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v60, (a1 + 8));
    v61 = *(a1 + 104);
    if (v62 != v63)
    {
      v64 = llvm::ConstantInt::get();
      v65 = llvm::ConstantInt::get();
      v11 = llvm::ConstantVector::get();
      v58 = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), ShuffleVector, ShuffleVector, v11, v57);
      v64 = llvm::ConstantInt::get();
      v65 = llvm::ConstantInt::get();
      v12 = llvm::ConstantVector::get();
      v58 = 257;
      v8 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v8, v8, v12, v57);
      v64 = llvm::ConstantInt::get();
      v65 = llvm::ConstantInt::get();
      v13 = llvm::ConstantVector::get();
      v58 = 257;
      v14 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v9, v9, v13, v57);
      if ((v63 - v62) <= 0x10)
      {
        goto LABEL_61;
      }

      v9 = v14;
      if (llvm::StringRef::find() != -1)
      {
        v15 = *(a1 + 464);
        v54 = v59;
        v55 = v60;
        if (v60)
        {
          llvm::MetadataTracking::track();
        }

        v56 = v61;
        if ((v63 - v62) <= 0x10)
        {
          goto LABEL_61;
        }

        llvm::StringRef::str(v52, (v62 + 16));
        std::string::basic_string[abi:nn200100]<0>(__p, "bf16");
        ShuffleVector = (*(*v15 + 776))(v15, &v54, ShuffleVector, v52, __p, 0);
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        if (v53 < 0)
        {
          operator delete(v52[0]);
        }

        if (v55)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if ((v63 - v62) <= 0x20)
      {
        goto LABEL_61;
      }

      if (llvm::StringRef::find() != -1)
      {
        v16 = *(a1 + 464);
        v47 = v59;
        v48 = v60;
        if (v60)
        {
          llvm::MetadataTracking::track();
        }

        v49 = v61;
        if ((v63 - v62) <= 0x20)
        {
          goto LABEL_61;
        }

        llvm::StringRef::str(v45, (v62 + 32));
        std::string::basic_string[abi:nn200100]<0>(v43, "bf16");
        v8 = (*(*v16 + 776))(v16, &v47, v8, v45, v43, 0);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (v48)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if ((v63 - v62) <= 0x30)
      {
        goto LABEL_61;
      }

      if (llvm::StringRef::find() != -1)
      {
        v17 = *(a1 + 464);
        v40 = v59;
        v41 = v60;
        if (v60)
        {
          llvm::MetadataTracking::track();
        }

        v42 = v61;
        if ((v63 - v62) <= 0x30)
        {
          goto LABEL_61;
        }

        llvm::StringRef::str(v38, (v62 + 48));
        std::string::basic_string[abi:nn200100]<0>(v36, "f32");
        v9 = (*(*v17 + 776))(v17, &v40, v9, v38, v36, 0);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }

        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        if (v41)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if (v63 == v62)
      {
        goto LABEL_61;
      }

      if (llvm::StringRef::find() != -1)
      {
        v5 = llvm::FixedVectorType::get();
      }
    }

    v18 = (*(**(a1 + 464) + 696))(*(a1 + 464));
    v33 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
    v35 = *(a1 + 104);
    v19 = (*(*v18 + 1880))(v18, &v33, v5, ShuffleVector, v8, v9);
    if (v34)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v62 == v63 || llvm::StringRef::find() == -1)
    {
      goto LABEL_54;
    }

    v20 = *(a1 + 464);
    v30 = v59;
    v31 = v60;
    if (v60)
    {
      llvm::MetadataTracking::track();
    }

    v32 = v61;
    std::string::basic_string[abi:nn200100]<0>(v28, "f32");
    if (v63 != v62)
    {
      llvm::StringRef::str(v26, v62);
      (*(*v20 + 776))(v20, &v30, v19, v28, v26, 1);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (v31)
      {
        llvm::MetadataTracking::untrack();
      }

LABEL_54:
      if (v60)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      goto LABEL_60;
    }

LABEL_61:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v21 = (*(*v10 + 696))(v10);
  v23 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v24, (a1 + 8));
  v25 = *(a1 + 104);
  (*(*v21 + 1880))(v21, &v23, v5, ShuffleVector, v8, v9);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

LABEL_60:
  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildCoordinateDewarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  v9 = (*(*v8 + 1752))(v8, &v11, a2, a3, a4);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildCoordinateWarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  v9 = (*(*v8 + 1744))(v8, &v11, a2, a3, a4);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltins::declareDebugTraceBufferTLSGlobal(AGCLLVMAirBuiltins *this, const char *__s)
{
  if (__s)
  {
    strlen(__s);
  }

  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v5 = 1;
    GlobalVariable = llvm::User::operator new(0x58);
    HIBYTE(v8) = 1;
    if (*__s)
    {
      v7 = __s;
      v5 = 3;
    }

    LOBYTE(v8) = v5;
    llvm::GlobalVariable::GlobalVariable();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFE3FF | 0x400;
  }

  v8 = 257;
  return AGCLLVMBuilder::CreateLoad(this, GlobalVariable, &v7);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildGetThreadPositionInGrid(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v3 = (*(**(this + 58) + 696))(*(this + 58), a2);
  v24 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (this + 8));
  v26 = *(this + 26);
  v4 = AGCLLVMGen3TargetLowerer::buildGlobalID(v3, &v24, *(this + 25), 0);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v21 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (this + 8));
  v23 = *(this + 26);
  v6 = AGCLLVMGen3TargetLowerer::buildGlobalID(v5, &v21, *(this + 25), 1);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v18 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (this + 8));
  v20 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildGlobalID(v7, &v18, *(this + 25), 2);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::FixedVectorType::get();
  v9 = llvm::UndefValue::get();
  v17 = 257;
  v10 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v9, v4, v10, v16);
  v17 = 257;
  v12 = llvm::ConstantInt::get();
  v13 = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v6, v12, v16);
  v17 = 257;
  v14 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((this + 8), v13, v8, v14, v16);
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadVoteAny(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = (*(**(this + 58) + 696))(*(this + 58));
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = (*(*v4 + 1872))(v4, &v7, a2, 1);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadVoteAll(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = (*(**(this + 58) + 696))(*(this + 58));
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = (*(*v4 + 1864))(v4, &v7, a2, 1);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdVoteAny(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 2 && (*(a3 + a4 - 3) == 13929 ? (v5 = *(a3 + a4 - 1) == 52) : (v5 = 0), v5))
  {
    v10 = *a2;
    v11 = *(a1 + 200);
    v16 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, v11, v15);
  }

  else
  {
    Cast = *a2;
  }

  v7 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v8 = (*(*v7 + 1872))(v7, &v12, Cast, 0);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdVoteAll(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 2 && (*(a3 + a4 - 3) == 13929 ? (v5 = *(a3 + a4 - 1) == 52) : (v5 = 0), v5))
  {
    v10 = *a2;
    v11 = *(a1 + 200);
    v16 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, v11, v15);
  }

  else
  {
    Cast = *a2;
  }

  v7 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v8 = (*(*v7 + 1864))(v7, &v12, Cast, 0);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadAny(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1856))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadAll(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1848))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdAny(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1840))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdAll(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1832))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadActiveThreadsMask(AGCLLVMAirBuiltinsGen4 *this)
{
  v2 = *(this + 118);
  if (v2)
  {
    *(v2 + 16) = 1;
  }

  v3 = (*(**(this + 58) + 696))(*(this + 58));
  v6 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v7, (this + 8));
  v8 = *(this + 26);
  v4 = (*(*v3 + 1824))(v3, &v6);
  if (v7)
  {
    llvm::MetadataTracking::untrack();
  }

  return v4;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdActiveThreadsMask(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 944);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  v8 = (*(**(a1 + 464) + 696))(*(a1 + 464), a2);
  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  v9 = (*(*v8 + 1816))(v8, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v11 = *(a1 + 208);
    v14 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v11, v13);
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdBallot(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 944);
  if (v8)
  {
    *(v8 + 17) = 1;
  }

  v9 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v10 = (*(*v9 + 1808))(v9, &v16, *a2);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v12 = *(a1 + 208);
    v15 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v10, v12, v14);
  }

  return v10;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateDown(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::ConstantInt **a3, BOOL a4)
{
  v7 = *(this + 118);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  v8 = llvm::ConstantInt::get();
  v17 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((this + 8), v8, a3, v16);
  v10 = (*(**(this + 58) + 696))();
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 1800))(v10, &v13, a2, Sub);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateUp(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1800))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleXor(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1792))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleDown(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1664))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffleUp(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1656))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdShuffle(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1784))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildSimdBroadcast(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1776))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadBallot(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 696))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 1768))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateDown(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::ConstantInt **a3, BOOL a4)
{
  v7 = *(this + 118);
  if (v7)
  {
    *(v7 + 16) = 1;
  }

  v8 = llvm::ConstantInt::get();
  v17 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((this + 8), v8, a3, v16);
  v10 = (*(**(this + 58) + 696))();
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 1760))(v10, &v13, a2, Sub);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateUp(AGCLLVMAirBuiltinsGen4 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 696))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1760))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen5::buildShuffleAndFill(uint64_t a1, uint64_t a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v7 = v6;
  v19 = Name;
  v20 = v6;
  v8 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v9 = v8[4];
  v21[0] = *v8;
  v21[1] = v9;
  v10 = v8[8];
  v11 = v8[12];
  v21[2] = v10;
  v21[3] = v11;
  llvm::UndefValue::get();
  if (AGCLLVMAirBuiltins::validateScalarOrVectorArgument(a1, *v21[0], Name, v7))
  {
    if (AGCLLVMAirBuiltins::validateScalarOrVectorArgument(a1, *v9, Name, v7))
    {
      v12 = (*(**(a1 + 464) + 696))(*(a1 + 464));
      v16 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
      v18 = *(a1 + 104);
      v13 = llvm::StringRef::find() != -1;
      v14 = llvm::StringRef::find() != -1;
      (*(*v12 + 1952))(v12, &v16, v21, 4, v13, v14);
      if (v17)
      {
        llvm::MetadataTracking::untrack();
      }
    }
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltins::validateScalarOrVectorArgument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v22[1] = a4;
  if ((*(a2 + 8) & 0xFE) != 0x12)
  {
    return 1;
  }

  v4 = *(a2 + 32);
  if (v4 < 5)
  {
    return 1;
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v17, "n = ", 4);
  v7 = MEMORY[0x20F331C20](&v17, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " in vec<T,n> is an invalid argument to ", 39);
  llvm::StringRef::str(__p, v22);
  if ((v16 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ". ", 2);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v17, "n must be less or equal to 4.", 29);
  std::stringbuf::str();
  if ((v14 & 0x80u) == 0)
  {
    v11 = v13;
  }

  else
  {
    v11 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v12 = v14;
  }

  else
  {
    v12 = v13[1];
  }

  std::string::append((*(a1 + 944) + *(**(a1 + 944) - 24) + 1656), v11, v12);
  *(a1 + 960) = 0;
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v21);
  return 0;
}

uint64_t AGCLLVMAirBuiltinsGen5::buildBroadcastFirstActiveThread(uint64_t a1, uint64_t a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  v32[0] = llvm::Value::getName(v4);
  v32[1] = v5;
  v6 = llvm::StringRef::find();
  v7 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v8 = (*(**(a1 + 464) + 696))();
  v21 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (a1 + 8));
  v9 = *(a1 + 104);
  v23 = v9;
  v27 = v21;
  v28 = v22;
  if (v22)
  {
    llvm::MetadataTracking::track();
    v9 = v23;
  }

  v29 = v9;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v27, v8 + 8);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = *(v8 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (v8 + 8));
  v10 = *(v8 + 104);
  v26 = v10;
  v41 = v24;
  v42 = v25;
  if (v25)
  {
    llvm::MetadataTracking::track();
    v10 = v26;
  }

  v43 = v10;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v41, v8 + 8);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v38 = *(v8 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (v8 + 8));
  v40 = *(v8 + 104);
  IsFirstActiveThread = AGCLLVMGen5TargetLowerer::buildIsFirstActiveThread(v8, &v38, v6 != -1);
  if (v39)
  {
    llvm::MetadataTracking::untrack();
  }

  v35 = *(v8 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v8 + 8));
  v37 = *(v8 + 104);
  if (v6 == -1)
  {
    v12 = (*(*v8 + 1808))(v8, &v35, IsFirstActiveThread);
  }

  else
  {
    v12 = (*(*v8 + 1768))(v8, &v35, IsFirstActiveThread);
  }

  v13 = v12;
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(v8, "llvm.agx2.ft1", 13, *(v8 + 200), *(v8 + 200));
  v15 = *(v8 + 200);
  v33 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v8 + 8, 39, v13, v15, v32);
  v31 = 257;
  v16 = llvm::IRBuilderBase::CreateCall((v8 + 8), *(v14 + 24), v14, &Cast, 1, v30);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v41 = *(v8 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v42, (v8 + 8));
  v43 = *(v8 + 104);
  v17 = *(v8 + 192);
  if (v6 == -1)
  {
    v31 = 257;
    v19 = llvm::IRBuilderBase::CreateCast(v8 + 8, 38, v16, v17, v30);
    (*(*v8 + 1776))(v8, &v41, v7, v19);
  }

  else
  {
    v33 = 257;
    v18 = llvm::IRBuilderBase::CreateCast(v8 + 8, 38, v16, v17, v32);
    AGCLLVMGen3TargetLowerer::buildQuadBroadcast(v8, &v41, v7, v18);
  }

  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen5::buildIsFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 4);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 9))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v13 = v5;
  v6 = llvm::StringRef::find() != -1;
  v7 = (*(**(a1 + 464) + 696))();
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  AGCLLVMGen5TargetLowerer::buildIsFirstActiveThread(v7, &v9, v6);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen5::buildIsHelperThread(uint64_t a1, llvm::Instruction *a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = (*(**(a1 + 464) + 696))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v5 = *(a1 + 104);
  v14 = v5;
  v19 = v12;
  v20 = v13;
  if (v13)
  {
    llvm::MetadataTracking::track();
    v5 = v14;
  }

  v21 = v5;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v19, v4 + 8);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(v4 + 2832);
  if (v6)
  {
    v7 = strlen(*(v4 + 2832));
  }

  else
  {
    v7 = 0;
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(v4, v6, v7, *(v4 + 200));
  v18 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((v4 + 8), *(inserted + 24), inserted, 0, 0, v17);
  v10 = llvm::ConstantInt::get();
  v16 = 257;
  llvm::IRBuilderBase::CreateICmp((v4 + 8), 32, v9, v10, v15);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen5::buildReduce(uint64_t a1, uint64_t a2)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v7 = v6;
  v8 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  llvm::UndefValue::get();
  if (AGCLLVMAirBuiltins::validateScalarOrVectorArgument(a1, *v8, Name, v7))
  {
    v9 = (*(**(a1 + 464) + 696))(*(a1 + 464));
    v11 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
    v13 = *(a1 + 104);
    AGCLLVMGen5TargetLowerer::buildReduce(v9, &v11, Name, v7, v8);
    if (v12)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

llvm::Instruction *AGCLLVMAirBuiltinsGen5::buildGetDispatchPrivateBuffer(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  v19 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (this + 8));
  v5 = *(this + 26);
  v21 = v5;
  if (*(a2 + 16) == 16)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = (v6 + 24);
  if (*(v6 + 8) >= 0x41u)
  {
    v7 = *v7;
  }

  v8 = *v7;
  v9 = v4 + *(*v4 - 24);
  v22 = v19;
  v23 = v20;
  if (v20)
  {
    llvm::MetadataTracking::track();
    v5 = v21;
  }

  v24 = v5;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v22, (v9 + 1712));
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = (v4 + *(*v4 - 24));
  v11 = v4[3 * v8 + 373];
  if (!v11)
  {
    llvm::FunctionType::get();
    std::to_string(&v25, v8);
    v12 = std::string::insert(&v25, 0, "agc.get_private_dispatch_buffer.");
    v13 = v12->__r_.__value_.__r.__words[2];
    v30 = *&v12->__r_.__value_.__l.__data_;
    v31 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    llvm::Module::getOrInsertFunction();
    v15 = v14;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    *(v15 + 32) = *(v15 + 32) & 0xFFFFBFC0 | 0x4007;
    v16 = v4 + *(*v4 - 24);
    v27 = *(v16 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (v16 + 1712));
    v29 = *(v16 + 452);
    v25.__r_.__value_.__r.__words[0] = "entry";
    v26 = 259;
    operator new();
  }

  v26 = 257;
  v17 = llvm::IRBuilderBase::CreateCall(v10 + 214, *(v11 + 24), v11, 0, 0, &v25);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  return v17;
}

llvm::Instruction *AGCLLVMAirBuiltinsGen5::buildTrunc(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v7, a2, "llvm.trunc");
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Instruction *AGCLLVMAirBuiltinsGen5::buildRNE(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v7, a2, "llvm.rint");
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Instruction *AGCLLVMAirBuiltinsGen5::buildPow(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2, llvm::Value *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 19);
  if (*a2 == v6)
  {
    v8 = "llvm.agx2.pow.f16";
LABEL_6:
    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v8, 17, v6, v6, v6);
    goto LABEL_7;
  }

  v6 = *(this + 21);
  if (*a2 == v6)
  {
    v8 = "llvm.agx2.pow.f32";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v11[0] = a2;
  v11[1] = a3;
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateCall(this + 1, *(v7 + 24), v7, v11, 2, v10);
}

llvm::Instruction *AGCLLVMAirBuiltinsGen5::buildCeil(AGCLLVMAirBuiltinsGen5 *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v7, a2, "llvm.ceil");
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

void AGCLLVMAirBuiltinsGen5::~AGCLLVMAirBuiltinsGen5(AGCLLVMAirBuiltinsGen5 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen6::buildSimdShuffleRotateDown(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::ConstantInt **a3, BOOL a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *(this + 118);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  if (*(*(this + 58) + 1916))
  {
    goto LABEL_4;
  }

  v11 = 0x27C8D7000uLL;
  {
    v11 = 0x27C8D7000;
    if (v13)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v11 = 0x27C8D7000;
    }
  }

  if (*(v11 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2)) != 0 && *Value != 48 && atoi(Value))
  {
LABEL_4:
    v17[0] = a2;
    v17[1] = a2;
    v17[2] = a3;
    v17[3] = llvm::ConstantInt::get();
    v8 = (*(**(this + 58) + 696))();
    v14 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
    v16 = *(this + 26);
    v9 = (*(*v8 + 1952))(v8, &v14, v17, 4, 1, 0);
    if (v15)
    {
      llvm::MetadataTracking::untrack();
    }

    return v9;
  }

  else
  {

    return AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateDown(this, a2, a3, a4);
  }
}

uint64_t AGCLLVMAirBuiltinsGen6::buildSimdShuffleRotateUp(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::Value *a3, BOOL a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *(this + 118);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  if (*(*(this + 58) + 1916))
  {
    goto LABEL_4;
  }

  v11 = 0x27C8D7000uLL;
  {
    v11 = 0x27C8D7000;
    if (v13)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v11 = 0x27C8D7000;
    }
  }

  if (*(v11 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2)) != 0 && *Value != 48 && atoi(Value))
  {
LABEL_4:
    v17[0] = a2;
    v17[1] = a2;
    v17[2] = a3;
    v17[3] = llvm::ConstantInt::get();
    v8 = (*(**(this + 58) + 696))();
    v14 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
    v16 = *(this + 26);
    v9 = (*(*v8 + 1952))(v8, &v14, v17, 4, 0, 0);
    if (v15)
    {
      llvm::MetadataTracking::untrack();
    }

    return v9;
  }

  else
  {

    return AGCLLVMAirBuiltinsGen4::buildSimdShuffleRotateUp(this, a2, a3);
  }
}

uint64_t AGCLLVMAirBuiltinsGen6::buildQuadShuffleRotateDown(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::ConstantInt **a3, BOOL a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *(this + 118);
  if (v7)
  {
    *(v7 + 16) = 1;
  }

  if (*(*(this + 58) + 1916))
  {
    goto LABEL_4;
  }

  v11 = 0x27C8D7000uLL;
  {
    v11 = 0x27C8D7000;
    if (v13)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v11 = 0x27C8D7000;
    }
  }

  if (*(v11 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2)) != 0 && *Value != 48 && atoi(Value))
  {
LABEL_4:
    v17[0] = a2;
    v17[1] = a2;
    v17[2] = a3;
    v17[3] = llvm::ConstantInt::get();
    v8 = (*(**(this + 58) + 696))();
    v14 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
    v16 = *(this + 26);
    v9 = (*(*v8 + 1952))(v8, &v14, v17, 4, 1, 1);
    if (v15)
    {
      llvm::MetadataTracking::untrack();
    }

    return v9;
  }

  else
  {

    return AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateDown(this, a2, a3, a4);
  }
}

uint64_t AGCLLVMAirBuiltinsGen6::buildQuadShuffleRotateUp(AGCLLVMAirBuiltinsGen6 *this, llvm::Value *a2, llvm::Value *a3, BOOL a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *(this + 118);
  if (v7)
  {
    *(v7 + 16) = 1;
  }

  if (*(*(this + 58) + 1916))
  {
    goto LABEL_4;
  }

  v11 = 0x27C8D7000uLL;
  {
    v11 = 0x27C8D7000;
    if (v13)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v11 = 0x27C8D7000;
    }
  }

  if (*(v11 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_SIMD_ROTATE_AS_SHUFFLE_AND_FILL", a2)) != 0 && *Value != 48 && atoi(Value))
  {
LABEL_4:
    v17[0] = a2;
    v17[1] = a2;
    v17[2] = a3;
    v17[3] = llvm::ConstantInt::get();
    v8 = (*(**(this + 58) + 696))();
    v14 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
    v16 = *(this + 26);
    v9 = (*(*v8 + 1952))(v8, &v14, v17, 4, 0, 1);
    if (v15)
    {
      llvm::MetadataTracking::untrack();
    }

    return v9;
  }

  else
  {

    return AGCLLVMAirBuiltinsGen4::buildQuadShuffleRotateUp(this, a2, a3);
  }
}

void AGCLLVMAirBuiltinsGen6::~AGCLLVMAirBuiltinsGen6(AGCLLVMAirBuiltinsGen6 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen7::buildSimdYield(AGCLLVMAirBuiltinsGen7 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  v5 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = (*(*v5 + 752))(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen7::buildTan(llvm::ConstantFP **this, llvm::ConstantFP **a2)
{
  FPExt = a2;
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v6 = llvm::ConstantFP::get();
  v7 = llvm::ConstantFP::get();
  v8 = llvm::ConstantFP::get();
  if (v4 == this[19])
  {
    v9 = this[21];
    v54 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), FPExt, v9, v53);
  }

  v10 = AGCLLVMBuilder::buildFma(this, FPExt, v6, v5);
  v54 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), v5, v10, v53);
  v12 = AGCLLVMBuilder::buildFma(this, FPExt, v6, FSub);
  v13 = AGCLLVMBuilder::buildFma(this, FPExt, v7, v12);
  if (v4 == this[19])
  {
    v54 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul((this + 1), v13, v13, v53);
    v32 = llvm::ConstantFP::get();
    v33 = llvm::ConstantFP::get();
    v34 = AGCLLVMBuilder::buildFma(this, FMul, v32, v33);
    v35 = llvm::ConstantFP::get();
    v36 = AGCLLVMBuilder::buildFma(this, v34, FMul, v35);
    v37 = llvm::ConstantFP::get();
    v38 = AGCLLVMBuilder::buildFma(this, v36, FMul, v37);
    v54 = 257;
    v39 = llvm::IRBuilderBase::CreateFMul((this + 1), v13, v38, v53);
    v40 = llvm::ConstantFP::get();
    v54 = 257;
    FNeg = llvm::IRBuilderBase::CreateFNeg((this + 1), v39, v53);
    v50 = 257;
    llvm::IRBuilderBase::CreateFDiv((this + 1), v40, FNeg, v49);
    v42 = this[25];
    v54 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((this + 1), 49, v10, v42, v53);
    v44 = llvm::ConstantInt::get();
    v54 = 257;
    v45 = llvm::IRBuilderBase::CreateAnd((this + 1), Cast, v44, v53);
    v46 = llvm::ConstantInt::get();
    v54 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 32, v45, v46, v53);
    v54 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v48 = this[19];
    v50 = 257;
    return llvm::IRBuilderBase::CreateFPTrunc((this + 1), Select, v48, v49);
  }

  else
  {
    v14 = AGCLLVMBuilder::buildFma(this, FPExt, v8, v13);
    v51 = v14;
    v15 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sinc.f32", 18, v4, v4);
    v54 = 257;
    v16 = llvm::IRBuilderBase::CreateCall(this + 1, *(v15 + 24), v15, &v51, 1, v53);
    v50 = 257;
    llvm::IRBuilderBase::CreateFMul((this + 1), v14, v16, v49);
    v17 = llvm::ConstantFP::get();
    Fabs = AGCLLVMTargetBuilder::CreateFabs(this, v51);
    v54 = 257;
    v52 = llvm::IRBuilderBase::CreateFSub((this + 1), v17, Fabs, v53);
    v54 = 257;
    v19 = llvm::IRBuilderBase::CreateCall(this + 1, *(v15 + 24), v15, &v52, 1, v53);
    v20 = AGCLLVMTargetBuilder::CreateFabs(this, v51);
    v54 = 257;
    v21 = llvm::IRBuilderBase::CreateFNeg((this + 1), v20, v53);
    v22 = AGCLLVMBuilder::buildFma(this, v19, v21, v19);
    v23 = this[25];
    v54 = 257;
    v24 = llvm::IRBuilderBase::CreateCast((this + 1), 49, v10, v23, v53);
    v25 = llvm::ConstantInt::get();
    v54 = 257;
    v26 = llvm::IRBuilderBase::CreateAnd((this + 1), v24, v25, v53);
    v27 = llvm::ConstantInt::get();
    v54 = 257;
    llvm::IRBuilderBase::CreateICmp(this + 1, 32, v26, v27, v53);
    v54 = 257;
    v28 = llvm::IRBuilderBase::CreateSelect();
    v54 = 257;
    llvm::IRBuilderBase::CreateFNeg((this + 1), v22, v53);
    v50 = 257;
    v29 = llvm::IRBuilderBase::CreateSelect();
    v54 = 257;
    llvm::IRBuilderBase::CreateFDiv((this + 1), v29, v28, v53);
    AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
    llvm::ConstantFP::get();
    v54 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v50 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCLLVMAirBuiltinsGen7::buildArcsin(llvm::Type **this, llvm::Value *a2)
{
  if (*a2 != this[19])
  {

    AGCLLVMAirBuiltinsGen2::buildArcsin(this, a2);
  }

  v3 = this[21];
  v24 = 257;
  FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), a2, v3, v23);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
  llvm::ConstantFP::get();
  v24 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v6 = llvm::ConstantFP::get();
  v7 = llvm::ConstantFP::get();
  v8 = AGCLLVMBuilder::buildFma(this, v6, Fabs, v7);
  v22 = v8;
  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sqrt.step.f32", 23, this[21], this[21]);
  v24 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(this + 1, *(v9 + 24), v9, &v22, 1, v23);
  v21 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), v8, v10, v20);
  v24 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v24 = 257;
  v13 = llvm::IRBuilderBase::CreateFMul((this + 1), Select, Select, v23);
  v14 = AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(this, v13);
  v24 = 257;
  llvm::IRBuilderBase::CreateFMul((this + 1), v14, Fabs, v23);
  v15 = llvm::ConstantFP::get();
  v24 = 257;
  v16 = llvm::IRBuilderBase::CreateFMul((this + 1), v15, FMul, v23);
  v17 = llvm::ConstantFP::get();
  v22 = AGCLLVMBuilder::buildFma(this, v16, v14, v17);
  v24 = 257;
  v22 = llvm::IRBuilderBase::CreateSelect();
  llvm::ConstantFP::get();
  v24 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v24 = 257;
  llvm::IRBuilderBase::CreateFNeg((this + 1), v22, v23);
  v21 = 257;
  v22 = llvm::IRBuilderBase::CreateSelect();
  v18 = this[19];
  v24 = 257;
  return llvm::IRBuilderBase::CreateFPTrunc((this + 1), v22, v18, v23);
}

unsigned int *AGCLLVMAirBuiltinsGen7::buildArccos(llvm::Type **this, llvm::Value *a2)
{
  if (*a2 != this[19])
  {

    AGCLLVMAirBuiltinsGen2::buildArccos(this, a2);
  }

  v3 = this[21];
  v24 = 257;
  FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), a2, v3, v23);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
  v6 = llvm::ConstantFP::get();
  v7 = llvm::ConstantFP::get();
  v8 = AGCLLVMBuilder::buildFma(this, v6, Fabs, v7);
  Select = v8;
  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sqrt.step.f32", 23, this[21], this[21]);
  v24 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(this + 1, *(v9 + 24), v9, &Select, 1, v23);
  v21 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), v8, v10, v20);
  v12 = llvm::ConstantFP::get();
  v24 = 257;
  v13 = llvm::IRBuilderBase::CreateFMul((this + 1), FMul, FMul, v23);
  v14 = AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(this, v13);
  v24 = 257;
  v15 = llvm::IRBuilderBase::CreateFMul((this + 1), v12, v14, v23);
  llvm::ConstantFP::get();
  v24 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v24 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg((this + 1), FMul, v23);
  v17 = llvm::ConstantFP::get();
  AGCLLVMBuilder::buildFma(this, FNeg, v15, v17);
  v21 = 257;
  llvm::IRBuilderBase::CreateFMul((this + 1), v15, FMul, v20);
  Select = llvm::IRBuilderBase::CreateSelect();
  v18 = this[19];
  v24 = 257;
  return llvm::IRBuilderBase::CreateFPTrunc((this + 1), Select, v18, v23);
}

uint64_t AGCLLVMAirBuiltinsGen7::buildSinCos(llvm::ConstantFP **this, llvm::ConstantFP **a2, int a3)
{
  FPExt = a2;
  v6 = *a2;
  v7 = llvm::ConstantFP::get();
  v8 = llvm::ConstantFP::get();
  v9 = llvm::ConstantFP::get();
  v10 = llvm::ConstantFP::get();
  if (v6 == this[19])
  {
    v11 = this[21];
    v39 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), FPExt, v11, v38);
  }

  v12 = AGCLLVMBuilder::buildFma(this, FPExt, v8, v7);
  v39 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), v7, v12, v38);
  v14 = AGCLLVMBuilder::buildFma(this, FPExt, v8, FSub);
  v15 = AGCLLVMBuilder::buildFma(this, FPExt, v9, v14);
  if (v6 == this[21])
  {
    v15 = AGCLLVMBuilder::buildFma(this, FPExt, v10, v15);
    v37 = v15;
  }

  v16 = llvm::ConstantFP::get();
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, v15);
  v39 = 257;
  llvm::IRBuilderBase::CreateFSub((this + 1), v16, Fabs, v38);
  v18 = this[25];
  v39 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((this + 1), 49, v12, v18, v38);
  v20 = llvm::ConstantInt::get();
  v39 = 257;
  v21 = llvm::IRBuilderBase::CreateAnd((this + 1), Cast, v20, v38);
  v22 = llvm::ConstantInt::get();
  v39 = 257;
  llvm::IRBuilderBase::CreateICmp(this + 1, 32, v21, v22, v38);
  v39 = 257;
  if (a3)
  {
    llvm::IRBuilderBase::CreateFNeg((this + 1), v15, v38);
    v36 = 257;
  }

  Select = llvm::IRBuilderBase::CreateSelect();
  v24 = this[25];
  v39 = 257;
  v25 = llvm::IRBuilderBase::CreateCast((this + 1), 49, v12, v24, v38);
  v26 = llvm::ConstantInt::get();
  v39 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((this + 1), v25, v26, v38);
  v28 = llvm::ConstantInt::get();
  v39 = 257;
  llvm::IRBuilderBase::CreateICmp(this + 1, 32, v27, v28, v38);
  v39 = 257;
  llvm::IRBuilderBase::CreateFNeg((this + 1), Select, v38);
  v36 = 257;
  v29 = llvm::IRBuilderBase::CreateSelect();
  v37 = v29;
  v30 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, "llvm.agx2.sinc.f32", 18, this[21], this[21]);
  v39 = 257;
  v31 = llvm::IRBuilderBase::CreateCall(this + 1, *(v30 + 24), v30, &v37, 1, v38);
  v36 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), v29, v31, v35);
  v37 = FMul;
  v33 = this[19];
  if (v6 == v33)
  {
    v39 = 257;
    return llvm::IRBuilderBase::CreateFPTrunc((this + 1), FMul, v33, v38);
  }

  else
  {
    AGCLLVMTargetBuilder::CreateFabs(this, FPExt);
    llvm::ConstantFP::get();
    v39 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    if (a3)
    {
      llvm::ConstantFP::get();
    }

    v36 = 257;
    llvm::IRBuilderBase::CreateSelect();
    llvm::ConstantFP::get();
    v39 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantFP::get();
    v36 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCLLVMAirBuiltins::buildArctan2(AGCLLVMAirBuiltins *this, llvm::ConstantFP **a2, llvm::Value *a3)
{
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  v11 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, a3, v10);
  v7 = (*(*this + 32))(this, FDiv);
  v11 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v11 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v11 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v11 = 257;
  llvm::IRBuilderBase::CreateFAdd(this + 8, v7, Select, v10);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *AGCLLVMAirBuiltins::buildMetalSinCos(llvm::ConstantInt **this, llvm::UndefValue **a2, llvm::Type **a3)
{
  v6 = *a2;
  llvm::Type::isOpaquePointerTy(*a3);
  if ((*(v6 + 8) & 0xFE) == 0x12 && (v7 = *(v6 + 32), v7 != 1))
  {
    v11 = llvm::UndefValue::get();
    InsertElement = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v21 = 257;
        v14 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v14, v20);
        v16 = (*(*this + 3))(this, Element, 1);
        v21 = 257;
        v17 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), InsertElement, v16, v17, v20);
        v18 = (*(*this + 3))(this, Element, 0);
        v21 = 257;
        v19 = llvm::ConstantInt::get();
        v11 = llvm::IRBuilderBase::CreateInsertElement((this + 1), v11, v18, v19, v20);
      }
    }

    llvm::IRBuilderBase::CreateAlignedStore(this + 1, InsertElement, a3, 0, 0);
    return v11;
  }

  else
  {
    v8 = (*(*this + 3))(this, a2, 1);
    llvm::IRBuilderBase::CreateAlignedStore(this + 1, v8, a3, 0, 0);
    v9 = *(*this + 3);

    return v9(this, a2, 0);
  }
}

llvm::Instruction *AGCLLVMAirBuiltins::buildArccosh(llvm::ConstantFP **this, llvm::Value *a2)
{
  v12 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), a2, a2, v11);
  v5 = llvm::ConstantFP::get();
  v10[16] = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), FMul, v5, v10);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
  v12 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), a2, Sqrt, v11);
  return AGCLLVMTargetBuilder::CreateLog(this, FAdd);
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateLog(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.log");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Instruction *AGCLLVMAirBuiltins::buildArcsinh(llvm::ConstantFP **this, llvm::Value *a2)
{
  v12 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), a2, a2, v11);
  v5 = llvm::ConstantFP::get();
  v10[16] = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), FMul, v5, v10);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FAdd);
  v12 = 257;
  v8 = llvm::IRBuilderBase::CreateFAdd((this + 1), a2, Sqrt, v11);
  return AGCLLVMTargetBuilder::CreateLog(this, v8);
}

uint64_t AGCLLVMAirBuiltins::buildArctanh(llvm::ConstantFP **this, llvm::Value *a2)
{
  v4 = llvm::ConstantFP::get();
  v12 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), v4, a2, v11);
  v12 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), v4, a2, v11);
  v12 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv((this + 1), FAdd, FSub, v11);
  Log = AGCLLVMTargetBuilder::CreateLog(this, FDiv);
  v9 = llvm::ConstantFP::get();
  v12 = 257;
  return llvm::IRBuilderBase::CreateFMul((this + 1), Log, v9, v11);
}

uint64_t AGCLLVMAirBuiltins::buildCosh(llvm::ConstantFP **this, llvm::Value *a2)
{
  Exp = AGCLLVMTargetBuilder::CreateExp(this, a2);
  v12 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg((this + 1), a2, v11);
  v6 = AGCLLVMTargetBuilder::CreateExp(this, FNeg);
  v12 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), Exp, v6, v11);
  v8 = llvm::ConstantFP::get();
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateFMul((this + 1), FAdd, v8, v10);
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateExp(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.exp");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildFmod(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v17 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, a3, v16);
  v7 = *(this + 58);
  v18 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (this + 8));
  v8 = *(this + 26);
  v20 = v8;
  v12 = v18;
  v13 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v8 = v20;
  }

  v14 = v8;
  v9 = AGCLLVMTargetLowerer::CallFPIntrinsic(v7, &v12, FDiv, "llvm.trunc");
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, v9, a3, v16);
  v15 = 257;
  return llvm::IRBuilderBase::CreateFSub(this + 8, a2, FMul, &v12);
}

uint64_t AGCLLVMAirBuiltins::buildMod(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v12 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, a3, v11);
  Floor = AGCLLVMTargetBuilder::CreateFloor(this, FDiv);
  v12 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, Floor, a3, v11);
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateFSub(this + 8, a2, FMul, v10);
}

uint64_t AGCLLVMAirBuiltins::buildFract(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    if (*(**(v6 + 16) + 8) == 2)
    {
      v7 = *(v6 + 32);
      v8 = llvm::ConstantInt::get();
      v10 = AGCLLVMBuilder::splat(this, v7, v8, v9);
LABEL_6:
      v11 = v10;
      v12 = AGCLLVMBuilder::bitCastElements(this, a2, this[25]);
      v19 = 257;
      v13 = llvm::ConstantInt::get();
      Shl = llvm::IRBuilderBase::CreateShl((this + 1), v12, v13, v18);
      v19 = 257;
      llvm::IRBuilderBase::CreateICmp(this + 1, 32, Shl, v11, v18);
      Floor = AGCLLVMTargetBuilder::CreateFloor(this, a2);
      v19 = 257;
      llvm::IRBuilderBase::CreateFSub((this + 1), a2, Floor, v18);
      llvm::ConstantFP::get();
      v19 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      llvm::ConstantFP::get();
      llvm::IRBuilderBase::CreateSelect();
      llvm::ConstantFP::get();
      v19 = 257;
      return llvm::IRBuilderBase::CreateSelect();
    }
  }

  else if (*(*a2 + 8) == 2)
  {
    v10 = llvm::ConstantInt::get();
    goto LABEL_6;
  }

  v17 = AGCLLVMTargetBuilder::CreateFloor(this, a2);
  v19 = 257;
  return llvm::IRBuilderBase::CreateFSub((this + 1), a2, v17, v18);
}

llvm::Value *AGCLLVMAirBuiltins::buildFastFract(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  Floor = AGCLLVMTargetBuilder::CreateFloor(this, a2);
  v19 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, a2, Floor, v18);
  v6 = *a2;
  v7 = *(*a2 + 8);
  v8 = v7;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(v6 + 16) + 8);
  }

  if (v8 == 2)
  {
    v9 = *(this + 118);
    if (!v9 || (*(v9 + *(*v9 - 24) + 1808) & 4) == 0)
    {
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v7 = *(**(v6 + 16) + 8);
      }

      if (v7 == 2)
      {
        v10 = 168;
      }

      else
      {
        v10 = 152;
      }

      if (v7 == 2)
      {
        v11 = v18;
      }

      else
      {
        v11 = &v17;
      }

      v12 = llvm::ConstantInt::get();
      v13 = *(this + v10);
      *(v11 + 16) = 257;
      Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v12, v13, v11);
      if ((*(v6 + 8) & 0xFE) == 0x12)
      {
        AGCLLVMBuilder::splat(this, *(v6 + 32), Cast, v14);
      }

      AGCLLVMTargetBuilder::CreateFabs(this, a2);
      v19 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      llvm::ConstantFP::get();
      v19 = 257;
      return llvm::IRBuilderBase::CreateSelect();
    }
  }

  return FSub;
}

uint64_t AGCLLVMAirBuiltins::buildFmad(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v9 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a3, v8);
  v9 = 257;
  return llvm::IRBuilderBase::CreateFAdd(this + 8, FMul, a4, v8);
}

llvm::Instruction *AGCLLVMAirBuiltins::buildExp10(AGCLLVMAirBuiltins *this, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v8 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, v4, v7);
  return AGCLLVMTargetBuilder::CreateExp2(this, FMul);
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateExp2(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.exp2");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildLog10(AGCLLVMAirBuiltins *this, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  Log2 = AGCLLVMTargetBuilder::CreateLog2(this, a2);
  v8 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, Log2, v4, v7);
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateLog2(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.log2");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildSinh(llvm::ConstantFP **this, llvm::Value *a2)
{
  Exp = AGCLLVMTargetBuilder::CreateExp(this, a2);
  v12 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg((this + 1), a2, v11);
  v6 = AGCLLVMTargetBuilder::CreateExp(this, FNeg);
  v12 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), Exp, v6, v11);
  v8 = llvm::ConstantFP::get();
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateFMul((this + 1), FSub, v8, v10);
}

uint64_t AGCLLVMAirBuiltins::buildTanh(llvm::ConstantFP **this, llvm::Value *a2)
{
  v4 = llvm::ConstantFP::get();
  v13 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), a2, v4, v12);
  Exp = AGCLLVMTargetBuilder::CreateExp(this, FMul);
  v7 = llvm::ConstantFP::get();
  v13 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), Exp, v7, v12);
  v9 = llvm::ConstantFP::get();
  v13 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), Exp, v9, v12);
  v13 = 257;
  return llvm::IRBuilderBase::CreateFDiv((this + 1), FSub, FAdd, v12);
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltins::ConversionFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          v10 = *v8;
          if (*(v8 + 63) < 0)
          {
            operator delete(*(v8 + 5));
          }

          v11 = *(v8 + 39);
          if ((v11 & 0x80000000) != 0)
          {
            operator delete(*(v8 + 2));
          }

          llvm::deallocate_buffer(v11, v8, (v10 + 81));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirBuiltins::buildPack(uint64_t a1, llvm::Value **a2, uint64_t a3, uint64_t a4)
{
  AGCLLVMAirBuiltins::initializePackUnpackMap(a1);
  Key = llvm::StringMapImpl::FindKey();
  v8 = 0;
  v9 = AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map;
  if (Key == -1)
  {
    v10 = dword_28117DC50;
  }

  else
  {
    v10 = Key;
  }

  v11 = *(AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map + 8 * v10);
  v12 = *(v11 + 8);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v28 = *(a1 + 464);
        v29 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (a1 + 8));
        v31 = *(a1 + 104);
        v8 = (*(*v28 + 104))(v28, &v29, 9, *(a1 + 192), *a2, 0, *(*(v9 + 8 * v10) + 15));
        if (!v30)
        {
          return v8;
        }
      }

      else
      {
        if (v12 != 7)
        {
          return v8;
        }

        v23 = *(a1 + 464);
        v32 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (a1 + 8));
        v34 = *(a1 + 104);
        v8 = (*(*v23 + 104))(v23, &v32, 10, *(a1 + 192), *a2, 0, *(*(v9 + 8 * v10) + 15));
        if (!v33)
        {
          return v8;
        }
      }

LABEL_34:
      llvm::MetadataTracking::untrack();
      return v8;
    }

    if (v12 == 4)
    {
      v26 = *(a1 + 464);
      v35 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (a1 + 8));
      v37 = *(a1 + 104);
      v8 = (*(*v26 + 104))(v26, &v35, 8, *(a1 + 192), *a2, 1, 0);
      if (!v36)
      {
        return v8;
      }

      goto LABEL_34;
    }

    v19 = *a2;
    v20 = *(*a1 + 120);

    return v20(a1, v19);
  }

  else
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v27 = *(a1 + 464);
        v41 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v42, (a1 + 8));
        v43 = *(a1 + 104);
        v8 = (*(*v27 + 104))(v27, &v41, 0, *(a1 + 192), *a2, 1, 0);
        if (!v42)
        {
          return v8;
        }
      }

      else
      {
        v22 = *(a1 + 464);
        v38 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (a1 + 8));
        v40 = *(a1 + 104);
        v8 = (*(*v22 + 104))(v22, &v38, 7, *(a1 + 192), *a2, 1, 0);
        if (!v39)
        {
          return v8;
        }
      }

      goto LABEL_34;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        return v8;
      }

      v13 = **a2;
      if (*(v13 + 32) == 3)
      {
        if ((*(v13 + 8) & 0xFE) == 0x12)
        {
          v13 = **(v13 + 16);
        }

        v14 = AGCLLVMBuilder::extendVector(a1, *a2, 4, v7);
        *a2 = v14;
        NullValue = llvm::Constant::getNullValue(v13, v15);
        v48 = 257;
        v17 = llvm::ConstantInt::get();
        *a2 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v14, NullValue, v17, v47);
      }

      v18 = *(a1 + 464);
      v44 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (a1 + 8));
      v46 = *(a1 + 104);
      v8 = (*(*v18 + 104))(v18, &v44, 5, *(a1 + 200), *a2, 1, *(*(v9 + 8 * v10) + 12));
      if (!v45)
      {
        return v8;
      }

      goto LABEL_34;
    }

    v24 = *a2;
    v25 = *(*a1 + 104);

    return v25(a1, v24, v11 + 12);
  }
}

void AGCLLVMAirBuiltins::initializePackUnpackMap(AGCLLVMAirBuiltins *this)
{
  {
    AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map = 0;
    *&dword_28117DC50 = 0;
    qword_28117DC58 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirBuiltins::initializePackUnpackMap(void)::flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&AGCLLVMAirBuiltins::initializePackUnpackMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializePackUnpackMap(void)::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializePackUnpackMap(void)::$_0 &&>>()
{
  v0 = 0;
  v1 = 1;
  do
  {
    v2 = 0;
    v79 = v1;
    v3 = off_277E202B8[v0];
    v4 = 1;
    do
    {
      v5 = 0;
      v80 = v4;
      v6 = off_277E202C8[v2];
      do
      {
        v7 = atoi(v3);
        v8 = atoi(v6);
        v9 = off_277E202D8[v5];
        v10 = atoi(v9);
        std::string::basic_string[abi:nn200100]<0>(&v87, ".");
        if ((v10 & 0xFE) != 0)
        {
          std::string::append(&v87, "v");
          std::string::append(&v87, v9);
        }

        std::string::append(&v87, "f");
        std::string::append(&v87, v3);
        std::string::basic_string[abi:nn200100]<0>(&v86, v9);
        std::string::append(&v86, "x");
        std::string::append(&v86, v6);
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v87;
        }

        else
        {
          v11 = v87.__r_.__value_.__r.__words[0];
        }

        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v87.__r_.__value_.__l.__size_;
        }

        std::string::append(&v86, v11, size);
        std::operator+<char>();
        if (v85 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v85 >= 0)
        {
          v14 = v85;
        }

        else
        {
          v14 = v84;
        }

        v15 = (v7 << 32) | (v8 << 40) | (v10 << 48);
        *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(p_p, v14) + 8) = v15 | 0x100000000000000;
        if (v85 < 0)
        {
          operator delete(__p);
        }

        std::operator+<char>();
        if (v85 >= 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p;
        }

        if (v85 >= 0)
        {
          v17 = v85;
        }

        else
        {
          v17 = v84;
        }

        *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v16, v17) + 8) = v15;
        if (v85 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        ++v5;
      }

      while (v5 != 3);
      v4 = 0;
      v2 = 1;
    }

    while ((v80 & 1) != 0);
    v1 = 0;
    v0 = 1;
  }

  while ((v79 & 1) != 0);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = 0;
    v81 = v19;
    v21 = off_277E202B8[v18];
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = atoi(v21);
      v25 = off_277E202F0[v20];
      v26 = atoi(v25);
      v27 = off_277E20300[v20];
      v28 = atoi(v27);
      std::string::basic_string[abi:nn200100]<0>(&v87, ".v");
      std::string::append(&v87, v27);
      std::string::append(&v87, "f");
      std::string::append(&v87, v21);
      std::string::basic_string[abi:nn200100]<0>(&v86, v27);
      std::string::append(&v86, "x");
      std::string::append(&v86, v25);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v87;
      }

      else
      {
        v29 = v87.__r_.__value_.__r.__words[0];
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v87.__r_.__value_.__l.__size_;
      }

      std::string::append(&v86, v29, v30);
      if (v23)
      {
        v31 = 6;
      }

      else
      {
        v31 = 7;
      }

      std::operator+<char>();
      if (v85 >= 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p;
      }

      if (v85 >= 0)
      {
        v33 = v85;
      }

      else
      {
        v33 = v84;
      }

      v34 = v31 | (v24 << 32) | (v26 << 40) | (v28 << 48);
      *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v32, v33) + 8) = v34 | 0x100000000000000;
      if (v85 < 0)
      {
        operator delete(__p);
      }

      std::operator+<char>();
      if (v85 >= 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p;
      }

      if (v85 >= 0)
      {
        v36 = v85;
      }

      else
      {
        v36 = v84;
      }

      *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v35, v36) + 8) = v34;
      if (v85 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      v22 = 0;
      v20 = 1;
    }

    while ((v23 & 1) != 0);
    v19 = 0;
    v18 = 1;
  }

  while ((v81 & 1) != 0);
  v37 = 0;
  v38 = 1;
  do
  {
    v39 = 0;
    v78 = v38;
    v40 = 1;
    do
    {
      v41 = 0;
      v82 = v40;
      if (v40)
      {
        v42 = ".rgb10.v3f";
      }

      else
      {
        v42 = ".rgb10a2.v4f";
      }

      v43 = v39 | (v37 << 40);
      v44 = 1;
      do
      {
        v45 = v44;
        if (v44)
        {
          v46 = "unorm";
        }

        else
        {
          v46 = "snorm";
        }

        v47 = (v41 | v43) ^ 0x10000000001;
        v48 = 1;
        do
        {
          v49 = v48;
          std::string::basic_string[abi:nn200100]<0>(&v87, v46);
          std::string::append(&v87, v42);
          std::string::append(&v87, off_277E202B8[v37]);
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = &v87;
          }

          else
          {
            v50 = v87.__r_.__value_.__r.__words[0];
          }

          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v51 = v87.__r_.__value_.__l.__size_;
          }

          *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v50, v51) + 8) = v47;
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          v48 = 0;
        }

        while ((v49 & 1) != 0);
        v44 = 0;
        v41 = 0x100000000;
      }

      while ((v45 & 1) != 0);
      v40 = 0;
      v39 = 0x1000000000000;
    }

    while ((v82 & 1) != 0);
    v38 = 0;
    v37 = 1;
  }

  while ((v78 & 1) != 0);
  v52 = 0;
  v53 = 1;
  do
  {
    v54 = v53;
    std::string::basic_string[abi:nn200100]<0>(&v87, "unorm.rgb565.v3f");
    std::string::append(&v87, off_277E202B8[v52]);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v87;
    }

    else
    {
      v55 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v55, v56) + 8) = 2;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v53 = 0;
    v52 = 1;
  }

  while ((v54 & 1) != 0);
  v57 = 0;
  v58 = 1;
  do
  {
    v59 = v58;
    std::string::basic_string[abi:nn200100]<0>(&v86, "unorm4x8.srgb.v4f");
    v60 = std::string::append(&v86, off_277E202B8[v57]);
    v61 = v60->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v87;
    }

    else
    {
      v62 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v62, v63) + 8) = 5;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v58 = 0;
    v57 = 1;
  }

  while ((v59 & 1) != 0);
  v64 = 0;
  v65 = 1;
  do
  {
    v66 = v65;
    std::string::basic_string[abi:nn200100]<0>(&v86, "unorm.rg11b10f.v3f");
    v67 = std::string::append(&v86, off_277E202B8[v64]);
    v68 = v67->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v87;
    }

    else
    {
      v69 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v69, v70) + 8) = 3;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v65 = 0;
    v64 = 1;
  }

  while ((v66 & 1) != 0);
  v71 = 0;
  v72 = 1;
  do
  {
    v73 = v72;
    std::string::basic_string[abi:nn200100]<0>(&v86, "unorm.rgb9e5.v3f");
    v74 = std::string::append(&v86, off_277E202B8[v71]);
    v75 = v74->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v87;
    }

    else
    {
      v76 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v87.__r_.__value_.__l.__size_;
    }

    *(*llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(v76, v77) + 8) = 4;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v72 = 0;
    v71 = 1;
  }

  while ((v73 & 1) != 0);
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117DC58) = qword_28117DC58 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_28117DC54;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltins::PackUnpackFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 17);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirBuiltins::buildUnpack(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMAirBuiltins::initializePackUnpackMap(a1);
  Key = llvm::StringMapImpl::FindKey();
  v9 = 0;
  v10 = AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map;
  if (Key == -1)
  {
    v11 = dword_28117DC50;
  }

  else
  {
    v11 = Key;
  }

  v12 = *(AGCLLVMAirBuiltins::initializePackUnpackMap(void)::pack_unpack_map + 8 * v11);
  v13 = *(v12 + 8);
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        if (a4 >= 3)
        {
          v40 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v30 = v40 >= 0x66313600;
          v41 = v40 > 0x66313600;
          v42 = !v30;
          v15 = v41 == v42;
          v28 = 168;
          if (v15)
          {
            v28 = 152;
          }
        }

        else
        {
          v28 = 168;
        }

        v43 = *(a1 + v28);
        v44 = *(a1 + 464);
        v55 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (a1 + 8));
        v57 = *(a1 + 104);
        v9 = (*(*v44 + 112))(v44, &v55, 9, v43, *a2, 0, *(*(v10 + 8 * v11) + 15));
        if (!v56)
        {
          return v9;
        }
      }

      else
      {
        if (v13 != 7)
        {
          return v9;
        }

        if (a4 >= 3)
        {
          v50 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v30 = v50 >= 0x66313600;
          v51 = v50 > 0x66313600;
          v52 = !v30;
          v15 = v51 == v52;
          v23 = 168;
          if (v15)
          {
            v23 = 152;
          }
        }

        else
        {
          v23 = 168;
        }

        v53 = *(a1 + v23);
        v54 = *(a1 + 464);
        v58 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (a1 + 8));
        v60 = *(a1 + 104);
        v9 = (*(*v54 + 112))(v54, &v58, 10, v53, *a2, 0, *(*(v10 + 8 * v11) + 15));
        if (!v59)
        {
          return v9;
        }
      }
    }

    else
    {
      if (v13 != 4)
      {
        v19 = *a2;
        v20 = *(*a1 + 128);

        return v20(a1, v19, a3, a4);
      }

      if (a4 >= 3)
      {
        v29 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v30 = v29 >= 0x66313600;
        v31 = v29 > 0x66313600;
        v32 = !v30;
        v15 = v31 == v32;
        v26 = 168;
        if (v15)
        {
          v26 = 152;
        }
      }

      else
      {
        v26 = 168;
      }

      v33 = *(a1 + v26);
      v34 = *(a1 + 464);
      v61 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (a1 + 8));
      v63 = *(a1 + 104);
      v9 = (*(*v34 + 112))(v34, &v61, 8, v33, *a2, 1, 0);
      if (!v62)
      {
        return v9;
      }
    }

LABEL_70:
    llvm::MetadataTracking::untrack();
    return v9;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (a4 >= 3)
      {
        v35 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v30 = v35 >= 0x66313600;
        v36 = v35 > 0x66313600;
        v37 = !v30;
        v15 = v36 == v37;
        v27 = 168;
        if (v15)
        {
          v27 = 152;
        }
      }

      else
      {
        v27 = 168;
      }

      v38 = *(a1 + v27);
      v39 = *(a1 + 464);
      v67 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (a1 + 8));
      v69 = *(a1 + 104);
      v9 = (*(*v39 + 112))(v39, &v67, 0, v38, *a2, 1, 0);
      if (!v68)
      {
        return v9;
      }
    }

    else
    {
      if (a4 >= 3)
      {
        v45 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v30 = v45 >= 0x66313600;
        v46 = v45 > 0x66313600;
        v47 = !v30;
        v15 = v46 == v47;
        v22 = 168;
        if (v15)
        {
          v22 = 152;
        }
      }

      else
      {
        v22 = 168;
      }

      v48 = *(a1 + v22);
      v49 = *(a1 + 464);
      v64 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (a1 + 8));
      v66 = *(a1 + 104);
      v9 = (*(*v49 + 112))(v49, &v64, 7, v48, *a2, 1, 0);
      if (!v65)
      {
        return v9;
      }
    }

    goto LABEL_70;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      return v9;
    }

    v14 = *(v12 + 14) ? 5 : 4;
    v15 = *(v12 + 13) == 0;
    v16 = 168;
    if (!v15)
    {
      v16 = 152;
    }

    v17 = *(a1 + v16);
    v18 = *(a1 + 464);
    v70 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (a1 + 8));
    v72 = *(a1 + 104);
    v9 = (*(*v18 + 112))(v18, &v70, v14, v17, *a2, 1, *(*(v10 + 8 * v11) + 12));
    if (!v71)
    {
      return v9;
    }

    goto LABEL_70;
  }

  v24 = *a2;
  v25 = *(*a1 + 112);

  return v25(a1, v24, v12 + 12);
}

uint64_t AGCLLVMAirBuiltins::buildPopCount(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v5 = *(this + 24);
  if (*a2 == *(this + 23))
  {
    v6 = *(this + 24);
  }

  else
  {
    v6 = *a2;
    if (v4 != v5)
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(this + 58) + 912) + 52) == 1)
  {
    v6 = *(this + 25);
  }

LABEL_7:
  if (v6 == v5)
  {
    v7 = "llvm.ctpop.i16";
  }

  else
  {
    v7 = "llvm.ctpop.i32";
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v7, 14, v4, v4);
  v14 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 8, 39, a2, v6, v13);
  v12 = 257;
  v9 = llvm::IRBuilderBase::CreateCall(this + 1, *(v8 + 24), v8, &Cast, 1, v11);
  v14 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, v9, v4, v13);
}

uint64_t AGCLLVMAirBuiltins::buildBitMask(AGCLLVMAirBuiltins *this, llvm::ConstantInt **a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v11 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((this + 8), v6, a2, v10);
  v9[16] = 257;
  return llvm::IRBuilderBase::CreateSub((this + 8), Shl, v6, v9);
}

uint64_t AGCLLVMAirBuiltins::buildExtractBits(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = **a2;
  v8 = 200;
  if (*(v7 + 8) >> 8 == 64)
  {
    v8 = 208;
  }

  v9 = *(a1 + v8);
  v10 = *(a2 + 16);
  v33 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v5, v9, v32);
  v33 = 257;
  v12 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v6, v9, v32);
  v33 = 257;
  v13 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v10, v9, v32);
  v33 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), Cast, v12, v32);
  v17 = AGCLLVMAirBuiltins::buildBitMask(a1, v13, v15, v16);
  v31 = 257;
  v18 = llvm::IRBuilderBase::CreateAnd((a1 + 8), LShr, v17, v30);
  if (*a3 == 115)
  {
    v19 = llvm::ConstantInt::get();
    v33 = 257;
    Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v13, v19, v32);
    v31 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Sub, v30);
    v33 = 257;
    v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v18, Shl, v32);
    v23 = llvm::ConstantInt::get();
    v31 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v22, v23, v30);
    AllOnesValue = llvm::Constant::getAllOnesValue(v9, v24);
    v33 = 257;
    v26 = llvm::IRBuilderBase::CreateShl((a1 + 8), AllOnesValue, v13, v32);
    v31 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v18, v26, v30);
    v33 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  v27 = llvm::ConstantInt::get();
  v33 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v13, v27, v32);
  v31 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v33 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v7, v32);
}

uint64_t AGCLLVMAirBuiltins::buildInsertBits(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = **a2;
  v6 = 200;
  if (*(v5 + 8) >> 8 == 64)
  {
    v6 = 208;
  }

  v7 = *(a1 + v6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v29 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v8, v7, v28);
  v29 = 257;
  v11 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v7, v28);
  v14 = AGCLLVMAirBuiltins::buildBitMask(a1, v11, v12, v13);
  v29 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v14, Cast, v28);
  v29 = 257;
  v16 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v4, v7, v28);
  v29 = 257;
  v17 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v3, v7, v28);
  v29 = 257;
  Not = llvm::IRBuilderBase::CreateNot((a1 + 8), Shl, v28, v18);
  v27 = 257;
  v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v16, Not, v26);
  v29 = 257;
  v21 = llvm::IRBuilderBase::CreateShl((a1 + 8), v17, Cast, v28);
  v27 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v21, Shl, v26);
  v29 = 257;
  llvm::IRBuilderBase::CreateOr((a1 + 8), v20, v22, v28);
  v23 = llvm::ConstantInt::get();
  v29 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v11, v23, v28);
  v27 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v29 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v5, v28);
}

uint64_t AGCLLVMAirBuiltins::buildReverseBits(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  if (*(*a2 + 8) >> 8 > 0x20u)
  {
    v12 = *(this + 25);
    v31 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(this + 8, 38, a2, v12, v30);
    v14 = llvm::ConstantInt::get();
    v31 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((this + 8), a2, v14, v30);
    v16 = *(this + 25);
    v29 = 257;
    v17 = llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v16, __p);
    v18 = AGCLLVMAirBuiltins::buildReverseBits(this, Cast);
    v19 = AGCLLVMAirBuiltins::buildReverseBits(this, v17);
    v20 = *(this + 26);
    v31 = 257;
    v21 = llvm::IRBuilderBase::CreateCast(this + 8, 39, v18, v20, v30);
    v22 = *(this + 26);
    v31 = 257;
    v23 = llvm::IRBuilderBase::CreateCast(this + 8, 39, v19, v22, v30);
    v24 = llvm::ConstantInt::get();
    v31 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((this + 8), v21, v24, v30);
    v29 = 257;
    return llvm::IRBuilderBase::CreateOr((this + 8), Shl, v23, __p);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, *(*(this + 58) + 1304));
    if (v28 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v28 >= 0)
    {
      v6 = v28;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v5, v6, *(this + 25), *(this + 25));
    v8 = *(this + 25);
    v31 = 257;
    v32 = llvm::IRBuilderBase::CreateCast(this + 8, 39, a2, v8, v30);
    v31 = 257;
    v9 = llvm::IRBuilderBase::CreateCall(this + 1, *(v7 + 24), v7, &v32, 1, v30);
    v32 = v9;
    v10 = llvm::ConstantInt::get();
    v31 = 257;
    v32 = llvm::IRBuilderBase::CreateLShr((this + 8), v9, v10, v30);
    v31 = 257;
    v11 = llvm::IRBuilderBase::CreateCast(this + 8, 38, v32, v4, v30);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltins::buildSign(AGCLLVMAirBuiltins *this, llvm::ConstantFP **a2)
{
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildGCmp(AGCLLVMAirBuiltins *this, llvm::Value *a2, uint64_t a3)
{
  v6 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v7 = 192;
  if (*a2 == *(this + 21))
  {
    v7 = 200;
  }

  v8 = (*(*v6 + 144))(v6, &v10, a2, a3, *(this + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltins::buildGExp(AGCLLVMAirBuiltins *this, llvm::Value *a2, uint64_t a3)
{
  v6 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v7 = 152;
  if (*a2 == *(this + 25))
  {
    v7 = 168;
  }

  v8 = (*(*v6 + 152))(v6, &v10, a2, a3, *(this + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltins::buildFMedian3(void *a1, llvm::Value **a2)
{
  v4 = *a2;
  v5 = a2[1];
  AGCLLVMAirBuiltins::buildNanFMin(a1, *a2, v5);
  AGCLLVMAirBuiltins::buildNanFMax(a1, v4, v5);
  v15 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  Select = llvm::IRBuilderBase::CreateSelect();
  v7 = AGCLLVMAirBuiltins::buildNanFMin(a1, *a2, a2[1]);
  AGCLLVMAirBuiltins::buildNanFMin(a1, v7, a2[2]);
  if (*Select == a1[21])
  {
    v8 = a1[25];
  }

  else
  {
    v8 = a1[24];
  }

  v15 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, Select, v8, v14);
  v10 = llvm::ConstantInt::get();
  v15 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v10, v14);
  v12 = llvm::ConstantInt::get();
  v15 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v11, v12, v14);
  v15 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildNanFMin(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 58);
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
  }

  v8 = (*(*v6 + 48))(v6, &v10, a2, a3, v7 == *(this + 21));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltins::buildFastFMedian3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v3 = *a2;
  v4 = a2[1];
  AGCLLVMAirBuiltins::buildFastFMin(a1, *a2, v4);
  AGCLLVMAirBuiltins::buildFastFMax(a1, v3, v4);
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildProjectiveCoordinates(AGCLLVMAirBuiltins *this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  ShuffleVector = a2;
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(*a2 + 32);
  if (*(a2 + 16) == 74)
  {
    v7 = *(a2 - 4);
    v8 = *(v7 + 16);
    if (v7 && v8 == 91)
    {
      v9 = *(*(v7 - 64) + 16);
      if (v9 == 73)
      {
        v10 = *(v7 - 64);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(*(v7 - 32) + 16);
      if (v11 == 73)
      {
        v12 = *(v7 - 32);
      }

      else
      {
        v12 = 0;
      }

      if (v10 | v12 && ((v9 - 11) < 2 || *(**(v10 - 32) + 24) == *(this + 21)) && ((v11 - 11) <= 1 || *(**(v12 - 32) + 24) == *(this + 21)))
      {
        llvm::VectorType::get();
        if (v10)
        {
          v13 = *(v10 - 32);
          if (v12)
          {
LABEL_23:
            v14 = *(v12 - 32);
LABEL_26:
            v15 = *(v7 + 64);
            v16 = *(v7 + 72);
            v24 = 257;
            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(this + 8, v13, v14, v15, v16, v23);
            goto LABEL_27;
          }
        }

        else
        {
          v13 = llvm::UndefValue::get();
          if (v12)
          {
            goto LABEL_23;
          }
        }

        v14 = llvm::UndefValue::get();
        goto LABEL_26;
      }
    }

    else if (v7 && v8 == 73 && *(**(v7 - 32) + 24) == *(this + 21))
    {
      ShuffleVector = *(v7 - 32);
    }
  }

LABEL_27:
  v29 = llvm::ConstantInt::get();
  v30 = llvm::ConstantInt::get();
  v31 = llvm::ConstantInt::get();
  v17 = AGCLLVMBuilder::subrangeVector(this, ShuffleVector, 0, v6 - 1, 1);
  v18 = llvm::ConstantVector::get();
  v24 = 257;
  v19 = llvm::IRBuilderBase::CreateShuffleVector((this + 8), ShuffleVector, ShuffleVector, v18, v23);
  v24 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, v17, v19, v23);
  v25 = llvm::ConstantInt::get();
  v26 = llvm::ConstantInt::get();
  v27 = llvm::ConstantInt::get();
  v28 = llvm::ConstantInt::get();
  v21 = llvm::ConstantVector::get();
  v24 = 257;
  return llvm::IRBuilderBase::CreateShuffleVector((this + 8), FDiv, v19, v21, v23);
}

void AGCLLVMAirBuiltins::replaceIsUniform(uint64_t a1, llvm::Instruction *a2)
{
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_IS_UNIFORM_STRIPPING", a2)) != 0 && *Value != 48 && atoi(Value))
  {
    Function = llvm::Module::getFunction();
    v5 = *(a2 + 1);
    if (v5)
    {
      do
      {
        v6 = *(v5 + 8);
        llvm::Instruction::eraseFromParent(*(v5 + 24));
        v5 = v6;
      }

      while (v6);
    }

    llvm::Instruction::eraseFromParent(a2);
    if (!*(Function + 1))
    {

      llvm::Function::eraseFromParent(Function);
    }
  }

  else
  {
    v7 = *(a2 - 4);
    v8 = *(v7 + 3);
    Name = llvm::Value::getName(v7);
    v11 = 14;
    if (v10 < 0xE)
    {
      v11 = v10;
    }

    v18[0] = v11 + Name;
    v18[1] = v10 - v11;
    llvm::StringRef::str(&v15, v18);
    v12 = std::string::insert(&v15, 0, "llvm.agx.is.uniform");
    v13 = v12->__r_.__value_.__r.__words[2];
    *__p = *&v12->__r_.__value_.__l.__data_;
    v17 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    llvm::Module::getOrInsertFunction();
    *(a2 + 9) = v8;
    llvm::CallBase::setCalledOperand(a2, v14);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t llvm::CallBase::setCalledOperand(uint64_t result, uint64_t a2)
{
  v2 = (result - 32);
  if (*(result - 32))
  {
    v3 = *(result - 24);
    **(result - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(result - 16);
    }
  }

  *v2 = a2;
  if (a2)
  {
    v6 = *(a2 + 8);
    v4 = (a2 + 8);
    v5 = v6;
    *(result - 24) = v6;
    if (v6)
    {
      *(v5 + 16) = result - 24;
    }

    *(result - 16) = v4;
    *v4 = v2;
  }

  return result;
}

uint64_t AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v2 = *(this + 26);
  v5 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 47, a2, v2, v4);
}

uint64_t AGCLLVMAirBuiltins::buildIMedian3(unsigned int **a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *a2;
  if (*a3 == 115)
  {
    v8 = AGCLLVMBuilder::buildICmpSel(a1, v7, v5, 40);
    v9 = AGCLLVMBuilder::buildICmpSel(a1, v4, v5, 38);
    v17 = 257;
    llvm::IRBuilderBase::CreateICmp(a1 + 1, 41, v6, v8, v16);
    v15 = 257;
    v10 = a1 + 1;
    v11 = 39;
  }

  else
  {
    v12 = AGCLLVMBuilder::buildICmpSel(a1, v7, v5, 36);
    v9 = AGCLLVMBuilder::buildICmpSel(a1, v4, v5, 34);
    v17 = 257;
    llvm::IRBuilderBase::CreateICmp(a1 + 1, 37, v6, v12, v16);
    v15 = 257;
    v10 = a1 + 1;
    v11 = 35;
  }

  llvm::IRBuilderBase::CreateICmp(v10, v11, v6, v9, v14);
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildFastFMax3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildFastFMax(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildFastFMax(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildFMax3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildNanFMax(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildNanFMax(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildIMax3(AGCLLVMBuilder *a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  v4 = a2[2];
  if (*a3 == 115)
  {
    v5 = 38;
  }

  else
  {
    v5 = 34;
  }

  v6 = AGCLLVMBuilder::buildICmpSel(a1, *a2, a2[1], v5);

  return AGCLLVMBuilder::buildICmpSel(a1, v6, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildFastFMin3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildFastFMin(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildFastFMin(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildFMin3(AGCLLVMAirBuiltins *a1, llvm::Value **a2)
{
  v4 = AGCLLVMAirBuiltins::buildNanFMin(a1, *a2, a2[1]);
  v5 = a2[2];

  return AGCLLVMAirBuiltins::buildNanFMin(a1, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildIMin3(AGCLLVMBuilder *a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  v4 = a2[2];
  if (*a3 == 115)
  {
    v5 = 40;
  }

  else
  {
    v5 = 36;
  }

  v6 = AGCLLVMBuilder::buildICmpSel(a1, *a2, a2[1], v5);

  return AGCLLVMBuilder::buildICmpSel(a1, v6, v4, v5);
}

uint64_t AGCLLVMAirBuiltins::buildIMad24(uint64_t a1, uint64_t a2, _BYTE *a3, _BOOL8 a4)
{
  v6 = AGCLLVMAirBuiltins::buildIMul24(a1, a2, a3, a4);
  v7 = *(a2 + 16);
  v10 = 257;
  return llvm::IRBuilderBase::CreateAdd((a1 + 8), v6, v7, v9);
}

uint64_t AGCLLVMAirBuiltins::buildIMul24(uint64_t a1, llvm::ConstantInt ***a2, _BYTE *a3, _BOOL8 a4)
{
  v6 = a4 && *a3 == 115;
  v7 = AGCLLVMAirBuiltins::truncateTo24B(a1, *a2, v6, a4);
  v9 = AGCLLVMAirBuiltins::truncateTo24B(a1, a2[1], v6, v8);
  v12 = 257;
  return llvm::IRBuilderBase::CreateMul((a1 + 8), v7, v9, v11);
}

uint64_t AGCLLVMAirBuiltins::truncateTo24B(AGCLLVMAirBuiltins *this, llvm::ConstantInt **a2, int a3, BOOL a4)
{
  v12 = 257;
  v7 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((this + 8), a2, v7, v11);
  v12 = 257;
  v9 = llvm::ConstantInt::get();
  if (a3)
  {
    return llvm::IRBuilderBase::CreateAShr((this + 8), Shl, v9, v11);
  }

  else
  {
    return llvm::IRBuilderBase::CreateLShr((this + 8), Shl, v9, v11);
  }
}

uint64_t llvm::IRBuilderBase::CreateAShr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 168))(*(this + 9));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildIMin(AGCLLVMBuilder *a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  if (*a3 == 115)
  {
    v3 = 40;
  }

  else
  {
    v3 = 36;
  }

  return AGCLLVMBuilder::buildICmpSel(a1, *a2, a2[1], v3);
}

uint64_t AGCLLVMAirBuiltins::buildIMax(AGCLLVMBuilder *a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  if (*a3 == 115)
  {
    v3 = 38;
  }

  else
  {
    v3 = 34;
  }

  return AGCLLVMBuilder::buildICmpSel(a1, *a2, a2[1], v3);
}

llvm::Type **AGCLLVMAirBuiltins::buildMadSat(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a3;
  v8 = **a2;
  v9 = 1272;
  if (v7 == 115)
  {
    v9 = 1240;
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(a1 + 464) + v9, **a2);
  if (IntIntrinsicName)
  {
    v11 = IntIntrinsicName;
    v12 = strlen(IntIntrinsicName);
    v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v11, v12, v8, v8, v8, v8);
    v34[0] = v5;
    v34[1] = v4;
    v34[2] = v6;
    v33 = 257;
    return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, v34, 3, v32);
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    AGCLLVMTargetBuilder::getMinMaxConstants(*(a1 + 72), v8, v7 == 115, &v31, &v30, &v29);
    v15 = v29;
    v33 = 257;
    if (v7 == 115)
    {
      SExtOrTrunc = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v5, v29, v32);
      v33 = 257;
      v17 = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v4, v15, v32);
      v33 = 257;
      v18 = llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v6, v15, v32);
      v33 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), SExtOrTrunc, v17, v32);
      v33 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Mul, v18, v32);
      v33 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, Add, v31, v32);
      v35 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v33 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 38, Select, v30, v32);
      v35 = 257;
      v22 = llvm::IRBuilderBase::CreateSelect();
      v33 = 257;
      return llvm::IRBuilderBase::CreateSExtOrTrunc((a1 + 8), v22, v8, v32);
    }

    else
    {
      ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v5, v29, v32);
      v33 = 257;
      v24 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v4, v15, v32);
      v33 = 257;
      v25 = llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v6, v15, v32);
      v33 = 257;
      v26 = llvm::IRBuilderBase::CreateMul((a1 + 8), ZExtOrTrunc, v24, v32);
      v33 = 257;
      v27 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v26, v25, v32);
      v33 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v27, v30, v32);
      v35 = 257;
      v28 = llvm::IRBuilderBase::CreateSelect();
      v33 = 257;
      return llvm::IRBuilderBase::CreateZExtOrTrunc((a1 + 8), v28, v8, v32);
    }
  }
}

llvm::Instruction *AGCLLVMAirBuiltins::buildSubSat(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = **a2;
  v8 = 1208;
  if (v6 == 115)
  {
    v8 = 1176;
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(a1 + 464) + v8, **a2);
  if (IntIntrinsicName)
  {
    v10 = IntIntrinsicName;
    v11 = strlen(IntIntrinsicName);
    v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v10, v11, v7, v7, v7);
    v42[0] = v4;
    v42[1] = v5;
    v41 = 257;
    return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v12 + 24), v12, v42, 2, v40);
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    AGCLLVMTargetBuilder::getMinMaxConstants(*(a1 + 72), v7, v6 == 115, &v39, &v38, &v37);
    if (v6 == 115)
    {
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v37);
      if (ScalarSizeInBits <= llvm::Type::getScalarSizeInBits(v7))
      {
        v41 = 257;
        Neg = llvm::IRBuilderBase::CreateNeg((a1 + 8), v5, v40, v15);
        AGCLLVMTargetBuilder::buildAddSat(a1, v4, Neg, 1);
        llvm::Type::getScalarSizeInBits(v7);
        v41 = 257;
        v28 = llvm::ConstantInt::get();
        LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v4, v28, v40);
        v30 = llvm::ConstantInt::get();
        v41 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, LShr, v30, v40);
        v43 = 257;
        llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v42);
        v36 = 257;
        llvm::IRBuilderBase::CreateSelect();
        v41 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v5, v39, v40);
        v43 = 257;
      }

      else
      {
        v41 = 257;
        Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v40);
        v41 = 257;
        Xor = llvm::IRBuilderBase::CreateXor((a1 + 8), v4, v5, v40);
        v43 = 257;
        v18 = llvm::IRBuilderBase::CreateXor((a1 + 8), v5, Sub, v42);
        v36 = 257;
        Not = llvm::IRBuilderBase::CreateNot((a1 + 8), v18, v35, v19);
        v34 = 257;
        v21 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Xor, Not, v33);
        v22 = llvm::ConstantInt::get();
        v32 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v21, v22, v31);
        v23 = llvm::ConstantInt::get();
        v41 = 257;
        llvm::IRBuilderBase::CreateICmp((a1 + 8), 39, v4, v23, v40);
        v24 = *v4;
        v41 = 257;
        llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v38, v24, v40);
        v25 = *v4;
        v43 = 257;
        llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v39, v25, v42);
        v36 = 257;
        llvm::IRBuilderBase::CreateSelect();
        v41 = 257;
      }
    }

    else
    {
      v41 = 257;
      v26 = llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v40);
      v41 = 257;
      llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v26, v4, v40);
      llvm::ConstantInt::get();
      v43 = 257;
    }

    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCLLVMAirBuiltins::buildAbsDiff(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a3 == 117)
  {
    v12 = 257;
    v6 = (a1 + 8);
    v7 = 36;
  }

  else
  {
    v12 = 257;
    v6 = (a1 + 8);
    v7 = 40;
  }

  llvm::IRBuilderBase::CreateICmp(v6, v7, v4, v5, v11);
  v12 = 257;
  llvm::IRBuilderBase::CreateSub((a1 + 8), v5, v4, v11);
  v10 = 257;
  llvm::IRBuilderBase::CreateSub((a1 + 8), v4, v5, v9);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Instruction *AGCLLVMAirBuiltins::buildAbs(uint64_t a1, llvm::CmpInst ***a2, _BYTE *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a3 == 117)
  {
    return v3;
  }

  v5 = *v3;
  if ((*(*v3 + 2) & 0xFE) == 0x12)
  {
    v5 = **(*v3 + 2);
  }

  IntIntrinsicName = AGCLLVMTargetLowerer::getIntIntrinsicName(*(a1 + 464) + 1072, v5);
  if (!IntIntrinsicName)
  {
    v16 = llvm::ConstantInt::get();
    v22 = 257;
    llvm::IRBuilderBase::CreateICmp((a1 + 8), 40, v3, v16, v21);
    v22 = 257;
    llvm::IRBuilderBase::CreateNeg((a1 + 8), v3, v21, v17);
    v22 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  v7 = IntIntrinsicName;
  v8 = strlen(IntIntrinsicName);
  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v7, v8, v5, v5);
  v10 = v9;
  v23 = v3;
  if ((*(*v3 + 2) & 0xFE) != 0x12)
  {
    v22 = 257;
    return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v9 + 24), v9, &v23, 1, v21);
  }

  llvm::FixedVectorType::get();
  InsertElement = llvm::UndefValue::get();
  *v24 = 0u;
  v25 = 0u;
  AGCLLVMBuilder::unboxVector(a1, v3, v24);
  v12 = *(*v3 + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v20 = v24[i];
      v22 = 257;
      v14 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, &v20, 1, v21);
      v20 = v14;
      v22 = 257;
      v15 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v14, v15, v21);
    }
  }

  return InsertElement;
}

uint64_t AGCLLVMAirTrigIdentities::buildTanArccos(AGCLLVMAirTrigIdentities *this, llvm::ConstantFP **a2)
{
  v4 = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity(this, a2);
  v7 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, v4, a2, v6);
}

llvm::Instruction *AGCLLVMAirTrigIdentities::buildPythagoreanIdentity(AGCLLVMAirTrigIdentities *this, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v10 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v9);
  v8[16] = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v4, FMul, v8);
  return AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
}

uint64_t AGCLLVMAirTrigIdentities::buildTanArcsin(AGCLLVMAirTrigIdentities *this, llvm::ConstantFP **a2)
{
  v4 = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity(this, a2);
  v7 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, a2, v4, v6);
}

uint64_t AGCLLVMAirTrigIdentities::buildCosArctan(AGCLLVMAirTrigIdentities *this, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v11 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v10);
  v9[16] = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v4, FMul, v9);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FAdd);
  v11 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, v4, Sqrt, v10);
}

uint64_t AGCLLVMAirTrigIdentities::buildSinArctan(AGCLLVMAirTrigIdentities *this, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v11 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v10);
  v9[16] = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v4, FMul, v9);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FAdd);
  v11 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, a2, Sqrt, v10);
}

uint64_t llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *(*a1 + 8 * i);
        if (v7 != -8 && v7 != 0)
        {
          v9 = *v7;
          if (*(v7 + 5))
          {
            v10 = *(v7 + 4);
            if (v10)
            {
              v11 = 0;
              v12 = 8 * v10;
              do
              {
                v13 = *(v7[1] + v11);
                if (v13 != -8 && v13 != 0)
                {
                  llvm::deallocate_buffer(*v13, v13, *v13 + 25);
                }

                v11 += 8;
              }

              while (v12 != v11);
            }
          }

          free(v7[1]);
          llvm::deallocate_buffer(v15, v7, (v9 + 41));
        }
      }
    }
  }

  free(*a1);
  return a1;
}

uint64_t virtual thunk toAGCLLVMUserComputeKernelBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserComputeKernelBase *this)
{
  v1 = (this + *(*this - 240));
  if (*(*(v1 + *(*v1 - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserComputeKernelBase::getTempRegistersLimit(AGCLLVMUserComputeKernelBase *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  v6 = *(this + 1137);
  if (v6)
  {
    v7 = this + *(*this - 24);
    v8 = *(v7 + 271);
    if (*(v8 + 976) == 1)
    {
      v9 = *(v7 + 211);
      v10 = *(v8 + 980);
      v11 = *(v9 + 2016);
      v12 = v11 - 1;
      if ((v11 - 1) >= 0)
      {
        v13 = 0;
        v14 = *(v9 + 2008);
        do
        {
          v15 = (v12 + v13) >> 1;
          if (*(v14 + 4 * v15) < v6)
          {
            v12 = v15 - 1;
          }

          else
          {
            v13 = v15 + 1;
          }
        }

        while (v13 <= v12);
      }

      v16 = v10 / v11 * v12;
      if (v16 >= *a2)
      {
        v16 = *a2;
      }

      *a2 = v16;
      return 1;
    }
  }

  return result;
}

BOOL AGCLLVMUserComputeKernelLegacy::constructReply(AGCLLVMUserComputeKernelLegacy *this)
{
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v18 = AGCLLVMUserObject::constructFlatReply(this);
  if (*(this + 1140))
  {
    v2 = this + *(*this - 24);
    v2[4358] = 1;
    v3 = *(v2 + 1082);
    v4 = *(v2 + 1080) - *(v2 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v2 + 4288, 6, **(this + 569));
    flatbuffers::FlatBufferBuilder::EndTable((v2 + 4288), v4 + v3);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  v6 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>> const&)::t, 0);
  v7 = this + *(*this - 24);
  v7[4358] = 1;
  v8 = *(v7 + 1082);
  v9 = *(v7 + 1080) - *(v7 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v7 + 4288), v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v7 + 4288, 6, *(this + 8), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v7 + 4288, 8, *(this + 9), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v7 + 4288, 10, *(this + 4544), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v7 + 4288, 12, *(this + 1137));
  LODWORD(v7) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v9 + v8);
  v10 = this + *(*this - 24);
  v11 = *(v10 + 1080);
  v10[4358] = 1;
  v12 = *(v10 + 1082);
  v13 = v11 - *(v10 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v10 + 4288), v18);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v10 + 4288), v7);
  v14 = *(*this - 24);
  v15 = flatbuffers::FlatBufferBuilder::EndTable((v10 + 4288), v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4288), v15, v16);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  return AGCLLVMUserComputeKernelBase::validateReply(this);
}

BOOL AGCLLVMUserComputeKernelBase::validateReply(AGCLLVMUserComputeKernelBase *this)
{
  v2 = this + *(*this - 24);
  v3 = v2 + 2512;
  v4 = *(v2 + 314);
  if (v4)
  {
    if (*(v2 + 315))
    {
      v5 = v2 + 2512;
    }

    else
    {
      v5 = v2 + 3072;
    }
  }

  else
  {
    v5 = v2 + 3072;
  }

  v6 = (*v5 + **v5);
  v7 = (v6 + *(v6 - *v6 + 4));
  v8 = (v7 + *v7 + *(v7 + *v7 - *(v7 + *v7) + 8));
  if (*(v8 + *v8) > 0x20)
  {
    return 0;
  }

  if (v4)
  {
    v9 = *(v2 + 315);
    v10 = v2 + 3072;
    if (v9)
    {
      v10 = v3;
    }
  }

  else
  {
    v10 = v2 + 3072;
  }

  v13 = *v10;
  v12 = *(v10 + 1);
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v13 + *v13);
  }

  v16 = (v15 - *v15);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = (v18 - *v18);
  if (*v19 >= 0x3Du && (v20 = v19[30]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*this + 584))(this);
  v23 = (this + *(*this - 24) + 1656);

  return validateUserLocalMemoryUsage(v21, v22, v23);
}

void AGCLLVMUserComputeKernelBase::getCompilationKeyDescription(AGCLLVMUserComputeKernelBase *this@<X0>, std::string *a2@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *(this + 567);
  std::string::basic_string[abi:nn200100]<0>(&v50, "AGCComputeStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v48, "mutableBuffers");
  v4 = *v3;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v51);
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v51.__r_.__value_.__r + *(v51.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v51.__r_.__value_.__r + *(v51.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v5, v4);
  std::stringbuf::str();
  _agcFieldString<std::string>(v64, v48, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v51.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v51.__r_.__value_.__r.__words + *(v51.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v51.__r_.__value_.__r.__words[2] = v6;
  v52 = MEMORY[0x277D82878] + 16;
  if (v54 < 0)
  {
    operator delete(v53[7].__locale_);
  }

  v52 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v53);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v55);
  std::string::basic_string[abi:nn200100]<0>(v46, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v64[1], v46, *(v3 + 2));
  std::string::basic_string[abi:nn200100]<0>(v44, "wgSizeMultipleOfSIMDWidth");
  _agcFieldString<unsigned int>(&v64[2], v44, v3[2] & 1);
  std::string::basic_string[abi:nn200100]<0>(v42, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v64[3], v42, *(v3 + 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v40, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v64[4], v40, (*(v3 + 3) >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v38, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v64[5], v38, (*(v3 + 3) >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v36, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v64[6], v36, (*(v3 + 3) >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v34, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v64[7], v34, (*(v3 + 3) >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v32, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v64[8], v32, (*(v3 + 3) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v30, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v64[9], v30, (*(v3 + 3) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v28, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v64[10], &v28, (*(v3 + 3) >> 10));
  std::string::basic_string[abi:nn200100]<0>(v26, "enableStackShadow");
  _agcFieldString<unsigned int>(&v64[11], v26, (*(v3 + 3) >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v24, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v64[12], v24, *(v3 + 3) >> 31);
  std::string::basic_string[abi:nn200100]<0>(v22, "textureWriteFPRoundingMode");
  _agcFieldString<unsigned int>(&v64[13], v22, (*(v3 + 4) >> 3) & 3);
  std::string::basic_string[abi:nn200100]<0>(v20, "unused");
  _agcFieldString<unsigned int>(&v64[14], v20, *(v3 + 4) >> 14);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v50;
  }

  _agcIndentedLine(&__p, &v62, 0);
  std::string::basic_string[abi:nn200100]<0>(v57, "{");
  _agcIndentedLine(&v59, v57, 0);
  if ((v61 & 0x80u) == 0)
  {
    v7 = &v59;
  }

  else
  {
    v7 = v59;
  }

  if ((v61 & 0x80u) == 0)
  {
    v8 = v61;
  }

  else
  {
    v8 = v60;
  }

  v9 = std::string::append(&__p, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v61 < 0)
  {
    operator delete(v59);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 15; ++i)
  {
    v12 = &v64[i];
    if (SHIBYTE(v64[i].__r_.__value_.__r.__words[2]) < 0)
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
      std::string::__init_copy_ctor_external(&v56, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = __p;
    }

    _agcIndentedLine(&v59, &v56, 1);
    if ((v61 & 0x80u) == 0)
    {
      v14 = &v59;
    }

    else
    {
      v14 = v59;
    }

    if ((v61 & 0x80u) == 0)
    {
      v15 = v61;
    }

    else
    {
      v15 = v60;
    }

    std::string::append(&v51, v14, v15);
    if (v61 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
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

  std::string::basic_string[abi:nn200100]<0>(&v59, "}");
  _agcIndentedLine(&__p, &v59, 0);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v51;
  }

  else
  {
    v16 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
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

  if (v61 < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v19 = 360;
  do
  {
    if (SHIBYTE(v64[v19 / 0x18 - 1].__r_.__value_.__r.__words[2]) < 0)
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
    operator delete(v28);
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

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

const char *virtual thunk toAGCLLVMUserComputeKernelBase::getMaxTempRegistersOverride(AGCLLVMUserComputeKernelBase *this, const char *a2)
{
  v3 = *(*this - 128);
  result = AGCLLVMObject::getMaxTempRegistersOverride(this, a2);
  if (!result)
  {
    return (*(*(this + v3 + 4536) + 12) >> 10);
  }

  return result;
}

const char *AGCLLVMUserComputeKernelBase::getMaxTempRegistersOverride(AGCLLVMUserComputeKernelBase *this, const char *a2)
{
  result = AGCLLVMObject::getMaxTempRegistersOverride(this, a2);
  if (!result)
  {
    return (*(*(this + 567) + 12) >> 10);
  }

  return result;
}

void virtual thunk toAGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(AGCLLVMUserComputeKernelLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v4 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  v5 = (v4 + 5008);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(AGCLLVMUserComputeKernelLegacy *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[10];
  *(this + *(*this - 24) + 1704) = a2[11];
  v7 = *(this + 624);
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4976));
  }

  v9 = *(this + 621);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4952));
  }

  v10 = *(this + 618);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4928));
  }

  v11 = (this + 4904);
  v12 = -72;
  do
  {
    v13 = *(v11 + 2);
    if (v13 != -8192 && v13 != -4096 && v13 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    v11 = (v11 - 24);
    v12 += 24;
  }

  while (v12);
  v15 = *(this + 606);
  if (v15 != -8192 && v15 != -4096 && v15 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4832));
  }

  v17 = *(this + 603);
  if (v17 != -8192 && v17 != -4096 && v17)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4808));
  }

  v18 = *(this + 600);
  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4784));
  }

  v19 = *(this + 597);
  if (v19 != -8192 && v19 != -4096 && v19)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4760));
  }

  v20 = (this + 4736);
  v21 = -72;
  do
  {
    v22 = *(v20 + 2);
    if (v22 != -8192 && v22 != -4096 && v22 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v20 = (v20 - 24);
    v21 += 24;
  }

  while (v21);
  v24 = *(this + 585);
  if (v24 != -8192 && v24 != -4096 && v24 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4664));
  }

  v26 = (this + 4640);
  v27 = -72;
  do
  {
    v28 = *(v26 + 2);
    if (v28 != -8192 && v28 != -4096 && v28 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    v26 = (v26 - 24);
    v27 += 24;
  }

  while (v27);
  v30 = *(this + 569);
  if (v30 != this + 4568)
  {
    free(v30);
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 2, a3, a4);
}

llvm::Value *AGCLLVMUserComputeKernelBase::constructStageInGridConstant(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1[559])
  {
    v8 = llvm::PointerType::get();
    v9 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 496))();
    v50[0] = "agc.stagein_buffer_pointer.";
    v50[2] = v9;
    v51 = 2051;
    v10 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 496))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, v8, v50, v10, 0x18u, 5u, 0);
    llvm::ValueHandleBase::operator=((a1 + 557), GlobalBufferBinding);
  }

  llvm::FixedVectorType::get();
  v12 = llvm::UndefValue::get();
  v13 = a1 + *(*a1 - 24);
  v14 = a1[559];
  v51 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v13 + 1704), v14, v50);
  if (a3 == 22)
  {
    if (*a2 != 0x676174732E726961 || a2[1] != 0x6972675F6E695F65 || *(a2 + 14) != 0x657A69735F646972)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 24)
    {
      return 0;
    }

    v16 = *a2 == 0x676174732E726961 && a2[1] == 0x6972675F6E695F65;
    if (!v16 || a2[2] != 0x6E696769726F5F64)
    {
      return 0;
    }
  }

  v21 = a1 + *(*a1 - 24);
  v22 = *(v21 + 238);
  v23 = llvm::ConstantInt::get();
  v51 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v21 + 1712), v22, Load, v23, v50);
  v25 = a1 + *(*a1 - 24);
  v51 = 257;
  v26 = AGCLLVMBuilder::CreateLoad((v25 + 1704), GEP, v50);
  v27 = a1 + *(*a1 - 24);
  v51 = 257;
  v28 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((v27 + 1712), v12, v26, v28, v50);
  v30 = a1 + *(*a1 - 24);
  v31 = *(v30 + 238);
  v32 = llvm::ConstantInt::get();
  v51 = 257;
  v33 = llvm::IRBuilderBase::CreateGEP((v30 + 1712), v31, Load, v32, v50);
  v34 = a1 + *(*a1 - 24);
  v51 = 257;
  v35 = AGCLLVMBuilder::CreateLoad((v34 + 1704), v33, v50);
  v36 = a1 + *(*a1 - 24);
  v51 = 257;
  v37 = llvm::ConstantInt::get();
  v38 = llvm::IRBuilderBase::CreateInsertElement((v36 + 1712), InsertElement, v35, v37, v50);
  v39 = a1 + *(*a1 - 24);
  v40 = *(v39 + 238);
  v41 = llvm::ConstantInt::get();
  v51 = 257;
  v42 = llvm::IRBuilderBase::CreateGEP((v39 + 1712), v40, Load, v41, v50);
  v43 = a1 + *(*a1 - 24);
  v51 = 257;
  v44 = AGCLLVMBuilder::CreateLoad((v43 + 1704), v42, v50);
  v45 = a1 + *(*a1 - 24);
  v51 = 257;
  v46 = llvm::ConstantInt::get();
  v47 = llvm::IRBuilderBase::CreateInsertElement((v45 + 1712), v38, v44, v46, v50);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    v48 = *(a4 + 32);
  }

  else
  {
    v48 = 1;
  }

  v49 = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), v47, 0, v48, 1);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    a4 = **(a4 + 16);
  }

  return AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), v49, a4);
}

uint64_t AGCLLVMUserComputeKernelBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserComputeKernelBase *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(this);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserComputeKernelBase::optimizeThreadgroupBarriers(uint64_t this)
{
  if ((*(this + 4548) - 33) >= 0xFFFFFFE0 && *(this + *(*this - 24) + 2224) == 1)
  {
    llvm::FunctionType::get();
    llvm::Module::getOrInsertFunction();
    return llvm::Value::replaceAllUsesWith();
  }

  return this;
}

uint64_t AGCLLVMUserComputeKernelBase::setupShaderOutputs(AGCLLVMUserComputeKernelBase *this)
{
  v9[2] = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  if ((*(*(this + 567) + 16) & 0x40) != 0)
  {
    v3 = *(this + *(*this - 24) + 2136);
    v4 = v3 + 24;
    v5 = *(v3 + 32);
    if (v5 != v3 + 24)
    {
      do
      {
        if (v5)
        {
          v6 = v5 - 56;
        }

        else
        {
          v6 = 0;
        }

        v9[0] = *(v6 + 112);
        llvm::AttributeList::getFnAttrs(v9);
        v8 = llvm::AttributeSet::addAttribute();
        LODWORD(v9[0]) = -1;
        v9[1] = v8;
        *(v6 + 112) = llvm::AttributeList::get();
        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  return 1;
}

uint64_t AGCLLVMUserComputeKernelBase::setupShaderInputs(AGCLLVMUserComputeKernelBase *this)
{
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

  for (i = *(v2 + 88) + 40 * *(v2 + 96); v5 != i; v5 += 5)
  {
    if (v5[1])
    {
      v8 = *(v4 + 40);
      v9 = v8 ? (v8 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v9, *(this + 5));
      v10 = *(v5 + 8);
      v11 = *(*(this + 10) + 8 * v10);
      if ((AGCLLVMUserShader::replaceInputArgument(this, v5, v10, v11) & 1) == 0)
      {
        String = llvm::MDString::getString(*(v11 - 8 * *(v11 + 8) + 8));
        result = (*(*this + 568))(this, String, v13, *v5);
        if (!result)
        {
          return result;
        }

        llvm::Value::replaceAllUsesWith();
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserComputeKernelBase::wrapperPrefixData(AGCLLVMUserComputeKernelBase *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (!*(*(*(this + *(*this - 24) + 2168) + 912) + 60))
  {
    return 0;
  }

  llvm::ConstantInt::get();

  return llvm::ConstantDataVector::getSplat();
}

void AGCLLVMUserComputeKernelBase::addInitCompilePass(AGCLLVMUserComputeKernelBase *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelBase>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileComputeKernelCommonPass>::name()
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

  v2 = &aStringrefLlvmG_33[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeKernelCommonPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeKernelCommonPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGKernelPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 76;
  }

  v2 = &aStringrefLlvmG_32[v1];
  v3 = 76 - v1;
  if ((76 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 76 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGKernelPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGKernelPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelBase>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 108;
  }

  v2 = &aStringrefLlvmG_31[v1];
  v3 = 108 - v1;
  if ((108 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 108 - v1;
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

uint64_t AGCLLVMUserComputeKernelLegacy::replaceBuiltins(AGCLLVMUserComputeKernelLegacy *this)
{
  v1 = this;
  v168 = *MEMORY[0x277D85DE8];
  v130 = AGCLLVMUserObject::replaceBuiltins(this);
  if (!v130)
  {
    return v130;
  }

  v2 = *(*(v1 + 20) + 80);
  if (v2)
  {
    v3 = (v2 - 24);
  }

  else
  {
    v3 = 0;
  }

  v133 = v1;
  if (*(v1 + 4544) == 1)
  {
    *&v152 = llvm::BasicBlock::getFirstInsertionPt(v3);
    AGCLLVMUserObject::hoistAllocas(v1, v3, &v152, v4);
    v155 = "kernel_entry";
    v159 = 259;
    llvm::BasicBlock::splitBasicBlock();
    v155 = "early_out_block";
    v159 = 259;
    operator new();
  }

  v5 = v1 + *(*v1 - 24);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v3);
  llvm::IRBuilderBase::SetInsertPoint((v5 + 1712), v3, FirstInsertionPt);
  v7 = 0;
  v8 = (v1 + 4592);
  v9 = 1;
  do
  {
    v10 = AGCLLVMUserComputeKernelLegacy::buildLocalIDInternal(v1, *(v1 + *(*v1 - 24) + 1904), v7);
    llvm::ValueHandleBase::operator=(v8, v10);
    v9 &= *(v8 + 2) != 0;
    ++v7;
    v8 = (v8 + 24);
  }

  while (v7 != 3);
  if (v9)
  {
    v11 = (v1 + *(*v1 - 24));
    v12 = *(v1 + 582);
    v13 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(v1, v11[238], 1u);
    v159 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v11 + 214), v12, v13, &v155);
    llvm::ValueHandleBase::operator=((v1 + 4664), Mul);
    v15 = v1 + *(*v1 - 24);
    v16 = *(v1 + 585);
    v17 = *(v1 + 579);
    v159 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v15 + 1712), v16, v17, &v155);
    llvm::ValueHandleBase::operator=((v1 + 4664), Add);
    v19 = (v1 + *(*v1 - 24));
    v20 = *(v1 + 585);
    v21 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(v1, v19[238], 0);
    v159 = 257;
    v22 = llvm::IRBuilderBase::CreateMul((v19 + 214), v20, v21, &v155);
    llvm::ValueHandleBase::operator=((v1 + 4664), v22);
    v23 = v1 + *(*v1 - 24);
    v24 = *(v1 + 585);
    v25 = *(v1 + 576);
    v159 = 257;
    v26 = llvm::IRBuilderBase::CreateAdd((v23 + 1712), v24, v25, &v155);
    llvm::ValueHandleBase::operator=((v1 + 4664), v26);
  }

  v27 = *(v1 + *(*v1 - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v155, *v27);
  v164 = v1;
  v155 = &unk_28259D908;
  v163[37] = v27;
  {
    AGCLLVMUserComputeKernelLegacy::replaceWorkitemFunctions(void)::workitem_functions[0] = "air.get_global_size.i32";
    dword_28117D8B0 = 1;
    qword_28117D8B8 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize;
    unk_28117D8C0 = 0;
    dword_28117D8C8 = 4;
    word_28117D8CC = 0;
    qword_28117D8D0 = "air.get_global_size.i16";
    dword_28117D8D8 = 1;
    qword_28117D8E0 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize;
    unk_28117D8E8 = 0;
    dword_28117D8F0 = 4;
    word_28117D8F4 = 0;
    qword_28117D8F8 = "air.get_global_id.i32";
    dword_28117D900 = 1;
    qword_28117D908 = AGCLLVMUserComputeKernelLegacy::buildGlobalID;
    unk_28117D910 = 0;
    dword_28117D918 = 4;
    word_28117D91C = 0;
    qword_28117D920 = "air.get_global_id.i16";
    dword_28117D928 = 1;
    qword_28117D930 = AGCLLVMUserComputeKernelLegacy::buildGlobalID;
    unk_28117D938 = 0;
    dword_28117D940 = 4;
    word_28117D944 = 0;
    qword_28117D948 = "air.get_local_size.i32";
    dword_28117D950 = 1;
    qword_28117D958 = AGCLLVMUserComputeKernelLegacy::buildLocalSize;
    unk_28117D960 = 0;
    dword_28117D968 = 4;
    word_28117D96C = 0;
    qword_28117D970 = "air.get_local_size.i16";
    dword_28117D978 = 1;
    qword_28117D980 = AGCLLVMUserComputeKernelLegacy::buildLocalSize;
    unk_28117D988 = 0;
    dword_28117D990 = 4;
    word_28117D994 = 0;
    qword_28117D998 = "air.get_local_id.i32";
    dword_28117D9A0 = 1;
    qword_28117D9A8 = AGCLLVMUserComputeKernelLegacy::buildLocalID;
    unk_28117D9B0 = 0;
    dword_28117D9B8 = 4;
    word_28117D9BC = 0;
    qword_28117D9C0 = "air.get_local_id.i16";
    dword_28117D9C8 = 1;
    qword_28117D9D0 = AGCLLVMUserComputeKernelLegacy::buildLocalID;
    unk_28117D9D8 = 0;
    dword_28117D9E0 = 4;
    word_28117D9E4 = 0;
    qword_28117D9E8 = "air.get_local_linear_id.i32";
    dword_28117D9F0 = 1;
    qword_28117D9F8 = AGCLLVMUserComputeKernelLegacy::buildLocalLinearId;
    unk_28117DA00 = 0;
    dword_28117DA08 = 2;
    word_28117DA0C = 0;
    qword_28117DA10 = "air.get_local_linear_id.i16";
    dword_28117DA18 = 1;
    qword_28117DA20 = AGCLLVMUserComputeKernelLegacy::buildLocalLinearId;
    unk_28117DA28 = 0;
    dword_28117DA30 = 2;
    word_28117DA34 = 0;
    qword_28117DA38 = "air.get_global_linear_id.i32";
    dword_28117DA40 = 1;
    qword_28117DA48 = AGCLLVMUserComputeKernelLegacy::buildGlobalLinearId;
    unk_28117DA50 = 0;
    dword_28117DA58 = 2;
    word_28117DA5C = 0;
    qword_28117DA60 = "air.get_global_linear_id.i16";
    dword_28117DA68 = 1;
    qword_28117DA70 = AGCLLVMUserComputeKernelLegacy::buildGlobalLinearId;
    unk_28117DA78 = 0;
    dword_28117DA80 = 2;
    word_28117DA84 = 0;
    qword_28117DA88 = "air.get_num_groups.i32";
    dword_28117DA90 = 1;
    qword_28117DA98 = AGCLLVMUserComputeKernelLegacy::buildNumGroups;
    unk_28117DAA0 = 0;
    dword_28117DAA8 = 4;
    word_28117DAAC = 0;
    qword_28117DAB0 = "air.get_num_groups.i16";
    dword_28117DAB8 = 1;
    qword_28117DAC0 = AGCLLVMUserComputeKernelLegacy::buildNumGroups;
    qword_28117DAC8 = 0;
    dword_28117DAD0 = 4;
    word_28117DAD4 = 0;
    qword_28117DAD8 = "air.get_group_id.i32";
    dword_28117DAE0 = 1;
    qword_28117DAE8 = AGCLLVMUserComputeKernelLegacy::buildGroupID;
    qword_28117DAF0 = 0;
    dword_28117DAF8 = 4;
    word_28117DAFC = 0;
    qword_28117DB00 = "air.get_group_id.i16";
    dword_28117DB08 = 1;
    qword_28117DB10 = AGCLLVMUserComputeKernelLegacy::buildGroupID;
    qword_28117DB18 = 0;
    dword_28117DB20 = 4;
    word_28117DB24 = 0;
    qword_28117DB28 = "air.get_stage_in_grid_origin.i32";
    dword_28117DB30 = 1;
    qword_28117DB38 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117DB40 = 0;
    dword_28117DB48 = 4;
    word_28117DB4C = 0;
    qword_28117DB50 = "air.get_stage_in_grid_origin.i16";
    dword_28117DB58 = 1;
    qword_28117DB60 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117DB68 = 0;
    dword_28117DB70 = 4;
    word_28117DB74 = 0;
    qword_28117DB78 = "air.get_stage_in_grid_size.i32";
    dword_28117DB80 = 1;
    qword_28117DB88 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117DB90 = 0;
    dword_28117DB98 = 4;
    word_28117DB9C = 0;
    qword_28117DBA0 = "air.get_stage_in_grid_size.i16";
    dword_28117DBA8 = 1;
    qword_28117DBB0 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117DBB8 = 0;
    dword_28117DBC0 = 4;
    word_28117DBC4 = 0;
  }

  for (i = 0; i != 20; ++i)
  {
    v29 = &AGCLLVMUserComputeKernelLegacy::replaceWorkitemFunctions(void)::workitem_functions[5 * i];
    v141 = v29;
    if (*v29)
    {
      strlen(*v29);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v31 = *(v141 + 8);
      v132 = i;
      v134 = Function;
      if (v31 == 12)
      {
        for (j = *(Function + 8); j; v160 = 0uLL)
        {
          v35 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(&v156, v35);
          v36 = v164 + *(*v164 - 24);
          v152 = v160;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v153, &v156);
          v154 = v161;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v152, (v36 + 1712));
          if (v153)
          {
            llvm::MetadataTracking::untrack();
          }

          v37 = *(v141 + 2);
          v38 = *(v141 + 3);
          v39 = (v164 + (v38 >> 1));
          if (v38)
          {
            v37 = *(*v39 + v37);
          }

          v37(v39, v35);
        }

        goto LABEL_131;
      }

      if (v31 == 11)
      {
        v32 = *(v141 + 2);
        if (v32)
        {
          v33 = strlen(*(v141 + 2));
          *&v165[0] = &v165[1] + 8;
          *(v165 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v165, v32, &v32[v33]);
        }

        else
        {
          *&v165[1] = 64;
          v165[0] = &v165[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v165, ".", "");
        if (*&v165[1] < *(&v165[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v165[0] != (&v165[1] + 8))
        {
          free(*&v165[0]);
        }

        goto LABEL_131;
      }

      v40 = **(*(Function + 24) + 16);
      v41 = ((*(v40 + 8) & 0xFE) == 18) & *(v141 + 37);
      if (v41 == 1)
      {
        v42 = *(v40 + 32);
      }

      else
      {
        v42 = 1;
      }

      v137 = v42;
      v131 = v161;
      v43 = *(Function + 8);
      if (!v43)
      {
LABEL_125:
        v161 = v131;
        v1 = v133;
LABEL_131:
        llvm::Function::eraseFromParent(v134);
        i = v132;
        continue;
      }

      while (1)
      {
        v44 = *(v43 + 24);
        v136 = *(v43 + 8);
        v45 = *(v141 + 2);
        if (v45 == 1)
        {
          v46 = 0;
        }

        else
        {
          if (v45 != 2)
          {
            goto LABEL_36;
          }

          v46 = 121;
        }

        v161 = v46;
LABEL_36:
        llvm::IRBuilderBase::SetInsertPoint(&v156, v44);
        v47 = llvm::UndefValue::get();
        if (v137)
        {
          for (k = 0; k != v137; ++k)
          {
            v139 = v47;
            v167 = 0;
            v166 = 0u;
            memset(v165, 0, sizeof(v165));
            v49 = llvm::CallBase::arg_end(v44) - v44 + 32 * (*(v44 + 5) & 0x7FFFFFF);
            if ((v49 & 0x1FFFFFFFE0) != 0)
            {
              v50 = (v49 >> 5);
              v51 = v165;
              v52 = v44;
              do
              {
                v53 = (v52 - 32 * (*(v44 + 5) & 0x7FFFFFF));
                v54 = *v53;
                *v51 = *v53;
                if (v41 && (*(*v54 + 8) & 0xFE) == 0x12)
                {
                  v151 = 257;
                  v55 = llvm::ConstantInt::get();
                  *v51 = llvm::IRBuilderBase::CreateExtractElement(&v156, v54, v55, &PrimitiveSizeInBits);
                }

                ++v51;
                v52 = (v52 + 32);
                --v50;
              }

              while (v50);
            }

            if (*(v141 + 36))
            {
              v56 = **&v165[0];
              if ((*(**&v165[0] + 8) & 0xFE) == 0x12)
              {
                v56 = **(v56 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v56);
              LODWORD(v150) = v57;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v58 = 0;
              }

              else
              {
                v59 = v163[4];
                if ((*(**&v165[0] + 8) & 0xFE) == 0x12)
                {
                  v59 = llvm::FixedVectorType::get();
                }

                if ((v49 & 0x1FFFFFFFE0) != 0)
                {
                  v60 = (v49 >> 5);
                  v61 = v165;
                  do
                  {
                    v62 = *v61;
                    v151 = 257;
                    *v61++ = llvm::IRBuilderBase::CreateFPExt(&v156, v62, v59, &PrimitiveSizeInBits);
                    --v60;
                  }

                  while (v60);
                }

                v58 = 1;
              }
            }

            else
            {
              v58 = 0;
            }

            if (llvm::FPMathOperator::classof(v44))
            {
              FastMathFlags = llvm::Instruction::getFastMathFlags(v44);
            }

            else
            {
              FastMathFlags = 0;
            }

            v64 = v164 + *(*v164 - 24);
            v146 = v160;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v147, &v156);
            v148 = v161;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v146, (v64 + 1712));
            if (v147)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v66 = *(v141 + 8);
            if (v66 > 5)
            {
              if (v66 <= 7)
              {
                if (v66 == 6)
                {
                  v80 = *(v141 + 2);
                  v89 = *(v141 + 3);
                  v83 = *(&v165[0] + 1);
                  v82 = *&v165[0];
                  v85 = (v164 + (v89 >> 1));
                  if (v89)
                  {
                    v80 = *(*v85 + v80);
                  }

                  v84 = FastMathFlags;
                }

                else
                {
                  v80 = *(v141 + 2);
                  v81 = *(v141 + 3);
                  v83 = *(&v165[0] + 1);
                  v82 = *&v165[0];
                  v84 = *&v165[1];
                  v85 = (v164 + (v81 >> 1));
                  if (v81)
                  {
                    v91 = (*(*v85 + v80))(v85, *&v165[0], *(&v165[0] + 1), *&v165[1]);
                    goto LABEL_111;
                  }
                }

LABEL_110:
                v91 = v80(v85, v82, v83, v84);
                goto LABEL_111;
              }

              switch(v66)
              {
                case 8:
                  v72 = *(v141 + 2);
                  v92 = *(v141 + 3);
                  v93 = *(&v165[0] + 1);
                  v74 = *&v165[0];
                  v94 = *&v165[1];
                  v75 = (v164 + (v92 >> 1));
                  if (v92)
                  {
                    v72 = *(*v75 + v72);
                  }

                  v98 = FastMathFlags;
                  goto LABEL_106;
                case 9:
                  v80 = *(v141 + 2);
                  v97 = *(v141 + 3);
                  v85 = (v164 + (v97 >> 1));
                  if (v97)
                  {
                    v80 = *(*v85 + v80);
                  }

                  v82 = v165;
                  v83 = &unk_20E75F419;
                  v84 = 0;
                  goto LABEL_110;
                case 10:
                  v72 = *(v141 + 2);
                  v73 = *(v141 + 3);
                  v74 = *v44;
                  v75 = (v164 + (v73 >> 1));
                  if (v73)
                  {
                    v72 = *(*v75 + v72);
                  }

                  v93 = v165;
                  v94 = &unk_20E75F419;
                  v98 = 0;
LABEL_106:
                  v91 = v72(v75, v74, v93, v94, v98);
                  goto LABEL_111;
              }
            }

            else
            {
              if (v66 > 2)
              {
                if (v66 != 3)
                {
                  if (v66 == 4)
                  {
                    v95 = (*&v165[0] + 24);
                    if (*(*&v165[0] + 32) >= 0x41u)
                    {
                      v95 = *v95;
                    }

                    v70 = *v95;
                    v67 = *(v141 + 2);
                    v96 = *(v141 + 3);
                    v69 = *v44;
                    v71 = (v164 + (v96 >> 1));
                    if (v96)
                    {
                      v67 = *(*v71 + v67);
                    }
                  }

                  else
                  {
                    v67 = *(v141 + 2);
                    v68 = *(v141 + 3);
                    v70 = *(&v165[0] + 1);
                    v69 = *&v165[0];
                    v71 = (v164 + (v68 >> 1));
                    if (v68)
                    {
                      v67 = *(*v71 + v67);
                    }
                  }

                  v91 = v67(v71, v69, v70);
                  goto LABEL_111;
                }

                v76 = *(v141 + 2);
                v90 = *(v141 + 3);
                v78 = *&v165[0];
                v79 = (v164 + (v90 >> 1));
                if ((v90 & 1) == 0)
                {
                  goto LABEL_86;
                }

                goto LABEL_85;
              }

              if (v66 == 1)
              {
                v86 = *(v141 + 2);
                v87 = *(v141 + 3);
                v88 = (v164 + (v87 >> 1));
                if (v87)
                {
                  v86 = *(*v88 + v86);
                }

                v91 = v86(v88);
                goto LABEL_111;
              }

              if (v66 == 2)
              {
                v76 = *(v141 + 2);
                v77 = *(v141 + 3);
                v78 = *v44;
                v79 = (v164 + (v77 >> 1));
                if ((v77 & 1) == 0)
                {
LABEL_86:
                  v91 = v76(v79, v78);
LABEL_111:
                  FPTrunc = v91;
                  goto LABEL_112;
                }

LABEL_85:
                v76 = *(*v79 + v76);
                goto LABEL_86;
              }
            }

LABEL_112:
            v99 = v164 + *(*v164 - 24);
            v143 = *(v99 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v144, (v99 + 1712));
            v145 = *(v99 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v143, &v156);
            if (v144)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v58)
            {
              v100 = *v44;
              if (v41 && (*(v100 + 8) & 0xFE) == 0x12)
              {
                v100 = **(v100 + 16);
              }

              v151 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(&v156, FPTrunc, v100, &PrimitiveSizeInBits);
            }

            if (v41)
            {
              v151 = 257;
              v101 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(&v156, v139, FPTrunc, v101, &PrimitiveSizeInBits);
            }

            v47 = FPTrunc;
          }
        }

        if (*v44 != v163[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v44);
        v43 = v136;
        if (!v136)
        {
          goto LABEL_125;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v163);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v162);
  if (v156 != &v158)
  {
    free(v156);
  }

  v102 = v1 + *(*v1 - 24);
  if (v102[2224] == 1)
  {
    if (!*(v1 + 600))
    {
      v155 = "agc.barrier_target_count";
      v159 = 259;
      v103 = AGCLLVMUserComputeKernelBase::constructSHGlobal(v1, &v155, *(v102 + 238), 0x2Au, 4u);
      llvm::ValueHandleBase::operator=((v1 + 4784), v103);
    }

    if (!*(v1 + 603))
    {
      v104 = llvm::User::operator new(0x58);
      v155 = "agc.barrier_counter";
      v159 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      llvm::GlobalObject::setAlignment();
      llvm::ValueHandleBase::operator=((v1 + 4808), v104);
    }

    v105 = *(*(v1 + *(*v1 - 24) + 5128) + 8);
    if (v105)
    {
      v106 = 0;
      v138 = v1 + 2168;
      v140 = (v1 + 1712);
      v142 = (v1 + 1904);
      v135 = v1 + 1704;
      v107 = 1;
      do
      {
        v108 = *(v105 + 24);
        v109 = *(v108 - 4 * (*(v108 + 5) & 0x7FFFFFF));
        v110 = (v109 + 24);
        if (*(v109 + 32) >= 0x41u)
        {
          v110 = *v110;
        }

        v105 = *(v105 + 8);
        v111 = *v110;
        v155 = &v157;
        v156 = 0x400000000;
        v112 = llvm::PointerType::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, v112);
        v113 = llvm::PointerType::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, v113);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, *(v142 + *(*v133 - 24)));
        v114 = *(v133 + *(*v133 - 24) + 2168);
        if (*(v114 + 1040))
        {
          v115 = (v111 & 1) == 0;
        }

        else
        {
          v115 = 1;
        }

        if (v115)
        {
          v117 = (v114 + 1032);
        }

        else
        {
          v116 = llvm::PointerType::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, v116);
          v117 = (*&v138[*(*v133 - 24)] + 1040);
        }

        v118 = *v117;
        llvm::FunctionType::get();
        if (v118)
        {
          strlen(v118);
        }

        llvm::Module::getOrInsertFunction();
        v120 = v119;
        if (v155 != &v157)
        {
          free(v155);
        }

        llvm::IRBuilderBase::SetInsertPoint((v140 + *(*v133 - 24)), v108);
        v155 = &v157;
        v156 = 0x400000000;
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, *(v133 + 603));
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, *(v133 + 600));
        v121 = llvm::ConstantInt::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, v121);
        v122 = *v133;
        if (*(*&v138[*(*v133 - 24)] + 1040) && (v111 & 1) != 0)
        {
          if (!*(v133 + 606))
          {
            *&v165[0] = "agc.mem_fence_addr";
            LOWORD(v166) = 259;
            v123 = llvm::PointerType::get();
            v124 = AGCLLVMUserComputeKernelBase::constructSHGlobal(v133, v165, v123, 0x2Cu, 8u);
            llvm::ValueHandleBase::operator=((v133 + 4832), v124);
            v122 = *v133;
          }

          v125 = *(v122 - 24);
          v126 = *(v133 + 606);
          LOWORD(v166) = 257;
          Load = AGCLLVMBuilder::CreateLoad(&v135[v125], v126, v165);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, Load);
          v122 = *v133;
        }

        v128 = *(v122 - 24);
        LOWORD(v166) = 257;
        llvm::IRBuilderBase::CreateCall((v140 + v128), *(v120 + 24), v120, v155, v156, v165);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v108);
        if (v155 != &v157)
        {
          free(v155);
        }

        ++v107;
        ++v106;
      }

      while (v105);
    }
  }

  return v130;
}

llvm::GlobalVariable *AGCLLVMUserComputeKernelBase::constructSHGlobal(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v7 = llvm::User::operator new(0x58);
  v8 = llvm::GlobalVariable::GlobalVariable();
  *(v8 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v9 = a1 + *(*a1 - 24);
  v10 = *(v9 + 268);
  v11 = AGCLLVMBuilder::buildGlobalMetadata(v9 + 213, v7, a4, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v11);
  return v7;
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGroupID(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v5 = this + 24 * a3;
  v6 = (v5 + 4856);
  if (!*(v5 + 609))
  {
    v8 = 1;
    v9 = llvm::User::operator new(0x58);
    v10 = (&AGCLLVMDriverCDMShader::buildLocalSize(AGCLLVMBuilder::InsertPoint,llvm::Type *,unsigned int)::$_1::operator() const(void)::xyz)[a3];
    if (*v10)
    {
      v20 = (&AGCLLVMDriverCDMShader::buildLocalSize(AGCLLVMBuilder::InsertPoint,llvm::Type *,unsigned int)::$_1::operator() const(void)::xyz)[a3];
      v8 = 3;
    }

    v19[0] = "agx.group_id_";
    LOBYTE(v21) = 3;
    HIBYTE(v21) = v8;
    v11 = 1;
    llvm::GlobalVariable::GlobalVariable();
    if (*v10)
    {
      v20 = v10;
      v11 = 3;
    }

    v19[0] = "cl_group_id_";
    LOBYTE(v21) = 3;
    HIBYTE(v21) = v11;
    llvm::Twine::str(&__p, v19);
    llvm::GlobalObject::setSection();
    if (v17 < 0)
    {
      operator delete(__p);
    }

    llvm::GlobalObject::setAlignment();
    llvm::ValueHandleBase::operator=(v6, v9);
  }

  v12 = this + *(*this - 24);
  v13 = *(v6 + 2);
  v21 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v12 + 1704), v13, v19);
  v18 = 257;
  return llvm::IRBuilderBase::CreateCast((v12 + 1712), 38, Load, a2, &__p);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildNumGroups(llvm::Type ***this, llvm::Type *a2, unsigned int a3)
{
  if (!this[565])
  {
    v5 = llvm::PointerType::get();
    v6 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    v20[0] = "agc.indirect_wg_count_buffer_pointer.";
    v20[2] = v6;
    v21 = 2051;
    v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 456))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v5, v20, v7, 0xCu, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 563), GlobalBufferBinding);
  }

  v9 = *(*this - 3) + this;
  v10 = this[565];
  v21 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), v10, v20);
  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v21 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v20);
  v16 = *(*this - 3) + this;
  v21 = 257;
  v17 = AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v20);
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateCast((v16 + 1712), 38, v17, a2, v19);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGlobalLinearId(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2)
{
  v4 = this + *(*this - 24);
  v5 = AGCLLVMUserComputeKernelLegacy::buildGlobalID(this, a2, 2u);
  v6 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize(this, a2, 1u);
  v18 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v4 + 1712), v5, v6, v17);
  v8 = this + *(*this - 24);
  v9 = AGCLLVMUserComputeKernelLegacy::buildGlobalID(this, a2, 1u);
  v18 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), Mul, v9, v17);
  v11 = this + *(*this - 24);
  v12 = AGCLLVMUserComputeKernelLegacy::buildGlobalSize(this, a2, 0);
  v18 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v11 + 1712), Add, v12, v17);
  v14 = this + *(*this - 24);
  v15 = AGCLLVMUserComputeKernelLegacy::buildGlobalID(this, a2, 0);
  v18 = 257;
  return llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v17);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGlobalID(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v6 = this + *(*this - 24);
  v7 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(this, a2, a3);
  v8 = AGCLLVMUserComputeKernelLegacy::buildGroupID(this, a2, a3);
  v15 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v6 + 1712), v7, v8, v14);
  v10 = this + *(*this - 24);
  v11 = *(this + 3 * a3 + 576);
  v15 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v10 + 1712), 38, v11, a2, v14);
  v15 = 257;
  return llvm::IRBuilderBase::CreateAdd((v10 + 1712), Mul, Cast, v14);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildGlobalSize(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v6 = this + *(*this - 24);
  v7 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(this, a2, a3);
  v8 = AGCLLVMUserComputeKernelLegacy::buildNumGroups(this, a2, a3);
  v11 = 257;
  return llvm::IRBuilderBase::CreateMul((v6 + 1712), v7, v8, v10);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalSize(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v5 = this + 24 * a3;
  v6 = (v5 + 4688);
  if (!*(v5 + 588))
  {
    *&v13 = "agc.";
    *&v14 = "local_size";
    LOWORD(v15) = 771;
    v7 = AGCLLVMUserComputeKernelLegacy::buildLocalSize(llvm::Type *,unsigned int)::xyz[a3];
    if (*v7)
    {
      *&v16 = &v13;
      *&v17 = v7;
      LOWORD(v18) = 770;
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = v15;
    }

    v8 = AGCLLVMUserComputeKernelBase::constructSHGlobal(this, &v16, *(this + *(*this - 24) + 1904), AGCLLVMDriverCDMShader::buildLocalSize(AGCLLVMBuilder::InsertPoint,llvm::Type *,unsigned int)::$_1::operator() const(void)::constant_type[a3], 4u);
    llvm::ValueHandleBase::operator=(v6, v8);
  }

  v9 = this + *(*this - 24);
  v10 = *(v6 + 2);
  LOWORD(v18) = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), v10, &v16);
  LOWORD(v15) = 257;
  return llvm::IRBuilderBase::CreateCast((v9 + 1712), 38, Load, a2, &v13);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalLinearId(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2)
{
  v2 = this + *(*this - 24);
  v3 = *(this + 585);
  v6 = 257;
  return llvm::IRBuilderBase::CreateCast((v2 + 1712), 38, v3, a2, v5);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalID(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v3 = this + *(*this - 24);
  v4 = *(this + 3 * a3 + 576);
  v7 = 257;
  return llvm::IRBuilderBase::CreateCast((v3 + 1712), 38, v4, a2, v6);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildLocalIDInternal(AGCLLVMUserComputeKernelLegacy *this, llvm::Type *a2, unsigned int a3)
{
  v3 = *(this + a3 + 1144);
  if (v3 == -1)
  {
    return 0;
  }

  v7 = *(this + 20);
  if (*(v7 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 20));
  }

  if (v3)
  {
    v8 = *(v7 + 88) + 40 * (v3 - 1) + 40;
  }

  else
  {
    v8 = *(v7 + 88);
  }

  if (a3)
  {
    v9 = this + *(*this - 24);
    v10 = *(v9 + 243);
    v19 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 49, v8, v10, v18);
    v12 = this + *(*this - 24);
    v19 = 257;
    v13 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v12 + 1712), Cast, v13, v18);
    v15 = this + *(*this - 24);
    v19 = 257;
    v8 = llvm::IRBuilderBase::CreateCast((v15 + 1712), 39, Element, a2, v18);
  }

  v17 = this + *(*this - 24);
  v19 = 257;
  return llvm::IRBuilderBase::CreateCast((v17 + 1712), 38, v8, a2, v18);
}

uint64_t AGCLLVMUserComputeKernelLegacy::getWGPadSHGlobal(llvm::Type ***a1, int a2)
{
  if (a2 == 2)
  {
    v3 = a1[624];
    if (!v3)
    {
      v4 = a1 + 624;
      v5 = 622;
      v11[0] = "agc.local_xdim_mul_and_shift";
      v12 = 259;
      v6 = *(*(*a1 - 3) + a1 + 1944);
      v7 = 47;
      goto LABEL_9;
    }
  }

  else if (a2 == 1)
  {
    v3 = a1[621];
    if (!v3)
    {
      v4 = a1 + 621;
      v5 = 619;
      v11[0] = "agc.local_slice_mul_and_shift";
      v12 = 259;
      v6 = *(*(*a1 - 3) + a1 + 1944);
      v7 = 46;
LABEL_9:
      v8 = AGCLLVMUserComputeKernelBase::constructSHGlobal(a1, v11, v6, v7, 4u);
      llvm::ValueHandleBase::operator=(&a1[v5], v8);
      v3 = *v4;
    }
  }

  else
  {
    v3 = a1[618];
    if (!v3)
    {
      v4 = a1 + 618;
      v5 = 616;
      v11[0] = "agc.local_slice_and_linear_size";
      v12 = 259;
      v6 = *(*(*a1 - 3) + a1 + 1904);
      v7 = 45;
      goto LABEL_9;
    }
  }

  v9 = *(*a1 - 3) + a1;
  v12 = 257;
  return AGCLLVMBuilder::CreateLoad((v9 + 1704), v3, v11);
}

uint64_t AGCLLVMUserComputeKernelLegacy::buildWGMulShiftMod(AGCLLVMUserComputeKernelLegacy *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value **a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = this + *(*this - 24);
  v42 = 257;
  v11 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v10 + 1712), a4, v11, v41);
  v13 = this + *(*this - 24);
  v42 = 257;
  v14 = llvm::ConstantInt::get();
  v15 = llvm::IRBuilderBase::CreateExtractElement((v13 + 1712), a4, v14, v41);
  v16 = (this + *(*this - 24));
  v17 = v16[271];
  v18 = *(v17 + 1104);
  if (v18)
  {
    v19 = strlen(*(v17 + 1104));
    v20 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>((v16 + 213), v18, v19, v16[237], v16[237], v16[237], v16[237]);
    v43[0] = a2;
    v43[1] = Element;
    v43[2] = a2;
    v21 = (this + *(*this - 24));
    v42 = 257;
    v22 = llvm::IRBuilderBase::CreateCall(v21 + 214, *(v20 + 24), v20, v43, 3, v41);
  }

  else
  {
    v23 = v16[238];
    v42 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v16 + 214), 39, Element, v23, v41);
    v44 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v16 + 214), a2, Cast, v43);
    v26 = this + *(*this - 24);
    v42 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v26 + 1712), Mul, a2, v41);
    v28 = this + *(*this - 24);
    v29 = *(v28 + 243);
    v42 = 257;
    v30 = llvm::IRBuilderBase::CreateCast((v28 + 1712), 49, Add, v29, v41);
    v31 = this + *(*this - 24);
    v42 = 257;
    v32 = llvm::ConstantInt::get();
    v22 = llvm::IRBuilderBase::CreateExtractElement((v31 + 1712), v30, v32, v41);
  }

  v33 = this + *(*this - 24);
  v42 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v33 + 1712), v22, v15, v41);
  v35 = *a2;
  v44 = 257;
  v36 = llvm::IRBuilderBase::CreateCast((v33 + 1712), 39, LShr, v35, v43);
  if (a5)
  {
    *a5 = v36;
  }

  v37 = this + *(*this - 24);
  v42 = 257;
  v38 = llvm::IRBuilderBase::CreateMul((v37 + 1712), v36, a3, v41);
  v39 = this + *(*this - 24);
  v42 = 257;
  return llvm::IRBuilderBase::CreateSub((v39 + 1712), a2, v38, v41);
}

uint64_t AGCLLVMUserComputeKernelLegacy::wrapperFunctionType(AGCLLVMUserComputeKernelLegacy *this)
{
  v1 = *(this + 1140);
  if (v1)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v1);
  }

  return llvm::FunctionType::get();
}

void std::vector<llvm::Type *>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void AGCLLVMUserComputeKernelLegacy::addInitCompilePass(AGCLLVMUserComputeKernelLegacy *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelLegacy>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileComputeShaderLegacyCollectIDPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x5D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 93;
  }

  v2 = &aStringrefLlvmG_36[v1];
  v3 = 93 - v1;
  if ((93 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 93 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeShaderLegacyCollectIDPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeShaderLegacyCollectIDPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<InitCompileComputeShaderLegacyPass>::name()
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

  v2 = &aStringrefLlvmG_35[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeShaderLegacyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeShaderLegacyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelLegacy>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_34[v1];
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

void AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(AGCLLVMUserComputeKernelLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMObject::~AGCLLVMObject((v4 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v4 + 5008));
}

BOOL AGCLLVMUserComputeKernelG10::constructReply(AGCLLVMUserComputeKernelG10 *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (!result)
  {
    return result;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v3 = AGCLLVMUserObject::constructFlatReply(this);
  v4 = this + *(*this - 24);
  v5 = *(this + 8);
  v6 = *(this + 9);
  v7 = *(this + 4544);
  v8 = *(this + 1137);
  v9 = *(this + 12);
  v4[4358] = 1;
  v10 = *(v4 + 1082);
  v11 = *(v4 + 1080) - *(v4 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v4 + 4288, 12, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 4288, 14, v9, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 4288, 10, v7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 4288, 8, v6, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v4 + 4288, 6, v5, 0);
  v12 = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v11 + v10);
  v13 = this + *(*this - 24);
  v14 = *(v13 + 1080);
  v13[4358] = 1;
  v15 = *(v13 + 1082);
  v16 = v14 - *(v13 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v13 + 4288), v3);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v13 + 4288), v12);
  v17 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v16 + v15);
  flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v17, v18);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  if (*(this + 17) == 1)
  {
    v19 = *this;
  }

  else
  {
    v19 = *this;
    if ((*(this + 16) & 1) == 0)
    {
      v20 = this + *(v19 - 24);
      if ((v20[2224] & 1) == 0 && !*(this + 1150))
      {
        v33 = v20 + 2512;
        v34 = *(v20 + 314);
        if (v34)
        {
          v35 = (v20 + 3072);
          if (*(v20 + 315))
          {
            v35 = (v20 + 2512);
          }
        }

        else
        {
          v35 = (v20 + 3072);
        }

        v36 = 0;
        if (*v35 && v35[1])
        {
          v36 = (*v35 + **v35);
        }

        v37 = (v36 - *v36);
        if (*v37 >= 5u && (v38 = v37[2]) != 0)
        {
          v39 = (v36 + v38 + *(v36 + v38));
        }

        else
        {
          v39 = 0;
        }

        v40 = (v39 - *v39);
        if (*v40 >= 0x3Fu && (v41 = v40[31]) != 0 && (v42 = (v39 + v41 + *(v39 + v41)), v43 = *v42, v43))
        {
          v44 = v42 + 1;
          while (1)
          {
            v45 = *v44++;
            v46 = (1 << v45) & 0x3F000000000777;
            if (v45 <= 0x35 && v46 != 0)
            {
              break;
            }

            if (!--v43)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          if (v34)
          {
            v48 = *(v20 + 315);
            v49 = v20 + 3072;
            if (v48)
            {
              v49 = v33;
            }
          }

          else
          {
            v49 = v20 + 3072;
          }

          v51 = *v49;
          v50 = *(v49 + 1);
          if (v51)
          {
            v52 = v50 == 0;
          }

          else
          {
            v52 = 1;
          }

          if (v52)
          {
            v53 = 0;
          }

          else
          {
            v53 = (v51 + *v51);
          }

          v54 = (v53 - *v53);
          if (*v54 >= 0xBu && (v55 = v54[5]) != 0)
          {
            v56 = (v53 + v55 + *(v53 + v55));
          }

          else
          {
            v56 = 0;
          }

          v57 = (v56 - *v56);
          if (*v57 < 9u || (v58 = v57[4]) == 0 || !*(v56 + v58))
          {
            v21 = 1;
            goto LABEL_9;
          }
        }
      }
    }
  }

  v21 = 0;
LABEL_9:
  v22 = this + *(v19 - 24);
  v23 = *(this + 1150);
  v22[4454] = 1;
  v24 = *(v22 + 1106);
  v25 = *(v22 + 1104) - *(v22 + 1108);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v22 + 4384, 4, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v22 + 4384, 6, v21, 0);
  v26 = flatbuffers::FlatBufferBuilder::EndTable((v22 + 4384), v25 + v24);
  v27 = this + *(*this - 24);
  v28 = *(v27 + 1104);
  v27[4454] = 1;
  LODWORD(v22) = *(v27 + 1106);
  v29 = v28 - *(v27 + 1108);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v27 + 4384), v26);
  v30 = *(*this - 24);
  v31 = flatbuffers::FlatBufferBuilder::EndTable((v27 + 4384), v29 + v22);
  flatbuffers::FlatBufferBuilder::Finish((this + v30 + 4384), v31, v32);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));

  return AGCLLVMUserComputeKernelBase::validateReply(this);
}

void virtual thunk toAGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(AGCLLVMUserComputeKernelG10 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  v5 = (v4 + 4640);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(AGCLLVMUserComputeKernelG10 *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[10];
  *(this + *(*this - 24) + 1704) = a2[11];
  v7 = *(this + 578);
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4608));
  }

  v9 = *(this + 574);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4576));
  }

  v10 = *(this + 571);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4552));
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 2, a3, a4);
}

llvm::Instruction *AGCLLVMUserComputeKernelG10::replaceBuiltinFunction(void *a1, uint64_t a2, llvm::Type *a3, uint64_t a4, unsigned int a5)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 616))();
  v69[0] = "air.threadgroup_position_in_grid";
  v69[1] = 32;
  LODWORD(v70) = v6;
  v7 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 624))();
  v71 = "air.threadgroups_per_grid";
  v72 = 25;
  v73 = v7;
  v8 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 632))();
  v74 = "air.thread_position_in_grid";
  v75 = 27;
  v76 = v8;
  v9 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 640))();
  v77 = "air.threads_per_grid";
  v78 = 20;
  v79 = v9;
  llvm::StringMapImpl::StringMapImpl(&v80);
  for (i = 0; i != 12; i += 3)
  {
    v12 = v69[i];
    v11 = v69[i + 1];
    v13 = v69[i + 2];
    v14 = llvm::StringMapImpl::LookupBucketFor();
    v15 = v80;
    v16 = *(v80 + 8 * v14);
    if (v16)
    {
      if (v16 != -8)
      {
        continue;
      }

      --v83;
    }

    v17 = MEMORY[0x20F330650](v11 + 17, 8);
    v18 = v17;
    v19 = v17 + 16;
    if (v11)
    {
      memcpy((v17 + 16), v12, v11);
    }

    *(v19 + v11) = 0;
    *v18 = v11;
    *(v18 + 8) = v13;
    *(v15 + 8 * v14) = v18;
    ++v82;
    llvm::StringMapImpl::RehashTable(&v80);
  }

  v20 = (a1 + *(*a1 - 24));
  v67[0] = llvm::ConstantInt::get();
  LOWORD(v72) = 257;
  Select = llvm::IRBuilderBase::CreateCall(v20 + 214, *(a2 + 24), a2, v67, 1, v69);
  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v24 = v23;
  Key = llvm::StringMapImpl::FindKey();
  v26 = v80;
  if (Key == -1)
  {
    v27 = v81;
  }

  else
  {
    v27 = Key;
  }

  if ((*(*a1 + 440))(a1) && v26 + 8 * v27 != v80 + 8 * v81)
  {
    if (!a1[578])
    {
      v31 = llvm::PointerType::get();
      v32 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v33 = (*(*v32 + 608))(v32);
      v69[0] = "agc.split_dispatch_parameters.";
      v70 = v33;
      LOWORD(v72) = 2051;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, v31, v69, v33, 0, 5u, 0);
      llvm::ValueHandleBase::operator=((a1 + 576), GlobalBufferBinding);
    }

    v35 = (a1 + *(*a1 - 24));
    v36 = v35[238];
    v37 = a1[578];
    LOWORD(v72) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v35 + 213), v37, v69);
    v39 = llvm::ConstantInt::get();
    v68 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v35 + 214), v36, Load, v39, v67);
    v66 = 257;
    v41 = AGCLLVMBuilder::CreateLoad((v35 + 213), GEP, v65);
    v42 = (a1 + *(*a1 - 24));
    LOWORD(v72) = 257;
    TruncOrBitCast = llvm::IRBuilderBase::CreateTruncOrBitCast(v42 + 214, v41, a3, v69, v43);
    if (v24 == 32)
    {
      v45 = String[2];
      v46 = String[3];
      v47 = *String == 0x657268742E726961 && String[1] == 0x5F70756F72676461;
      v48 = 0x6E6F697469736F70;
LABEL_26:
      if (v47 && v45 == v48 && v46 == 0x646972675F6E695FLL)
      {
        v51 = a1 + *(*a1 - 24);
        LOWORD(v72) = 257;
        llvm::IRBuilderBase::CreateAdd((v51 + 1712), TruncOrBitCast, Select, v69);
      }
    }

    else if (v24 == 27)
    {
      v45 = String[2];
      v46 = *(String + 19);
      v47 = *String == 0x657268742E726961 && String[1] == 0x7469736F705F6461;
      v48 = 0x675F6E695F6E6F69;
      goto LABEL_26;
    }

    v52 = (a1 + *(*a1 - 24));
    v53 = v52[238];
    v54 = a1[578];
    LOWORD(v72) = 257;
    v55 = AGCLLVMBuilder::CreateLoad((v52 + 213), v54, v69);
    (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 648))();
    v56 = llvm::ConstantInt::get();
    v68 = 257;
    v57 = llvm::IRBuilderBase::CreateGEP((v52 + 214), v53, v55, v56, v67);
    v66 = 257;
    v58 = AGCLLVMBuilder::CreateLoad((v52 + 213), v57, v65);
    v59 = (a1 + *(*a1 - 24));
    v60 = llvm::ConstantInt::get();
    LOWORD(v72) = 257;
    llvm::IRBuilderBase::CreateICmp(v59 + 214, 33, v58, v60, v69);
    v68 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(&v80, v28, v29, v30);
  return Select;
}

llvm::Value *llvm::IRBuilderBase::CreateTruncOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  TruncOrBitCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      TruncOrBitCast = llvm::CastInst::CreateTruncOrBitCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, TruncOrBitCast, a4);
    }

    else
    {
      TruncOrBitCast = (*(*this[9] + 304))(this[9], a2, a3, a4, a5);
      if (TruncOrBitCast)
      {
        v8 = *(TruncOrBitCast + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, TruncOrBitCast, a4);
      }
    }
  }

  return TruncOrBitCast;
}

uint64_t AGCLLVMUserComputeKernelG10::replaceBuiltins(AGCLLVMUserComputeKernelG10 *this)
{
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(this);
  }

  return v2;
}

void AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(AGCLLVMUserComputeKernelG10 *this)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v97, *v2);
  v104 = this;
  v97 = &unk_28259D9B8;
  v103[37] = v2;
  {
    AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(void)::workitem_functions[0] = "air.get_global_size.i32";
    dword_28117DC88 = 1;
    qword_28117DC90 = AGCLLVMUserComputeKernelG10::buildGlobalSizeG10;
    unk_28117DC98 = 0;
    dword_28117DCA0 = 4;
    word_28117DCA4 = 0;
    qword_28117DCA8 = "air.get_global_size.i16";
    dword_28117DCB0 = 1;
    qword_28117DCB8 = AGCLLVMUserComputeKernelG10::buildGlobalSizeG10;
    unk_28117DCC0 = 0;
    dword_28117DCC8 = 4;
    word_28117DCCC = 0;
    qword_28117DCD0 = "air.get_global_id.i32";
    dword_28117DCD8 = 1;
    qword_28117DCE0 = AGCLLVMUserComputeKernelG10::buildGlobalIDG10;
    unk_28117DCE8 = 0;
    dword_28117DCF0 = 4;
    word_28117DCF4 = 0;
    qword_28117DCF8 = "air.get_global_id.i16";
    dword_28117DD00 = 1;
    qword_28117DD08 = AGCLLVMUserComputeKernelG10::buildGlobalIDG10;
    unk_28117DD10 = 0;
    dword_28117DD18 = 4;
    word_28117DD1C = 0;
    qword_28117DD20 = "air.get_local_size.i32";
    dword_28117DD28 = 1;
    qword_28117DD30 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10;
    unk_28117DD38 = 0;
    dword_28117DD40 = 4;
    word_28117DD44 = 0;
    qword_28117DD48 = "air.get_local_size.i16";
    dword_28117DD50 = 1;
    qword_28117DD58 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10;
    unk_28117DD60 = 0;
    dword_28117DD68 = 4;
    word_28117DD6C = 0;
    qword_28117DD70 = "air.get_local_id.i32";
    dword_28117DD78 = 1;
    qword_28117DD80 = AGCLLVMUserComputeKernelG10::buildLocalIDG10;
    unk_28117DD88 = 0;
    dword_28117DD90 = 4;
    word_28117DD94 = 0;
    qword_28117DD98 = "air.get_local_id.i16";
    dword_28117DDA0 = 1;
    qword_28117DDA8 = AGCLLVMUserComputeKernelG10::buildLocalIDG10;
    unk_28117DDB0 = 0;
    dword_28117DDB8 = 4;
    word_28117DDBC = 0;
    qword_28117DDC0 = "air.get_local_linear_id.i32";
    dword_28117DDC8 = 1;
    qword_28117DDD0 = AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10;
    unk_28117DDD8 = 0;
    dword_28117DDE0 = 2;
    word_28117DDE4 = 0;
    qword_28117DDE8 = "air.get_local_linear_id.i16";
    dword_28117DDF0 = 1;
    qword_28117DDF8 = AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10;
    unk_28117DE00 = 0;
    dword_28117DE08 = 2;
    word_28117DE0C = 0;
    qword_28117DE10 = "air.get_num_groups.i32";
    dword_28117DE18 = 1;
    qword_28117DE20 = AGCLLVMUserComputeKernelG10::buildNumGroupsG10;
    unk_28117DE28 = 0;
    dword_28117DE30 = 4;
    word_28117DE34 = 0;
    qword_28117DE38 = "air.get_num_groups.i16";
    dword_28117DE40 = 1;
    qword_28117DE48 = AGCLLVMUserComputeKernelG10::buildNumGroupsG10;
    unk_28117DE50 = 0;
    dword_28117DE58 = 4;
    word_28117DE5C = 0;
    qword_28117DE60 = "air.get_group_id.i32";
    dword_28117DE68 = 1;
    qword_28117DE70 = AGCLLVMUserComputeKernelG10::buildGroupIDG10;
    unk_28117DE78 = 0;
    dword_28117DE80 = 4;
    word_28117DE84 = 0;
    qword_28117DE88 = "air.get_group_id.i16";
    dword_28117DE90 = 1;
    qword_28117DE98 = AGCLLVMUserComputeKernelG10::buildGroupIDG10;
    qword_28117DEA0 = 0;
    dword_28117DEA8 = 4;
    word_28117DEAC = 0;
    qword_28117DEB0 = "air.get_dispatch_local_size.i32";
    dword_28117DEB8 = 1;
    qword_28117DEC0 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117DEC8 = 0;
    dword_28117DED0 = 4;
    word_28117DED4 = 0;
    qword_28117DED8 = "air.get_dispatch_local_size.i16";
    dword_28117DEE0 = 1;
    qword_28117DEE8 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117DEF0 = 0;
    dword_28117DEF8 = 4;
    word_28117DEFC = 0;
    qword_28117DF00 = "air.get_quadgroups_per_threadgroup.i32";
    dword_28117DF08 = 1;
    qword_28117DF10 = AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupG10;
    qword_28117DF18 = 0;
    dword_28117DF20 = 2;
    word_28117DF24 = 0;
    qword_28117DF28 = "air.get_quadgroups_per_threadgroup.i16";
    dword_28117DF30 = 1;
    qword_28117DF38 = AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupG10;
    qword_28117DF40 = 0;
    dword_28117DF48 = 2;
    word_28117DF4C = 0;
    qword_28117DF50 = "air.get_simdgroups_per_threadgroup.i32";
    dword_28117DF58 = 1;
    qword_28117DF60 = AGCLLVMUserComputeKernelG10::buildSimdgroupsPerThreadgroupG10;
    qword_28117DF68 = 0;
    dword_28117DF70 = 2;
    word_28117DF74 = 0;
    qword_28117DF78 = "air.get_simdgroups_per_threadgroup.i16";
    dword_28117DF80 = 1;
    qword_28117DF88 = AGCLLVMUserComputeKernelG10::buildSimdgroupsPerThreadgroupG10;
    qword_28117DF90 = 0;
    dword_28117DF98 = 2;
    word_28117DF9C = 0;
    qword_28117DFA0 = "air.get_dispatch_quadgroups_per_threadgroup.i32";
    dword_28117DFA8 = 1;
    qword_28117DFB0 = AGCLLVMUserComputeKernelG10::buildDispatchQuadgroupsPerThreadgroupG10;
    qword_28117DFB8 = 0;
    dword_28117DFC0 = 2;
    word_28117DFC4 = 0;
    qword_28117DFC8 = "air.get_dispatch_quadgroups_per_threadgroup.i16";
    dword_28117DFD0 = 1;
    qword_28117DFD8 = AGCLLVMUserComputeKernelG10::buildDispatchQuadgroupsPerThreadgroupG10;
    qword_28117DFE0 = 0;
    dword_28117DFE8 = 2;
    word_28117DFEC = 0;
    qword_28117DFF0 = "air.get_dispatch_simdgroups_per_threadgroup.i32";
    dword_28117DFF8 = 1;
    qword_28117E000 = AGCLLVMUserComputeKernelG10::buildDispatchSimdgroupsPerThreadgroupG10;
    qword_28117E008 = 0;
    dword_28117E010 = 2;
    word_28117E014 = 0;
    qword_28117E018 = "air.get_dispatch_simdgroups_per_threadgroup.i16";
    dword_28117E020 = 1;
    qword_28117E028 = AGCLLVMUserComputeKernelG10::buildDispatchSimdgroupsPerThreadgroupG10;
    qword_28117E030 = 0;
    dword_28117E038 = 2;
    word_28117E03C = 0;
    qword_28117E040 = "air.get_quad_group.i32";
    dword_28117E048 = 1;
    qword_28117E050 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E058 = 0;
    dword_28117E060 = 2;
    word_28117E064 = 0;
    qword_28117E068 = "air.get_quad_group.i16";
    dword_28117E070 = 1;
    qword_28117E078 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E080 = 0;
    dword_28117E088 = 2;
    word_28117E08C = 0;
    qword_28117E090 = "air.get_thread_index_in_simdgroup.i32";
    dword_28117E098 = 1;
    qword_28117E0A0 = AGCLLVMUserComputeKernelG10::buildThreadIndexInSimdGroupG10;
    qword_28117E0A8 = 0;
    dword_28117E0B0 = 2;
    word_28117E0B4 = 0;
    qword_28117E0B8 = "air.get_thread_index_in_simdgroup.i16";
    dword_28117E0C0 = 1;
    qword_28117E0C8 = AGCLLVMUserComputeKernelG10::buildThreadIndexInSimdGroupG10;
    qword_28117E0D0 = 0;
    dword_28117E0D8 = 2;
    word_28117E0DC = 0;
    qword_28117E0E0 = "air.get_simdgroup_index_in_threadgroup.i32";
    dword_28117E0E8 = 1;
    qword_28117E0F0 = AGCLLVMUserComputeKernelG10::buildSimdGroupIndexInThreadgroupG10;
    qword_28117E0F8 = 0;
    dword_28117E100 = 2;
    word_28117E104 = 0;
    qword_28117E108 = "air.get_simdgroup_index_in_threadgroup.i16";
    dword_28117E110 = 1;
    qword_28117E118 = AGCLLVMUserComputeKernelG10::buildSimdGroupIndexInThreadgroupG10;
    qword_28117E120 = 0;
    dword_28117E128 = 2;
    word_28117E12C = 0;
    qword_28117E130 = "air.get_dispatch_threads_per_threadgroup.i32";
    dword_28117E138 = 1;
    qword_28117E140 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117E148 = 0;
    dword_28117E150 = 4;
    word_28117E154 = 0;
    qword_28117E158 = "air.get_dispatch_threads_per_threadgroup.i16";
    dword_28117E160 = 1;
    qword_28117E168 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10;
    qword_28117E170 = 0;
    dword_28117E178 = 4;
    word_28117E17C = 0;
    qword_28117E180 = "air.get_stage_in_grid_origin.i32";
    dword_28117E188 = 1;
    qword_28117E190 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117E198 = 0;
    dword_28117E1A0 = 4;
    word_28117E1A4 = 0;
    qword_28117E1A8 = "air.get_stage_in_grid_origin.i16";
    dword_28117E1B0 = 1;
    qword_28117E1B8 = AGCLLVMUserComputeKernelBase::buildStageInOrigin;
    qword_28117E1C0 = 0;
    dword_28117E1C8 = 4;
    word_28117E1CC = 0;
    qword_28117E1D0 = "air.get_stage_in_grid_size.i32";
    dword_28117E1D8 = 1;
    qword_28117E1E0 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117E1E8 = 0;
    dword_28117E1F0 = 4;
    word_28117E1F4 = 0;
    qword_28117E1F8 = "air.get_stage_in_grid_size.i16";
    dword_28117E200 = 1;
    qword_28117E208 = AGCLLVMUserComputeKernelBase::buildStageInSize;
    qword_28117E210 = 0;
    dword_28117E218 = 4;
    word_28117E21C = 0;
    qword_28117E220 = "air.get_quadgroup_index_in_threadgroup.i32";
    dword_28117E228 = 1;
    qword_28117E230 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E238 = 0;
    dword_28117E240 = 2;
    word_28117E244 = 0;
    qword_28117E248 = "air.get_quadgroup_index_in_threadgroup.i16";
    dword_28117E250 = 1;
    qword_28117E258 = AGCLLVMUserComputeKernelG10::buildQuadGroupG10;
    qword_28117E260 = 0;
    dword_28117E268 = 2;
    word_28117E26C = 0;
    qword_28117E270 = "air.get_thread_index_in_quadgroup.i32";
    dword_28117E278 = 1;
    qword_28117E280 = AGCLLVMUserComputeKernelG10::buildQuadElementG10;
    qword_28117E288 = 0;
    dword_28117E290 = 2;
    word_28117E294 = 0;
    qword_28117E298 = "air.get_thread_index_in_quadgroup.i16";
    dword_28117E2A0 = 1;
    qword_28117E2A8 = AGCLLVMUserComputeKernelG10::buildQuadElementG10;
    qword_28117E2B0 = 0;
    dword_28117E2B8 = 2;
    word_28117E2BC = 0;
  }

  for (i = 0; i != 40; ++i)
  {
    v4 = &AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(void)::workitem_functions[5 * i];
    v84 = v4;
    if (*v4)
    {
      strlen(*v4);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v6 = *(v84 + 8);
      v79 = i;
      v80 = Function;
      if (v6 == 12)
      {
        for (j = *(Function + 8); j; v100 = 0uLL)
        {
          v10 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v98, v10);
          v11 = v104 + *(*v104 - 24);
          v94 = v100;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v95, v98);
          v96 = v101;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v94, (v11 + 1712));
          if (v95)
          {
            llvm::MetadataTracking::untrack();
          }

          v12 = v84[2];
          v13 = v84[3];
          v14 = (v104 + (v13 >> 1));
          if (v13)
          {
            v12 = *(*v14 + v12);
          }

          (v12)(v14, v10);
        }

        goto LABEL_121;
      }

      if (v6 == 11)
      {
        v7 = v84[2];
        if (v7)
        {
          v8 = strlen(v84[2]);
          *&v105[0] = &v105[1] + 8;
          *(v105 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v105, v7, &v7[v8]);
        }

        else
        {
          *&v105[1] = 64;
          v105[0] = &v105[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v105, ".", "");
        if (*&v105[1] < *(&v105[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v105[0] != (&v105[1] + 8))
        {
          free(*&v105[0]);
        }

        goto LABEL_121;
      }

      v15 = **(*(Function + 24) + 16);
      v16 = ((*(v15 + 8) & 0xFE) == 18) & *(v84 + 37);
      if (v16 == 1)
      {
        v17 = *(v15 + 32);
      }

      else
      {
        v17 = 1;
      }

      v82 = v17;
      v78 = v101;
      v18 = *(Function + 8);
      if (!v18)
      {
LABEL_115:
        v101 = v78;
LABEL_121:
        llvm::Function::eraseFromParent(v80);
        i = v79;
        continue;
      }

      while (1)
      {
        v19 = *(v18 + 24);
        v81 = *(v18 + 8);
        v20 = *(v84 + 2);
        if (v20 == 1)
        {
          v21 = 0;
        }

        else
        {
          if (v20 != 2)
          {
            goto LABEL_26;
          }

          v21 = 121;
        }

        v101 = v21;
LABEL_26:
        llvm::IRBuilderBase::SetInsertPoint(v98, v19);
        v22 = llvm::UndefValue::get();
        if (v82)
        {
          for (k = 0; k != v82; ++k)
          {
            v83 = v22;
            v106 = 0;
            memset(v105, 0, sizeof(v105));
            v24 = llvm::CallBase::arg_end(v19) - v19 + 32 * (*(v19 + 5) & 0x7FFFFFF);
            if ((v24 & 0x1FFFFFFFE0) != 0)
            {
              v25 = (v24 >> 5);
              v26 = v105;
              v27 = v19;
              do
              {
                v28 = (v27 - 32 * (*(v19 + 5) & 0x7FFFFFF));
                v29 = *v28;
                *v26 = *v28;
                if (v16 && (*(*v29 + 8) & 0xFE) == 0x12)
                {
                  v93 = 257;
                  v30 = llvm::ConstantInt::get();
                  *v26 = llvm::IRBuilderBase::CreateExtractElement(v98, v29, v30, &PrimitiveSizeInBits);
                }

                ++v26;
                v27 = (v27 + 32);
                --v25;
              }

              while (v25);
            }

            if (*(v84 + 36))
            {
              v31 = **&v105[0];
              if ((*(**&v105[0] + 8) & 0xFE) == 0x12)
              {
                v31 = **(v31 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v31);
              v92 = v32;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v33 = 0;
              }

              else
              {
                v34 = v103[4];
                if ((*(**&v105[0] + 8) & 0xFE) == 0x12)
                {
                  v34 = llvm::FixedVectorType::get();
                }

                if ((v24 & 0x1FFFFFFFE0) != 0)
                {
                  v35 = (v24 >> 5);
                  v36 = v105;
                  do
                  {
                    v37 = *v36;
                    v93 = 257;
                    *v36++ = llvm::IRBuilderBase::CreateFPExt(v98, v37, v34, &PrimitiveSizeInBits);
                    --v35;
                  }

                  while (v35);
                }

                v33 = 1;
              }
            }

            else
            {
              v33 = 0;
            }

            if (llvm::FPMathOperator::classof(v19))
            {
              FastMathFlags = llvm::Instruction::getFastMathFlags(v19);
            }

            else
            {
              FastMathFlags = 0;
            }

            v39 = v104 + *(*v104 - 24);
            v88 = v100;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v89, v98);
            v90 = v101;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v88, (v39 + 1712));
            if (v89)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v41 = *(v84 + 8);
            if (v41 > 5)
            {
              if (v41 <= 7)
              {
                if (v41 != 6)
                {
                  v54 = v84[2];
                  v55 = v84[3];
                  v57 = *(&v105[0] + 1);
                  v56 = *&v105[0];
                  v58 = *&v105[1];
                  v59 = (v104 + (v55 >> 1));
                  if ((v55 & 1) == 0)
                  {
                    goto LABEL_100;
                  }

                  v67 = (*(*v59 + v54))(v59, *&v105[0], *(&v105[0] + 1), *&v105[1]);
LABEL_101:
                  FPTrunc = v67;
                  goto LABEL_102;
                }

                v63 = v84[2];
                v64 = v84[3];
                v65 = (v104 + (v64 >> 1));
                if (v64)
                {
                  v63 = *(*v65 + v63);
                }

                v74 = (v63)(v65, *&v105[0], *(&v105[0] + 1), FastMathFlags);
                goto LABEL_92;
              }

              switch(v41)
              {
                case 8:
                  v68 = v84[2];
                  v69 = v84[3];
                  v70 = (v104 + (v69 >> 1));
                  if (v69)
                  {
                    v68 = *(*v70 + v68);
                  }

                  v74 = (v68)(v70, *&v105[0], *(&v105[0] + 1), *&v105[1], FastMathFlags);
LABEL_92:
                  FPTrunc = v74;
                  break;
                case 9:
                  v54 = v84[2];
                  v73 = v84[3];
                  v59 = (v104 + (v73 >> 1));
                  if (v73)
                  {
                    v54 = *(*v59 + v54);
                  }

                  v56 = v105;
                  v57 = &unk_20E75F419;
                  v58 = 0;
LABEL_100:
                  v67 = (v54)(v59, v56, v57, v58);
                  goto LABEL_101;
                case 10:
                  v47 = v84[2];
                  v48 = v84[3];
                  v49 = (v104 + (v48 >> 1));
                  if (v48)
                  {
                    v47 = *(*v49 + v47);
                  }

                  v67 = (v47)(v49, *v19, v105, &unk_20E75F419, 0);
                  goto LABEL_101;
              }
            }

            else
            {
              if (v41 > 2)
              {
                if (v41 != 3)
                {
                  if (v41 == 4)
                  {
                    v71 = (*&v105[0] + 24);
                    if (*(*&v105[0] + 32) >= 0x41u)
                    {
                      v71 = *v71;
                    }

                    v45 = *v71;
                    v42 = v84[2];
                    v72 = v84[3];
                    v44 = *v19;
                    v46 = (v104 + (v72 >> 1));
                    if (v72)
                    {
                      v42 = *(*v46 + v42);
                    }
                  }

                  else
                  {
                    v42 = v84[2];
                    v43 = v84[3];
                    v45 = *(&v105[0] + 1);
                    v44 = *&v105[0];
                    v46 = (v104 + (v43 >> 1));
                    if (v43)
                    {
                      v42 = *(*v46 + v42);
                    }
                  }

                  v67 = (v42)(v46, v44, v45);
                  goto LABEL_101;
                }

                v50 = v84[2];
                v66 = v84[3];
                v52 = *&v105[0];
                v53 = (v104 + (v66 >> 1));
                if ((v66 & 1) == 0)
                {
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

              if (v41 == 1)
              {
                v60 = v84[2];
                v61 = v84[3];
                v62 = (v104 + (v61 >> 1));
                if (v61)
                {
                  v60 = *(*v62 + v60);
                }

                v67 = (v60)(v62);
                goto LABEL_101;
              }

              if (v41 == 2)
              {
                v50 = v84[2];
                v51 = v84[3];
                v52 = *v19;
                v53 = (v104 + (v51 >> 1));
                if ((v51 & 1) == 0)
                {
LABEL_76:
                  v67 = (v50)(v53, v52);
                  goto LABEL_101;
                }

LABEL_75:
                v50 = *(*v53 + v50);
                goto LABEL_76;
              }
            }

LABEL_102:
            v75 = v104 + *(*v104 - 24);
            v85 = *(v75 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v75 + 1712));
            v87 = *(v75 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v85, v98);
            if (v86)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v33)
            {
              v76 = *v19;
              if (v16 && (*(v76 + 8) & 0xFE) == 0x12)
              {
                v76 = **(v76 + 16);
              }

              v93 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v98, FPTrunc, v76, &PrimitiveSizeInBits);
            }

            if (v16)
            {
              v93 = 257;
              v77 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v98, v83, FPTrunc, v77, &PrimitiveSizeInBits);
            }

            v22 = FPTrunc;
          }
        }

        if (*v19 != v103[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v19);
        v18 = v81;
        if (!v81)
        {
          goto LABEL_115;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v103);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v102);
  if (v98[0] != &v99)
  {
    free(v98[0]);
  }
}

uint64_t AGCLLVMUserComputeKernelG10::buildQuadElementG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserComputeKernelG10::buildSimdGroupIndexInThreadgroupG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserComputeKernelG10::buildThreadIndexInSimdGroupG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserComputeKernelG10::buildQuadGroupG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupCommon<5u>(AGCLLVMUserComputeKernelG10 *a1, llvm::Type *a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 0);
    v7 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, a3);
    v12 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 2);
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

uint64_t AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMUserComputeKernelG10::buildLocalSizeG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupCommon<2u>(AGCLLVMUserComputeKernelG10 *a1, llvm::Type *a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  if (a3)
  {
    v6 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 0);
    v7 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v6, v7, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(a1, a2, 2);
  }

  else
  {
    v11 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, a3);
    v12 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 1);
    v21 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v5 + 1712), v11, v12, v20);
    v9 = a1 + *(*a1 - 24);
    v10 = AGCLLVMUserComputeKernelG10::buildLocalSizeG10(a1, a2, 2);
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

uint64_t AGCLLVMUserComputeKernelG10::buildGroupIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMUserComputeKernelG10::buildNumGroupsG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
{
  v6 = AGCLLVMUserShader::buildGlobalSizeCommon(this, *(this + *(*this - 24) + 1904), a3, 0, 0);
  v7 = AGCLLVMUserComputeKernelG10::buildDispatchLocalSizeG10(this, *(this + *(*this - 24) + 1904), a3);
  v8 = this + *(*this - 24);
  v17 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v8 + 1712), v6, v7, v16);
  v10 = llvm::ConstantInt::get();
  v15[16] = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v8 + 1712), Add, v10, v15);
  v12 = AGCLLVMUserComputeKernelG10::buildFastDivideThreadgroupSize(this, Sub, v7);
  v13 = this + *(*this - 24);
  v17 = 257;
  return llvm::IRBuilderBase::CreateCast((v13 + 1712), 38, v12, a2, v16);
}

uint64_t AGCLLVMUserComputeKernelG10::buildFastDivideThreadgroupSize(llvm::Type ***this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = llvm::PointerType::get();
  if (!this[574])
  {
    v28[0] = "agc.fast_integer_divide_buffer_pointer";
    v29 = 259;
    v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 472))();
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v6, v28, v7, 0, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 572), GlobalBufferBinding);
  }

  v9 = (*(*this - 3) + this);
  v10 = this[574];
  v29 = 257;
  llvm::Type::isOpaquePointerTy(*v10);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v9 + 214, v6, v10, 0, v28);
  v12 = *(*this - 3) + this;
  v13 = llvm::ConstantInt::get();
  v29 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v12 + 1712), a3, v13, v28);
  v15 = *(*this - 3) + this;
  v16 = *(v15 + 244);
  v29 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v15 + 1712), v16, AlignedLoad, Sub, v28);
  v18 = *(*this - 3) + this;
  v19 = *(v18 + 244);
  v29 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v20 = llvm::IRBuilderBase::CreateAlignedLoad(v18 + 214, v19, GEP, 0, v28);
  v21 = *(*this - 3) + this;
  v29 = 257;
  v22 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v21 + 1712), v20, v22, v28);
  v24 = *(*this - 3) + this;
  v29 = 257;
  v25 = llvm::ConstantInt::get();
  v26 = llvm::IRBuilderBase::CreateExtractElement((v24 + 1712), v20, v25, v28);
  return AGCLLVMObject::buildMulShiftDiv((*(*this - 3) + this), a2, Element, v26);
}

uint64_t AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2)
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

uint64_t AGCLLVMUserComputeKernelG10::buildLocalIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMUserComputeKernelG10::buildGlobalIDG10(AGCLLVMUserComputeKernelG10 *this, llvm::Type *a2, uint64_t a3)
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

uint64_t AGCLLVMUserComputeKernelG10::setupImageBlocks(AGCLLVMUserComputeKernelG10 *this)
{
  if (!*(this + 1150))
  {
    return 1;
  }

  v2 = 0;
  v3 = "air.imageblock_data";
  v4 = 1;
  v5 = &AGCLLVMUserComputeKernelG10::setupImageBlocks(void)::disallowed_functions_with_msaa_rates;
  while (1)
  {
    v6 = v2;
    strlen(v3);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v8 = *(Function + 8);
      if (v8)
      {
        break;
      }
    }

LABEL_10:
    v5 = &(&AGCLLVMUserComputeKernelG10::setupImageBlocks(void)::disallowed_functions_with_msaa_rates)[2 * v4];
    v3 = *v5;
    v2 = 1;
    v4 = 2;
    if (v6)
    {
      v12 = 0;
      while (1)
      {
        strlen(AGCLLVMUserComputeKernelG10::setupImageBlocks(void)::disallowed_function_list[v12]);
        v13 = llvm::Module::getFunction();
        if (v13)
        {
          if (*(v13 + 8))
          {
            break;
          }
        }

        if (++v12 == 3)
        {
          operator new();
        }
      }

      goto LABEL_16;
    }
  }

  while (1)
  {
    v9 = *(v8 + 24);
    v8 = *(v8 + 8);
    if (*(v9 + 8))
    {
      v10 = *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF) + 32 * *(v5 + 8));
      v11 = (v10 + 24);
      if (*(v10 + 32) >= 0x41u)
      {
        v11 = *v11;
      }

      if ((*v11 - 1) < 2)
      {
        break;
      }
    }

    if (!v8)
    {
      goto LABEL_10;
    }
  }

LABEL_16:
  std::string::append((this + *(*this - 24) + 1656), "MSAA imageblock features are not available to compute kernels");
  return 0;
}

uint64_t AGCLLVMUserComputeKernelG10::setupShaderInputs(AGCLLVMUserComputeKernelG10 *this)
{
  v100 = *MEMORY[0x277D85DE8];
  v2 = *(this + 21);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v4 = *(this + 21);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  for (i = *(v2 + 88) + 40 * *(v2 + 96); v3 != i; v3 += 40)
  {
    v6 = *(*(this + 10) + 8 * *(v3 + 32));
    if (v6)
    {
      v7 = *(v6 - 8 * *(v6 + 8) + 8);
      if (!*v7)
      {
        String = llvm::MDString::getString(v7);
        if (v9 == 14 && *String == 0x67616D692E726961 && *(String + 6) == 0x6B636F6C62656761)
        {
          LODWORD(v90) = 2;
          if (*(v6 + 8) >= 3u)
          {
            do
            {
              if (parseMDInt("air.imageblock_data_size", v6, &v90, this + 1150))
              {
                break;
              }

              LODWORD(v90) = v90 + 1;
            }

            while (v90 < *(v6 + 8));
          }

          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
        }
      }
    }
  }

  if (!*(this + 1150))
  {
    return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
  }

  v11 = *(this + *(*this - 24) + 2168);
  if (*((*(*v11 + 688))(v11) + 2536))
  {
    return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
  }

  v12 = *(*this - 24);
  v13 = *(*(this + 21) + 80);
  v14 = v13 ? (v13 - 24) : 0;
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v14);
  llvm::IRBuilderBase::SetInsertPoint(this + v12 + 1712, v14, FirstInsertionPt);
  v96 = 128;
  v95[0] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(v95);
  LOBYTE(v97) = 0;
  v99 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v16 = *(this + *(*this - 24) + 2136);
  v17 = v16 + 8;
  v18 = *(v16 + 16);
  if (v18 == v16 + 8)
  {
    v73 = 1;
  }

  else
  {
    Load = 0;
    do
    {
      if (v18)
      {
        v20 = (v18 - 56);
      }

      else
      {
        v20 = 0;
      }

      v21 = *v20;
      if (*v20)
      {
        v22 = *(v21 + 8);
        if ((v22 & 0xFE) == 0x12)
        {
          v22 = *(**(v21 + 16) + 8);
        }

        if ((v22 & 0xFFFFFF00) == 0x300 && v20[1])
        {
          v23 = *this;
          if (!Load)
          {
            v90 = "agc.lib_size_in_bytes";
            LOWORD(v94) = 259;
            v24 = AGCLLVMUserComputeKernelBase::constructSHGlobal(this, &v90, *(this + *(v23 - 24) + 1904), 0x3Au, 0);
            v25 = *(*this - 24);
            LOWORD(v94) = 257;
            Load = AGCLLVMBuilder::CreateLoad((this + v25 + 1704), v24, &v90);
            v23 = *this;
          }

          v26 = this + *(v23 - 24);
          v27 = llvm::PointerType::get();
          LOWORD(v94) = 257;
          Cast = llvm::IRBuilderBase::CreateCast((v26 + 1712), 49, v20, v27, &v90);
          v29 = this + *(*this - 24);
          v30 = *(v29 + 236);
          LOWORD(v94) = 257;
          GEP = llvm::IRBuilderBase::CreateGEP((v29 + 1712), v30, Cast, Load, &v90);
          v32 = *(*this - 24);
          LOWORD(v94) = 257;
          v33 = llvm::IRBuilderBase::CreateCast(this + v32 + 1712, 49, GEP, v21, &v90);
          v34 = v20[1];
          if (v34)
          {
            do
            {
              v35 = *(v34 + 1);
              v36 = *(v34 + 3);
              v37 = *(v36 + 16);
              if (v37 < 0x1C)
              {
                if (v37 == 5)
                {
                  v41 = *(v34 + 3);
                }

                else
                {
                  v41 = 0;
                }

                v90 = v41;
                if (!v41)
                {
LABEL_88:
                  v73 = 0;
                  v46 = v83;
                  goto LABEL_89;
                }

                if (v41 != Cast)
                {
                  std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&v83, &v90);
                }
              }

              else
              {
                OperandNo = llvm::Use::getOperandNo(v34);
                v39 = *(v36 + 20);
                if ((v39 & 0x40000000) != 0)
                {
                  v40 = *(v36 - 8);
                }

                else
                {
                  v40 = v36 - 32 * (v39 & 0x7FFFFFF);
                }

                v42 = v40 + 32 * OperandNo;
                if (*v42)
                {
                  v43 = *(v42 + 8);
                  **(v42 + 16) = v43;
                  if (v43)
                  {
                    *(v43 + 16) = *(v42 + 16);
                  }
                }

                *v42 = 0;
                v44 = *(v34 + 3);
                v45 = llvm::Use::getOperandNo(v34);
                llvm::User::setOperand(v44, v45, v33);
              }

              v34 = v35;
            }

            while (v35);
          }

          *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v95, v20) = v33;
        }
      }

      v18 = *(v18 + 8);
    }

    while (v18 != v17);
    v46 = v83;
    for (j = v84; v46 != j; *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v95, v48) = v52)
    {
      v49 = *(j - 1);
      j -= 8;
      v48 = v49;
      v84 = j;
      v50 = *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v95, *(v49 - 32 * (*(v49 + 20) & 0x7FFFFFF)));
      v51 = *(v49 + 18);
      switch(v51)
      {
        case '""':
          v90 = &v92;
          v91 = 0x1000000000;
          v54 = *(v48 + 20) & 0x7FFFFFF;
          if (v54 >= 2)
          {
            v55 = v48 + 32;
            for (k = 1; k < v54; ++k)
            {
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, *(v55 - 32 * v54));
              v54 = *(v48 + 20) & 0x7FFFFFF;
              v55 += 32;
            }
          }

          v57 = *(llvm::ConstantExpr::getAsInstruction(v48, 0) + 64);
          v58 = v90;
          v59 = v91;
          LOWORD(v89) = 257;
          if ((llvm::Type::isOpaquePointerTy(*v50) & 1) == 0)
          {
            v60 = *v50;
            if ((*(*v50 + 2) & 0xFE) == 0x12)
            {
              v60 = **(v60 + 2);
            }

            v57 = **(v60 + 2);
          }

          v52 = llvm::GetElementPtrInst::Create(v57, v50, v58, v59, &v86);
          if (v90 != &v92)
          {
            free(v90);
          }

          break;
        case '5':
          llvm::ConstantExpr::getPredicate(v48);
          v52 = llvm::User::operator new(0x40);
          LOWORD(v94) = 257;
          llvm::CmpInst::makeCmpResultType(*v50, v53);
          llvm::CmpInst::CmpInst();
          break;
        case '1':
          v52 = llvm::User::operator new(0x40);
          LOWORD(v94) = 257;
          llvm::BitCastInst::BitCastInst();
          break;
        default:
          goto LABEL_88;
      }

      llvm::Instruction::insertAfter();
      v61 = *(v48 + 8);
      if (v61)
      {
        do
        {
          v62 = *(v61 + 1);
          v63 = *(v61 + 3);
          v64 = *(v63 + 16);
          if (v64 < 0x1C)
          {
            if (v64 == 5)
            {
              v68 = *(v61 + 3);
            }

            else
            {
              v68 = 0;
            }

            v90 = v68;
            if (!v68)
            {
              goto LABEL_88;
            }

            std::vector<llvm::GetElementPtrInst *>::push_back[abi:nn200100](&v83, &v90);
          }

          else
          {
            v65 = llvm::Use::getOperandNo(v61);
            v66 = *(v63 + 20);
            if ((v66 & 0x40000000) != 0)
            {
              v67 = *(v63 - 8);
            }

            else
            {
              v67 = v63 - 32 * (v66 & 0x7FFFFFF);
            }

            v69 = v67 + 32 * v65;
            if (*v69)
            {
              v70 = *(v69 + 8);
              **(v69 + 16) = v70;
              if (v70)
              {
                *(v70 + 16) = *(v69 + 16);
              }
            }

            *v69 = 0;
            v71 = *(v61 + 3);
            v72 = llvm::Use::getOperandNo(v61);
            llvm::User::setOperand(v71, v72, v52);
          }

          v61 = v62;
        }

        while (v62);
        v46 = v83;
        j = v84;
      }
    }

    v73 = 1;
LABEL_89:
    if (v46)
    {
      v84 = v46;
      operator delete(v46);
    }
  }

  if (v99 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v97);
    llvm::deallocate_buffer(v98, v97, (16 * v98));
    v99 = 0;
  }

  v74 = v96;
  v75 = v95[0];
  if (v96)
  {
    v91 = 2;
    v92 = 0;
    v93 = -4096;
    v94 = 0;
    v89 = 0;
    v90 = &unk_28259D730;
    v87[0] = 2;
    v87[1] = 0;
    v88 = -8192;
    v86 = &unk_28259D730;
    v76 = (v95[0] + 24);
    v77 = 48 * v96;
    do
    {
      v78 = *v76;
      if (*v76 != -8192 && v78 != -4096 && v78 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v76 - 2));
      }

      v76 += 6;
      v77 -= 48;
    }

    while (v77);
    if (v88 != -8192 && v88 != -4096 && v88 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v87);
    }

    if (v93 != -8192 && v93 != -4096)
    {
      if (v93)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v91);
      }
    }

    v75 = v95[0];
    v74 = 3 * v96;
    v81 = 48 * v96;
  }

  else
  {
    v81 = 0;
  }

  llvm::deallocate_buffer(v74, v75, v81);
  if (v73)
  {
    return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
  }

  else
  {
    return 0;
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(uint64_t *result)
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
      *(v4 - 1) = &unk_28259D730;
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

uint64_t llvm::User::setOperand(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 20);
  if ((v3 & 0x40000000) != 0)
  {
    v4 = *(result - 8);
  }

  else
  {
    v4 = result - 32 * (v3 & 0x7FFFFFF);
  }

  v5 = v4 + 32 * a2;
  if (*v5)
  {
    v6 = *(v5 + 8);
    **(v5 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v5 + 16);
    }
  }

  *v5 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v5 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v5 + 8;
    }

    *(v5 + 16) = v7;
    *v7 = v5;
  }

  return result;
}

void *llvm::ValueMap<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_28259D730;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
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

uint64_t llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
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
    v19 = &unk_28259D730;
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
    v15 = &unk_28259D730;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_28259D730;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 48 * v5;
    v7 = *(v6 + 24);
    if (v7 == a3)
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
        v6 = a1 + 48 * (v13 & v4);
        v7 = *(v6 + 24);
        v8 = 1;
        if (v7 == a3)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::grow(a1, v6);
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

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_28259D730;
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

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
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
    v10 = &unk_28259D730;
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

AGCLLVMUserComputeKernelG10 *AGCLLVMUserComputeKernelG10::addWrapperPostfix(AGCLLVMUserComputeKernelG10 *this)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  v2 = *(v1 + 271);
  if (v2[1919] == 1)
  {
    v3 = this;
    v17 = *(v1 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (v1 + 1712));
    v19 = *(v1 + 452);
    (*(*v2 + 336))(v2, &v17);
    if (v18)
    {
      llvm::MetadataTracking::untrack();
    }

    v20[0] = llvm::ConstantInt::get();
    v20[1] = llvm::ConstantInt::get();
    AGCLLVMObject::buildWGBarrier(v3 + *(*v3 - 24), v20, 2);
    v4 = v3 + *(*v3 - 24);
    v5 = llvm::ConstantInt::get();
    v6 = llvm::PointerType::get();
    v16 = 257;
    llvm::IRBuilderBase::CreateCast((v4 + 1712), 48, v5, v6, v15);
    v15[0] = "agc.lm_size";
    v16 = 259;
    v7 = AGCLLVMUserComputeKernelBase::constructSHGlobal(v3, v15, *(v3 + *(*v3 - 24) + 1904), 0x6Fu, 4u);
    v14 = llvm::ConstantInt::get();
    v8 = AGCLLVMUserComputeKernelG10::buildLocalLinearIDG10(v3, *(v3 + *(*v3 - 24) + 1904));
    v9 = v3 + *(*v3 - 24);
    v16 = 257;
    llvm::IRBuilderBase::CreateMul((v9 + 1712), v8, v14, v15);
    v10 = v3 + *(*v3 - 24);
    v16 = 257;
    AGCLLVMBuilder::CreateLoad((v10 + 1704), v7, v15);
    v11 = (v3 + *(*v3 - 24));
    v12 = AGCLLVMUserComputeKernelG10::buildQuadgroupsPerThreadgroupCommon<5u>(v3, v11[238], 0);
    v13 = llvm::ConstantInt::get();
    v16 = 257;
    llvm::IRBuilderBase::CreateMul((v11 + 214), v12, v13, v15);
    v15[0] = "gin793.loop.end";
    v16 = 259;
    operator new();
  }

  return this;
}

void AGCLLVMUserComputeKernelG10::addInitCompilePass(AGCLLVMUserComputeKernelG10 *this)
{
  v1 = this + *(*this - 24);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelG10>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<InitCompileComputeShaderG10Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x51)
  {
    v1 = v0;
  }

  else
  {
    v1 = 81;
  }

  v2 = &aStringrefLlvmG_38[v1];
  v3 = 81 - v1;
  if ((81 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 81 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileComputeShaderG10Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileComputeShaderG10Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserComputeKernelG10>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_37[v1];
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

void AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(AGCLLVMUserComputeKernelG10 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMObject::~AGCLLVMObject((v4 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v4 + 4640));
}

void virtual thunk toAGCLLVMDriverTGSizeOptimizationShader::~AGCLLVMDriverTGSizeOptimizationShader(AGCLLVMDriverTGSizeOptimizationShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257E4F8;
  v4[584] = &unk_28257E880;
  v4[797] = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257E9A8, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257E4F8;
  v4[584] = &unk_28257E880;
  v4[797] = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257E9A8, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

void virtual thunk toAGCLLVMDriverComputeKernel::~AGCLLVMDriverComputeKernel(AGCLLVMDriverComputeKernel *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257E470, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10((this + *(*this - 24)), &off_28257E470, a3, a4);
  v5 = (v4 + 4640);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverComputeKernel::~AGCLLVMDriverComputeKernel(AGCLLVMDriverComputeKernel *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E470, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4640));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E470, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4640));
}

uint64_t AGCLLVMDriverTGSizeOptimizationShader::replaceBuiltins(AGCLLVMDriverTGSizeOptimizationShader *this)
{
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    AGCLLVMUserComputeKernelG10::replaceWorkitemFunctions(this);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v4 = Function;
      v5 = *(Function + 8);
      if (v5)
      {
        do
        {
          v6 = *(v5 + 8);
          v7 = *(v5 + 24);
          llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v7);
          v8 = (v7 - 32 * (*(v7 + 5) & 0x7FFFFFF));
          AGCLLVMUserComputeKernelG10::buildFastDivideThreadgroupSize(this, *v8, v8[4]);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v7);
          v5 = v6;
        }

        while (v6);
      }

      llvm::Function::eraseFromParent(v4);
    }
  }

  return v2;
}

uint64_t AGCLLVMDriverTGSizeOptimizationShader::setupShaderInputs(AGCLLVMDriverTGSizeOptimizationShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverTGSizeOptimizationShader::~AGCLLVMDriverTGSizeOptimizationShader(AGCLLVMDriverTGSizeOptimizationShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28257E4F8;
  v5 = (this + 4672);
  *(this + 584) = &unk_28257E880;
  *(this + 797) = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E9A8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257E4F8;
  v5 = (this + 4672);
  *(this + 584) = &unk_28257E880;
  *(this + 797) = &unk_28257E990;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257E9A8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::~AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader(AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257F4D0;
  v4[584] = &unk_28257F858;
  v4[797] = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257F980, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257F4D0;
  v4[584] = &unk_28257F858;
  v4[797] = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257F980, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

uint64_t AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::setupShaderInputs(AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::~AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader(AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28257F4D0;
  v5 = (this + 4672);
  *(this + 584) = &unk_28257F858;
  *(this + 797) = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F980, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257F4D0;
  v5 = (this + 4672);
  *(this + 584) = &unk_28257F858;
  *(this + 797) = &unk_28257F968;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F980, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverExecuteIndirectComputeShaderGen5::~AGCLLVMDriverExecuteIndirectComputeShaderGen5(AGCLLVMDriverExecuteIndirectComputeShaderGen5 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257FA18;
  v4[584] = &unk_28257FDA0;
  v4[797] = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257FEC0, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257FA18;
  v4[584] = &unk_28257FDA0;
  v4[797] = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257FEC0, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

uint64_t AGCLLVMDriverExecuteIndirectComputeShaderGen5::setupShaderInputs(AGCLLVMDriverExecuteIndirectComputeShaderGen5 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverExecuteIndirectComputeShaderGen5::~AGCLLVMDriverExecuteIndirectComputeShaderGen5(AGCLLVMDriverExecuteIndirectComputeShaderGen5 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28257FA18;
  v5 = (this + 4672);
  *(this + 584) = &unk_28257FDA0;
  *(this + 797) = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257FEC0, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257FA18;
  v5 = (this + 4672);
  *(this + 584) = &unk_28257FDA0;
  *(this + 797) = &unk_28257FEB0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257FEC0, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverGPUGatherComputeShaderGen3::~AGCLLVMDriverGPUGatherComputeShaderGen3(AGCLLVMDriverGPUGatherComputeShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257FF48;
  v4[584] = &unk_2825802D0;
  v4[797] = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_2825803F8, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_28257FF48;
  v4[584] = &unk_2825802D0;
  v4[797] = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_2825803F8, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

uint64_t AGCLLVMDriverGPUGatherComputeShaderGen3::setupShaderInputs(AGCLLVMDriverGPUGatherComputeShaderGen3 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

void AGCLLVMDriverGPUGatherComputeShaderGen3::~AGCLLVMDriverGPUGatherComputeShaderGen3(AGCLLVMDriverGPUGatherComputeShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28257FF48;
  v5 = (this + 4672);
  *(this + 584) = &unk_2825802D0;
  *(this + 797) = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825803F8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257FF48;
  v5 = (this + 4672);
  *(this + 584) = &unk_2825802D0;
  *(this + 797) = &unk_2825803E0;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825803F8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282580490;
  v4[584] = &unk_282580818;
  v4[797] = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282580940, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282580490;
  v4[584] = &unk_282580818;
  v4[797] = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282580940, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::setupShaderInputs(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::setupShaderWrapper(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0);
  }

  return v2;
}

void AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationSetupShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282580490;
  v5 = (this + 4672);
  *(this + 584) = &unk_282580818;
  *(this + 797) = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580940, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282580490;
  v5 = (this + 4672);
  *(this + 584) = &unk_282580818;
  *(this + 797) = &unk_282580928;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580940, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825809D8;
  v4[584] = &unk_282580D60;
  v4[797] = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282580E88, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825809D8;
  v4[584] = &unk_282580D60;
  v4[797] = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282580E88, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}