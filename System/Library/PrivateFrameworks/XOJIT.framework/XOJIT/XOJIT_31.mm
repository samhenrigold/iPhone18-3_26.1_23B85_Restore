llvm::Instruction *llvm::IRBuilderBase::CreateExtractElement(llvm::IRBuilderBase *this, llvm::Value *a2, const llvm::Twine *a3, const llvm::Twine *a4)
{
  v7 = llvm::ConstantInt::get(**(this + 8) + 2016, 0, 0);

  return llvm::IRBuilderBase::CreateExtractElement(this, a2, v7, a3);
}

llvm::Instruction *UpgradeMaskedStore(uint64_t *a1, llvm::Value *a2, llvm::PointerType **a3, llvm::Constant *a4, int a5)
{
  v10 = llvm::PointerType::get(*a3, 0);
  v19 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v10, v18);
  if (a5)
  {
    v15 = (63 - __clz(llvm::Type::getPrimitiveSizeInBits(*a3) >> 3));
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (*(a4 + 16) <= 0x14u && llvm::Constant::isAllOnesValue(a4, v11, v12, v13))
  {
    return llvm::IRBuilderBase::CreateAlignedStore(a1, a3, Cast, v15 | 0x100u, 0);
  }

LABEL_8:
  X86MaskVec = getX86MaskVec(a1, a4, *(*a3 + 8));
  return llvm::IRBuilderBase::CreateMaskedStore(a1, a3, Cast, v15, X86MaskVec);
}

llvm::Instruction *llvm::IRBuilderBase::CreateInsertElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, const llvm::Twine *a5)
{
  v9 = llvm::ConstantInt::get(**(this + 8) + 2016, 0, 0);

  return llvm::IRBuilderBase::CreateInsertElement(this, a2, a3, v9, a4);
}

llvm::Instruction *EmitX86Select(llvm::IRBuilderBase *a1, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v5 = a3;
  if (!a2 || *(a2 + 16) > 0x14u || !llvm::Constant::isAllOnesValue(a2, a2, a3, a4))
  {
    X86MaskVec = getX86MaskVec(a1, a2, *(*v5 + 32));
    v11 = 257;
    return llvm::IRBuilderBase::CreateSelect(a1, X86MaskVec, v5, a4, v10, 0);
  }

  return v5;
}

llvm::Instruction *ApplyX86MaskOn1BitsVec(llvm::IntegerType **a1, llvm::Type *a2, llvm::Value *a3, BOOL a4)
{
  ShuffleVector = a2;
  v24[3] = *MEMORY[0x277D85DE8];
  v6 = *(*a2 + 32);
  if (a3 && (*(a3 + 16) > 0x14u || !llvm::Constant::isAllOnesValue(a3, a2, a3, a4)))
  {
    X86MaskVec = getX86MaskVec(a1, a3, v6);
    v22 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateAnd(a1, ShuffleVector, X86MaskVec, v21);
  }

  if (v6 <= 7)
  {
    if (v6)
    {
      v9 = 0;
      v10 = vdupq_n_s64(v6 - 1);
      v11 = xmmword_2750C1830;
      v12 = xmmword_2750C1210;
      v13 = v24;
      v14 = vdupq_n_s64(4uLL);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v10, v12));
        if (vuzp1_s16(v15, *v10.i8).u8[0])
        {
          *(v13 - 2) = v9;
        }

        if (vuzp1_s16(v15, *&v10).i8[2])
        {
          *(v13 - 1) = v9 + 1;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
        {
          *v13 = v9 + 2;
          v13[1] = v9 + 3;
        }

        v9 += 4;
        v11 = vaddq_s64(v11, v14);
        v12 = vaddq_s64(v12, v14);
        v13 += 4;
      }

      while (((v6 + 3) & 0xC) != v9);
    }

    for (i = v6; i != 8; ++i)
    {
      v23[i] = i % v6 + v6;
    }

    NullValue = llvm::Constant::getNullValue(*ShuffleVector, a2, a3, a4);
    v22 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a1, ShuffleVector, NullValue, v23, 8, v21);
  }

  if (v6 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v6;
  }

  v19 = llvm::IntegerType::get(a1[8], v18);
  v22 = 257;
  return llvm::IRBuilderBase::CreateCast(a1, 49, ShuffleVector, v19, v21);
}

llvm::Instruction *getX86MaskVec(uint64_t a1, llvm::Value *a2, unsigned int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::FixedVectorType::get((**(a1 + 64) + 1920), (*(*a2 + 8) >> 8));
  v14 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v6, v13);
  if (a3 <= 4)
  {
    if (a3)
    {
      v8 = a3;
      v9 = vdupq_n_s64(a3 - 1);
      v10 = vmovn_s64(vcgeq_u64(v9, xmmword_2750C1210));
      if (vuzp1_s16(v10, *v9.i8).u8[0])
      {
        v15[0] = 0;
      }

      if (vuzp1_s16(v10, *&v9).i8[2])
      {
        v15[1] = 1;
      }

      v11 = vmovn_s64(vcgeq_u64(v9, xmmword_2750C1830));
      if (vuzp1_s16(v11, v11).i32[1])
      {
        v15[2] = 2;
        v15[3] = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    v13[0] = "extract";
    v14 = 259;
    return llvm::IRBuilderBase::CreateShuffleVector(a1, Cast, Cast, v15, v8, v13);
  }

  return Cast;
}

llvm::Instruction *llvm::IRBuilderBase::CreateFAdd(llvm::MDNode **this, BOOL **a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 84, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(*this[9] + 40))(this[9], 14, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(14, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = this[11]) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateFSub(llvm::MDNode **this, BOOL **a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 97, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(*this[9] + 40))(this[9], 16, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(16, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = this[11]) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateFMul(llvm::MDNode **this, BOOL **a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 90, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(*this[9] + 40))(this[9], 18, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(18, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = this[11]) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateFDiv(llvm::MDNode **this, BOOL **a2, llvm::Value *a3, const llvm::Twine *a4, llvm::MDNode *a5)
{
  v5 = a5;
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp(this, 87, a2, a3, 0, a4, a5, 0, 0);
  }

  result = (*(*this[9] + 40))(this[9], 21, a2, a3, *(this + 24));
  if (!result)
  {
    v15 = 257;
    v11 = llvm::BinaryOperator::Create(21, a2, a3, v14, 0);
    v12 = v11;
    v13 = *(this + 24);
    if (v5 || (v5 = this[11]) != 0)
    {
      llvm::Value::setMetadata(v11, 3, v5);
    }

    *(v12 + 17) |= 2 * v13;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a4);
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateInsertElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  result = (*(**(this + 9) + 104))(*(this + 9));
  if (!result)
  {
    v15 = 257;
    v11 = operator new(0xA0uLL);
    v12 = (v11 + 24);
    v11[29] = v11[29] & 0x38000000 | 3;
    v13 = 96;
    do
    {
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v11 + 3) = v12;
      v11 += 8;
      v13 -= 32;
    }

    while (v13);
    llvm::InsertElementInst::InsertElementInst(v12, a2, a3, a4, v14, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v12, a5);
  }

  return result;
}

llvm::Instruction *upgradeMaskedCompare(uint64_t a1, llvm::CallBase *a2, int a3, int a4)
{
  v7 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  v8 = *v7;
  v9 = *(**v7 + 8);
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      v10 = 33;
      if (a4)
      {
        v11 = 39;
      }

      else
      {
        v11 = 35;
      }

      v12 = a3 == 4;
      goto LABEL_12;
    }

    if (a3 != 6)
    {
      llvm::FixedVectorType::get((**(a1 + 64) + 1920), v9);
      AllOnesValue = llvm::Constant::getAllOnesValue(v28, v29);
      goto LABEL_23;
    }

    v14 = a4 == 0;
    v15 = 34;
    v16 = 38;
LABEL_19:
    if (v14)
    {
      v13 = v15;
    }

    else
    {
      v13 = v16;
    }

    goto LABEL_22;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      llvm::FixedVectorType::get((**(a1 + 64) + 1920), v9);
      AllOnesValue = llvm::Constant::getNullValue(v24, v25, v26, v27);
      goto LABEL_23;
    }

    v14 = a4 == 0;
    v15 = 37;
    v16 = 41;
    goto LABEL_19;
  }

  v10 = 32;
  if (a4)
  {
    v11 = 40;
  }

  else
  {
    v11 = 36;
  }

  v12 = a3 == 0;
LABEL_12:
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

LABEL_22:
  v17 = v7[4];
  v31 = 257;
  AllOnesValue = llvm::IRBuilderBase::CreateICmp(a1, v13, v8, v17, v30);
LABEL_23:
  v19 = AllOnesValue;
  v20 = llvm::CallBase::arg_end(a2);
  v21 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  return ApplyX86MaskOn1BitsVec(a1, v19, *&v21[32 * ((v20 - v21) >> 5) - 32], v22);
}

llvm::Instruction *upgradeAbs(llvm::IRBuilderBase *a1, uint64_t *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v4 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), 1, &v14, 1);
  v6 = Declaration;
  if (Declaration)
  {
    v7 = *(Declaration + 24);
  }

  else
  {
    v7 = 0;
  }

  v15[0] = v4;
  v15[1] = llvm::ConstantInt::get(**(a1 + 8) + 1920, 0, 0);
  v13 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1, v7, v6, v15, 2, v12, 0);
  v9 = llvm::CallBase::arg_end(a2);
  v10 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v9 - v10) & 0x1FFFFFFFE0) == 0x60)
  {
    return EmitX86Select(a1, v10[8], v8, v10[4]);
  }

  return v8;
}

llvm::Instruction *UpgradeX86BinaryIntrinsics(llvm::IRBuilderBase *a1, uint64_t *a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v5 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v6 = *v5;
  v7 = v5[4];
  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), a3, &v16, 1);
  if (Declaration)
  {
    v9 = *(Declaration + 24);
  }

  else
  {
    v9 = 0;
  }

  v17[0] = v6;
  v17[1] = v7;
  v15 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1, v9, Declaration, v17, 2, v14, 0);
  v11 = llvm::CallBase::arg_end(a2);
  v12 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v11 - v12) & 0x1FFFFFFFE0) == 0x80)
  {
    return EmitX86Select(a1, v12[12], v10, v12[8]);
  }

  return v10;
}

llvm::Instruction *upgradePMULDQ(llvm::IRBuilderBase *a1, llvm::Type **a2, int a3)
{
  v6 = *a2;
  v7 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, v7, v6, v21);
  v9 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF) + 4];
  v22 = 257;
  v10 = llvm::IRBuilderBase::CreateCast(a1, 49, v9, v6, v21);
  if (a3)
  {
    v11 = llvm::ConstantInt::get(v6, 0x20, 0);
    v22 = 257;
    Shl = llvm::IRBuilderBase::CreateShl(a1, Cast, v11, v21, 0, 0);
    v22 = 257;
    AShr = llvm::IRBuilderBase::CreateAShr(a1, Shl, v11, v21, 0);
    v22 = 257;
    v14 = llvm::IRBuilderBase::CreateShl(a1, v10, v11, v21, 0, 0);
    v22 = 257;
    v15 = llvm::IRBuilderBase::CreateAShr(a1, v14, v11, v21, 0);
  }

  else
  {
    v16 = llvm::ConstantInt::get(v6, 0xFFFFFFFFLL, 0);
    v22 = 257;
    AShr = llvm::IRBuilderBase::CreateAnd(a1, Cast, v16, v21);
    v22 = 257;
    v15 = llvm::IRBuilderBase::CreateAnd(a1, v10, v16, v21);
  }

  v22 = 257;
  Mul = llvm::IRBuilderBase::CreateMul(a1, AShr, v15, v21, 0, 0);
  v18 = llvm::CallBase::arg_end(a2);
  v19 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v18 - v19) & 0x1FFFFFFFE0) == 0x80)
  {
    return EmitX86Select(a1, v19[12], Mul, v19[8]);
  }

  return Mul;
}

llvm::Instruction *llvm::IRBuilderBase::CreateSIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast(this, 116, a2, a3, 0, a4, 0, 0, 0);
  }

  return llvm::IRBuilderBase::CreateCast(this, 44, a2, a3, a4);
}

llvm::Instruction *llvm::IRBuilderBase::CreateUIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast(this, 119, a2, a3, 0, a4, 0, 0, 0);
  }

  return llvm::IRBuilderBase::CreateCast(this, 43, a2, a3, a4);
}

llvm::Instruction *llvm::IRBuilderBase::CreateFPExt(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast(this, 92, a2, a3, 0, a4, 0, 0, 0);
  }

  return llvm::IRBuilderBase::CreateCast(this, 46, a2, a3, a4);
}

llvm::Instruction *UpgradeMaskedLoad(uint64_t *a1, llvm::Value *a2, llvm::PointerType **a3, llvm::Constant *a4, int a5)
{
  v10 = *a3;
  v11 = llvm::PointerType::get(*a3, 0);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v11, v19);
  if (a5)
  {
    v16 = (63 - __clz(llvm::Type::getPrimitiveSizeInBits(*a3) >> 3));
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (*(a4 + 16) <= 0x14u && llvm::Constant::isAllOnesValue(a4, v12, v13, v14))
  {
    v20 = 257;
    return llvm::IRBuilderBase::CreateAlignedLoad(a1, v10, Cast, v16 | 0x100u, 0, v19);
  }

LABEL_8:
  X86MaskVec = getX86MaskVec(a1, a4, *(v10 + 8));
  v20 = 257;
  return llvm::IRBuilderBase::CreateMaskedLoad(a1, v10, Cast, v16, X86MaskVec, a3, v19);
}

llvm::Instruction *upgradeX86vpcom(uint64_t a1, llvm::Type **a2, int a3, int a4)
{
  v7 = *a2;
  v8 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v9 = *v8;
  v10 = v8[4];
  if (a3 <= 3)
  {
    if (a4)
    {
      v11 = 38;
    }

    else
    {
      v11 = 34;
    }

    if (a4)
    {
      v12 = 39;
    }

    else
    {
      v12 = 35;
    }

    if (a3 != 2)
    {
      v11 = v12;
    }

    v13 = a4 == 0;
    if (a4)
    {
      v14 = 40;
    }

    else
    {
      v14 = 36;
    }

    if (v13)
    {
      v15 = 37;
    }

    else
    {
      v15 = 41;
    }

    if (a3)
    {
      v14 = v15;
    }

    if (a3 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    goto LABEL_25;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v16 = 32;
    }

    else
    {
      v16 = 33;
    }

LABEL_25:
    v21 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(a1, v16, v9, v10, v20);
    v21 = 257;
    return llvm::IRBuilderBase::CreateCast(a1, 40, ICmp, v7, v20);
  }

  v19 = *a2;
  if (a3 == 6)
  {

    return llvm::Constant::getNullValue(v19, a2, v9, v10);
  }

  else
  {

    return llvm::Constant::getAllOnesValue(v19, a2);
  }
}

llvm::Value *upgradeX86Rotate(llvm::IRBuilderBase *this, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, llvm::Instruction *a6)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v24 = v9;
  v10 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v11 = *v10;
  VectorSplat = v10[4];
  if (*VectorSplat != v9)
  {
    v13 = *(v9 + 32);
    if ((*(v9 + 8) & 0xFE) == 0x12)
    {
      v9 = **(v9 + 16);
    }

    v23 = 257;
    IntCast = llvm::IRBuilderBase::CreateIntCast(this, VectorSplat, v9, 0, v22, a6);
    v23 = 257;
    VectorSplat = llvm::IRBuilderBase::CreateVectorSplat(this, v13, IntCast, v22);
  }

  if (a3)
  {
    v15 = 149;
  }

  else
  {
    v15 = 148;
  }

  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 56) + 40), v15, &v24, 1);
  if (Declaration)
  {
    v17 = *(Declaration + 24);
  }

  else
  {
    v17 = 0;
  }

  v25[0] = v11;
  v25[1] = v11;
  v25[2] = VectorSplat;
  v23 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this, v17, Declaration, v25, 3, v22, 0);
  v19 = llvm::CallBase::arg_end(a2);
  v20 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (((v19 - v20) & 0x1FFFFFFFE0) == 0x80)
  {
    return EmitX86Select(this, v20[12], v18, v20[8]);
  }

  return v18;
}

llvm::Value *upgradeX86ConcatShift(llvm::IRBuilderBase *this, BOOL **a2, int a3, int a4, uint64_t a5, llvm::Instruction *a6)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v31 = *a2;
  v11 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  VectorSplat = v11[8];
  if (a3)
  {
    v13 = *v11;
  }

  else
  {
    v13 = v11[4];
  }

  if (a3)
  {
    v14 = v11[4];
  }

  else
  {
    v14 = *v11;
  }

  if (*VectorSplat != v10)
  {
    v15 = *(v10 + 8);
    if ((*(v10 + 2) & 0xFE) == 0x12)
    {
      v10 = **(v10 + 2);
    }

    v30 = 257;
    IntCast = llvm::IRBuilderBase::CreateIntCast(this, VectorSplat, v10, 0, v29, a6);
    v30 = 257;
    VectorSplat = llvm::IRBuilderBase::CreateVectorSplat(this, v15, IntCast, v29);
  }

  if (a3)
  {
    v17 = 149;
  }

  else
  {
    v17 = 148;
  }

  Declaration = llvm::Intrinsic::getDeclaration(*(*(a2[5] + 7) + 40), v17, &v31, 1);
  if (Declaration)
  {
    v19 = *(Declaration + 24);
  }

  else
  {
    v19 = 0;
  }

  v32[0] = v14;
  v32[1] = v13;
  v32[2] = VectorSplat;
  v30 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(this, v19, Declaration, v32, 3, v29, 0);
  v21 = llvm::CallBase::arg_end(a2);
  v23 = *(a2 + 5) & 0x7FFFFFF;
  v24 = &a2[-4 * v23];
  v25 = (v21 - v24) >> 5;
  if (v25 >= 4)
  {
    v26 = -v23;
    if (v25 == 5)
    {
      v27 = v24[12];
    }

    else if (a4)
    {
      v27 = llvm::ConstantAggregateZero::get(*a2, v22);
      v26 = -(*(a2 + 5) & 0x7FFFFFF);
    }

    else
    {
      v27 = *v24;
    }

    return EmitX86Select(this, (&a2[4 * v26])[4 * (v25 - 1)], v20, v27);
  }

  return v20;
}

llvm::Instruction *llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, llvm::PoisonValue **a2, int *a3, llvm::Type *a4, uint64_t a5)
{
  v10 = llvm::PoisonValue::get(*a2, a2);

  return llvm::IRBuilderBase::CreateShuffleVector(a1, a2, v10, a3, a4, a5);
}

llvm::Value *llvm::IRBuilderBase::CreatePointerCast(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    v11 = 257;
    PointerCast = llvm::CastInst::CreatePointerCast(a2, a3, v10, 0, a5);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, PointerCast, a4);
  }

  a2 = (*(**(this + 9) + 128))(*(this + 9));
  if (a2)
  {
    v7 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, a2, a4);
}

llvm::Instruction *UpgradeX86ALIGNIntrinsics(llvm::IRBuilderBase *a1, llvm::Type *a2, llvm::Type *a3, uint64_t a4, llvm::Value *a5, llvm::Value *a6, int a7)
{
  v10 = a2;
  v36 = *MEMORY[0x277D85DE8];
  v12 = (a4 + 24);
  if (*(a4 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  v13 = *v12;
  v14 = *a2;
  v15 = *(*a2 + 32);
  v16 = v15 - 1;
  if (!a7)
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  if ((v16 & v13) < 0x20)
  {
    if (v17 >= 0x11)
    {
      v17 -= 16;
      NullValue = llvm::Constant::getNullValue(v14, a2, a3, a4);
      a3 = v10;
      v10 = NullValue;
    }

    if (v15)
    {
      v20 = 0;
      v21 = vdupq_n_s32(v17);
      v22 = vdupq_n_s32(v15 - 16);
      v23 = v35;
      v24.i64[0] = 0x1000000010;
      v24.i64[1] = 0x1000000010;
      v25.i64[0] = 0x400000004;
      v25.i64[1] = 0x400000004;
      do
      {
        v26 = 0;
        v27 = vdupq_n_s32(v20);
        v28 = xmmword_2750C8A80;
        do
        {
          v29 = vaddq_s32(v21, v28);
          v30 = vmovn_s32(vcgtq_u32(v24, v29));
          if (a7)
          {
            v31 = -1;
          }

          else
          {
            v31 = 0;
          }

          *&v23[v26] = vaddq_s32(vaddq_s32(v29, v27), vbicq_s8(v22, vmovl_s16(vorr_s8(v30, vdup_n_s16(v31)))));
          v28 = vaddq_s32(v28, v25);
          v26 += 4;
        }

        while (v26 != 16);
        v20 += 16;
        v23 += 16;
      }

      while (v20 < v15);
    }

    else
    {
      v15 = 0;
    }

    v33 = "palignr";
    v34 = 259;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a1, a3, v10, v35, v15, &v33);
    return EmitX86Select(a1, a6, ShuffleVector, a5);
  }

  else
  {

    return llvm::Constant::getNullValue(v14, a2, a3, a4);
  }
}

llvm::Instruction *UpgradeX86PSLLDQIntrinsics(uint64_t a1, llvm::Value *a2, unsigned int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = (8 * *(*a2 + 32));
  llvm::FixedVectorType::get((**(a1 + 64) + 1944), v7);
  v9 = v8;
  *v27 = "cast";
  v28 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v8, v27);
  NullValue = llvm::Constant::getNullValue(v9, v11, v12, v13);
  if (a3 <= 0xF)
  {
    if (v7)
    {
      v15 = 0;
      v16 = vdupq_n_s32(v7 - a3);
      v17 = vdupq_n_s32(v7);
      v18 = vdupq_n_s32(16 - v7);
      v19 = v27;
      v20.i64[0] = 0x400000004;
      v20.i64[1] = 0x400000004;
      do
      {
        v21 = 0;
        v22 = vdupq_n_s32(v15);
        v23 = xmmword_2750C8A80;
        do
        {
          v24 = vaddq_s32(v16, v23);
          *&v19[v21] = vaddq_s32(vaddq_s32(v24, v22), vandq_s8(v18, vcgtq_u32(v17, v24)));
          v23 = vaddq_s32(v23, v20);
          v21 += 4;
        }

        while (v21 != 16);
        v15 += 16;
        v19 += 16;
      }

      while (v7 != v15);
    }

    v26[16] = 257;
    NullValue = llvm::IRBuilderBase::CreateShuffleVector(a1, NullValue, Cast, v27, v7, v26);
  }

  *v27 = "cast";
  v28 = 259;
  return llvm::IRBuilderBase::CreateCast(a1, 49, NullValue, v6, v27);
}

llvm::Instruction *UpgradeX86PSRLDQIntrinsics(uint64_t a1, llvm::Value *a2, unsigned int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = (8 * *(*a2 + 32));
  llvm::FixedVectorType::get((**(a1 + 64) + 1944), v7);
  v9 = v8;
  *v27 = "cast";
  v28 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v8, v27);
  NullValue = llvm::Constant::getNullValue(v9, v11, v12, v13);
  if (a3 <= 0xF)
  {
    if (v7)
    {
      v15 = 0;
      v16 = vdupq_n_s32(a3);
      v17 = vdupq_n_s32(v7 - 16);
      v18 = v27;
      v19.i64[0] = 0xF0000000FLL;
      v19.i64[1] = 0xF0000000FLL;
      v20.i64[0] = 0x400000004;
      v20.i64[1] = 0x400000004;
      do
      {
        v21 = 0;
        v22 = vdupq_n_s32(v15);
        v23 = xmmword_2750C8A80;
        do
        {
          v24 = vaddq_s32(v23, v16);
          *&v18[v21] = vaddq_s32(vaddq_s32(v24, v22), vandq_s8(v17, vcgtq_u32(v24, v19)));
          v23 = vaddq_s32(v23, v20);
          v21 += 4;
        }

        while (v21 != 16);
        v15 += 16;
        v18 += 16;
      }

      while (v7 != v15);
    }

    v26[16] = 257;
    NullValue = llvm::IRBuilderBase::CreateShuffleVector(a1, Cast, NullValue, v27, v7, v26);
  }

  *v27 = "cast";
  v28 = 259;
  return llvm::IRBuilderBase::CreateCast(a1, 49, NullValue, v6, v27);
}

double llvm::VectorType::getInteger(uint64_t a1)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*(a1 + 24));
  if (v2)
  {
  }

  v5 = llvm::IntegerType::get(*a1, PrimitiveSizeInBits);
  v7 = (*(a1 + 32) | ((*(a1 + 8) == 19) << 32));

  return llvm::VectorType::get(v5, v7, v6);
}

llvm::Instruction *UpgradeX86MaskedShift(llvm::IRBuilderBase *a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a2 + 40) + 56) + 40), a3, 0, 0);
  if (Declaration)
  {
    v6 = *(Declaration + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v8 = *v7;
  v9 = v7[4];
  v14[0] = v8;
  v14[1] = v9;
  v13[16] = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1, v6, Declaration, v14, 2, v13, 0);
  v11 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  return EmitX86Select(a1, *(v11 + 96), v10, *(v11 + 64));
}

llvm::Instruction *upgradeMaskedMove(llvm::IRBuilderBase *a1, uint64_t a2, const llvm::APInt *a3, unint64_t *a4)
{
  v5 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  v6 = *v5;
  v7 = *(v5 + 32);
  v8 = *(v5 + 64);
  v9 = *(v5 + 96);
  v27 = 8;
  v26 = 1;
  v25 = 257;
  v10 = llvm::ConstantInt::get(*v9, &v26, a3, a4);
  v14 = llvm::IRBuilderBase::CreateAnd(a1, v9, v10, v24);
  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x277C69E10](v26, 0x1000C8000313F17);
  }

  v25 = 257;
  NullValue = llvm::Constant::getNullValue(*v14, v11, v12, v13);
  ICmp = llvm::IRBuilderBase::CreateICmp(a1, 33, v14, NullValue, v24);
  v25 = 257;
  v17 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0, 0);
  Element = llvm::IRBuilderBase::CreateExtractElement(a1, v7, v17, v24);
  v25 = 257;
  v19 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0, 0);
  v20 = llvm::IRBuilderBase::CreateExtractElement(a1, v8, v19, v24);
  v25 = 257;
  Select = llvm::IRBuilderBase::CreateSelect(a1, ICmp, Element, v20, v24, 0);
  v25 = 257;
  v22 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0, 0);
  return llvm::IRBuilderBase::CreateInsertElement(a1, v6, Select, v22, v24);
}

llvm::Instruction *UpgradeMaskToInt(uint64_t a1, _DWORD *a2)
{
  v3 = *a2;
  X86MaskVec = getX86MaskVec(a1, *&a2[-8 * (a2[5] & 0x7FFFFFF)], *(*a2 + 32));
  v6 = "vpmovm2";
  v7 = 259;
  return llvm::IRBuilderBase::CreateCast(a1, 40, X86MaskVec, v3, &v6);
}

llvm::Instruction *llvm::IRBuilderBase::CreateFNeg(llvm::IRBuilderBase *this, llvm::Type **a2, const llvm::Twine *a3, llvm::MDNode *a4)
{
  result = (*(**(this + 9) + 48))(*(this + 9), 12, a2, *(this + 24));
  if (!result)
  {
    v13 = 257;
    v9 = llvm::UnaryOperator::Create(12, a2, v12, 0);
    v10 = v9;
    v11 = *(this + 24);
    if (a4 || (a4 = *(this + 11)) != 0)
    {
      llvm::Value::setMetadata(v9, 3, a4);
    }

    *(v10 + 17) |= 2 * v11;
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v10, a3);
  }

  return result;
}

llvm::Instruction *EmitX86ScalarSelect(llvm::IRBuilderBase *a1, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v5 = a3;
  if (!a2 || *(a2 + 16) > 0x14u || !llvm::Constant::isAllOnesValue(a2, a2, a3, a4))
  {
    llvm::FixedVectorType::get((**(a1 + 8) + 1920), (*(*a2 + 8) >> 8));
    v14 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1, 49, a2, v8, v13);
    v14 = 257;
    v10 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0, 0);
    Element = llvm::IRBuilderBase::CreateExtractElement(a1, Cast, v10, v13);
    v14 = 257;
    return llvm::IRBuilderBase::CreateSelect(a1, Element, v5, a4, v13, 0);
  }

  return v5;
}

llvm::Instruction *UpgradeX86VPERMT2Intrinsics(llvm::IRBuilderBase *a1, uint64_t a2, int a3, char a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*a2);
  if (v9)
  {
  }

  v12 = *(v8 + 2);
  if ((v12 & 0xFE) == 0x12)
  {
    v13 = **(v8 + 2);
    v14 = llvm::Type::getPrimitiveSizeInBits(v13);
    v12 = *(v13 + 2);
  }

  else
  {
    v14 = llvm::Type::getPrimitiveSizeInBits(v8);
  }

  v15 = v12 < 6u && ((0x2Fu >> v12) & 1) != 0 || (v12 & 0xFD) == 4;
  v16 = PrimitiveSizeInBits == 128 && v14 == 32;
  v17 = !v16;
  v18 = !v15;
  if (!v16 || v18)
  {
    if ((v15 | v17) == 1)
    {
      v20 = PrimitiveSizeInBits == 128 && v14 == 64;
      v21 = !v20;
      v22 = !v20 || !v15;
      if (v22 == 1)
      {
        if ((v15 | v21) == 1)
        {
          v23 = PrimitiveSizeInBits == 256 && v14 == 32;
          v24 = !v23;
          v25 = !v23 || !v15;
          if (v25 == 1)
          {
            if ((v15 | v24) == 1)
            {
              v26 = PrimitiveSizeInBits == 256 && v14 == 64;
              v27 = !v26;
              v28 = !v26 || !v15;
              if (v28 == 1)
              {
                if ((v15 | v27) == 1)
                {
                  v29 = PrimitiveSizeInBits == 512 && v14 == 32;
                  v30 = !v29;
                  v31 = !v29 || !v15;
                  if (v31 == 1)
                  {
                    if ((v15 | v30) == 1)
                    {
                      v32 = PrimitiveSizeInBits == 512 && v14 == 64;
                      v33 = !v32;
                      if (!v32)
                      {
                        v18 = 1;
                      }

                      if (v18 == 1)
                      {
                        if ((v15 | v33) == 1)
                        {
                          if (PrimitiveSizeInBits == 128 && v14 == 16)
                          {
                            v19 = 10933;
                          }

                          else if (PrimitiveSizeInBits == 256 && v14 == 16)
                          {
                            v19 = 10934;
                          }

                          else if (PrimitiveSizeInBits == 512 && v14 == 16)
                          {
                            v19 = 10935;
                          }

                          else if (PrimitiveSizeInBits == 128 && v14 == 8)
                          {
                            v19 = 10945;
                          }

                          else if (v14 == 8 && PrimitiveSizeInBits == 256)
                          {
                            v19 = 10946;
                          }

                          else
                          {
                            v19 = 10947;
                          }
                        }

                        else
                        {
                          v19 = 10944;
                        }
                      }

                      else
                      {
                        v19 = 10938;
                      }
                    }

                    else
                    {
                      v19 = 10932;
                    }
                  }

                  else
                  {
                    v19 = 10941;
                  }
                }

                else
                {
                  v19 = 10943;
                }
              }

              else
              {
                v19 = 10937;
              }
            }

            else
            {
              v19 = 10931;
            }
          }

          else
          {
            v19 = 10940;
          }
        }

        else
        {
          v19 = 10942;
        }
      }

      else
      {
        v19 = 10936;
      }
    }

    else
    {
      v19 = 10930;
    }
  }

  else
  {
    v19 = 10939;
  }

  v34 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v35 = *v34;
  v36 = v34[4];
  v47 = *v34;
  v48 = v36;
  v49 = v34[8];
  if ((a4 & 1) == 0)
  {
    v47 = v36;
    v48 = v35;
  }

  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a2 + 40) + 56) + 40), v19, 0, 0);
  if (Declaration)
  {
    v38 = *(Declaration + 24);
  }

  else
  {
    v38 = 0;
  }

  v46 = 257;
  v40 = llvm::IRBuilderBase::CreateCall(a1, v38, Declaration, &v47, 3, v45, 0);
  if (a3)
  {
    Cast = llvm::ConstantAggregateZero::get(v8, v39);
  }

  else
  {
    v42 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32);
    v46 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1, 49, v42, v8, v45);
  }

  return EmitX86Select(a1, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 96), v40, Cast);
}

uint64_t upgradeAVX512MaskToSelect(uint64_t a1, unint64_t a2, llvm::IRBuilderBase *a3, uint64_t a4, llvm::Value **a5)
{
  v75[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 0xC)
  {
    v10 = 12;
  }

  else
  {
    v10 = a2;
  }

  v11 = *a4;
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*a4);
  if (v12)
  {
    v11 = *a4;
  }

  v15 = a1 + v10;
  v16 = a2 - v10;
  v17 = *(v11 + 2);
  v18 = v11;
  if ((v17 & 0xFE) == 0x12)
  {
    v18 = **(v11 + 2);
  }

  v19 = llvm::Type::getPrimitiveSizeInBits(v18);
  if (v16 < 5)
  {
    goto LABEL_9;
  }

  if (*v15 == 779641197 && *(v15 + 4) == 112)
  {
    if (PrimitiveSizeInBits == 128 && v19 == 32)
    {
      v23 = 11304;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v19 == 64)
    {
      v23 = 11343;
      goto LABEL_221;
    }

    v39 = v19 == 32 && PrimitiveSizeInBits == 256;
    v40 = 10261;
    goto LABEL_159;
  }

  if (*v15 == 778987885 && *(v15 + 4) == 112)
  {
    if (PrimitiveSizeInBits == 128 && v19 == 32)
    {
      v23 = 11306;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v19 == 64)
    {
      v23 = 11346;
      goto LABEL_221;
    }

    v39 = v19 == 32 && PrimitiveSizeInBits == 256;
    v40 = 10263;
    goto LABEL_159;
  }

  if (v16 < 8)
  {
LABEL_9:
    v20 = 1;
LABEL_10:
    if (v16 == 13)
    {
      if (*v15 == 0x6432647074747663 && *(v15 + 5) == 0x3635322E71643264)
      {
        v23 = 10245;
        goto LABEL_221;
      }

      if (*v15 == 0x6432737074747663 && *(v15 + 5) == 0x3832312E71643273)
      {
        v23 = 11338;
        goto LABEL_221;
      }

      if (*v15 == 0x6432737074747663 && *(v15 + 5) == 0x3635322E71643273)
      {
        v23 = 10246;
        goto LABEL_221;
      }
    }

    else if (v16 == 12)
    {
      if (*v15 == 0x7164326470747663 && *(v15 + 8) == 909455918)
      {
        v23 = 10243;
        goto LABEL_221;
      }

      if (*v15 == 0x7370326470747663 && *(v15 + 8) == 909455918)
      {
        v23 = 10242;
        goto LABEL_221;
      }
    }

    if (v20)
    {
      goto LABEL_59;
    }

    if (*v15 != 0x2E7261766D726570)
    {
      if (*v15 == 0x7762646173706264 && *(v15 + 8) == 46)
      {
        v41 = 10409;
        v42 = PrimitiveSizeInBits == 256;
        v43 = 10411;
        v44 = 10410;
        goto LABEL_215;
      }

LABEL_59:
      if (v16 < 0xF || (*v15 == 0x687369746C756D70 ? (v31 = *(v15 + 7) == 0x2E62712E74666968) : (v31 = 0), !v31))
      {
        if ((v20 & 1) != 0 || (*v15 == 0x7463696C666E6F63 ? (v32 = *(v15 + 8) == 46) : (v32 = 0), !v32))
        {
          if (v16 < 5)
          {
            return 0;
          }

          goto LABEL_70;
        }

        v45 = *(v15 + 9);
        if (v45 == 100 && PrimitiveSizeInBits == 128)
        {
          v23 = 10389;
          goto LABEL_221;
        }

        if (v45 == 100 && PrimitiveSizeInBits == 256)
        {
          v23 = 10390;
          goto LABEL_221;
        }

        if (v45 == 100 && PrimitiveSizeInBits == 512)
        {
          v23 = 10391;
          goto LABEL_221;
        }

        if (v45 == 113 && PrimitiveSizeInBits == 128)
        {
          v23 = 10392;
          goto LABEL_221;
        }

        v69 = PrimitiveSizeInBits == 256 && v45 == 113;
        v70 = 10393;
LABEL_241:
        if (v69)
        {
          v23 = v70;
        }

        else
        {
          v23 = v70 + 1;
        }

        goto LABEL_221;
      }

      v41 = 10788;
      v42 = PrimitiveSizeInBits == 256;
      v43 = 10790;
      v44 = 10789;
LABEL_215:
      if (v42)
      {
        v43 = v44;
      }

      if (PrimitiveSizeInBits == 128)
      {
        v23 = v41;
      }

      else
      {
        v23 = v43;
      }

      goto LABEL_221;
    }

LABEL_86:
    if ((v17 & 0xFE) == 0x12)
    {
      v17 = *(**(v11 + 2) + 8);
    }

    v35 = v17 < 6u && ((0x2Fu >> v17) & 1) != 0 || (v17 & 0xFD) == 4;
    v36 = PrimitiveSizeInBits == 256 && v19 == 32;
    v37 = !v36;
    v38 = !v35;
    if (v36 && !v38)
    {
      v23 = 10325;
      goto LABEL_221;
    }

    if ((v35 | v37) != 1)
    {
      v23 = 10324;
      goto LABEL_221;
    }

    v46 = PrimitiveSizeInBits == 256 && v19 == 64;
    v47 = !v46;
    v48 = !v46 || !v35;
    if (v48 != 1)
    {
      v23 = 10771;
      goto LABEL_221;
    }

    if ((v35 | v47) != 1)
    {
      v23 = 10773;
      goto LABEL_221;
    }

    v49 = PrimitiveSizeInBits == 512 && v19 == 32;
    v50 = !v49;
    v51 = !v49 || !v35;
    if (v51 != 1)
    {
      v23 = 10781;
      goto LABEL_221;
    }

    if ((v35 | v50) != 1)
    {
      v23 = 10782;
      goto LABEL_221;
    }

    v52 = PrimitiveSizeInBits == 512 && v19 == 64;
    v53 = !v52;
    if (!v52)
    {
      v38 = 1;
    }

    if (v38 != 1)
    {
      v23 = 10772;
      goto LABEL_221;
    }

    if ((v35 | v53) != 1)
    {
      v23 = 10774;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v19 == 16)
    {
      v23 = 10775;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 256 && v19 == 16)
    {
      v23 = 10776;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 512 && v19 == 16)
    {
      v23 = 10777;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v19 == 8)
    {
      v23 = 10778;
      goto LABEL_221;
    }

    v69 = v19 == 8 && PrimitiveSizeInBits == 256;
    v70 = 10779;
    goto LABEL_241;
  }

  if (*v15 == 0x2E622E6675687370)
  {
    v41 = 11449;
    v42 = PrimitiveSizeInBits == 256;
    v43 = 10792;
    v44 = 10339;
    goto LABEL_215;
  }

  if (v16 >= 0xB && *v15 == 0x2E72682E6C756D70 && *(v15 + 3) == 0x2E77732E72682E6CLL)
  {
    v41 = 11447;
    v42 = PrimitiveSizeInBits == 256;
    v43 = 10785;
    v44 = 10335;
    goto LABEL_215;
  }

  if (*v15 == 0x2E772E686C756D70)
  {
    v41 = 11357;
    v42 = PrimitiveSizeInBits == 256;
    v43 = 10786;
    v44 = 10336;
    goto LABEL_215;
  }

  if (v16 != 8)
  {
    if (*v15 == 0x772E75686C756D70 && *(v15 + 8) == 46)
    {
      v41 = 11358;
      v42 = PrimitiveSizeInBits == 256;
      v43 = 10787;
      v44 = 10337;
      goto LABEL_215;
    }

    if (*v15 == 0x642E776464616D70 && *(v15 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v23 = 11355;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v23 = 10333;
      }

      else
      {
        v23 = 10784;
      }

      goto LABEL_221;
    }

    if (v16 >= 0xB && *v15 == 0x7362756464616D70 && *(v15 + 3) == 0x2E772E7362756464)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v23 = 11445;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v23 = 10332;
      }

      else
      {
        v23 = 10783;
      }

      goto LABEL_221;
    }

    if (*v15 == 0x627773736B636170 && *(v15 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v23 = 11350;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v23 = 10318;
      }

      else
      {
        v23 = 10766;
      }

      goto LABEL_221;
    }

    if (*v15 == 0x776473736B636170 && *(v15 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v23 = 11349;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v23 = 10317;
      }

      else
      {
        v23 = 10765;
      }

      goto LABEL_221;
    }

    if (*v15 == 0x627773756B636170 && *(v15 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v23 = 11351;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v23 = 10320;
      }

      else
      {
        v23 = 10768;
      }

      goto LABEL_221;
    }

    if (*v15 == 0x776473756B636170 && *(v15 + 8) == 46)
    {
      if (PrimitiveSizeInBits == 128)
      {
        v23 = 11397;
      }

      else if (PrimitiveSizeInBits == 256)
      {
        v23 = 10319;
      }

      else
      {
        v23 = 10767;
      }

      goto LABEL_221;
    }

    if (v16 < 0xB || (*v15 == 0x766C696D72657076 ? (v62 = *(v15 + 3) == 0x2E7261766C696D72) : (v62 = 0), !v62))
    {
      v20 = 0;
      goto LABEL_10;
    }

    if (PrimitiveSizeInBits == 128 && v19 == 32)
    {
      v23 = 10276;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 128 && v19 == 64)
    {
      v23 = 10274;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 256 && v19 == 32)
    {
      v23 = 10277;
      goto LABEL_221;
    }

    if (PrimitiveSizeInBits == 256 && v19 == 64)
    {
      v23 = 10275;
      goto LABEL_221;
    }

    v39 = v19 == 32 && PrimitiveSizeInBits == 512;
    v40 = 10948;
LABEL_159:
    if (v39)
    {
      v23 = v40 + 1;
    }

    else
    {
      v23 = v40;
    }

    goto LABEL_221;
  }

  if (*v15 == 0x2E7261766D726570)
  {
    goto LABEL_86;
  }

LABEL_70:
  if (*v15 != 1735811440 || *(v15 + 4) != 46)
  {
    return 0;
  }

  v54 = *(v15 + 5);
  if (v54 == 98 && PrimitiveSizeInBits == 128)
  {
    v23 = 11353;
  }

  else if (v54 == 98 && PrimitiveSizeInBits == 256)
  {
    v23 = 10321;
  }

  else if (v54 == 98 && PrimitiveSizeInBits == 512)
  {
    v23 = 10769;
  }

  else if (v54 == 119 && PrimitiveSizeInBits == 128)
  {
    v23 = 11354;
  }

  else if (PrimitiveSizeInBits == 256 && v54 == 119)
  {
    v23 = 10322;
  }

  else
  {
    v23 = 10770;
  }

LABEL_221:
  v63 = (a4 - 32 * (*(a4 + 20) & 0x7FFFFFF));
  v64 = llvm::CallBase::arg_end(a4);
  v73 = v75;
  v74 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v73, v63, v64);
  LODWORD(v74) = v74 - 2;
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a4 + 40) + 56) + 40), v23, 0, 0);
  if (Declaration)
  {
    v66 = *(Declaration + 24);
  }

  else
  {
    v66 = 0;
  }

  v72[16] = 257;
  *a5 = llvm::IRBuilderBase::CreateCall(a3, v66, Declaration, v73, v74, v72, 0);
  v67 = llvm::CallBase::arg_end(a4);
  v68 = a4 - 32 * (*(a4 + 20) & 0x7FFFFFF);
  *a5 = EmitX86Select(a3, *(v68 + 32 * (((v67 - v68) >> 5) - 1)), *a5, *(v68 + 32 * (((v67 - v68) >> 5) - 2)));
  if (v73 != v75)
  {
    free(v73);
  }

  return 1;
}

llvm::Instruction *llvm::IRBuilderBase::CreateNeg(llvm::IRBuilderBase *this, llvm::Constant **a2, const llvm::Twine *a3, BOOL a4)
{
  NullValue = llvm::Constant::getNullValue(*a2, a2, a3, a4);

  return llvm::IRBuilderBase::CreateSub(this, NullValue, a2, a3, 0, 0);
}

llvm::Instruction *llvm::IRBuilderBase::CreateAtomicRMW(uint64_t *a1, uint64_t a2, uint64_t a3, llvm::Type **a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  LOBYTE(v9) = a5;
  v12 = a2;
  if ((a5 & 0x100) == 0)
  {
    v16 = (llvm::DataLayout::getTypeSizeInBits((*(*(a1[6] + 56) + 40) + 256), *a4) + 7) >> 3;
    if (v14)
    {
    }

    v9 = 63 - __clz(v16);
  }

  v17 = operator new(0x80uLL);
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 8) = *a4;
  v18 = (v17 + 64);
  *(v17 + 2) = 0;
  *(v17 + 3) = v17 + 64;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  *(v17 + 6) = 0;
  *(v17 + 7) = v17 + 64;
  *(v17 + 9) = 0;
  *(v17 + 10) = 0x200000041;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 30) = 0;
  llvm::AtomicRMWInst::Init((v17 + 64), v12, a3, a4, v9, v8, v7);
  v21 = 257;
  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v18, v20);
}

void llvm::UpgradeIntrinsicCall(llvm::CallBase *,llvm::Function *)::$_0::operator()(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = **a1;
  PointerCast = **(a1 + 8);
  if (*(v3 + 72) == PointerCast[3])
  {
LABEL_7:

    llvm::GlobalIFunc::setResolver(v3, PointerCast);
    return;
  }

  v5 = *v3;
  if (*v3)
  {
    v6 = *(*v3 + 8) == 16;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    PointerCast = llvm::ConstantExpr::getPointerCast(**(a1 + 8), **(v3 - 32), a3);
    goto LABEL_7;
  }

  v8 = (v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v9 = llvm::CallBase::arg_end(**a1);
  v22 = v24;
  v23 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v22, v8, v9);
  v10 = *(a1 + 16);
  v11 = **(a1 + 8);
  if (v11)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateCall(v10, v12, v11, v22, v23, v20, 0);
  inserted = llvm::PoisonValue::get(v5, v14);
  for (i = 0; i < *(v5 + 3); ++i)
  {
    v16 = *(a1 + 16);
    v21 = 257;
    v17 = llvm::IRBuilderBase::CreateExtractValue(v16, v13, &i, 1, v20);
    v18 = *(a1 + 16);
    v21 = 257;
    inserted = llvm::IRBuilderBase::CreateInsertValue(v18, inserted, v17, &i, 1, v20);
  }

  llvm::Value::doRAUW(**a1, inserted, 1);
  llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(**a1 + 40) + 40, **a1 + 24);
  if (v22 != v24)
  {
    free(v22);
  }
}

uint64_t *llvm::MemIntrinsicBase<llvm::MemIntrinsic>::setDestAlignment(uint64_t a1, __int16 a2)
{
  result = llvm::AttributeList::removeAttributeAtIndex((a1 + 64), **a1, 1, 75);
  *(a1 + 64) = result;
  if ((a2 & 0x100) != 0)
  {
    v5 = llvm::Attribute::get(**a1, 75, 1 << a2);
    v6 = 0;
    result = llvm::AttributeList::addParamAttribute((a1 + 64), **a1, &v6, 1, v5);
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t *llvm::MemTransferBase<llvm::MemIntrinsic>::setSourceAlignment(uint64_t a1, __int16 a2)
{
  result = llvm::AttributeList::removeAttributeAtIndex((a1 + 64), **a1, 2, 75);
  *(a1 + 64) = result;
  if ((a2 & 0x100) != 0)
  {
    v5 = llvm::Attribute::get(**a1, 75, 1 << a2);
    v6 = 1;
    result = llvm::AttributeList::addParamAttribute((a1 + 64), **a1, &v6, 1, v5);
    *(a1 + 64) = result;
  }

  return result;
}

llvm *llvm::UpgradeTBAANode(llvm *this, llvm::MDNode *a2)
{
  v2 = this;
  v31 = *MEMORY[0x277D85DE8];
  v4 = (this - 16);
  v3 = *(this - 2);
  if ((v3 & 2) != 0)
  {
    v5 = *(this - 4);
  }

  else
  {
    v5 = &v4[-((v3 >> 2) & 0xF)];
  }

  if (!llvm::MDNode::classof(*v5) || ((*v4 & 2) != 0 ? (v9 = *(v2 - 6)) : (v9 = (*v4 >> 6) & 0xF), v9 <= 2))
  {
    v10 = *(v2 + 1);
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 4) != 0)
    {
      v11 = *v11;
    }

    if ((*v4 & 2) != 0)
    {
      if (*(v2 - 6) == 3)
      {
        v12 = *(v2 - 4);
        goto LABEL_16;
      }
    }

    else if ((*v4 & 0x3C0) == 0xC0)
    {
      v12 = &v4[-((*v4 >> 2) & 0xFLL)];
LABEL_16:
      v30 = *v12;
      Impl = llvm::MDTuple::getImpl(v11, &v30, 2uLL, 0, 1);
      v27 = Impl;
      NullValue = llvm::Constant::getNullValue((*v11 + 2016), v13, v14, v15);
      llvm::ValueAsMetadata::get(NullValue, v17);
      v28 = v18;
      if ((*v4 & 2) != 0)
      {
        v19 = *(v2 - 4);
      }

      else
      {
        v19 = &v4[-((*v4 >> 2) & 0xFLL)];
      }

      v29 = v19[2];
      v23 = v11;
      v24 = 4;
      return llvm::MDTuple::getImpl(v23, &Impl, v24, 0, 1);
    }

    Impl = v2;
    v27 = v2;
    v20 = llvm::Constant::getNullValue((*v11 + 2016), v6, v7, v8);
    llvm::ValueAsMetadata::get(v20, v21);
    v28 = v22;
    v23 = v11;
    v24 = 3;
    return llvm::MDTuple::getImpl(v23, &Impl, v24, 0, 1);
  }

  return v2;
}

char *llvm::UpgradeBitCastInst(llvm *this, uint64_t ***a2, llvm::Value *a3, llvm::Type *a4, llvm::Instruction **a5)
{
  if (this != 49)
  {
    return 0;
  }

  v19 = v5;
  v20 = v6;
  *a4 = 0;
  v9 = *a2;
  v10 = *(*a2 + 2);
  v11 = v10;
  if ((v10 & 0xFE) == 0x12)
  {
    v11 = *(*v9[2] + 8);
  }

  if (v11 != 15)
  {
    return 0;
  }

  v12 = *(a3 + 2);
  v13 = v12;
  if ((v12 & 0xFE) == 0x12)
  {
    v13 = *(**(a3 + 2) + 8);
  }

  if (v13 != 15)
  {
    return 0;
  }

  if ((v10 & 0xFE) == 0x12)
  {
    v10 = *(*v9[2] + 8);
  }

  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(**(a3 + 2) + 8);
  }

  if ((v12 ^ v10) < 0x100)
  {
    return 0;
  }

  v15 = **v9;
  v18 = 257;
  v16 = llvm::CastInst::Create(47, a2, (v15 + 2016), v17, 0);
  *a4 = v16;
  v18 = 257;
  return llvm::CastInst::Create(48, v16, a3, v17, 0);
}

llvm::Value *llvm::UpgradeBitCastExpr(llvm *this, llvm::ConstantFP ***a2, llvm::Constant *a3, llvm::Type *a4)
{
  if (this != 49)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(*a2 + 2);
  v7 = v6;
  if ((v6 & 0xFE) == 0x12)
  {
    v7 = *(*v5[2] + 8);
  }

  if (v7 != 15)
  {
    return 0;
  }

  v8 = *(a3 + 2);
  v9 = v8;
  if ((v8 & 0xFE) == 0x12)
  {
    v9 = *(**(a3 + 2) + 8);
  }

  if (v9 != 15)
  {
    return 0;
  }

  if ((v6 & 0xFE) == 0x12)
  {
    v6 = *(*v5[2] + 8);
  }

  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(a3 + 2) + 8);
  }

  if ((v8 ^ v6) < 0x100)
  {
    return 0;
  }

  FoldedCast = getFoldedCast(0x2F, a2, (**v5 + 2016), 0);

  return getFoldedCast(0x30, FoldedCast, a3, 0);
}

uint64_t llvm::UpgradeDebugInfo(llvm *this, llvm::Module *a2)
{
  if (byte_2815AC380)
  {
    return 0;
  }

  DebugMetadataVersionFromModule = llvm::getDebugMetadataVersionFromModule(this, a2);
  if (DebugMetadataVersionFromModule != 700000003)
  {
    v5 = DebugMetadataVersionFromModule;
    if (DebugMetadataVersionFromModule != 3)
    {
      if (llvm::StripDebugInfo(this, v4))
      {
        v13 = 5;
        v10 = 1;
        v14 = 1;
        v12 = &unk_2883F1298;
        v15 = this;
        v16 = v5;
        llvm::LLVMContext::diagnose(*this, &v12);
        return v10;
      }

      return 0;
    }
  }

  v17 = 0;
  v6 = llvm::errs(DebugMetadataVersionFromModule);
  if (llvm::verifyModule(this, v6, &v17, v7))
  {
    llvm::report_fatal_error("Broken module found, compilation aborted!", 1, v8);
  }

  if (v17 != 1)
  {
    return 0;
  }

  v13 = 5;
  v14 = 1;
  v12 = &unk_2883F12C8;
  v15 = this;
  llvm::LLVMContext::diagnose(*this, &v12);
  return llvm::StripDebugInfo(this, v9);
}

void llvm::UpgradeARCRuntime(llvm::IntegerType **this, llvm::Module *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v22 = this;
  llvm::UpgradeARCRuntime(llvm::Module &)::$_0::operator()(&v22, "clang.arc.use", 218);
  v29 = "clang.arc.retainAutoreleasedReturnValueMarker";
  LOWORD(v33) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v29);
  if (NamedMetadata)
  {
    v4 = NamedMetadata;
    v5 = ***(NamedMetadata + 48);
    if (v5)
    {
      v6 = *(v5 - 16);
      v7 = (v6 & 2) != 0 ? *(v5 - 32) : (v5 - 16 - 8 * ((v6 >> 2) & 0xF));
      v8 = *v7;
      if (*v7)
      {
        if (!*v8)
        {
          v29 = &v31;
          v30 = 0x400000000;
          v9 = *(v8 + 8);
          v10 = *v9;
          v27[0] = v9 + 3;
          v27[1] = v10;
          llvm::StringRef::split(v27, &v29, "#", 1uLL, -1, 1);
          if (v30 == 2)
          {
            llvm::StringRef::str(v29, &v25);
            v11 = std::string::append(&v25, ";");
            v12 = v11->__r_.__value_.__r.__words[2];
            *&v26.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
            v26.__r_.__value_.__r.__words[2] = v12;
            v11->__r_.__value_.__l.__size_ = 0;
            v11->__r_.__value_.__r.__words[2] = 0;
            v11->__r_.__value_.__r.__words[0] = 0;
            llvm::StringRef::str(v29 + 2, __p);
            if ((v24 & 0x80u) == 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            if ((v24 & 0x80u) == 0)
            {
              v14 = v24;
            }

            else
            {
              v14 = __p[1];
            }

            v15 = std::string::append(&v26, v13, v14);
            v16 = v15->__r_.__value_.__r.__words[2];
            *v27 = *&v15->__r_.__value_.__l.__data_;
            v28 = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v25.__r_.__value_.__l.__data_);
            }

            if (v28 >= 0)
            {
              v17 = v27;
            }

            else
            {
              v17 = v27[0];
            }

            if (v28 >= 0)
            {
              v18 = SHIBYTE(v28);
            }

            else
            {
              v18 = v27[1];
            }

            v19 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**this + 312), v17, v18);
            if (v20)
            {
              *(v19 + 16) = v19;
            }

            v8 = v19 + 8;
            if (SHIBYTE(v28) < 0)
            {
              operator delete(v27[0]);
            }
          }

          llvm::Module::addModuleFlag(this, 1, "clang.arc.retainAutoreleasedReturnValueMarker", 0x2DuLL, v8);
          llvm::Module::eraseNamedMetadata(this, v4);
          if (v29 != &v31)
          {
            free(v29);
          }

          v21 = 0;
          v29 = "objc_autorelease";
          LODWORD(v30) = 212;
          v31 = "objc_autoreleasePoolPop";
          v32 = 213;
          v33 = "objc_autoreleasePoolPush";
          v34 = 214;
          v35 = "objc_autoreleaseReturnValue";
          v36 = 215;
          v37 = "objc_copyWeak";
          v38 = 219;
          v39 = "objc_destroyWeak";
          v40 = 220;
          v41 = "objc_initWeak";
          v42 = 221;
          v43 = "objc_loadWeak";
          v44 = 222;
          v45 = "objc_loadWeakRetained";
          v46 = 223;
          v47 = "objc_moveWeak";
          v48 = 224;
          v49 = "objc_release";
          v50 = 225;
          v51 = "objc_retain";
          v52 = 226;
          v53 = "objc_retainAutorelease";
          v54 = 228;
          v55 = "objc_retainAutoreleaseReturnValue";
          v56 = 229;
          v57 = "objc_retainAutoreleasedReturnValue";
          v58 = 230;
          v59 = "objc_retainBlock";
          v60 = 231;
          v61 = "objc_storeStrong";
          v62 = 233;
          v63 = "objc_storeWeak";
          v64 = 234;
          v65 = "objc_unsafeClaimAutoreleasedReturnValue";
          v66 = 239;
          v67 = "objc_retainedObject";
          v68 = 232;
          v69 = "objc_unretainedObject";
          v70 = 237;
          v71 = "objc_unretainedPointer";
          v72 = 238;
          v73 = "objc_retain_autorelease";
          v74 = 227;
          v75 = "objc_sync_enter";
          v76 = 235;
          v77 = "objc_sync_exit";
          v78 = 236;
          v79 = "objc_arc_annotation_topdown_bbstart";
          v80 = 211;
          v81 = "objc_arc_annotation_topdown_bbend";
          v82 = 210;
          v83 = "objc_arc_annotation_bottomup_bbstart";
          v84 = 209;
          v85 = "objc_arc_annotation_bottomup_bbend";
          v86 = 208;
          do
          {
            llvm::UpgradeARCRuntime(llvm::Module &)::$_0::operator()(&v22, *(&v29 + v21), *(&v29 + v21 + 8));
            v21 += 16;
          }

          while (v21 != 464);
        }
      }
    }
  }
}

void llvm::UpgradeARCRuntime(llvm::Module &)::$_0::operator()(llvm::IntegerType ***a1, char *__s, uint64_t a3)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (__s)
  {
    v7 = strlen(__s);
  }

  else
  {
    v7 = 0;
  }

  v8 = llvm::ValueSymbolTable::lookup(v6[14], __s, v7);
  if (v8)
  {
    v9 = v8;
    if (!*(v8 + 16))
    {
      Declaration = llvm::Intrinsic::getDeclaration(*a1, a3, 0, 0);
      v10 = *(v9 + 8);
      if (!v10)
      {
        goto LABEL_33;
      }

      v11 = &v34;
      v12 = v36;
      do
      {
        v13 = *(v10 + 24);
        v10 = *(v10 + 8);
        if (v13 && *(v13 + 16) == 84)
        {
          v14 = *(v13 - 32);
          if (!v14 || *(v14 + 16) || *(v14 + 24) != *(v13 + 72))
          {
            v14 = 0;
          }

          if (v14 == v9)
          {
            v15 = *(v13 + 40);
            v16 = **v15;
            v17 = v12;
            v35[0] = v12;
            v35[1] = 0x200000000;
            v36[6] = v16;
            v36[7] = &v42;
            v36[8] = v43;
            v36[9] = 0;
            v37 = 0;
            v38 = 512;
            v39 = 7;
            v36[4] = 0;
            v36[5] = 0;
            v40 = 0;
            v41 = 0;
            v42 = &unk_2883F13A8;
            v43[0] = &unk_2883F1498;
            llvm::IRBuilderBase::SetInsertPoint(v35, v15, v13 + 24);
            v18 = *(Declaration + 24);
            v19 = v11;
            v32 = v11;
            v33 = 0x200000000;
            v20 = *(v18 + 16);
            if (*v20 == *v13 || llvm::CastInst::castIsValid(49, *v13, *v20))
            {
              v21 = llvm::CallBase::arg_end(v13) - v13 + 32 * (*(v13 + 20) & 0x7FFFFFF);
              if ((v21 & 0x1FFFFFFFE0) != 0)
              {
                v22 = 0;
                v23 = (v21 >> 5);
                do
                {
                  Cast = *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF) + 32 * v22);
                  if (v22 >= (*(v18 + 12) - 1))
                  {
                    ++v22;
                  }

                  else
                  {
                    ++v22;
                    if (!llvm::CastInst::castIsValid(49, *Cast, *(*(v18 + 16) + 8 * v22)))
                    {
                      goto LABEL_27;
                    }

                    v25 = *(*(v18 + 16) + 8 * v22);
                    v31 = 257;
                    Cast = llvm::IRBuilderBase::CreateCast(v35, 49, Cast, v25, v30);
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v32, Cast);
                }

                while (v22 != v23);
              }

              v31 = 257;
              v26 = llvm::IRBuilderBase::CreateCall(v35, v18, Declaration, v32, v33, v30, 0);
              *(v26 + 9) = *(v26 + 9) & 0xFFFC | *(v13 + 18) & 3;
              llvm::Value::takeName(v26, v13);
              v27 = *v13;
              v31 = 257;
              v28 = llvm::IRBuilderBase::CreateCast(v35, 49, v26, v27, v30);
              if (*(v13 + 8))
              {
                llvm::Value::doRAUW(v13, v28, 1);
              }

              llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v13 + 40) + 40, v13 + 24);
            }

LABEL_27:
            v11 = v19;
            if (v32 != v19)
            {
              free(v32);
            }

            v12 = v17;
            if (v35[0] != v17)
            {
              free(v35[0]);
            }
          }
        }
      }

      while (v10);
      if (!*(v9 + 8))
      {
LABEL_33:
        llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::erase(*(v9 + 40) + 24, v9 + 56);
      }
    }
  }
}

uint64_t llvm::UpgradeModuleFlags(uint64_t **this, llvm::Module *a2)
{
  v192 = *MEMORY[0x277D85DE8];
  v188 = "llvm.module.flags";
  v191 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v188);
  v184 = NamedMetadata;
  if (NamedMetadata)
  {
    v183 = 0;
    v4 = **this;
    v182 = 0;
    v5 = *(*(NamedMetadata + 48) + 8);
    if (!v5)
    {
      goto LABEL_212;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v176 = 0;
    v177 = 0;
    v175 = 0;
    v172 = v4;
    v173 = v4 + 1944;
    v174 = 0;
    v9 = 0x76697463656A624FLL;
    v10 = 0x67616D4920432D65;
    v11 = 0x6576654C20434950;
    v12 = 0x742D68636E617262;
    v13 = 0x6E652D7465677261;
    while (1)
    {
      v14 = *(**(v184 + 48) + 8 * v6);
      v181 = v14;
      v15 = (v14 - 16);
      v16 = *(v14 - 16);
      if ((v16 & 2) != 0)
      {
        if (*(v14 - 24) == 3)
        {
          v17 = *(v14 - 32);
          goto LABEL_9;
        }
      }

      else if ((*(v14 - 16) & 0x3C0) == 0xC0)
      {
        v17 = &v15[-((v16 >> 2) & 0xF)];
LABEL_9:
        v18 = v17[1];
        if (!v18 || *v18)
        {
          goto LABEL_201;
        }

        v179[5] = &v183;
        v180 = v18;
        v179[0] = this;
        v179[1] = &v180;
        v179[2] = &v181;
        v179[3] = &v184;
        v179[4] = &v182;
        v19 = *(v18 + 8);
        v20 = *v19;
        if (*v19 == 9)
        {
          v37 = v19[3];
          v38 = *(v19 + 32);
          if (v37 == v11 && v38 == 108)
          {
            v71 = (*v15 & 2) != 0 ? *(v14 - 32) : &v15[-((*v15 >> 2) & 0xFLL)];
            v81 = *v71;
            if (v81)
            {
              if (*v81 == 1)
              {
                v82 = *(v81 + 128);
                if (*(v82 + 16) == 16)
                {
                  v83 = v13;
                  v84 = v11;
                  v85 = v10;
                  v86 = v9;
                  v87 = v8;
                  LimitedValue = llvm::APInt::getLimitedValue((v82 + 24), 0xFFFFFFFFFFFFFFFFLL);
                  if (LimitedValue == 7 || LimitedValue == 1)
                  {
                    llvm::UpgradeModuleFlags(llvm::Module &)::$_0::operator()(v179, 8u);
                  }

                  v8 = v87;
                  v9 = v86;
                  v10 = v85;
                  v11 = v84;
                  v12 = 0x742D68636E617262;
                  v13 = v83;
                }
              }
            }
          }
        }

        else if (v20 == 28)
        {
          v29 = v19[3];
          v30 = v19[4];
          v31 = v19[5];
          v32 = *(v19 + 12);
          v36 = v29 == v9 && v30 == 0x73616C4320432D65 && v31 == 0x7265706F72502073 && v32 == 1936025972;
          v8 = v36 | v8;
        }

        else if (v20 == 30)
        {
          v21 = v19[3];
          v22 = v19[4];
          v23 = v19[5];
          v24 = *(v19 + 46);
          v28 = v21 == v9 && v22 == v10 && v23 == 0x56206F666E492065 && v24 == 0x6E6F697372655620;
          v7 |= v28;
        }

        v40 = *(v180 + 8);
        if (*v40 == 9)
        {
          v41 = *(v40 + 24);
          v42 = *(v40 + 32);
          if (v41 == v11 + 0x20000 && v42 == 108)
          {
            v69 = *(v181 - 16);
            v70 = (v69 & 2) != 0 ? *(v181 - 32) : (v181 - 16 - 8 * ((v69 >> 2) & 0xF));
            v72 = *v70;
            if (v72)
            {
              if (*v72 == 1)
              {
                v73 = *(v72 + 128);
                if (*(v73 + 16) == 16)
                {
                  v74 = v8;
                  v75 = v9;
                  v76 = v10;
                  v77 = v11;
                  v78 = v12;
                  v79 = v13;
                  v80 = llvm::APInt::getLimitedValue((v73 + 24), 0xFFFFFFFFFFFFFFFFLL);
                  v13 = v79;
                  v12 = v78;
                  v11 = v77;
                  v10 = v76;
                  v9 = v75;
                  v8 = v74;
                  if (v80 == 1)
                  {
                    llvm::UpgradeModuleFlags(llvm::Module &)::$_0::operator()(v179, 7u);
                    v13 = v79;
                    v12 = v78;
                    v11 = v77;
                    v10 = v76;
                    v9 = v75;
                    v8 = v74;
                  }
                }
              }
            }
          }
        }

        v44 = *(v180 + 8);
        if (*v44 == 25)
        {
          if (*(v44 + 24) != v12 || *(v44 + 32) != v13 || *(v44 + 40) != 0x6E656D6563726F66 || *(v44 + 48) != 116)
          {
LABEL_63:
            v48 = *(v44 + 24);
            v49 = *(v44 + 32);
            v50 = *(v44 + 35);
            if (v48 != 0x7465722D6E676973 || v49 != 0x726464612D6E7275 || v50 != 0x737365726464612DLL)
            {
              goto LABEL_106;
            }
          }

          v53 = *(v181 - 16);
          if ((v53 & 2) != 0)
          {
            v54 = *(v181 - 32);
          }

          else
          {
            v54 = (v181 - 16 - 8 * ((v53 >> 2) & 0xF));
          }

          v55 = *v54;
          if (v55)
          {
            if (*v55 == 1)
            {
              v56 = *(v55 + 128);
              if (*(v56 + 16) == 16)
              {
                v57 = v8;
                v58 = v9;
                v59 = v10;
                v60 = v11;
                v61 = llvm::APInt::getLimitedValue((v56 + 24), 0xFFFFFFFFFFFFFFFFLL);
                v13 = 0x6E652D7465677261;
                v12 = 0x742D68636E617262;
                v11 = v60;
                v10 = v59;
                v9 = v58;
                v8 = v57;
                if (v61 == 1)
                {
                  v62 = **this;
                  v188 = 0;
                  v189 = 0;
                  v190[0] = 0;
                  v63 = llvm::ConstantInt::get((v62 + 1992), 8, 0);
                  llvm::ValueAsMetadata::get(v63, v64);
                  v188 = v65;
                  v66 = (v181 - 16);
                  v67 = *(v181 - 16);
                  if ((v67 & 2) != 0)
                  {
                    v68 = *(v181 - 32);
                  }

                  else
                  {
                    v68 = &v66[-((v67 >> 2) & 0xF)];
                  }

                  v189 = v68[1];
                  if ((*v66 & 2) != 0)
                  {
                    v90 = *(v181 - 32);
                  }

                  else
                  {
                    v90 = &v66[-((*v66 >> 2) & 0xFLL)];
                  }

                  v190[0] = v90[2];
                  v91 = v184;
                  v92 = v182;
                  Impl = llvm::MDTuple::getImpl(*this, &v188, 3uLL, 0, 1);
                  llvm::TrackingMDRef::reset((**(v91 + 48) + 8 * v92), Impl);
                  v183 = 1;
                  v8 = v57;
                  v9 = v58;
                  v10 = v59;
                  v11 = v60;
                  v12 = 0x742D68636E617262;
                  v13 = 0x6E652D7465677261;
                }
              }
            }
          }
        }

        else if (*v44 >= 0x13uLL)
        {
          goto LABEL_63;
        }

LABEL_106:
        v94 = *(v180 + 8);
        v95 = *v94;
        if (*v94 != 30)
        {
          goto LABEL_189;
        }

        v96 = v94[3] == v9 && v94[4] == v10;
        v97 = v96 && v94[5] == 0x53206F666E492065;
        if (!v97 || *(v94 + 46) != 0x6E6F697463655320)
        {
          goto LABEL_117;
        }

        v108 = *(v181 - 16);
        v109 = (v108 & 2) != 0 ? *(v181 - 32) : v181 - 16 - 8 * ((v108 >> 2) & 0xF);
        v110 = *(v109 + 16);
        if (!v110 || *v110)
        {
          goto LABEL_117;
        }

        v111 = v12;
        v112 = v11;
        v113 = v10;
        v114 = v9;
        v170 = v8;
        v188 = v190;
        v189 = 0x400000000;
        v115 = *(v110 + 8);
        v116 = *v115;
        v178.__r_.__value_.__r.__words[0] = (v115 + 3);
        v178.__r_.__value_.__l.__size_ = v116;
        llvm::StringRef::split(&v178, &v188, " ", 1uLL, -1, 1);
        if (v189 != 1)
        {
          memset(&v178, 0, sizeof(v178));
          if (v189)
          {
            v117 = v188;
            v118 = 16 * v189;
            do
            {
              llvm::StringRef::str(v117, &__p);
              if (v187 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v187 >= 0)
              {
                v120 = HIBYTE(v187);
              }

              else
              {
                v120 = v186;
              }

              std::string::append(&v178, p_p, v120);
              if (SHIBYTE(v187) < 0)
              {
                operator delete(__p);
              }

              v117 += 2;
              v118 -= 16;
            }

            while (v118);
          }

          __p = 0;
          v186 = 0;
          v187 = 0;
          v121 = (v181 - 16);
          v122 = *(v181 - 16);
          if ((v122 & 2) != 0)
          {
            v123 = *(v181 - 32);
          }

          else
          {
            v123 = &v121[-((v122 >> 2) & 0xF)];
          }

          __p = *v123;
          if ((*v121 & 2) != 0)
          {
            v146 = *(v181 - 32);
          }

          else
          {
            v146 = &v121[-((*v121 >> 2) & 0xFLL)];
          }

          v186 = v146[1];
          if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v147 = &v178;
          }

          else
          {
            v147 = v178.__r_.__value_.__r.__words[0];
          }

          if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v178.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v178.__r_.__value_.__l.__size_;
          }

          v149 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**this + 312), v147, size);
          if (v150)
          {
            *(v149 + 16) = v149;
          }

          v187 = v149 + 8;
          v151 = v184;
          v152 = v182;
          v153 = llvm::MDTuple::getImpl(*this, &__p, 3uLL, 0, 1);
          llvm::TrackingMDRef::reset((**(v151 + 48) + 8 * v152), v153);
          v183 = 1;
          if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v178.__r_.__value_.__l.__data_);
          }
        }

        if (v188 != v190)
        {
          free(v188);
        }

        v94 = *(v180 + 8);
        v95 = *v94;
        v8 = v170;
        v9 = v114;
        v10 = v113;
        v11 = v112;
        v12 = v111;
        v13 = 0x6E652D7465677261;
        if (*v94 == 30)
        {
LABEL_117:
          v99 = v94[3];
          v100 = v94[4];
          v101 = v94[5];
          v102 = *(v94 + 46);
          if (v99 == v9 && v100 == 0x6272614720432D65 && v101 == 0x6C6C6F4320656761 && v102 == 0x6E6F697463656C6CLL)
          {
            v106 = *(v181 - 16);
            v107 = (v106 & 2) != 0 ? *(v181 - 32) : v181 - 16 - 8 * ((v106 >> 2) & 0xF);
            v124 = *(v107 + 16);
            if (*v124 == 1)
            {
              v125 = *(v124 + 128);
              if (*v125 != v173)
              {
                v169 = v7;
                v171 = v8;
                v126 = v175;
                UniqueInteger = llvm::Constant::getUniqueInteger(v125, &v181, &v184, &v182);
                if (*(UniqueInteger + 8) >= 0x41u)
                {
                  v128 = *UniqueInteger;
                }

                else
                {
                  v128 = UniqueInteger;
                }

                v129 = *v128;
                v130 = *v128 >= 0x100;
                v131 = BYTE1(*v128);
                if (v130)
                {
                  v126 = v131;
                }

                if (v130)
                {
                  v132 = v129 >> 16;
                }

                else
                {
                  v132 = v176;
                }

                if (v130)
                {
                  v133 = v129 >> 24;
                }

                else
                {
                  v133 = v174;
                }

                v134 = v177;
                if (v130)
                {
                  v134 = 1;
                }

                v188 = 0;
                v189 = 0;
                v190[0] = 0;
                v135 = llvm::ConstantInt::get(v172 + 1992, 1, 0);
                llvm::ValueAsMetadata::get(v135, v136);
                v188 = v137;
                v138 = *(v181 - 16);
                if ((v138 & 2) != 0)
                {
                  v139 = *(v181 - 32);
                }

                else
                {
                  v139 = v181 - 16 - 8 * ((v138 >> 2) & 0xF);
                }

                v176 = v132;
                v189 = *(v139 + 8);
                v140 = llvm::ConstantInt::get(v173, v129, 0);
                llvm::ValueAsMetadata::get(v140, v141);
                v190[0] = v142;
                v143 = v184;
                v144 = v182;
                v145 = llvm::MDTuple::getImpl(*this, &v188, 3uLL, 0, 1);
                llvm::TrackingMDRef::reset((**(v143 + 48) + 8 * v144), v145);
                v183 = 1;
                v94 = *(v180 + 8);
                v95 = *v94;
                v174 = v133;
                v175 = v126;
                LODWORD(v177) = v134;
                v7 = v169;
                v8 = v171;
                v9 = 0x76697463656A624FLL;
                v10 = 0x67616D4920432D65;
                v11 = 0x6576654C20434950;
                v12 = 0x742D68636E617262;
                v13 = 0x6E652D7465677261;
                goto LABEL_189;
              }
            }
          }
        }

        else
        {
LABEL_189:
          if (v95 == 19)
          {
            v154 = v94[3];
            v155 = v94[4];
            v156 = *(v94 + 35);
            v159 = v154 == 0x2E68747561727470 && v155 == 0x737265762D696261 && v156 == 0x6E6F69737265762DLL;
            BYTE4(v177) |= v159;
          }
        }

        v6 = v182;
      }

LABEL_201:
      v182 = ++v6;
      if (v6 == v5)
      {
        if (!(v8 & 1 | ((v7 & 1) == 0)))
        {
          llvm::Module::addModuleFlag(this, 4, "Objective-C Class Properties", 0x1CuLL, 0);
          v183 = 1;
        }

        if (v177)
        {
          v160 = 1;
          llvm::Module::addModuleFlag(this, 1, "Swift ABI Version", 0x11uLL, v175);
          v161 = llvm::ConstantInt::get(v173, v174, 0);
          llvm::ValueAsMetadata::get(v161, v162);
          llvm::Module::addModuleFlag(this, 1, "Swift Major Version", 0x13uLL, v163);
          v164 = llvm::ConstantInt::get(v173, v176, 0);
          llvm::ValueAsMetadata::get(v164, v165);
          llvm::Module::addModuleFlag(this, 1, "Swift Minor Version", 0x13uLL, v166);
          v183 = 1;
          if ((v177 & 0x100000000) != 0)
          {
            return v160 & 1;
          }
        }

        else if ((v177 & 0x100000000) != 0)
        {
          v160 = v183;
          return v160 & 1;
        }

LABEL_212:
        inserted = insertMissingPtrAuthABIVersion(this);
        v160 = inserted | v183;
        return v160 & 1;
      }
    }
  }

  return insertMissingPtrAuthABIVersion(this);
}

uint64_t insertMissingPtrAuthABIVersion(llvm::Module *a1)
{
  v8 = 260;
  v7 = a1 + 208;
  llvm::Triple::Triple(__p, &v7);
  ArchName = llvm::Triple::getArchName(__p);
  if (v3 == 6 && (*ArchName == 913142369 ? (v4 = *(ArchName + 4) == 25908) : (v4 = 0), v4))
  {
    llvm::Module::setPtrAuthABIVersion(a1, 0xFFFFFFFFuLL);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

uint64_t *llvm::UpgradeModuleFlags(llvm::Module &)::$_0::operator()(void ***a1, unsigned int a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = llvm::ConstantInt::get(***a1 + 1992, a2, 0);
  llvm::ValueAsMetadata::get(v3, v4);
  v18[0] = v5;
  v6 = (*a1[1])[1];
  v7 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((***a1 + 312), (v6 + 24), *v6);
  if (v8)
  {
    *(v7 + 16) = v7;
  }

  v18[1] = v7 + 8;
  v9 = *a1[2];
  v12 = *(v9 - 16);
  v10 = v9 - 16;
  v11 = v12;
  if ((v12 & 2) != 0)
  {
    v13 = *(*a1[2] - 4);
  }

  else
  {
    v13 = v10 - 8 * ((v11 >> 2) & 0xF);
  }

  v18[2] = *(v13 + 16);
  v14 = *a1[3];
  v15 = *a1[4];
  Impl = llvm::MDTuple::getImpl(**a1, v18, 3uLL, 0, 1);
  result = llvm::TrackingMDRef::reset((**(v14 + 48) + 8 * v15), Impl);
  *a1[5] = 1;
  return result;
}

void llvm::UpgradeFunctionAttributes(llvm *this, llvm::Function *a2)
{
  if (*(this + 16))
  {
    if (*(this + 16) == 3 && (*(this + 5) & 0x7FFFFFF) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(this + 9) == (this + 72) && (*(this + 35) & 1) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(this + 14);
  if (!v3 || (*(v3 + 19) & 0x40) == 0)
  {
    v4 = *(this + 10);
    v5 = this + 72;
    if (v4 != this + 72)
    {
      do
      {
        v6 = *(v4 + 1);
        if (v4)
        {
          v7 = v4 - 24;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v7 + 6);
        v9 = v7 + 40;
        if (v8 != v7 + 40)
        {
          do
          {
            v13 = *(v8 + 1);
            v14 = (v8 - 24);
            if (v8)
            {
              v15 = v8 - 24;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15[16] - 33;
            v17 = v16 > 0x3E;
            v18 = (1 << v16) & 0x7FF7FFFFFFFFFFBELL;
            if (!v17 && v18 == 0)
            {
              if ((v12 = *(v8 + 5), v11 = (v8 + 40), (v10 = v12) != 0) && (*(v10 + 19) & 0x40) != 0 || llvm::CallBase::hasFnAttrOnCalledFunction(v14, 62))
              {
                if (!llvm::ConstrainedFPIntrinsic::classof(v14))
                {
                  *v11 = llvm::AttributeList::removeAttributeAtIndex(v11, **v14, -1, 62);
                  *v11 = llvm::AttributeList::addAttributeAtIndex(v11, **v14, 0xFFFFFFFFLL, 19);
                }
              }
            }

            v8 = v13;
          }

          while (v13 != v9);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

LABEL_29:
  llvm::AttributeFuncs::typeIncompatible(**(*(this + 3) + 16), 3, v25);
  *(this + 14) = llvm::AttributeList::removeAttributesAtIndex(this + 14, **this, 0, v25);
  std::__tree<llvm::SmallString<32u>>::destroy(&v26, v27);
  v20 = llvm::Function::args(this);
  if (v20 != v21)
  {
    v22 = v20;
    v23 = v21;
    do
    {
      llvm::AttributeFuncs::typeIncompatible(*v22, 3, v25);
      v24 = *(v22 + 24);
      v28 = *(v24 + 112);
      *(*(v22 + 24) + 112) = llvm::AttributeList::removeAttributesAtIndex(&v28, **v24, *(v22 + 32) + 1, v25);
      std::__tree<llvm::SmallString<32u>>::destroy(&v26, v27);
      v22 += 40;
    }

    while (v22 != v23);
  }
}

llvm *llvm::upgradeInstructionLoopAttachment(llvm *this, llvm::MDNode *a2)
{
  v2 = this;
  v65[8] = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (v3 == 4)
  {
    v4 = this;
  }

  else
  {
    v4 = 0;
  }

  if (v3 != 4)
  {
    return v2;
  }

  v6 = (this - 16);
  v5 = *(this - 2);
  if ((v5 & 2) != 0)
  {
    v7 = *(this - 4);
    v8 = *(this - 6);
    if (!*(this - 6))
    {
      return v2;
    }
  }

  else
  {
    v7 = &v6[-((v5 >> 2) & 0xF)];
    v8 = (v5 >> 6) & 0xF;
    if (!v8)
    {
      return v2;
    }
  }

  v9 = 8 * v8 - 8;
  do
  {
    v10 = *v7;
    if (!*v7)
    {
      goto LABEL_21;
    }

    if (*v10 != 4)
    {
      goto LABEL_20;
    }

    v11 = *(v10 - 16);
    if ((v11 & 2) != 0)
    {
      if (!*(v10 - 24))
      {
        goto LABEL_20;
      }

      v12 = *(v10 - 32);
    }

    else
    {
      if ((v11 & 0x3C0) == 0)
      {
        goto LABEL_20;
      }

      v12 = (v10 - 16 - 8 * ((v11 >> 2) & 0xF));
    }

    v10 = *v12;
    if (!v10)
    {
      goto LABEL_21;
    }

    if (*v10 || (v13 = *(v10 + 8), *v13 < 0x10uLL))
    {
LABEL_20:
      LODWORD(v10) = 0;
LABEL_21:
      if (v10)
      {
        break;
      }

      goto LABEL_22;
    }

    v16 = v13[3];
    v15 = v13[4];
    v17 = v16 == 0x6365762E6D766C6CLL && v15 == 0x2E72657A69726F74;
    LODWORD(v10) = v17;
    if (v10)
    {
      break;
    }

LABEL_22:
    ++v7;
    v14 = v9;
    v9 -= 8;
  }

  while (v14);
  if (!v10)
  {
    return v2;
  }

  v60 = v62;
  v61 = 0x800000000;
  if ((v5 & 2) != 0)
  {
    v18 = *(v4 - 6);
  }

  else
  {
    v18 = (v5 >> 6) & 0xF;
  }

  if (v18 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v18, 8);
    v5 = *v6;
  }

  if ((v5 & 2) != 0)
  {
    v19 = *(v4 - 4);
    v20 = *(v4 - 6);
    if (!*(v4 - 6))
    {
      goto LABEL_100;
    }

    goto LABEL_41;
  }

  v19 = &v6[-((v5 >> 2) & 0xF)];
  v20 = (v5 >> 6) & 0xF;
  if (v20)
  {
LABEL_41:
    v21 = &v19[v20];
    v22 = v65;
    do
    {
      Impl = *v19;
      if (*v19 && *Impl == 4)
      {
        v25 = (Impl - 16);
        v24 = *(Impl - 2);
        if ((v24 & 2) != 0)
        {
          if (*(Impl - 6))
          {
            v26 = *(Impl - 4);
LABEL_49:
            v27 = *v26;
            if (*v26)
            {
              if (!*v27)
              {
                v28 = *(v27 + 8);
                if (*v28 >= 0x10uLL)
                {
                  v30 = v28[3];
                  v29 = v28[4];
                  if (v30 == 0x6365762E6D766C6CLL && v29 == 0x2E72657A69726F74)
                  {
                    v63 = v22;
                    v64 = 0x800000000;
                    if ((*v25 & 2) != 0)
                    {
                      v32 = *(Impl - 6);
                    }

                    else
                    {
                      v32 = (*v25 >> 6) & 0xFLL;
                    }

                    if (v32 >= 9)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v22, v32, 8);
                    }

                    v55 = v22;
                    v33 = *(Impl + 1);
                    v34 = v33 & 0xFFFFFFFFFFFFFFF8;
                    if ((v33 & 4) != 0)
                    {
                      v34 = *v34;
                    }

                    v35 = *(v27 + 8);
                    v38 = *v35;
                    v37 = v35 + 3;
                    v36 = v38;
                    if (v38 == 22 && (*v37 == 0x6365762E6D766C6CLL ? (v39 = v37[1] == 0x2E72657A69726F74) : (v39 = 0), v39 ? (v40 = *(v37 + 14) == 0x6C6C6F726E752E72) : (v40 = 0), v40))
                    {
                      v44 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((*v34 + 312), "llvm.loop.interleave.count", 0x1AuLL);
                      if (v46)
                      {
                        *(v44 + 16) = v44;
                      }
                    }

                    else
                    {
                      v41 = 16;
                      if (v36 < 0x10)
                      {
                        v41 = v36;
                      }

                      v56[0] = "llvm.loop.vectorize.";
                      v56[2] = v37 + v41;
                      v56[3] = v36 - v41;
                      v57 = 1283;
                      llvm::Twine::str(v56, __p);
                      if (v59 >= 0)
                      {
                        v42 = __p;
                      }

                      else
                      {
                        v42 = __p[0];
                      }

                      if (v59 >= 0)
                      {
                        v43 = v59;
                      }

                      else
                      {
                        v43 = __p[1];
                      }

                      v44 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((*v34 + 312), v42, v43);
                      if (v45)
                      {
                        *(v44 + 16) = v44;
                      }

                      if (v59 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v63, v44 + 8);
                    if ((*v25 & 2) != 0)
                    {
                      v47 = *(Impl - 6);
                    }

                    else
                    {
                      v47 = (*v25 >> 6) & 0xFLL;
                    }

                    if (v47 != 1)
                    {
                      v48 = 1;
                      do
                      {
                        if ((*v25 & 2) != 0)
                        {
                          v49 = *(Impl - 4);
                        }

                        else
                        {
                          v49 = &v25[-((*v25 >> 2) & 0xFLL)];
                        }

                        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v63, v49[v48++]);
                      }

                      while (v47 != v48);
                    }

                    v50 = *(Impl + 1);
                    v51 = (v50 & 0xFFFFFFFFFFFFFFF8);
                    if ((v50 & 4) != 0)
                    {
                      v51 = *v51;
                    }

                    Impl = llvm::MDTuple::getImpl(v51, v63, v64, 0, 1);
                    v22 = v55;
                    if (v63 != v55)
                    {
                      free(v63);
                    }
                  }
                }
              }
            }
          }
        }

        else if ((v24 & 0x3C0) != 0)
        {
          v26 = &v25[-((v24 >> 2) & 0xF)];
          goto LABEL_49;
        }
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v60, Impl);
      ++v19;
    }

    while (v19 != v21);
  }

LABEL_100:
  v52 = *(v4 + 1);
  v53 = (v52 & 0xFFFFFFFFFFFFFFF8);
  if ((v52 & 4) != 0)
  {
    v53 = *v53;
  }

  v2 = llvm::MDTuple::getImpl(v53, v60, v61, 0, 1);
  if (v60 != v62)
  {
    free(v60);
  }

  return v2;
}

void llvm::UpgradeDataLayoutString(const char **a1@<X0>, unint64_t a2@<X1>, const char **a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v33 = a2;
  v38 = 261;
  v34 = a3;
  v35 = a4;
  llvm::Triple::Triple(&v27, &v34);
  v6 = v29;
  if ((v29 - 25) <= 1)
  {
    if (llvm::StringRef::find(&v32, "-G", 2uLL, 0) == -1)
    {
      if (!v33)
      {
        std::string::basic_string[abi:nn200100]<0>(a5, "G1");
        goto LABEL_46;
      }

      if (*v32 != 71)
      {
        v38 = 773;
        v34 = v32;
        v35 = v33;
        v36 = "-G1";
LABEL_12:
        llvm::Twine::str(&v34, a5);
        goto LABEL_46;
      }
    }

    v6 = v29;
  }

  if (v6 == 28)
  {
    v7 = llvm::StringRef::find(&v32, "-n64-", 5uLL, 0);
    if (v7 != -1)
    {
      if (v33 >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v33;
      }

      v26 = 773;
      v23 = v32;
      v24 = v8;
      v25 = "-n32:64-";
      v9 = v7 + 5;
      if (v33 < v7 + 5)
      {
        v9 = v33;
      }

      v34 = &v23;
      v36 = v32 + v9;
      v37 = v33 - v9;
      v38 = 1282;
      goto LABEL_12;
    }

    llvm::StringRef::str(&v32, a5);
  }

  else
  {
    llvm::StringRef::str(&v32, a5);
    if ((v29 - 37) <= 1)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, "-p270:32:32-p271:32:32-p272:64:64");
      if (v22 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (v22 >= 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = __p[1];
      }

      if (llvm::StringRef::find(&v32, v10, v11, 0) == -1)
      {
        v34 = &v36;
        v35 = 0x400000000;
        operator new();
      }

      if (v30 == 15 && (v31 == 19 || !v31) && getArchPointerBitWidth(v29) != 64)
      {
        v12 = *(a5 + 23);
        v13 = *a5;
        if (v12 >= 0)
        {
          v13 = a5;
        }

        if (v12 < 0)
        {
          v12 = *(a5 + 8);
        }

        v19 = v13;
        v20 = v12;
        v14 = llvm::StringRef::find(&v19, "-f80:32-", 8uLL, 0);
        if (v14 != -1)
        {
          if (v20 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = v20;
          }

          v26 = 773;
          v23 = v19;
          v24 = v15;
          v25 = "-f80:128-";
          v16 = v14 + 8;
          if (v20 < v14 + 8)
          {
            v16 = v20;
          }

          v34 = &v23;
          v36 = v19 + v16;
          v37 = v20 - v16;
          v38 = 1282;
          llvm::Twine::str(&v34, &v17);
          if (*(a5 + 23) < 0)
          {
            operator delete(*a5);
          }

          *a5 = v17;
          *(a5 + 16) = v18;
        }
      }

      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_46:
  if (v28 < 0)
  {
    operator delete(v27);
  }
}

uint64_t *llvm::UpgradeAttributes(llvm *this, llvm::AttrBuilder *a2)
{
  Attribute = llvm::AttrBuilder::getAttribute(this, "no-frame-pointer-elim", 21);
  if (!Attribute)
  {
    if (!llvm::AttrBuilder::getAttribute(this, "no-frame-pointer-elim-non-leaf", 30))
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v4 = "none";
  if (*(Attribute + 16) == 4)
  {
    v5 = bswap32(*(Attribute + *(Attribute + 12) + 25));
    v6 = v5 >= 0x74727565;
    v7 = v5 > 0x74727565;
    v8 = !v6;
    if (v7 == v8)
    {
      v4 = "all";
    }
  }

  v9 = strlen(v4);
  v10 = llvm::AttrBuilder::removeAttribute(this, "no-frame-pointer-elim", 21);
  if (llvm::AttrBuilder::getAttribute(v10, "no-frame-pointer-elim-non-leaf", 30))
  {
    if (v9 == 3 && *v4 == 27745 && v4[2] == 108)
    {
      v9 = 3;
LABEL_18:
      llvm::AttrBuilder::removeAttribute(this, "no-frame-pointer-elim-non-leaf", 30);
LABEL_19:
      v12 = llvm::Attribute::get(*this, "frame-pointer", 0xDuLL, v4, v9);
      addAttributeImpl<llvm::StringRef>(this + 2, "frame-pointer", 13, v12);
      goto LABEL_20;
    }

LABEL_17:
    v4 = "non-leaf";
    v9 = 8;
    goto LABEL_18;
  }

  if (v9)
  {
    goto LABEL_19;
  }

LABEL_20:
  result = llvm::AttrBuilder::getAttribute(this, "null-pointer-is-valid", 21);
  if (result)
  {
    if (*(result + 4) == 4)
    {
      v14 = *(result + *(result + 3) + 25);
      result = llvm::AttrBuilder::removeAttribute(this, "null-pointer-is-valid", 21);
      if (v14 == 1702195828)
      {
        v15 = llvm::Attribute::get(*this, 39, 0);

        return addAttributeImpl<llvm::Attribute::AttrKind>(this + 2, 39, v15);
      }
    }

    else
    {

      return llvm::AttrBuilder::removeAttribute(this, "null-pointer-is-valid", 21);
    }
  }

  return result;
}

__int128 *llvm::UpgradeOperandBundles(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (1)
    {
      v4 = *(v2 + 23);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(v2 + 8);
      }

      if (v4 == 22)
      {
        v6 = v5 >= 0 ? v2 : *v2;
        v7 = *v6;
        v8 = v6[1];
        v9 = *(v6 + 14);
        v10 = v7 == 0x72612E676E616C63 && v8 == 0x6863617474612E63;
        v11 = v10 && v9 == 0x6C6C616364656863;
        if (v11 && *(v2 + 32) == *(v2 + 24))
        {
          break;
        }
      }

      v2 += 48;
      if (v2 == v3)
      {
        v2 = a1[1];
        goto LABEL_19;
      }
    }

    if (v2 != v3)
    {
      v13 = v2 + 48;
      if ((v2 + 48) != v3)
      {
        do
        {
          v14 = *(v13 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v13 + 8);
          }

          if (v14 != 22 || (v15 >= 0 ? (v16 = v13) : (v16 = *v13), (v17 = *v16, v18 = v16[1], v19 = *(v16 + 14), v17 == 0x72612E676E616C63) ? (v20 = v18 == 0x6863617474612E63) : (v20 = 0), v20 ? (v21 = v19 == 0x6C6C616364656863) : (v21 = 0), !v21 || *(v13 + 32) != *(v13 + 24)))
          {
            if (*(v2 + 23) < 0)
            {
              operator delete(*v2);
            }

            v22 = *v13;
            *(v2 + 16) = *(v13 + 16);
            *v2 = v22;
            *(v13 + 23) = 0;
            *v13 = 0;
            std::vector<llvm::jitlink::Block *>::__move_assign(v2 + 24, (v13 + 24));
            v2 += 48;
          }

          v13 += 48;
        }

        while (v13 != v3);
        v3 = a1[1];
      }
    }
  }

LABEL_19:

  return std::vector<llvm::OperandBundleDefT<llvm::Value *>>::erase(a1, v2, v3);
}

void rename(uint64_t ***this)
{
  if ((*(this + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(this);
    v5 = *ValueName;
    v3 = (ValueName + 2);
    v2 = v5;
  }

  else
  {
    v2 = 0;
    v3 = &str_3_24;
  }

  v7 = 773;
  v6[0] = v3;
  v6[1] = v2;
  v6[2] = ".old";
  llvm::Value::setName(this, v6);
}

uint64_t llvm::StringSwitch<BOOL,BOOL>::Cases(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v11 = llvm::StringSwitch<BOOL,BOOL>::Case(a1, a2, a3);
  v12 = llvm::StringSwitch<BOOL,BOOL>::Case(v11, a4, a5);

  return llvm::StringSwitch<BOOL,BOOL>::Case(v12, a6, a7);
}

uint64_t llvm::StringSwitch<BOOL,BOOL>::StartsWith(uint64_t a1, const void *a2, size_t a3)
{
  if ((*(a1 + 17) & 1) == 0 && *(a1 + 8) >= a3 && (!a3 || !memcmp(*a1, a2, a3)))
  {
    *(a1 + 16) = 257;
  }

  return a1;
}

BOOL UpgradeX86IntrinsicFunction(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Function **a4)
{
  v4 = a3 - 4;
  if (a3 < 4 || *a2 != 775305336)
  {
    return 0;
  }

  if (ShouldUpgradeX86Intrinsic((a2 + 4), a3 - 4))
  {
    *a4 = 0;
    return 1;
  }

  if (v4 == 6)
  {
    v10 = *(a2 + 4) == 1937007730 && *(a2 + 8) == 28771;
    if (!v10 || *(*(a1 + 24) + 12) == 1)
    {
      return 0;
    }

    if ((*(a1 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(a1);
      v18 = *ValueName;
      v12 = (ValueName + 2);
      v11 = v18;
    }

    else
    {
      v11 = 0;
      v12 = &str_3_24;
    }

    v48 = 773;
    v47[0] = v12;
    v47[1] = v11;
    v47[2] = ".old";
    llvm::Value::setName(a1, v47);
    v19 = *(a1 + 40);
    v20 = 11268;
    goto LABEL_166;
  }

  if (v4 < 0xB || (*(a2 + 4) == 0x74702E3134657373 ? (v13 = *(a2 + 7) == 0x74736574702E3134) : (v13 = 0), !v13))
  {
    if (a3 > 25)
    {
      if (a3 > 30)
      {
        if (a3 == 31)
        {
LABEL_50:
          if (!memcmp((a2 + 4), "avx512bf16.cvtneps2bf16.256", v4))
          {
            v21 = a1;
            v22 = 10962;
            goto LABEL_151;
          }

          if (!memcmp((a2 + 4), "avx512bf16.cvtneps2bf16.512", v4))
          {
            v21 = a1;
            v22 = 10963;
LABEL_151:

            return UpgradeX86BF16Intrinsic(v21, v22, a4);
          }

          goto LABEL_91;
        }

        goto LABEL_53;
      }

      if (a3 != 26)
      {
        if (a3 != 27)
        {
LABEL_90:
          if (v4 >= 0xC)
          {
            goto LABEL_91;
          }

          return 0;
        }

        goto LABEL_57;
      }

LABEL_83:
      if (!memcmp((a2 + 4), "avx512.mask.cmp.pd.128", v4))
      {
        v29 = a1;
        v30 = 10464;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.pd.256", v4))
      {
        v29 = a1;
        v30 = 10465;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.pd.512", v4))
      {
        v29 = a1;
        v30 = 10466;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.ps.128", v4))
      {
        v29 = a1;
        v30 = 10467;
      }

      else if (!memcmp((a2 + 4), "avx512.mask.cmp.ps.256", v4))
      {
        v29 = a1;
        v30 = 10468;
      }

      else
      {
        if (memcmp((a2 + 4), "avx512.mask.cmp.ps.512", v4))
        {
          goto LABEL_91;
        }

        v29 = a1;
        v30 = 10469;
      }

      return UpgradeX86MaskedFPCompare(v29, v30, a4);
    }

    if (a3 <= 16)
    {
      if (a3 == 14)
      {
        if (!memcmp((a2 + 4), "sse41.dppd", v4))
        {
          v14 = a1;
          v15 = 11393;
        }

        else
        {
          if (memcmp((a2 + 4), "sse41.dpps", v4))
          {
            return 0;
          }

          v14 = a1;
          v15 = 11394;
        }

        goto LABEL_142;
      }

      if (a3 != 16)
      {
        goto LABEL_90;
      }

      goto LABEL_28;
    }

    if (a3 != 17)
    {
      if (a3 != 18)
      {
        goto LABEL_90;
      }

LABEL_37:
      if (memcmp((a2 + 4), "sse41.insertps", v4))
      {
        goto LABEL_91;
      }

      v14 = a1;
      v15 = 11395;
      goto LABEL_142;
    }

LABEL_42:
    if (!memcmp((a2 + 4), "sse41.mpsadbw", v4))
    {
      v14 = a1;
      v15 = 11396;
    }

    else
    {
      if (memcmp((a2 + 4), "avx.dp.ps.256", v4))
      {
        goto LABEL_91;
      }

      v14 = a1;
      v15 = 10247;
    }

    goto LABEL_142;
  }

  if (a3 <= 26)
  {
    v16 = a3 - 15;
    if (a3 > 17)
    {
      if (a3 != 18)
      {
        if (a3 != 26)
        {
          goto LABEL_90;
        }

        goto LABEL_83;
      }

      if (memcmp((a2 + 15), "nzc", v16))
      {
        goto LABEL_37;
      }

      v44 = a1;
      v45 = 11401;
    }

    else
    {
      if (a3 != 16)
      {
        if (a3 != 17)
        {
          goto LABEL_90;
        }

        goto LABEL_42;
      }

      if (!memcmp((a2 + 15), "c", v16))
      {
        v44 = a1;
        v45 = 11400;
      }

      else
      {
        if (memcmp((a2 + 15), "z", 1uLL))
        {
LABEL_28:
          if (memcmp((a2 + 4), "avx2.mpsadbw", v4))
          {
            goto LABEL_91;
          }

          v14 = a1;
          v15 = 10316;
LABEL_142:

          return UpgradeX86IntrinsicsWith8BitMask(v14, v15, a4);
        }

        v44 = a1;
        v45 = 11402;
      }
    }

    return UpgradePTESTIntrinsic(v44, v45, a4);
  }

  if (a3 > 31)
  {
LABEL_53:
    if (a3 == 32)
    {
      if (!memcmp((a2 + 4), "avx512bf16.cvtne2ps2bf16.128", v4))
      {
        v21 = a1;
        v22 = 10959;
        goto LABEL_151;
      }

      if (!memcmp((a2 + 4), "avx512bf16.cvtne2ps2bf16.256", v4))
      {
        v21 = a1;
        v22 = 10960;
        goto LABEL_151;
      }

      if (!memcmp((a2 + 4), "avx512bf16.cvtne2ps2bf16.512", v4))
      {
        v21 = a1;
        v22 = 10961;
        goto LABEL_151;
      }

      goto LABEL_91;
    }

    if (a3 == 36)
    {
      if (!memcmp((a2 + 4), "avx512bf16.mask.cvtneps2bf16.128", v4))
      {
        v21 = a1;
        v22 = 10967;
        goto LABEL_151;
      }

LABEL_91:
      v31 = *(a2 + 4) == 0x637266762E706F78 && *(a2 + 12) == 1936928378;
      if (v31 && *(a1 + 96) == 2)
      {
        rename(a1);
        v19 = *(a1 + 40);
        v20 = 11536;
      }

      else
      {
        v32 = *(a2 + 4) == 0x637266762E706F78 && *(a2 + 12) == 1685270138;
        if (v32 && *(a1 + 96) == 2)
        {
          rename(a1);
          v19 = *(a1 + 40);
          v20 = 11535;
        }

        else
        {
          if (*(a2 + 4) != 0x726570762E706F78 || *(a2 + 12) != 845965677)
          {
            goto LABEL_113;
          }

          v35 = *(*(*(a1 + 24) + 16) + 24);
          v36 = *(v35 + 8);
          if ((v36 & 0xFE) == 0x12)
          {
            v36 = *(**(v35 + 16) + 8);
          }

          v37 = v36 < 4u || v36 == 5;
          v38 = v36 & 0xFD;
          if (v37 || v38 == 4)
          {
            rename(a1);
            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v35);
            if (v40)
            {
            }

            if ((*(v35 + 8) & 0xFE) == 0x12)
            {
              v35 = **(v35 + 16);
            }

            v43 = llvm::Type::getPrimitiveSizeInBits(v35);
            if (v43 == 64 && PrimitiveSizeInBits == 128)
            {
              v20 = 11537;
            }

            else if (v43 == 32 && PrimitiveSizeInBits == 128)
            {
              v20 = 11539;
            }

            else if (PrimitiveSizeInBits == 256 && v43 == 64)
            {
              v20 = 11538;
            }

            else
            {
              v20 = 11540;
            }

            v19 = *(a1 + 40);
          }

          else
          {
LABEL_113:
            if (v4 != 13)
            {
              return 0;
            }

            if (*(a2 + 4) != 0x6F6365722E686573 || *(a2 + 9) != 0x70667265766F6365)
            {
              return 0;
            }

            v19 = *(a1 + 40);
            v20 = 65;
          }
        }
      }

LABEL_166:
      *a4 = llvm::Intrinsic::getDeclaration(v19, v20, 0, 0);
      return 1;
    }

    goto LABEL_90;
  }

  if (a3 != 27)
  {
    if (a3 == 31)
    {
      goto LABEL_50;
    }

    goto LABEL_90;
  }

LABEL_57:
  if (!memcmp((a2 + 4), "avx512bf16.dpbf16ps.128", v4))
  {
    v27 = a1;
    v28 = 10964;
  }

  else if (*(a2 + 4) == 0x6662323135787661 && *(a2 + 12) == 0x31666270642E3631 && *(a2 + 19) == 0x3635322E73703631)
  {
    v27 = a1;
    v28 = 10965;
  }

  else
  {
    if (*(a2 + 4) != 0x6662323135787661 || *(a2 + 12) != 0x31666270642E3631 || *(a2 + 19) != 0x3231352E73703631)
    {
      goto LABEL_91;
    }

    v27 = a1;
    v28 = 10966;
  }

  return UpgradeX86BF16DPIntrinsic(v27, v28, a4);
}

uint64_t llvm::StringSwitch<BOOL,BOOL>::Case(uint64_t a1, const void *a2, uint64_t a3)
{
  if ((*(a1 + 17) & 1) == 0)
  {
    v5 = *(a1 + 8);
    if (v5 == a3 && (!v5 || !memcmp(*a1, a2, v5)))
    {
      *(a1 + 16) = 257;
    }
  }

  return a1;
}

BOOL ShouldUpgradeX86Intrinsic(uint64_t *a1, unint64_t a2)
{
  if (a2 == 12)
  {
    if (*a1 == 0x7972726163646461 && *(a1 + 2) == 842233134)
    {
      return 1;
    }

    if (*a1 == 0x7972726163646461 && *(a1 + 2) == 875984174)
    {
      return 1;
    }
  }

  else if (a2 == 13)
  {
    if (*a1 == 0x7972726163646461 && *(a1 + 5) == 0x3233752E78797272)
    {
      return 1;
    }

    if (*a1 == 0x7972726163646461 && *(a1 + 5) == 0x3436752E78797272)
    {
      return 1;
    }

    if (*a1 == 0x6F72726F62627573 && *(a1 + 5) == 0x3233752E776F7272)
    {
      return 1;
    }

    if (*a1 == 0x6F72726F62627573 && *(a1 + 5) == 0x3436752E776F7272)
    {
      return 1;
    }
  }

  else if (a2 < 0xB)
  {
    if (a2 == 10)
    {
      v9 = *a1 == 0x6261702E32787661 && *(a1 + 4) == 11891;
      result = 1;
      if (v9)
      {
        return result;
      }

      v11 = 0;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
LABEL_102:
      if (*a1 == 0x747271732E787661 && *(a1 + 4) == 28718)
      {
        return 1;
      }

      if ((v18 & 1) == 0 && *a1 == 0x7271732E32657373 && *(a1 + 3) == 0x702E747271732E32)
      {
        return 1;
      }

      if (*a1 == 0x747271732E657373 && *(a1 + 4) == 28718)
      {
        return 1;
      }

      v36 = 0;
      if (v12)
      {
        goto LABEL_123;
      }

      goto LABEL_116;
    }

    v11 = 0;
    v21 = 1;
    v20 = 1;
    v19 = 1;
    v31 = 1;
    v17 = 1;
    v16 = 1;
    v15 = 1;
    v14 = 1;
    v13 = 1;
    v12 = 1;
    goto LABEL_77;
  }

  if (*a1 == 0x6461702E32657373 && *(a1 + 3) == 0x2E73646461702E32)
  {
    return 1;
  }

  if (*a1 == 0x7573702E32657373 && *(a1 + 3) == 0x2E73627573702E32)
  {
    return 1;
  }

  v17 = a2 < 0xC;
  if (a2 >= 0xC)
  {
    if (*a1 == 0x6461702E32657373 && *(a1 + 2) == 779318628)
    {
      return 1;
    }

    if (*a1 == 0x7573702E32657373 && *(a1 + 2) == 779318626)
    {
      return 1;
    }
  }

  if (*a1 == 0x6461702E32787661 && *(a1 + 3) == 0x2E73646461702E32)
  {
    return 1;
  }

  if (*a1 == 0x7573702E32787661 && *(a1 + 3) == 0x2E73627573702E32)
  {
    return 1;
  }

  if (a2 < 0xC)
  {
    goto LABEL_64;
  }

  if (*a1 == 0x6461702E32787661 && *(a1 + 2) == 779318628)
  {
    return 1;
  }

  if (*a1 == 0x7573702E32787661 && *(a1 + 2) == 779318626)
  {
    return 1;
  }

  if (a2 == 12)
  {
LABEL_64:
    v11 = 0;
    v16 = 1;
    v20 = 1;
    v28 = 1;
    goto LABEL_65;
  }

  if (*a1 == 0x702E323135787661 && *(a1 + 5) == 0x2E73646461702E32)
  {
    return 1;
  }

  if (*a1 == 0x702E323135787661 && *(a1 + 5) == 0x2E73627573702E32)
  {
    return 1;
  }

  v28 = a2 < 0x12;
  if (a2 >= 0x12)
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x646461702E6B7361 && *(a1 + 8) == 11891)
    {
      return 1;
    }

    v202 = *a1 == 0x6D2E323135787661 && a1[1] == 0x627573702E6B7361;
    if (v202 && *(a1 + 8) == 11891)
    {
      return 1;
    }

    if (a2 != 18)
    {
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x646461702E6B7361 && *(a1 + 11) == 0x2E7375646461702ELL)
      {
        return 1;
      }

      v217 = *a1 == 0x6D2E323135787661 && a1[1] == 0x627573702E6B7361;
      if (v217 && *(a1 + 11) == 0x2E7375627573702ELL)
      {
        return 1;
      }

      v20 = 0;
      v11 = 0;
      goto LABEL_769;
    }
  }

  else if (a2 == 16)
  {
    if (*a1 == 0x61702E3365737373 && a1[1] == 0x3832312E622E7362)
    {
      return 1;
    }

    if (*a1 == 0x61702E3365737373 && a1[1] == 0x3832312E772E7362)
    {
      return 1;
    }

    v61 = *a1 == 0x61702E3365737373 && a1[1] == 0x3832312E642E7362;
    v20 = 1;
    v11 = 1;
    result = 1;
    if (v61)
    {
      return result;
    }

    goto LABEL_769;
  }

  v11 = 0;
  v20 = 1;
LABEL_769:
  if (*a1 == 0x6D66762E34616D66 && *(a1 + 5) == 0x732E6464616D6676)
  {
    return 1;
  }

  v16 = 0;
LABEL_65:
  if (*a1 == 0x616D66762E616D66 && *(a1 + 3) == 0x2E6464616D66762ELL)
  {
    return 1;
  }

  if (*a1 == 0x736D66762E616D66 && *(a1 + 3) == 0x2E6275736D66762ELL)
  {
    return 1;
  }

  v15 = a2 < 0xE;
  if (a2 >= 0xE)
  {
    if (*a1 == 0x736D66762E616D66 && *(a1 + 6) == 0x2E6464616275736DLL)
    {
      return 1;
    }

LABEL_264:
    if (*a1 == 0x6D6E66762E616D66 && *(a1 + 2) == 778331233)
    {
      return 1;
    }

    if (*a1 == 0x6D6E66762E616D66 && *(a1 + 2) == 778204531)
    {
      return 1;
    }

    goto LABEL_272;
  }

  if (a2 >= 0xC)
  {
    goto LABEL_264;
  }

LABEL_272:
  if ((v20 & 1) == 0)
  {
    v78 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616D66762E6B7361;
    if (v78 && *(a1 + 11) == 0x2E6464616D66762ELL)
    {
      return 1;
    }
  }

  v21 = a2 < 0x14;
  if (a2 <= 0x13)
  {
    goto LABEL_281;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6D6E66762E6B7361 && *(a1 + 4) == 778331233)
  {
    return 1;
  }

  v92 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D6E66762E6B7361;
  if (v92 && *(a1 + 4) == 778204531)
  {
    return 1;
  }

  v94 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
  if (v94 && *(a1 + 4) == 778331233)
  {
    return 1;
  }

  v96 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E7A6B7361;
  if (v96 && *(a1 + 4) == 778331233)
  {
    return 1;
  }

  v98 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
  if (v98 && *(a1 + 4) == 778204531)
  {
    return 1;
  }

  if (a2 == 20)
  {
LABEL_281:
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v19 = 1;
    if (v28)
    {
      goto LABEL_297;
    }
  }

  else
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6E66762E336B7361 && *(a1 + 13) == 0x2E6275736D6E6676)
    {
      return 1;
    }

    v12 = a2 < 0x16;
    if (a2 < 0x16)
    {
      goto LABEL_369;
    }

    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x616D66762E6B7361 && *(a1 + 14) == 0x2E6275736464616DLL)
    {
      return 1;
    }

    if (a2 == 22)
    {
LABEL_369:
      v14 = 1;
    }

    else
    {
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E7A6B7361 && *(a1 + 15) == 0x2E6275736464616DLL)
      {
        return 1;
      }

      v229 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
      if (v229 && *(a1 + 15) == 0x2E6275736464616DLL)
      {
        return 1;
      }

      v231 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D66762E336B7361;
      if (v231 && *(a1 + 15) == 0x2E6464616275736DLL)
      {
        return 1;
      }

      v14 = 0;
    }

    v13 = 0;
    if (v28)
    {
      v19 = 1;
      if (v16)
      {
        goto LABEL_302;
      }

      goto LABEL_298;
    }
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x667568732E6B7361 && *(a1 + 8) == 26926)
  {
    return 1;
  }

  v82 = *a1 == 0x6D2E323135787661 && a1[1] == 0x667568732E6B7361;
  if (v82 && *(a1 + 8) == 26158)
  {
    return 1;
  }

  v19 = 0;
LABEL_297:
  if (v16)
  {
    goto LABEL_302;
  }

LABEL_298:
  if (*a1 == 0x6B2E323135787661 && *(a1 + 5) == 0x6B63706E756B2E32)
  {
    return 1;
  }

LABEL_302:
  if (*a1 == 0x6261702E32787661 && *(a1 + 4) == 11891)
  {
    return 1;
  }

  if (a2 < 0x11)
  {
    v31 = 0;
LABEL_77:
    LOBYTE(result) = 1;
    goto LABEL_78;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x736261702E6B7361 && *(a1 + 16) == 46)
  {
    return 1;
  }

  v207 = *a1 == 0x622E323135787661 && a1[1] == 0x7473616364616F72;
  if (v207 && *(a1 + 16) == 109)
  {
    return 1;
  }

  v31 = 0;
  v17 = 0;
  v15 = 0;
  LOBYTE(result) = 0;
LABEL_78:
  if (a2 == 12)
  {
    if (*a1 == 0x7271732E32657373 && *(a1 + 2) == 1685270132)
    {
      return 1;
    }
  }

  else if (a2 == 11 && *a1 == 0x747271732E657373 && *(a1 + 3) == 0x73732E747271732ELL)
  {
    return 1;
  }

  if ((v19 & 1) == 0)
  {
    v34 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747271732E6B7361;
    if (v34 && *(a1 + 8) == 28718)
    {
      return 1;
    }
  }

  if ((v31 & 1) == 0)
  {
    v18 = 0;
    goto LABEL_102;
  }

  v36 = 1;
  v18 = 1;
  if (v12)
  {
    goto LABEL_123;
  }

LABEL_116:
  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6F7262702E6B7361 && *(a1 + 14) == 0x7473616364616F72)
  {
    return 1;
  }

LABEL_123:
  if (!v17)
  {
    if (*a1 == 0x6D63702E32657373 && *(a1 + 2) == 779183472)
    {
      return 1;
    }

    if (*a1 == 0x6D63702E32657373 && *(a1 + 2) == 779380592)
    {
      return 1;
    }

    if (*a1 == 0x6D63702E32787661 && *(a1 + 2) == 779183472)
    {
      return 1;
    }

    if (*a1 == 0x6D63702E32787661 && *(a1 + 2) == 779380592)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v42 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D63702E6B7361;
    if (v42 && *(a1 + 11) == 0x2E7165706D63702ELL)
    {
      return 1;
    }

    v44 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D63702E6B7361;
    if (v44 && *(a1 + 11) == 0x2E7467706D63702ELL)
    {
      return 1;
    }
  }

  if (a2 >= 0xF && *a1 == 0x726570762E787661 && *(a1 + 7) == 0x2E38323166326D72)
  {
    return 1;
  }

  if (a2 <= 12)
  {
    switch(a2)
    {
      case 0xAuLL:
        if (*a1 == 0x2E6464612E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        if (*a1 == 0x2E6275732E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        if (*a1 == 0x2E6C756D2E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        if (*a1 == 0x2E7669642E657373 && *(a1 + 4) == 29555)
        {
          return 1;
        }

        goto LABEL_445;
      case 0xBuLL:
        if (*a1 == 0x6464612E32657373 && *(a1 + 3) == 0x64732E6464612E32)
        {
          return 1;
        }

        if (*a1 == 0x6275732E32657373 && *(a1 + 3) == 0x64732E6275732E32)
        {
          return 1;
        }

        if (*a1 == 0x6C756D2E32657373 && *(a1 + 3) == 0x64732E6C756D2E32)
        {
          return 1;
        }

        v86 = *(a1 + 3);
        v87 = *a1 == 0x7669642E32657373;
        v88 = 0x64732E7669642E32;
LABEL_311:
        if (v87 && v86 == v88)
        {
          return 1;
        }

        goto LABEL_445;
      case 0xCuLL:
        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1651734625)
        {
          return 1;
        }

        if (*a1 == 0x616D702E32657373 && *(a1 + 2) == 1999532920)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685289057)
        {
          return 1;
        }

        if (*a1 == 0x616D702E32657373 && *(a1 + 2) == 1647211896)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2004187233)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685420129)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1651732073)
        {
          return 1;
        }

        if (*a1 == 0x696D702E32657373 && *(a1 + 2) == 1999532910)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685286505)
        {
          return 1;
        }

        if (*a1 == 0x696D702E32657373 && *(a1 + 2) == 1647211886)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2004184681)
        {
          return 1;
        }

        if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1685417577)
        {
          return 1;
        }

        if (*a1 == 0x6B2E323135787661 && *(a1 + 2) == 1999532655)
        {
          return 1;
        }

        goto LABEL_445;
    }
  }

  else
  {
    if (a2 <= 14)
    {
      if (a2 == 13)
      {
        if (*a1 == 0x6B2E323135787661 && *(a1 + 5) == 0x772E646E616B2E32)
        {
          return 1;
        }

        if (*a1 == 0x6B2E323135787661 && *(a1 + 5) == 0x772E746F6E6B2E32)
        {
          return 1;
        }

        v48 = *(a1 + 5);
        v49 = *a1 == 0x6B2E323135787661;
        v50 = 2020290098;
      }

      else
      {
        if (*a1 == 0x6B2E323135787661 && *(a1 + 6) == 0x772E6E646E616B2ELL)
        {
          return 1;
        }

        v48 = *(a1 + 6);
        v49 = *a1 == 0x6B2E323135787661;
        v50 = 1853385518;
      }

      v111 = v50 | 0x772E726F00000000;
      if (v49 && v48 == v111)
      {
        return 1;
      }

      goto LABEL_445;
    }

    if (a2 == 17)
    {
      if (*a1 == 0x6B2E323135787661 && a1[1] == 0x2E6374736574726FLL && *(a1 + 16) == 119)
      {
        return 1;
      }

      v115 = *a1 == 0x6B2E323135787661 && a1[1] == 0x2E7A74736574726FLL;
      if (v115 && *(a1 + 16) == 119)
      {
        return 1;
      }

      goto LABEL_445;
    }

    if (a2 == 15)
    {
      v86 = *(a1 + 7);
      v87 = *a1 == 0x6570762E32787661;
      v88 = 0x38323169326D7265;
      goto LABEL_311;
    }
  }

  if (v21)
  {
    if (a2 < 9)
    {
      v108 = 1;
LABEL_456:
      v124 = 1;
      goto LABEL_474;
    }
  }

  else if (*a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361 && *(a1 + 4) == 778186342)
  {
    return 1;
  }

LABEL_445:
  if (*a1 == 0x616D702E32787661 && *(a1 + 8) == 120)
  {
    return 1;
  }

  if (*a1 == 0x696D702E32787661 && *(a1 + 8) == 110)
  {
    return 1;
  }

  v124 = a2 < 0x10;
  if (a2 >= 0x10)
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x78616D702E6B7361)
    {
      return 1;
    }

    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6E696D702E6B7361)
    {
      return 1;
    }
  }

  else if (a2 < 0xF)
  {
    v108 = 0;
    goto LABEL_456;
  }

  if (*a1 == 0x7262762E32787661 && *(a1 + 7) == 0x7473616364616F72)
  {
    return 1;
  }

  if (*a1 == 0x7262702E32787661 && *(a1 + 7) == 0x7473616364616F72)
  {
    return 1;
  }

  v108 = 0;
LABEL_474:
  if (!v17 && *a1 == 0x726570762E787661 && *(a1 + 2) == 778856813)
  {
    return 1;
  }

  if ((v36 & 1) == 0 && *a1 == 0x6873702E32657373 && *(a1 + 4) == 26229)
  {
    return 1;
  }

  if (!result)
  {
    v131 = *a1 == 0x702E323135787661 && a1[1] == 0x73616364616F7262;
    if (v131 && *(a1 + 16) == 116)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v133 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    if (v133 && *(a1 + 15) == 0x732E747361636461)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v135 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64766F6D2E6B7361;
    if (v135 && *(a1 + 11) == 0x70756464766F6D2ELL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v209 = *a1 == 0x6D2E323135787661 && a1[1] == 0x73766F6D2E6B7361;
    if (v209 && *(a1 + 4) == 1886741608)
    {
      return 1;
    }

    v211 = *a1 == 0x6D2E323135787661 && a1[1] == 0x73766F6D2E6B7361;
    if (v211 && *(a1 + 4) == 1886741612)
    {
      return 1;
    }

    v213 = *a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361;
    if (v213 && *(a1 + 4) == 778317414)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v137 = *a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361;
    if (v137 && *(a1 + 13) == 0x2E772E6C66756873)
    {
      return 1;
    }

    v139 = *a1 == 0x6D2E323135787661 && a1[1] == 0x756873702E6B7361;
    if (v139 && *(a1 + 13) == 0x2E772E6866756873)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v141 = *a1 == 0x6D2E323135787661 && a1[1] == 0x667568732E6B7361;
    if (v141 && *(a1 + 8) == 28718)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v143 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v143 && *(a1 + 13) == 0x702E6C696D726570)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v145 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D7265702E6B7361;
    if (v145 && *(a1 + 4) == 778462254)
    {
      return 1;
    }

    v147 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D7265702E6B7361;
    if (v147 && *(a1 + 4) == 778658862)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v219 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706E75702E6B7361;
    if (v219 && *(a1 + 11) == 0x6C6B63706E75702ELL)
    {
      return 1;
    }

    v221 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706E75702E6B7361;
    if (v221 && *(a1 + 11) == 0x686B63706E75702ELL)
    {
      return 1;
    }

    v223 = *a1 == 0x6D2E323135787661 && a1[1] == 0x63706E752E6B7361;
    if (v223 && *(a1 + 11) == 0x2E6C6B63706E752ELL)
    {
      return 1;
    }

    v225 = *a1 == 0x6D2E323135787661 && a1[1] == 0x63706E752E6B7361;
    if (v225 && *(a1 + 11) == 0x2E686B63706E752ELL)
    {
      return 1;
    }
  }

  if (!result)
  {
    v149 = *a1 == 0x6D2E323135787661 && a1[1] == 0x646E61702E6B7361;
    if (v149 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v151 = *a1 == 0x6D2E323135787661 && a1[1] == 0x646E61702E6B7361;
    if (v151 && *(a1 + 8) == 11886)
    {
      return 1;
    }
  }

  if (!v124 && *a1 == 0x6D2E323135787661 && a1[1] == 0x2E726F702E6B7361)
  {
    return 1;
  }

  if (!result)
  {
    v154 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F78702E6B7361;
    if (v154 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (!v124 && *a1 == 0x6D2E323135787661 && a1[1] == 0x2E646E612E6B7361)
  {
    return 1;
  }

  if (!result)
  {
    v157 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6E646E612E6B7361;
    if (v157 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (a2 >= 0xF && *a1 == 0x6D2E323135787661 && *(a1 + 7) == 0x2E726F2E6B73616DLL)
  {
    return 1;
  }

  if (!v124 && *a1 == 0x6D2E323135787661 && a1[1] == 0x2E726F782E6B7361)
  {
    return 1;
  }

  if (!result)
  {
    v161 = *a1 == 0x6D2E323135787661 && a1[1] == 0x646461702E6B7361;
    if (v161 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v163 = *a1 == 0x6D2E323135787661 && a1[1] == 0x627573702E6B7361;
    if (v163 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v165 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v165 && *(a1 + 8) == 11884)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v167 = *a1 == 0x6D2E323135787661 && a1[1] == 0x647476632E6B7361;
    if (v167 && *(a1 + 13) == 0x2E64703271647476)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v169 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
    if (v169 && *(a1 + 14) == 0x2E64703271647574)
    {
      return 1;
    }

    v171 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
    if (v171 && *(a1 + 14) == 0x2E73703271647574)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v173 = *a1 == 0x6D2E323135787661 && a1[1] == 0x717476632E6B7361;
    if (v173 && *(a1 + 13) == 0x2E64703271717476)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v175 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
    if (v175 && *(a1 + 14) == 0x2E64703271717574)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v177 = *a1 == 0x6D2E323135787661 && a1[1] == 0x647476632E6B7361;
    if (v177 && *(a1 + 13) == 0x2E73703271647476)
    {
      return 1;
    }
  }

  switch(a2)
  {
    case 0x10uLL:
      if (*a1 == 0x632E323135787661 && a1[1] == 0x6473326973757476)
      {
        return 1;
      }

      goto LABEL_984;
    case 0x18uLL:
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x717476632E6B7361 && a1[2] == 0x3635322E73703271)
      {
        return 1;
      }

      v235 = *a1 == 0x6D2E323135787661 && a1[1] == 0x717476632E6B7361;
      if (v235 && a1[2] == 0x3231352E73703271)
      {
        return 1;
      }

      v237 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v237 && a1[2] == 0x3635322E71643264)
      {
        return 1;
      }

      v239 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v239 && a1[2] == 0x3635322E73703264)
      {
        return 1;
      }

      v241 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v241 && a1[2] == 0x3832312E64703273)
      {
        return 1;
      }

      v243 = *a1 == 0x6D2E323135787661 && a1[1] == 0x707476632E6B7361;
      if (v243 && a1[2] == 0x3635322E64703273)
      {
        return 1;
      }

      break;
    case 0x19uLL:
      if (*a1 == 0x6D2E323135787661 && a1[1] == 0x747663762E6B7361 && a1[2] == 0x32312E7370326870 && *(a1 + 24) == 56)
      {
        return 1;
      }

      v182 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747663762E6B7361;
      v183 = v182 && a1[2] == 0x35322E7370326870;
      if (v183 && *(a1 + 24) == 54)
      {
        return 1;
      }

      v185 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
      v186 = v185 && a1[2] == 0x35322E7370327171;
      if (v186 && *(a1 + 24) == 54)
      {
        return 1;
      }

      v188 = *a1 == 0x6D2E323135787661 && a1[1] == 0x757476632E6B7361;
      v189 = v188 && a1[2] == 0x31352E7370327171;
      if (v189 && *(a1 + 24) == 50)
      {
        return 1;
      }

      v191 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747476632E6B7361;
      v192 = v191 && a1[2] == 0x35322E7164326470;
      if (v192 && *(a1 + 24) == 54)
      {
        return 1;
      }

      v194 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747476632E6B7361;
      v195 = v194 && a1[2] == 0x32312E7164327370;
      if (v195 && *(a1 + 24) == 56)
      {
        return 1;
      }

      v197 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747476632E6B7361;
      v198 = v197 && a1[2] == 0x35322E7164327370;
      if (v198 && *(a1 + 24) == 54)
      {
        return 1;
      }

      break;
    default:
      if (v21)
      {
        goto LABEL_937;
      }

      break;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6D7265702E6B7361 && *(a1 + 4) == 779247990)
  {
    return 1;
  }

LABEL_937:
  if (a2 > 17)
  {
    if (a2 != 18)
    {
      if (a2 == 19)
      {
        v250 = *(a1 + 11);
        v251 = *a1 == 0x702E323135787661 && a1[1] == 0x2E71642E756C756DLL;
        v248 = 0x3231352E71642E75;
        goto LABEL_951;
      }

      goto LABEL_957;
    }

    if (*a1 == 0x702E323135787661 && a1[1] == 0x352E71642E6C756DLL && *(a1 + 8) == 12849)
    {
      return 1;
    }
  }

  else
  {
    if (a2 != 12)
    {
      if (a2 == 13)
      {
        v248 = 0x71642E756C756D70;
        if (*a1 == 0x756D702E32657373 && *(a1 + 5) == 0x71642E756C756D70)
        {
          return 1;
        }

        v250 = *(a1 + 5);
        v251 = *a1 == 0x756D702E32787661;
LABEL_951:
        if (v251 && v250 == v248)
        {
          return 1;
        }

        goto LABEL_984;
      }

LABEL_957:
      if (!v21)
      {
        v253 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
        if (v253 && *(a1 + 4) == 779183150)
        {
          return 1;
        }
      }

      goto LABEL_984;
    }

    if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 1902406773)
    {
      return 1;
    }

    if (*a1 == 0x756D702E32787661 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }
  }

LABEL_984:
  if ((v13 & 1) == 0)
  {
    v259 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v259 && *(a1 + 13) == 0x2E71642E756C756DLL)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v261 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v261 && *(a1 + 15) == 0x2E77732E72682E6CLL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v263 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v263 && *(a1 + 4) == 779562600)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v265 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361;
    if (v265 && *(a1 + 13) == 0x2E772E75686C756DLL)
    {
      return 1;
    }

    v267 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616D702E6B7361;
    if (v267 && *(a1 + 13) == 0x2E642E776464616DLL)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v269 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616D702E6B7361;
    if (v269 && *(a1 + 15) == 0x2E772E7362756464)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v336 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v336 && *(a1 + 13) == 0x2E627773736B6361)
    {
      return 1;
    }

    v338 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v338 && *(a1 + 13) == 0x2E776473736B6361)
    {
      return 1;
    }

    v340 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v340 && *(a1 + 13) == 0x2E627773756B6361)
    {
      return 1;
    }

    v342 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6B6361702E6B7361;
    if (v342 && *(a1 + 13) == 0x2E776473756B6361)
    {
      return 1;
    }
  }

  if (!result)
  {
    v344 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v344 && *(a1 + 16) == 98)
    {
      return 1;
    }

    v346 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v346 && *(a1 + 16) == 100)
    {
      return 1;
    }

    v348 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v348 && *(a1 + 16) == 113)
    {
      return 1;
    }

    v350 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E706D632E6B7361;
    if (v350 && *(a1 + 16) == 119)
    {
      return 1;
    }
  }

  if (!v17 && *a1 == 0x632E323135787661 && *(a1 + 2) == 1882091629)
  {
    return 1;
  }

  if (!result)
  {
    v352 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D63752E6B7361;
    if (v352 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v354 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32627476;
    if (v354 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v356 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32777476;
    if (v356 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v358 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32647476;
    if (v358 && *(a1 + 16) == 46)
    {
      return 1;
    }

    v360 = *a1 == 0x632E323135787661 && a1[1] == 0x6B73616D32717476;
    if (v360 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v272 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v272 && *(a1 + 15) == 0x2E7261766C696D72)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v362 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v362 && *(a1 + 8) == 25646)
    {
      return 1;
    }

    v364 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v364 && *(a1 + 8) == 28974)
    {
      return 1;
    }

    v366 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v366 && *(a1 + 8) == 30510)
    {
      return 1;
    }

    v368 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v368 && *(a1 + 8) == 25646)
    {
      return 1;
    }

    v370 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v370 && *(a1 + 8) == 28974)
    {
      return 1;
    }

    v372 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v372 && *(a1 + 8) == 30510)
    {
      return 1;
    }

    v374 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v374 && *(a1 + 8) == 25646)
    {
      return 1;
    }

    v376 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v376 && *(a1 + 8) == 28974)
    {
      return 1;
    }

    v378 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v378 && *(a1 + 8) == 30510)
    {
      return 1;
    }
  }

  if (!result)
  {
    v380 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v380 && *(a1 + 16) == 105)
    {
      return 1;
    }

    v382 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v382 && *(a1 + 16) == 105)
    {
      return 1;
    }

    v384 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v384 && *(a1 + 16) == 105)
    {
      return 1;
    }

    v386 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6C73702E6B7361;
    if (v386 && *(a1 + 16) == 118)
    {
      return 1;
    }

    v388 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617273702E6B7361;
    if (v388 && *(a1 + 16) == 118)
    {
      return 1;
    }

    v390 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C7273702E6B7361;
    if (v390 && *(a1 + 16) == 118)
    {
      return 1;
    }
  }

  if (!v17)
  {
    if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2020832879)
    {
      return 1;
    }

    if (*a1 == 0x6D702E3134657373 && *(a1 + 2) == 2021291631)
    {
      return 1;
    }
  }

  if ((v18 & 1) == 0)
  {
    if (*a1 == 0x6F6D702E32787661 && *(a1 + 3) == 0x7873766F6D702E32)
    {
      return 1;
    }

    if (*a1 == 0x6F6D702E32787661 && *(a1 + 3) == 0x787A766F6D702E32)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v392 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
    if (v392 && *(a1 + 8) == 30835)
    {
      return 1;
    }

    v394 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
    if (v394 && *(a1 + 8) == 30842)
    {
      return 1;
    }

    v396 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6E637A6C2E6B7361;
    if (v396 && *(a1 + 8) == 11892)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v278 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726574702E6B7361;
    if (v278 && *(a1 + 13) == 0x2E676F6C6E726574)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v280 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6574702E7A6B7361;
    if (v280 && *(a1 + 14) == 0x2E676F6C6E726574)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v282 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616D70762E6B7361;
    if (v282 && *(a1 + 4) == 842359908)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v284 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6D70762E7A6B7361;
    if (v284 && *(a1 + 13) == 0x32356464616D7076)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v286 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v286 && *(a1 + 15) == 0x2E72617632696D72)
    {
      return 1;
    }

    v288 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726570762E6B7361;
    if (v288 && *(a1 + 15) == 0x2E72617632746D72)
    {
      return 1;
    }
  }

  if (a2 >= 0x18)
  {
    v290 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6570762E7A6B7361;
    if (v290 && a1[2] == 0x2E72617632746D72)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v292 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v292 && *(a1 + 13) == 0x2E64737562706470)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v294 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v294 && *(a1 + 14) == 0x2E64737562706470)
    {
      return 1;
    }

    v296 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v296 && *(a1 + 14) == 0x2E73647375627064)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v298 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v298 && *(a1 + 15) == 0x2E73647375627064)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v300 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v300 && *(a1 + 13) == 0x2E64737377706470)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v302 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v302 && *(a1 + 14) == 0x2E64737377706470)
    {
      return 1;
    }

    v304 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706470762E6B7361;
    if (v304 && *(a1 + 14) == 0x2E73647373777064)
    {
      return 1;
    }
  }

  if ((v14 & 1) == 0)
  {
    v306 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6470762E7A6B7361;
    if (v306 && *(a1 + 15) == 0x2E73647373777064)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v308 = *a1 == 0x6D2E323135787661 && a1[1] == 0x737062642E6B7361;
    if (v308 && *(a1 + 13) == 0x2E77626461737062)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v310 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v310 && *(a1 + 11) == 0x2E646C687370762ELL)
    {
      return 1;
    }

    v312 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v312 && *(a1 + 11) == 0x2E6472687370762ELL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v314 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v314 && *(a1 + 4) == 779510892)
    {
      return 1;
    }

    v316 = *a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361;
    if (v316 && *(a1 + 4) == 779510898)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v318 = *a1 == 0x6D2E323135787661 && a1[1] == 0x7370762E7A6B7361;
    if (v318 && *(a1 + 13) == 0x2E76646C68737076)
    {
      return 1;
    }

    v320 = *a1 == 0x6D2E323135787661 && a1[1] == 0x7370762E7A6B7361;
    if (v320 && *(a1 + 13) == 0x2E76647268737076)
    {
      return 1;
    }
  }

  if (!v15)
  {
    if (*a1 == 0x762E323135787661 && *(a1 + 6) == 0x2E646C687370762ELL)
    {
      return 1;
    }

    if (*a1 == 0x762E323135787661 && *(a1 + 6) == 0x2E6472687370762ELL)
    {
      return 1;
    }
  }

  if (!result)
  {
    v398 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6464612E6B7361;
    if (v398 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v400 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6275732E6B7361;
    if (v400 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v402 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6C756D2E6B7361;
    if (v402 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v404 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E7669642E6B7361;
    if (v404 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v406 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E78616D2E6B7361;
    if (v406 && *(a1 + 16) == 112)
    {
      return 1;
    }

    v408 = *a1 == 0x6D2E323135787661 && a1[1] == 0x2E6E696D2E6B7361;
    if (v408 && *(a1 + 16) == 112)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    v324 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6370662E6B7361;
    if (v324 && *(a1 + 13) == 0x702E7373616C6370)
    {
      return 1;
    }
  }

  if (a2 < 0x19)
  {
    goto LABEL_1268;
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x687370762E6B7361 && a1[2] == 0x626D717469626675 && *(a1 + 24) == 46)
  {
    return 1;
  }

  if (a2 >= 0x1B)
  {
    if (*a1 == 0x6D2E323135787661 && a1[1] == 0x6C756D702E6B7361 && a1[2] == 0x2E74666968736974 && *(a1 + 19) == 0x2E62712E74666968)
    {
      return 1;
    }

    v329 = 0;
    if (v13)
    {
      goto LABEL_1276;
    }
  }

  else
  {
LABEL_1268:
    v329 = 1;
    if (v13)
    {
      goto LABEL_1276;
    }
  }

  if (*a1 == 0x6D2E323135787661 && a1[1] == 0x666E6F632E6B7361 && *(a1 + 13) == 0x2E7463696C666E6FLL)
  {
    return 1;
  }

LABEL_1276:
  if (a2 <= 14)
  {
    if (a2 == 12)
    {
      if (*a1 == 0x737476632E657373 && *(a1 + 2) == 1936929385)
      {
        return 1;
      }

      goto LABEL_1660;
    }

    if (a2 == 13)
    {
      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6473326973747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6473327373747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6470327164747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x7370327164747663)
      {
        return 1;
      }

      if (*a1 == 0x7476632E32657373 && *(a1 + 5) == 0x6470327370747663)
      {
        return 1;
      }

      goto LABEL_1660;
    }

    if (a2 != 14)
    {
      goto LABEL_1660;
    }

    v410 = *(a1 + 6);
    v411 = *a1 == 0x737476632E657373;
    v412 = 0x7373323436697374;
    goto LABEL_1619;
  }

  if (a2 > 17)
  {
    if (a2 == 18)
    {
      if (*a1 == 0x2E7476632E787661 && a1[1] == 0x322E64702E327370 && *(a1 + 8) == 13877)
      {
        return 1;
      }
    }

    else if (a2 == 23)
    {
      v413 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v413 && *(a1 + 15) == 0x3635322E64712E76)
      {
        return 1;
      }

      v415 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v415 && *(a1 + 15) == 0x3231352E64712E76)
      {
        return 1;
      }

      v417 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v417 && *(a1 + 15) == 0x3635322E62772E76)
      {
        return 1;
      }

      v419 = *a1 == 0x6D2E323135787661 && a1[1] == 0x766F6D702E6B7361;
      if (v419 && *(a1 + 15) == 0x3231352E62772E76)
      {
        return 1;
      }
    }

    goto LABEL_1660;
  }

  if (a2 == 15)
  {
    v410 = *(a1 + 7);
    v411 = *a1 == 0x7476632E32657373;
    v412 = 0x6473323436697374;
LABEL_1619:
    if (v411 && v410 == v412)
    {
      return 1;
    }

    goto LABEL_1660;
  }

  if (a2 == 17)
  {
    v332 = *a1 == 0x647476632E787661 && a1[1] == 0x35322E64702E3271;
    if (v332 && *(a1 + 16) == 54)
    {
      return 1;
    }

    v334 = *a1 == 0x647476632E787661 && a1[1] == 0x35322E73702E3271;
    if (v334 && *(a1 + 16) == 54)
    {
      return 1;
    }
  }

LABEL_1660:
  if ((v36 & 1) == 0 && *a1 == 0x7032687074766376 && *(a1 + 4) == 11891)
  {
    return 1;
  }

  if (!v124 && *a1 == 0x736E69762E787661 && a1[1] == 0x2E38323166747265)
  {
    return 1;
  }

  if (v11)
  {
    if (*a1 == 0x6E69762E32787661 && a1[1] == 0x3832316974726573)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v436 = *a1 == 0x6D2E323135787661 && a1[1] == 0x65736E692E6B7361;
    if (v436 && *(a1 + 8) == 29810)
    {
      return 1;
    }
  }

  if (!result)
  {
    v438 = *a1 == 0x747865762E787661 && a1[1] == 0x3832316674636172;
    if (v438 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (a2 == 17)
  {
    v440 = *(a1 + 16);
    v441 = *a1 == 0x7865762E32787661 && a1[1] == 0x3231697463617274;
    v442 = 56;
  }

  else
  {
    if (v21)
    {
      goto LABEL_1705;
    }

    v440 = *(a1 + 4);
    v441 = *a1 == 0x6D2E323135787661 && a1[1] == 0x747865762E6B7361;
    v442 = 1952670066;
  }

  if (v441 && v440 == v442)
  {
    return 1;
  }

LABEL_1705:
  if (!v17 && *a1 == 0x6F6D2E6134657373 && *(a1 + 2) == 779382390)
  {
    return 1;
  }

  if ((v36 & 1) == 0 && *a1 == 0x6E766F6D2E787661 && *(a1 + 4) == 11892)
  {
    return 1;
  }

  if (a2 >= 0xF && *a1 == 0x732E323135787661 && *(a1 + 7) == 0x2E746E65726F7473)
  {
    return 1;
  }

  if (a2 == 13)
  {
    v448 = *(a1 + 5);
    v449 = *a1 == 0x766F6D2E32787661;
LABEL_1730:
    v450 = 0x617164746E766F6DLL;
    goto LABEL_1731;
  }

  if (a2 == 15)
  {
    v448 = *(a1 + 7);
    v449 = *a1 == 0x6D2E323135787661;
    goto LABEL_1730;
  }

  if (a2 != 14)
  {
    goto LABEL_1735;
  }

  if (*a1 == 0x6F6D2E3134657373 && *(a1 + 6) == 0x617164746E766F6DLL)
  {
    return 1;
  }

  v448 = *(a1 + 6);
  v449 = *a1 == 0x6F74732E32657373;
  v450 = 0x71642E6C65726F74;
LABEL_1731:
  if (v449 && v448 == v450)
  {
    return 1;
  }

LABEL_1735:
  if ((v18 & 1) == 0 && *a1 == 0x726F74732E657373 && *(a1 + 3) == 0x2E7565726F74732ELL)
  {
    return 1;
  }

  if (!v17 && *a1 == 0x6F74732E32657373 && *(a1 + 2) == 779445618)
  {
    return 1;
  }

  if ((v18 & 1) == 0 && *a1 == 0x726F74732E787661 && *(a1 + 3) == 0x2E7565726F74732ELL)
  {
    return 1;
  }

  if ((v20 & 1) == 0)
  {
    v455 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v455 && *(a1 + 11) == 0x2E7565726F74732ELL)
    {
      return 1;
    }

    v457 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v457 && *(a1 + 11) == 0x702E65726F74732ELL)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v477 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v477 && *(a1 + 4) == 778186341)
    {
      return 1;
    }

    v479 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v479 && *(a1 + 4) == 779562597)
    {
      return 1;
    }

    v481 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v481 && *(a1 + 4) == 778317413)
    {
      return 1;
    }

    v483 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
    if (v483 && *(a1 + 4) == 779169381)
    {
      return 1;
    }

    if (a2 == 20)
    {
      v485 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F74732E6B7361;
      if (v485 && *(a1 + 4) == 1936928357)
      {
        return 1;
      }
    }
  }

  if ((v19 & 1) == 0)
  {
    v459 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616F6C2E6B7361;
    if (v459 && *(a1 + 8) == 11893)
    {
      return 1;
    }
  }

  if (!result)
  {
    v461 = *a1 == 0x6D2E323135787661 && a1[1] == 0x64616F6C2E6B7361;
    if (v461 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (a2 >= 0x18)
  {
    v463 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v463 && a1[2] == 0x2E64616F6C2E646ELL)
    {
      return 1;
    }
  }

  if ((v329 & 1) == 0)
  {
    v465 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    v466 = v465 && a1[2] == 0x6F74732E73736572;
    if (v466 && *(a1 + 19) == 0x2E65726F74732E73)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v487 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v487 && *(a1 + 4) == 1647207534)
    {
      return 1;
    }

    v489 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v489 && *(a1 + 4) == 1999529070)
    {
      return 1;
    }

    v491 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v491 && *(a1 + 4) == 1680761966)
    {
      return 1;
    }

    v493 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v493 && *(a1 + 4) == 1898865774)
    {
      return 1;
    }

    v495 = *a1 == 0x6D2E323135787661 && a1[1] == 0x617078652E6B7361;
    if (v495 && *(a1 + 4) == 1882088558)
    {
      return 1;
    }
  }

  if (!v12)
  {
    v497 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v497 && *(a1 + 14) == 0x622E73736572706DLL)
    {
      return 1;
    }

    v499 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v499 && *(a1 + 14) == 0x772E73736572706DLL)
    {
      return 1;
    }

    v501 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v501 && *(a1 + 14) == 0x642E73736572706DLL)
    {
      return 1;
    }

    v503 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v503 && *(a1 + 14) == 0x712E73736572706DLL)
    {
      return 1;
    }

    v505 = *a1 == 0x6D2E323135787661 && a1[1] == 0x706D6F632E6B7361;
    if (v505 && *(a1 + 14) == 0x702E73736572706DLL)
    {
      return 1;
    }
  }

  if (v11)
  {
    if (*a1 == 0x72632E3234657373 && a1[1] == 0x382E34362E323363)
    {
      return 1;
    }
  }

  if (!v124 && *a1 == 0x6F7262762E787661 && a1[1] == 0x732E747361636461)
  {
    return 1;
  }

  if ((v20 & 1) == 0)
  {
    v470 = *a1 == 0x762E323135787661 && a1[1] == 0x73616364616F7262;
    if (v470 && *(a1 + 11) == 0x732E747361636461)
    {
      return 1;
    }
  }

  if (!v21)
  {
    v472 = *a1 == 0x6D2E323135787661 && a1[1] == 0x696C61702E6B7361;
    if (v472 && *(a1 + 4) == 779251303)
    {
      return 1;
    }
  }

  if ((v20 & 1) == 0)
  {
    v474 = *a1 == 0x6D2E323135787661 && a1[1] == 0x696C61762E6B7361;
    if (v474 && *(a1 + 11) == 0x2E6E67696C61762ELL)
    {
      return 1;
    }
  }

  if (!v17)
  {
    if (*a1 == 0x6C73702E32657373 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }

    if (*a1 == 0x7273702E32657373 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }

    if (*a1 == 0x6C73702E32787661 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }

    if (*a1 == 0x7273702E32787661 && *(a1 + 2) == 1902390892)
    {
      return 1;
    }
  }

  if (v15)
  {
    if (a2 == 13 && *a1 == 0x62702E3134657373 && *(a1 + 5) == 0x77646E656C62702ELL)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 == 0x702E323135787661 && *(a1 + 6) == 0x71642E6C6C73702ELL)
    {
      return 1;
    }

    if (*a1 == 0x702E323135787661 && *(a1 + 6) == 0x71642E6C7273702ELL)
    {
      return 1;
    }
  }

  if (!v17 && *a1 == 0x6C622E3134657373 && *(a1 + 2) == 1885630053)
  {
    return 1;
  }

  if ((v18 & 1) == 0 && *a1 == 0x6E656C622E787661 && *(a1 + 3) == 0x702E646E656C622ELL)
  {
    return 1;
  }

  if (a2 == 12)
  {
    if (*a1 == 0x6C62702E32787661 && *(a1 + 2) == 2003070565)
    {
      return 1;
    }
  }

  else if ((v16 & 1) == 0 && *a1 == 0x6C62702E32787661 && *(a1 + 5) == 0x2E64646E656C6270)
  {
    return 1;
  }

  if ((v19 & 1) == 0)
  {
    v517 = *a1 == 0x6F7262762E787661 && a1[1] == 0x3166747361636461;
    if (v517 && *(a1 + 8) == 14386)
    {
      return 1;
    }
  }

  if (a2 == 19)
  {
    v519 = *a1 == 0x7262762E32787661 && a1[1] == 0x697473616364616FLL;
    if (v519 && *(a1 + 11) == 0x3832316974736163)
    {
      return 1;
    }
  }

  if ((v329 & 1) == 0)
  {
    v521 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v522 = v521 && a1[2] == 0x3233667473616364;
    if (v522 && *(a1 + 19) == 0x2E34783233667473)
    {
      return 1;
    }

    v524 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v525 = v524 && a1[2] == 0x3436667473616364;
    if (v525 && *(a1 + 19) == 0x2E32783436667473)
    {
      return 1;
    }

    v527 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v528 = v527 && a1[2] == 0x3233667473616364;
    if (v528 && *(a1 + 19) == 0x2E38783233667473)
    {
      return 1;
    }

    v530 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v531 = v530 && a1[2] == 0x3436667473616364;
    if (v531 && *(a1 + 19) == 0x2E34783436667473)
    {
      return 1;
    }

    v533 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v534 = v533 && a1[2] == 0x3233697473616364;
    if (v534 && *(a1 + 19) == 0x2E34783233697473)
    {
      return 1;
    }

    v536 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v537 = v536 && a1[2] == 0x3436697473616364;
    if (v537 && *(a1 + 19) == 0x2E32783436697473)
    {
      return 1;
    }

    v539 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v540 = v539 && a1[2] == 0x3233697473616364;
    if (v540 && *(a1 + 19) == 0x2E38783233697473)
    {
      return 1;
    }

    v542 = *a1 == 0x6D2E323135787661 && a1[1] == 0x616F72622E6B7361;
    v543 = v542 && a1[2] == 0x3436697473616364;
    if (v543 && *(a1 + 19) == 0x2E34783436697473)
    {
      return 1;
    }
  }

  if (a2 == 14)
  {
    if (*a1 == 0x6D6370762E706F78 && *(a1 + 6) == 0x3635322E766F6D63)
    {
      return 1;
    }
  }

  else if (a2 == 10 && *a1 == 0x6D6370762E706F78 && *(a1 + 4) == 30319)
  {
    return 1;
  }

  if ((v19 & 1) == 0)
  {
    v547 = *a1 == 0x6D2E323135787661 && a1[1] == 0x65766F6D2E6B7361;
    if (v547 && *(a1 + 8) == 29486)
    {
      return 1;
    }
  }

  if (a2 >= 0xF && *a1 == 0x632E323135787661 && *(a1 + 7) == 0x326B73616D747663)
  {
    return 1;
  }

  if ((v108 & 1) == 0)
  {
    if (*a1 == 0x6F6370762E706F78 && *(a1 + 8) == 109)
    {
      return 1;
    }

    if (*a1 == 0x6F7270762E706F78 && *(a1 + 8) == 116)
    {
      return 1;
    }
  }

  if ((v18 & 1) == 0)
  {
    if (*a1 == 0x702E323135787661 && *(a1 + 3) == 0x6C6F72702E323135)
    {
      return 1;
    }

    if (*a1 == 0x702E323135787661 && *(a1 + 3) == 0x726F72702E323135)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v554 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F72702E6B7361;
    if (v554 && *(a1 + 8) == 11894)
    {
      return 1;
    }
  }

  if (!result)
  {
    v556 = *a1 == 0x6D2E323135787661 && a1[1] == 0x726F72702E6B7361;
    if (v556 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if ((v19 & 1) == 0)
  {
    v558 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6F72702E6B7361;
    if (v558 && *(a1 + 8) == 11894)
    {
      return 1;
    }
  }

  if (!result)
  {
    v560 = *a1 == 0x6D2E323135787661 && a1[1] == 0x6C6F72702E6B7361;
    if (v560 && *(a1 + 16) == 46)
    {
      return 1;
    }
  }

  if (v16)
  {
    goto LABEL_2184;
  }

  if (*a1 == 0x702E323135787661 && *(a1 + 5) == 0x6D74736574702E32)
  {
    return 1;
  }

  if (v15)
  {
LABEL_2184:
    if (v124)
    {
      return 0;
    }

    goto LABEL_2196;
  }

  v563 = *a1 == 0x702E323135787661 && *(a1 + 6) == 0x6D6E74736574702ELL;
  result = v563;
  v564 = v563 || v124;
  if ((v564 & 1) == 0)
  {
LABEL_2196:
    v566 = *a1;
    v565 = a1[1];
    return v566 == 0x6D2E323135787661 && v565 == 0x677661702E6B7361;
  }

  return result;
}

BOOL UpgradePTESTIntrinsic(llvm::Function *a1, uint64_t a2, llvm::Function **a3)
{
  v6 = *(*(*(a1 + 3) + 16) + 8);
  llvm::FixedVectorType::get((***a1 + 1704), 4);
  v8 = v7;
  if (v6 == v7)
  {
    if ((*(a1 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(a1);
      v12 = *ValueName;
      v10 = (ValueName + 2);
      v9 = v12;
    }

    else
    {
      v9 = 0;
      v10 = &str_3_24;
    }

    v15 = 773;
    v14[0] = v10;
    v14[1] = v9;
    v14[2] = ".old";
    llvm::Value::setName(a1, v14);
    *a3 = llvm::Intrinsic::getDeclaration(*(a1 + 5), a2, 0, 0);
  }

  return v6 == v8;
}

BOOL UpgradeX86IntrinsicsWith8BitMask(llvm::Function *this, uint64_t a2, llvm::Function **a3)
{
  v3 = *(*(*(*(this + 3) + 16) + 8 * (*(*(this + 3) + 12) - 1)) + 8);
  if (v3 == 8205)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v10 = *ValueName;
      v8 = (ValueName + 2);
      v7 = v10;
    }

    else
    {
      v7 = 0;
      v8 = &str_3_24;
    }

    v13 = 773;
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = ".old";
    llvm::Value::setName(this, v12);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v3 == 8205;
}

BOOL UpgradeX86MaskedFPCompare(llvm::Function *this, uint64_t a2, llvm::Function **a3)
{
  v3 = *(**(*(this + 3) + 16) + 8) & 0xFE;
  if (v3 != 18)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v10 = *ValueName;
      v8 = (ValueName + 2);
      v7 = v10;
    }

    else
    {
      v7 = 0;
      v8 = &str_3_24;
    }

    v13 = 773;
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = ".old";
    llvm::Value::setName(this, v12);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v3 != 18;
}

BOOL UpgradeX86BF16Intrinsic(llvm::Function *this, uint64_t a2, llvm::Function **a3)
{
  v6 = **(*(this + 3) + 16);
  if ((*(v6 + 8) & 0xFE) == 0x12)
  {
    v7 = *(**(v6 + 16) + 8);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 1)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v11 = *ValueName;
      v9 = (ValueName + 2);
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v9 = &str_3_24;
    }

    v14 = 773;
    v13[0] = v9;
    v13[1] = v8;
    v13[2] = ".old";
    llvm::Value::setName(this, v13);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v7 != 1;
}

BOOL UpgradeX86BF16DPIntrinsic(llvm::Function *this, uint64_t a2, llvm::Function **a3)
{
  v6 = *(*(*(this + 3) + 16) + 16);
  if ((*(v6 + 8) & 0xFE) == 0x12)
  {
    v7 = *(**(v6 + 16) + 8);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 1)
  {
    if ((*(this + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(this);
      v11 = *ValueName;
      v9 = (ValueName + 2);
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v9 = &str_3_24;
    }

    v14 = 773;
    v13[0] = v9;
    v13[1] = v8;
    v13[2] = ".old";
    llvm::Value::setName(this, v13);
    *a3 = llvm::Intrinsic::getDeclaration(*(this + 5), a2, 0, 0);
  }

  return v7 != 1;
}

llvm::Instruction *llvm::IRBuilderBase::CreateAShr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  result = (*(**(this + 9) + 24))(*(this + 9), 27, a2, a3);
  if (!result)
  {
    v13 = 257;
    v11 = llvm::BinaryOperator::Create(27, a2, a3, v12, 0);
    if (a5)
    {
      *(v11 + 17) |= 2u;
    }

    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v11, a4);
  }

  return result;
}

void **std::vector<llvm::Type *>::__assign_with_size[abi:nn200100]<llvm::Type * const*,llvm::Type * const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(v6, v10);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 88))(*(a1 + 72));
  if (!result)
  {
    v16 = 257;
    v13 = operator new(0xA0uLL);
    *v13 = 0;
    *(v13 + 8) = 0u;
    *(v13 + 8) = *a2;
    v14 = (v13 + 64);
    *(v13 + 3) = v13 + 64;
    *(v13 + 4) = 0;
    *(v13 + 40) = 0u;
    *(v13 + 7) = v13 + 64;
    *(v13 + 9) = 0;
    *(v13 + 10) = 0x20000005DLL;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 30) = 0;
    *(v13 + 16) = v13 + 144;
    *(v13 + 17) = 0x400000000;
    llvm::InsertValueInst::init(v13 + 16, a2, a3, a4, a5, &v15);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v14, a6);
  }

  return result;
}

__int128 *std::vector<llvm::OperandBundleDefT<llvm::Value *>>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 48;
        std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *,llvm::OperandBundleDefT<llvm::Value *> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      std::vector<llvm::jitlink::Block *>::__move_assign(a4 + 24, (v5 + 24));
      a4 += 48;
      v5 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t _GLOBAL__sub_I_AutoUpgrade_cpp()
{
  v0 = llvm::cl::Option::Option(&DisableAutoUpgradeDebugInfo, 0, 0);
  byte_2815AC380 = 0;
  qword_2815AC388 = &unk_2883EAB68;
  unk_2815AC390 = 0;
  DisableAutoUpgradeDebugInfo = &unk_2883EAB00;
  qword_2815AC398 = &unk_2883EA848;
  qword_2815AC3A0 = &unk_2883EAB88;
  qword_2815AC3B8 = &qword_2815AC3A0;
  llvm::cl::Option::setArgStr(v0, "disable-auto-upgrade-debug-info", 0x1FuLL);
  qword_2815AC320 = "Disable autoupgrade of debug info";
  unk_2815AC328 = 33;
  llvm::cl::Option::addArgument(&DisableAutoUpgradeDebugInfo, v1);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &DisableAutoUpgradeDebugInfo, &dword_274E5C000);
}

void llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(void *result, uint64_t a2)
{
  *(a2 + 40) = result - 5;
  *(result - 11) &= ~0x8000u;
  if ((*(a2 + 23) & 0x10) != 0)
  {
    v2 = result[2];
    if (v2)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        llvm::ValueSymbolTable::reinsertValue(v3, a2);
      }
    }
  }
}

uint64_t llvm::SymbolTableListTraits<llvm::Instruction>::removeNodeFromList(uint64_t result, llvm::Value *this)
{
  *(this + 5) = 0;
  if ((*(this + 23) & 0x10) != 0)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        ValueName = llvm::Value::getValueName(this);
        v5 = *ValueName;
        v6 = (ValueName + *(v3 + 20));

        return llvm::StringMapImpl::RemoveKey(v3, v6, v5);
      }
    }
  }

  return result;
}

uint64_t llvm::BasicBlock::BasicBlock(uint64_t a1, void *a2, const char **a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2 + 1632;
  *(a1 + 8) = 0;
  v7 = *(a1 + 20);
  *(a1 + 24) = 0;
  v8 = a1 + 24;
  *(a1 + 16) = 22;
  *(a1 + 20) = v7 & 0xC0000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  if (a4)
  {
    if (a5)
    {
      v9 = (a5 + 24);
    }

    else
    {
      v9 = (a4 + 72);
    }

    llvm::SymbolTableListTraits<llvm::BasicBlock>::addNodeToList(a4 + 72, a1);
    v10 = *v9;
    *(a1 + 24) = *v9;
    *(a1 + 32) = v9;
    *(v10 + 8) = v8;
    *v9 = v8;
  }

  llvm::Value::setName(a1, a3);
  return a1;
}

void llvm::BasicBlock::~BasicBlock(llvm::BasicBlock *this, llvm::Value *i)
{
  if ((*(this + 9) & 0x7FFF) != 0)
  {
    v3 = llvm::ConstantInt::get(***this + 1992, 1, 0);
    v4 = *(this + 1);
    if (v4)
    {
      v5 = v3;
      do
      {
        v6 = *(v4 + 24);
        FoldedCast = getFoldedCast(0x30, v5, *v6, 0);
        llvm::Value::doRAUW(v6, FoldedCast, 1);
        llvm::Constant::destroyConstant(v6, v8, v9, v10);
        v4 = *(this + 1);
      }

      while (v4);
    }
  }

  v11 = (this + 40);
  v12 = *(this + 6);
  if (v12 != (this + 40))
  {
    do
    {
      if (v12)
      {
        v13 = v12 - 24;
      }

      else
      {
        v13 = 0;
      }

      llvm::User::dropAllReferences(v13);
      v12 = *(v12 + 1);
    }

    while (v12 != v11);
    i = *(this + 6);
    if (i != v11)
    {
      do
      {
        i = llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(this + 40, i);
      }

      while (i != v11);
        ;
      }
    }
  }

  llvm::Value::~Value(this, i);
}

void llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>(void *result, void *a2, uint64_t a3)
{
  v4 = result[2];
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  *a2 = a3;
  v6 = result[2];
  if (v6)
  {
    v7 = *(v6 + 104);
  }

  else
  {
    v7 = 0;
  }

  if (v5 != v7 && *result != result)
  {
    if (v5)
    {
      for (i = result[1]; i != result; i = i[1])
      {
        if (i)
        {
          v9 = (i - 3);
        }

        else
        {
          v9 = 0;
        }

        if ((*(v9 + 23) & 0x10) != 0)
        {
          ValueName = llvm::Value::getValueName(v9);
          llvm::StringMapImpl::RemoveKey(v5, (ValueName + *(v5 + 20)), *ValueName);
        }
      }
    }

    if (v7)
    {
      for (j = result[1]; j != result; j = j[1])
      {
        if (j)
        {
          v12 = (j - 3);
        }

        else
        {
          v12 = 0;
        }

        if ((*(v12 + 23) & 0x10) != 0)
        {
          llvm::ValueSymbolTable::reinsertValue(v7, v12);
        }
      }
    }
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 24);
  if (a2)
  {
    v4 = a2 - 24;
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::BasicBlock>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  llvm::BasicBlock::~BasicBlock(v3, v7);
  MEMORY[0x277C69E40]();
  return v2;
}

void llvm::BasicBlock::moveBefore(llvm::BasicBlock *this, llvm::BasicBlock *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    v3 = (this + 24);
    if (v2 != (a2 + 24) && v3 != v2)
    {
      llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(*(a2 + 7) + 72, a2 + 3, *(this + 7) + 72, v3, v2);
    }
  }
}

uint64_t llvm::BasicBlock::getSinglePredecessor(llvm::BasicBlock *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 24);
    v3 = *(v2 + 16);
    v4 = v2 && v3 >= 0x1C;
    if (v4 && v3 - 29 < 0xB)
    {
      break;
    }

    v1 = *(v1 + 8);
    if (!v1)
    {
      return 0;
    }
  }

  result = *(v2 + 40);
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      break;
    }

    v7 = *(v1 + 24);
    v8 = *(v7 + 16);
    if (v7)
    {
      v9 = v8 >= 0x1C;
    }

    else
    {
      v9 = 0;
    }

    if (v9 && v8 - 29 < 0xB)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::BasicBlock::getUniquePredecessor(llvm::BasicBlock *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 24);
    v3 = *(v2 + 16);
    v4 = v2 && v3 >= 0x1C;
    if (v4 && v3 - 29 < 0xB)
    {
      break;
    }

    v1 = *(v1 + 8);
    if (!v1)
    {
      return 0;
    }
  }

  v7 = *(v2 + 40);
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      break;
    }

    v8 = *(v1 + 24);
    v9 = *(v8 + 16);
    if (v8)
    {
      v10 = v9 >= 0x1C;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && v9 - 29 <= 0xA)
    {
      if (*(v8 + 40) != v7)
      {
        return 0;
      }

      while (1)
      {
        v1 = *(v1 + 8);
        if (!v1)
        {
          break;
        }

        v12 = *(v1 + 24);
        v13 = *(v12 + 16);
        if (v12)
        {
          v14 = v13 >= 0x1C;
        }

        else
        {
          v14 = 0;
        }

        if (v14 && v13 - 29 < 0xB)
        {
          result = 0;
          if (*(v12 + 40) != v7)
          {
            return result;
          }
        }
      }

      return v7;
    }
  }

  return v7;
}

llvm::PHINode *llvm::BasicBlock::replaceSuccessorsPhiUsesWith(llvm::BasicBlock *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v5 = *(this + 5);
  result = (this + 40);
  v4 = v5;
  if (v5 != result)
  {
    v6 = (v4 - 24);
    if (v4)
    {
      v7 = v4 - 24;
    }

    else
    {
      v7 = 0;
    }

    if (*(v7 + 16) - 29 <= 0xA)
    {
      result = llvm::Instruction::getNumSuccessors(v6);
      if (result)
      {
        v10 = result;
        for (i = 0; i != v10; ++i)
        {
          Successor = llvm::Instruction::getSuccessor(v6, i);
          result = llvm::BasicBlock::replacePhiUsesWith(Successor, a2, a3);
        }
      }
    }
  }

  return result;
}

llvm::PHINode *llvm::BasicBlock::replacePhiUsesWith(llvm::PHINode *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v3 = this + 40;
  v4 = *(this + 6);
  if (v4 != this + 40)
  {
    do
    {
      this = (v4 - 24);
      if (v4)
      {
        v7 = v4 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (!v4)
      {
        break;
      }

      if (v7[16] != 83)
      {
        break;
      }

      this = llvm::PHINode::replaceIncomingBlockWith(this, a2, a3);
      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  return this;
}

uint64_t llvm::PHINode::replaceIncomingBlockWith(uint64_t this, const llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v3 = *(this + 20);
  v4 = v3 & 0x7FFFFFF;
  if ((v3 & 0x7FFFFFF) != 0)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      v7 = *(this + 20);
      if ((v7 & 0x40000000) != 0)
      {
        v8 = *(this - 8);
      }

      else
      {
        v8 = this - 32 * (v7 & 0x7FFFFFF);
      }

      v9 = *(this + 60);
      if (*(v8 + 32 * v9 + v5) == a2)
      {
        *(v8 + 32 * v9 + v5) = a3;
      }

      v5 += 8;
    }

    while (v6 != v5);
  }

  return this;
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::addNodeToList(uint64_t a1, uint64_t a2)
{
  llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>((a2 + 40), (a2 + 56), a1 - 72);
  if ((*(a2 + 23) & 0x10) != 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      llvm::ValueSymbolTable::reinsertValue(v4, a2);
    }
  }
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::removeNodeFromList(uint64_t a1, uint64_t a2)
{
  llvm::SymbolTableListTraits<llvm::Instruction>::setSymTabObject<llvm::Function *>((a2 + 40), (a2 + 56), 0);
  if ((*(a2 + 23) & 0x10) != 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      ValueName = llvm::Value::getValueName(a2);
      v6 = *ValueName;
      v7 = (ValueName + *(v4 + 20));

      llvm::StringMapImpl::RemoveKey(v4, v7, v6);
    }
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 24);
  if (a2)
  {
    v4 = (a2 - 24);
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::Instruction>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  llvm::Value::deleteValue(v3, v7);
  return v2;
}

void anonymous namespace::ErlangGC::~ErlangGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::GCStrategy::~GCStrategy(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::OcamlGC::~OcamlGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::ShadowStackGC::~ShadowStackGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::StatepointGC::~StatepointGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::StatepointGC::isGCManagedPointer(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0xFFFFFF00) == 0x100)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

void anonymous namespace::CoreCLRGC::~CoreCLRGC(void **this)
{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F1168;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::CoreCLRGC::isGCManagedPointer(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0xFFFFFF00) == 0x100)
  {
    return 257;
  }

  else
  {
    return 256;
  }
}

void _GLOBAL__sub_I_BuiltinGCs_cpp()
{
  _MergedGlobals_43 = "erlang";
  unk_2815AA8D0 = 6;
  qword_2815AA8D8 = "erlang-compatible garbage collector";
  unk_2815AA8E0 = 35;
  qword_2815AA8F8 = &_MergedGlobals_43;
  v0 = llvm::Registry<llvm::GCStrategy>::Tail;
  if (!llvm::Registry<llvm::GCStrategy>::Tail)
  {
    v0 = &llvm::Registry<llvm::GCStrategy>::Head;
  }

  *v0 = &qword_2815AA8F0;
  qword_2815AA900 = "ocaml";
  qword_2815AA908 = 5;
  unk_2815AA910 = "ocaml 3.10-compatible GC";
  qword_2815AA918 = 24;
  qword_2815AA930 = &qword_2815AA900;
  qword_2815AA928 = &qword_2815AA960;
  qword_2815AA8F0 = &qword_2815AA928;
  qword_2815AA938 = "shadow-stack";
  qword_2815AA940 = 12;
  unk_2815AA948 = "Very portable GC for uncooperative code generators";
  qword_2815AA950 = 50;
  qword_2815AA968 = &qword_2815AA938;
  qword_2815AA970 = "statepoint-example";
  qword_2815AA978 = 18;
  unk_2815AA980 = "an example strategy for statepoint";
  qword_2815AA988 = 34;
  qword_2815AA9A0 = &qword_2815AA970;
  qword_2815AA9A8 = "coreclr";
  qword_2815AA960 = &qword_2815AA998;
  qword_2815AA9B0 = 7;
  unk_2815AA9B8 = "CoreCLR-compatible GC";
  qword_2815AA9C0 = 21;
  qword_2815AA9D0 = 0;
  qword_2815AA9D8 = &qword_2815AA9A8;
  qword_2815AA998 = &qword_2815AA9D0;
  llvm::Registry<llvm::GCStrategy>::Tail = &qword_2815AA9D0;
}

llvm::Value *llvm::ConstantFoldCastInstruction(llvm *this, llvm::ConstantFP ***a2, llvm::Constant **a3, llvm::Type *a4)
{
  v62[16] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5 == 12)
  {

    return llvm::PoisonValue::get(a3, a2);
  }

  if ((v5 - 11) > 1)
  {
    if (llvm::Constant::isNullValue(a2))
    {
      v9 = *(a3 + 8);
      if (v9 != 10 && this != 50 && v9 != 11)
      {
        goto LABEL_8;
      }
    }

    v10 = *(a2 + 16);
    if (v10 == 5)
    {
      v11 = *(a2 + 9);
      if ((v11 - 38) > 0xC)
      {
        if (this != 50 && v11 == 34 && *(a2 + 17) <= 3u && ((*a2)[1] & 0xFE) != 0x12)
        {
          v53 = *(a2 + 5) & 0x7FFFFFF;
          v54 = v53 - 1;
          if (v53 == 1)
          {
            v55 = 1;
LABEL_100:
            v57 = a2[-4 * v55];

            return llvm::ConstantExpr::getPointerCast(v57, a3, a3);
          }

          v56 = a2 + 4;
          while ((llvm::Constant::isNullValue(v56[-4 * (*(a2 + 5) & 0x7FFFFFF)]) & 1) != 0)
          {
            v56 += 4;
            if (!--v54)
            {
              v55 = *(a2 + 5) & 0x7FFFFFF;
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
        isEliminableCastPair = llvm::CastInst::isEliminableCastPair(v11, this, *a2[-4 * (*(a2 + 5) & 0x7FFFFFF)], *a2, a3, 0, (**a3 + 2016), 0);
        if (isEliminableCastPair)
        {
          v13 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];

          return llvm::ConstantExpr::getCast(isEliminableCastPair, v13, a3, 0);
        }
      }

      v10 = *(a2 + 16);
    }

    v14 = v10 == 15 || v10 == 10;
    if (v14 && (a3[1] & 0xFE) == 0x12 && *(a3 + 8) == *(*a2 + 8))
    {
      v15 = a3[3];
      SplatValue = llvm::Constant::getSplatValue(a2, 0, a3, a4);
      if (SplatValue)
      {
        v18 = *(a3 + 8);
        v19 = *(a3 + 8) == 19;
        Cast = llvm::ConstantExpr::getCast(this, SplatValue, v15, 0);

        return llvm::ConstantVector::getSplat(v18 | (v19 << 32), Cast, v21);
      }

      v60 = v62;
      v61 = 0x1000000000;
      v44 = *(*a2 + 8);
      if (v44)
      {
        v45 = 0;
        v46 = ***a2;
        do
        {
          v47 = llvm::ConstantInt::get((v46 + 1992), v45, 0);
          Element = llvm::ConstantExpr::getExtractElement(a2, v47, 0, v48);
          v50 = llvm::ConstantExpr::getCast(this, Element, v15, 0);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v60, v50);
          v45 = (v45 + 1);
        }

        while (v44 != v45);
        v51 = v60;
        v52 = v61;
      }

      else
      {
        v52 = 0;
        v51 = v62;
      }

      ConstantBytes = llvm::ConstantVector::get(v51, v52, v17);
      if (v60 != v62)
      {
        free(v60);
      }

      return ConstantBytes;
    }

    if (this > 44)
    {
      if (this > 47)
      {
        if (this == 48)
        {
          if (llvm::Constant::isNullValue(a2))
          {

            return llvm::ConstantPointerNull::get(a3);
          }
        }

        else if (this == 49)
        {

          return FoldBitCast(a2, a3, a3, a4);
        }

        return 0;
      }

      if ((this - 45) >= 2)
      {
        if (llvm::Constant::isNullValue(a2))
        {

          return llvm::ConstantInt::get(a3, 0, 0);
        }

        return 0;
      }

      if (v10 != 17)
      {
        return 0;
      }

      llvm::APFloat::Storage::Storage(&v61, (a2 + 4));
      FltSemantics = llvm::Type::getFltSemantics(a3);
      llvm::APFloat::convert(&v60, FltSemantics, 1, &v58);
      ConstantBytes = llvm::ConstantFP::get(**a2, &v60, v27, v28);
    }

    else
    {
      if (this <= 40)
      {
        if (this == 38)
        {
          v40 = *(*a2 + 2);
          if ((v40 & 0xFE) == 0x12)
          {
            return 0;
          }

          v41 = *(a3 + 2);
          if (v10 != 16)
          {
            if (((v41 | v40) & 0x700) == 0)
            {
              ConstantBytes = ExtractConstantBytes(a2, 0, v41 >> 11, a4);
              if (ConstantBytes)
              {
                return ConstantBytes;
              }
            }

            return 0;
          }

          v31 = **a2;
          llvm::APInt::trunc(&v60, (a2 + 3), v41 >> 8);
        }

        else if (this == 39)
        {
          if (v10 != 16)
          {
            return 0;
          }

          v30 = *(a3 + 2) >> 8;
          v31 = **a2;
          llvm::APInt::zext(&v60, (a2 + 3), v30);
        }

        else
        {
          if (v10 != 16)
          {
            return 0;
          }

          v42 = *(a3 + 2) >> 8;
          v31 = **a2;
          llvm::APInt::sext(a2 + 3, v42, &v60);
        }

        v43 = v31;
        goto LABEL_89;
      }

      if ((this - 41) < 2)
      {
        if (v10 == 17)
        {
          LOBYTE(v58) = 0;
          llvm::APInt::APInt(&v60, *(a3 + 2) >> 8, 0, 0);
          BYTE4(v61) = this == 41;
          if (llvm::APFloat::convertToInteger((a2 + 3), &v60, 0, &v58) == 1)
          {
            v25 = llvm::PoisonValue::get(a3, v22);
LABEL_90:
            ConstantBytes = v25;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x277C69E10](v60, 0x1000C8000313F17);
            }

            return ConstantBytes;
          }

          v43 = **a2;
LABEL_89:
          v25 = llvm::ConstantInt::get(v43, &v60, v23, v24);
          goto LABEL_90;
        }

        return 0;
      }

      if (v10 != 16)
      {
        return 0;
      }

      v32 = llvm::Type::getFltSemantics(a3);
      PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(a3);
      if (v33)
      {
      }

      llvm::APInt::APInt(&v58, PrimitiveSizeInBits, 0, 0);
      llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v61, v32, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x277C69E10](v58, 0x1000C8000313F17);
      }

      llvm::APFloat::convertFromAPInt(&v60, a2 + 3, this == 44, 1, v36, v37);
      ConstantBytes = llvm::ConstantFP::get(**a2, &v60, v38, v39);
    }

    llvm::APFloat::Storage::~Storage(&v61);
    return ConstantBytes;
  }

  if (this <= 0x2C && ((1 << this) & 0x198000000000) != 0)
  {
LABEL_8:

    return llvm::Constant::getNullValue(a3, a2, a3, a4);
  }

  return llvm::UndefValue::get(a3, a2);
}

uint64_t ****ExtractConstantBytes(uint64_t ****a1, unsigned int a2, unsigned int a3, BOOL a4)
{
  v7 = (8 * a2);
  v8 = (8 * a3);
  v9 = a3 + a2;
  v10 = 8 * (a3 + a2);
  while (1)
  {
    v11 = a1;
    v12 = *(a1 + 16);
    if (v12 != 5)
    {
      if (v12 != 16)
      {
        return 0;
      }

      v36 = *(a1 + 8);
      v66 = v36;
      if (v36 > 0x40)
      {
        operator new[]();
      }

      v37 = a1[3];
      v65 = v37;
      if (a2)
      {
        if (v36 == v7)
        {
          v65 = 0;
        }

        else
        {
          v65 = v37 >> v7;
        }
      }

      llvm::APInt::trunc(&v63, &v65, v8);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x277C69E10](v65, 0x1000C8000313F17);
      }

      v65 = v63;
      v66 = v64;
      a1 = llvm::ConstantInt::get(**a1, &v65, v51, v52);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x277C69E10]();
      }

      return a1;
    }

    v13 = *(a1 + 9);
    if (v13 != 39)
    {
      break;
    }

    v14 = &a1[-4 * (*(a1 + 5) & 0x7FFFFFF)];
    a1 = *v14;
    v15 = **v14;
    v16 = *(v15 + 2);
    if (v7 >= v16 >> 8)
    {
      v47 = llvm::IntegerType::get(**v11, (8 * a3));

      return llvm::Constant::getNullValue(v47, v48, v49, v50);
    }

    v17 = v16 >> 8;
    if (!a2 && v8 == v17)
    {
      return a1;
    }

    if ((v16 & 0x700) != 0 || v10 > v17)
    {
      if (v10 < v17)
      {
        if (a2)
        {
          v19 = llvm::ConstantInt::get(v15, v7, 0);
          a1 = llvm::ConstantExpr::get(0x1A, a1, v19, 0, 0, v20);
        }

        v21 = llvm::IntegerType::get(**v11, v8);

        return getFoldedCast(0x26, a1, v21, 0);
      }

      return 0;
    }
  }

  a1 = 0;
  if (v13 <= 27)
  {
    if (v13 == 25)
    {
      v38 = v11[-4 * (*(v11 + 5) & 0x7FFFFFF) + 4];
      if (v38)
      {
        v39 = *(v38 + 16) == 16;
      }

      else
      {
        v39 = 0;
      }

      if (!v39)
      {
        return 0;
      }

      v40 = *(v38 + 8);
      v66 = v40;
      if (v40 > 0x40)
      {
        operator new[]();
      }

      v41 = v38[3];
      if ((v41 & 7) != 0)
      {
        return 0;
      }

      v42 = v41 >> 3;
      if (v40 == 3)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      if (v43 >= v9)
      {
        v59 = llvm::IntegerType::get(**v11, v8);
        return llvm::Constant::getNullValue(v59, v60, v61, v62);
      }

      else
      {
        if (v43 > a2)
        {
          return 0;
        }

        return ExtractConstantBytes(v11[-4 * (*(v11 + 5) & 0x7FFFFFF)], a2 - v43, a3, a4);
      }
    }

    if (v13 == 26)
    {
      v23 = v11[-4 * (*(v11 + 5) & 0x7FFFFFF) + 4];
      if (v23)
      {
        v24 = *(v23 + 16) == 16;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        return 0;
      }

      v25 = *(*v11 + 2) >> 11;
      v26 = *(v23 + 8);
      v66 = v26;
      if (v26 > 0x40)
      {
        operator new[]();
      }

      v27 = v23[3];
      if ((v27 & 7) != 0)
      {
        return 0;
      }

      v28 = v27 >> 3;
      if (v26 == 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      if (v29 >= v25 - a2)
      {
        v55 = llvm::IntegerType::get(**v11, v8);
        return llvm::Constant::getNullValue(v55, v56, v57, v58);
      }

      else
      {
        if (v29 > v25 - v9)
        {
          return 0;
        }

        return ExtractConstantBytes(v11[-4 * (*(v11 + 5) & 0x7FFFFFF)], v29 + a2, a3, a4);
      }
    }

    return a1;
  }

  if (v13 == 28)
  {
    ConstantBytes = ExtractConstantBytes(v11[-4 * (*(v11 + 5) & 0x7FFFFFF) + 4], a2, a3, a4);
    a1 = ConstantBytes;
    if (!ConstantBytes || (llvm::Constant::isNullValue(ConstantBytes) & 1) != 0)
    {
      return a1;
    }

    v46 = ExtractConstantBytes(v11[-4 * (*(v11 + 5) & 0x7FFFFFF)], a2, a3, v45);
    if (!v46)
    {
      return 0;
    }

    v34 = v46;
    v35 = 28;
  }

  else
  {
    if (v13 != 29)
    {
      return a1;
    }

    v30 = ExtractConstantBytes(v11[-4 * (*(v11 + 5) & 0x7FFFFFF) + 4], a2, a3, a4);
    a1 = v30;
    if (!v30 || *(v30 + 16) == 16 && llvm::APInt::isAllOnes((v30 + 24)))
    {
      return a1;
    }

    v32 = ExtractConstantBytes(v11[-4 * (*(v11 + 5) & 0x7FFFFFF)], a2, a3, v31);
    if (!v32)
    {
      return 0;
    }

    v34 = v32;
    v35 = 29;
  }

  return llvm::ConstantExpr::get(v35, v34, a1, 0, 0, v33);
}

llvm::ConstantFP ***FoldBitCast(uint64_t ***a1, llvm::Type *this, uint64_t a3, BOOL a4)
{
  v43[16] = *MEMORY[0x277D85DE8];
  v40 = a1;
  v5 = *a1;
  if (*a1 == this)
  {
    return a1;
  }

  if (v5)
  {
    v7 = *(v5 + 2) == 15;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = (*(this + 2) ^ *(v5 + 2)) > 0xFF || this == 0;
    v9 = !v8 && *(this + 2) == 15;
    if (v9 && v5[3] && *(this + 3) && llvm::Type::isSized(*v5[2], 0))
    {
      v41 = v43;
      v42 = 0x800000000;
      NullValue = llvm::Constant::getNullValue((**this + 1992), this, a3, a4);
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v41, NullValue);
      v11 = *v5[2];
      if (v11)
      {
        while (1)
        {
          if (v11 == **(this + 2))
          {
            goto LABEL_29;
          }

          v12 = *(v11 + 8);
          if (v12 == 17)
          {
            goto LABEL_25;
          }

          if (v12 != 16)
          {
            break;
          }

          if (!*(v11 + 12))
          {
            goto LABEL_28;
          }

          v13 = *(v11 + 16);
LABEL_26:
          v11 = *v13;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v41, NullValue);
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        if ((v12 & 0xFE) != 0x12)
        {
LABEL_28:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v41, NullValue);
          v11 = 0;
          goto LABEL_29;
        }

LABEL_25:
        v13 = (v11 + 24);
        goto LABEL_26;
      }

LABEL_29:
      v14 = **(this + 2);
      if (v11 == v14)
      {
        NullValue = llvm::ConstantExpr::getGetElementPtr(*v5[2], a1, v41, v42, 1, 0, 0);
      }

      if (v41 != v43)
      {
        free(v41);
      }

      if (v11 == v14)
      {
        return NullValue;
      }
    }
  }

  if (!this || (*(this + 2) & 0xFE) != 0x12)
  {
    v15 = *(a1 + 16);
LABEL_41:
    v17 = *(this + 2);
    if (v15 != 16)
    {
      if (v15 == 17)
      {
        NullValue = 0;
        if (v17 == 13 && *(*a1 + 8) != 6)
        {
          v18 = **a1;
          llvm::APFloat::bitcastToAPInt(&v41, (a1 + 3));
          NullValue = llvm::ConstantInt::get(v18, &v41, v19, v20);
          if (v42 >= 0x41)
          {
            if (v41)
            {
              MEMORY[0x277C69E10](v41, 0x1000C8000313F17);
            }
          }
        }

        return NullValue;
      }

      if (v15 != 19)
      {
        return 0;
      }

      return llvm::ConstantPointerNull::get(this);
    }

    if (v17 != 13)
    {
      if (v17 < 4 || v17 == 5 || (NullValue = 0, (v17 & 0xFFFFFFFD) == 4) && v17 != 6)
      {
        v22 = *this;
        FltSemantics = llvm::Type::getFltSemantics(this);
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v42, FltSemantics, a1 + 3);
        NullValue = llvm::ConstantFP::get(v22, &v41, v24, v25);
        llvm::APFloat::Storage::~Storage(&v42);
      }

      return NullValue;
    }

    return a1;
  }

  v15 = *(a1 + 16);
  if (!*a1 || ((*a1)[1] & 0xFE) != 0x12)
  {
    if ((v15 & 0xFE) == 0x10)
    {
      NullValue = llvm::ConstantVector::get(&v40, 1, a3);
      if (*NullValue == this)
      {
        return NullValue;
      }

      return getFoldedCast(0x31, NullValue, this, 0);
    }

    goto LABEL_41;
  }

  if (v15 == 13)
  {
    return llvm::Constant::getNullValue(this, this, a3, a4);
  }

  if (llvm::Constant::isAllOnesValue(a1, this, a3, a4))
  {
    return llvm::Constant::getAllOnesValue(this, v21);
  }

  if (llvm::Constant::isNullValue(a1))
  {
    return llvm::Constant::getNullValue(this, this, a3, a4);
  }

  if (*(this + 8) == 19)
  {
    return 0;
  }

  v26 = *(this + 8);
  if (v26 != *(*a1 + 8))
  {
    return 0;
  }

  v27 = *(this + 3);
  SplatValue = llvm::Constant::getSplatValue(a1, 0, a3, a4);
  if (SplatValue)
  {
    FoldedCast = SplatValue;
    v31 = *(this + 8) | ((*(this + 8) == 19) << 32);
    if (*SplatValue != v27)
    {
      FoldedCast = getFoldedCast(0x31, SplatValue, v27, 0);
    }

    return llvm::ConstantVector::getSplat(v31, FoldedCast, v29);
  }

  v41 = v43;
  v42 = 0x1000000000;
  if (v26)
  {
    v33 = 0;
    v34 = ***a1;
    do
    {
      v35 = llvm::ConstantInt::get((v34 + 1992), v33, 0);
      Element = llvm::ConstantExpr::getExtractElement(a1, v35, 0, v36);
      if (*Element != v27)
      {
        Element = getFoldedCast(0x31, Element, v27, 0);
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v41, Element);
      v33 = (v33 + 1);
    }

    while (v26 != v33);
    v38 = v41;
    v39 = v42;
  }

  else
  {
    v39 = 0;
    v38 = v43;
  }

  NullValue = llvm::ConstantVector::get(v38, v39, v29);
  if (v41 != v43)
  {
    free(v41);
  }

  return NullValue;
}

llvm::PoisonValue **llvm::ConstantFoldSelectInstruction(llvm *this, llvm::PoisonValue **a2, llvm::PoisonValue **a3, llvm::Constant *a4)
{
  v34[16] = *MEMORY[0x277D85DE8];
  if (llvm::Constant::isNullValue(this))
  {
    return a3;
  }

  if (llvm::Constant::isAllOnesValue(this, v7, v8, v9))
  {
    return a2;
  }

  v13 = *(this + 16);
  if (!this || v13 != 10)
  {
LABEL_29:
    if (v13 == 12)
    {
      return llvm::PoisonValue::get(*a2, v11);
    }

    if ((v13 - 11) <= 1)
    {
      if (*(a2 + 16) - 11 >= 2)
      {
        return a3;
      }

      else
      {
        return a2;
      }
    }

    if (a2 == a3)
    {
      return a2;
    }

    v30 = *(a2 + 16);
    if (v30 != 12)
    {
      v31 = *(a3 + 16);
      if (v31 == 12)
      {
        return a2;
      }

      if ((v30 - 11) > 1)
      {
        goto LABEL_42;
      }

      if ((llvm::ConstantFoldSelectInstruction(llvm::Constant *,llvm::Constant *,llvm::Constant *)::$_0::operator()(a3) & 1) == 0)
      {
        v31 = *(a3 + 16);
LABEL_42:
        if ((v31 - 11) > 1)
        {
          return 0;
        }

        if (llvm::ConstantFoldSelectInstruction(llvm::Constant *,llvm::Constant *,llvm::Constant *)::$_0::operator()(a2))
        {
          return a2;
        }

        return 0;
      }
    }

    return a3;
  }

  v14 = *this;
  v32 = v34;
  v33 = 0x1000000000;
  v15 = *(v14 + 8);
  if (!v15)
  {
    v26 = 0;
    v27 = v34;
LABEL_23:
    v10 = llvm::ConstantVector::get(v27, v26, v12);
    v28 = 1;
    v27 = v32;
    goto LABEL_25;
  }

  v10 = 0;
  v16 = **v14;
  v17 = this;
  do
  {
    v18 = llvm::ConstantInt::get((v16 + 1992), v10, 0);
    Element = llvm::ConstantExpr::getExtractElement(a2, v18, 0, v19);
    v21 = llvm::ConstantInt::get((v16 + 1992), v10, 0);
    v23 = llvm::ConstantExpr::getExtractElement(a3, v21, 0, v22);
    v24 = *(v17 - 4 * (*(this + 5) & 0x7FFFFFF));
    v25 = v24[16];
    if (v25 == 12)
    {
      Element = llvm::PoisonValue::get(*Element, v11);
    }

    else if (Element != v23)
    {
      if ((v25 - 11) > 1)
      {
        if (v25 != 16)
        {
          break;
        }

        if (llvm::Constant::isNullValue(v24))
        {
          Element = v23;
        }
      }

      else if (*(Element + 16) - 11 >= 2)
      {
        Element = v23;
      }
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v32, Element);
    v10 = (v10 + 1);
    v17 = (v17 + 32);
  }

  while (v15 != v10);
  v26 = v33;
  v27 = v32;
  if (v33 == *(v14 + 8))
  {
    goto LABEL_23;
  }

  v28 = 0;
LABEL_25:
  if (v27 != v34)
  {
    free(v27);
  }

  if ((v28 & 1) == 0)
  {
    v13 = *(this + 16);
    goto LABEL_29;
  }

  return v10;
}

uint64_t llvm::ConstantFoldSelectInstruction(llvm::Constant *,llvm::Constant *,llvm::Constant *)::$_0::operator()(llvm::Constant *a1)
{
  v2 = *(a1 + 16);
  if (v2 < 0x14 && ((0xB1029u >> v2) & 1) != 0)
  {
    v3 = 0xB0009u >> v2;
  }

  else
  {
    LOBYTE(v3) = (*(*a1 + 8) & 0xFE) == 0x12 && (llvm::Constant::containsPoisonElement(a1) & 1) == 0 && !llvm::Constant::containsConstantExpression(a1, v4, v5, v6);
  }

  return v3 & 1;
}

llvm::Value *llvm::ConstantFoldExtractElementInstruction(llvm *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Type *a4)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(this + 16);
  if (v5 == 12 || (v7 = *(a2 + 16), (v7 - 11) <= 1))
  {
LABEL_3:
    v8 = *(v4 + 24);

    return llvm::PoisonValue::get(v8, a2);
  }

  if ((v5 - 11) > 1)
  {
    if (v7 == 16)
    {
      if (*(v4 + 8) == 18 && v4 != 0)
      {
        v13 = *(v4 + 32);
        v14 = (a2 + 24);
        v15 = *(a2 + 8);
        if (v15 >= 0x41)
        {
          if (v15 - llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) > 0x40)
          {
            goto LABEL_3;
          }

          v14 = *v14;
        }

        if (*v14 >= v13)
        {
          goto LABEL_3;
        }
      }

      if (v5 == 5)
      {
        v16 = *(this + 9);
        if (v16 == 62)
        {
          v24 = (this - 4 * (*(this + 5) & 0x7FFFFFF))[8];
          if (v24)
          {
            v25 = *(v24 + 16) == 16;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            if (*(v24 + 32) > 0x40u)
            {
              operator new[]();
            }

            v32 = *(v24 + 24);
            LODWORD(v42) = *(v24 + 32);
            v41 = v32;
            BYTE4(v42) = 1;
            if (*(a2 + 8) > 0x40u)
            {
              operator new[]();
            }

            v33 = *(a2 + 3);
            v39 = *(a2 + 8);
            v38 = v33;
            v40 = 1;
            v34 = llvm::APSInt::compareValues(&v41, &v38, a3);
            v36 = v34;
            if (v39 >= 0x41 && v38)
            {
              MEMORY[0x277C69E10](v38, 0x1000C8000313F17);
            }

            if (v42 >= 0x41 && v41)
            {
              MEMORY[0x277C69E10](v41, 0x1000C8000313F17);
            }

            v37 = this - 32 * (*(this + 5) & 0x7FFFFFF);
            if (!v36)
            {
              return *(v37 + 4);
            }

            return llvm::ConstantExpr::getExtractElement(*v37, a2, 0, v35);
          }
        }

        else if (v16 == 34)
        {
          v41 = v43;
          v42 = 0x800000000;
          v17 = *(this + 5);
          v18 = v17 & 0x7FFFFFF;
          if ((v17 & 0x7FFFFFFu) >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v18, 8);
            LODWORD(v18) = *(this + 5) & 0x7FFFFFF;
          }

          if (v18)
          {
            v19 = v18;
            v20 = this;
            while (1)
            {
              Element = *(v20 - 4 * (*(this + 5) & 0x7FFFFFF));
              if ((*(*Element + 8) & 0xFE) == 0x12)
              {
                Element = llvm::ConstantExpr::getExtractElement(*(v20 - 4 * (*(this + 5) & 0x7FFFFFF)), a2, 0, a4);
                if (!Element)
                {
                  break;
                }
              }

              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v41, Element);
              v20 = (v20 + 32);
              if (!--v19)
              {
                goto LABEL_29;
              }
            }

            v23 = 0;
          }

          else
          {
LABEL_29:
            v22 = 24;
            if (*(this + 16) == 62)
            {
              v22 = 64;
            }

            v23 = llvm::ConstantExpr::getWithOperands(this, v41, v42, *(v4 + 24), 0, *(this + v22));
          }

          if (v41 != v43)
          {
            free(v41);
          }

          return v23;
        }
      }

      AggregateElement = llvm::Constant::getAggregateElement(this, a2, a3, a4);
      if (AggregateElement)
      {
        return AggregateElement;
      }

      v29 = (a2 + 24);
      v30 = *(v4 + 32);
      v31 = *(a2 + 8);
      if (v31 >= 0x41)
      {
        if (v31 - llvm::APInt::countLeadingZerosSlowCase(v29) > 0x40)
        {
          return 0;
        }

        v29 = *v29;
      }

      if (*v29 < v30)
      {
        AggregateElement = llvm::Constant::getSplatValue(this, 0, v27, v28);
        if (AggregateElement)
        {
          return AggregateElement;
        }
      }
    }

    return 0;
  }

  v10 = *(v4 + 24);

  return llvm::UndefValue::get(v10, a2);
}

llvm::ConstantExpr *llvm::ConstantFoldInsertElementInstruction(llvm *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v4 = this;
  v24[16] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  if ((v5 - 11) > 1)
  {
    if (*(this + 16) == 13)
    {
      if (llvm::Constant::isNullValue(a2))
      {
        return v4;
      }

      v5 = *(a3 + 16);
    }

    if (v5 != 16)
    {
      return 0;
    }

    v10 = *v4;
    if (*(*v4 + 8) == 19)
    {
      return 0;
    }

    v11 = *(v10 + 8);
    v12 = (a3 + 24);
    v13 = *(a3 + 8);
    v14 = (a3 + 24);
    if (v13 >= 0x41)
    {
      if (v13 - llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) > 0x40)
      {
        goto LABEL_27;
      }

      v14 = *v12;
    }

    if (*v14 < v11)
    {
      v22 = v24;
      v23 = 0x1000000000;
      if (v11 >= 0x11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v11, 8);
        v10 = *v4;
        v13 = *(a3 + 8);
      }

      if (v13 >= 0x41)
      {
        v12 = *v12;
      }

      v15 = 0;
      v16 = **v10;
      v17 = *v12;
      do
      {
        Element = a2;
        if (v17 != v15)
        {
          v19 = llvm::ConstantInt::get(v16 + 1992, v15, 0);
          Element = llvm::ConstantExpr::getExtractElement(v4, v19, 0, v20);
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v22, Element);
        ++v15;
      }

      while (v11 != v15);
      v4 = llvm::ConstantVector::get(v22, v23, v21);
      if (v22 != v24)
      {
        free(v22);
      }

      return v4;
    }

LABEL_27:
    v6 = v10;
    goto LABEL_3;
  }

  v6 = *this;
LABEL_3:

  return llvm::PoisonValue::get(v6, a2);
}

llvm::Value *llvm::ConstantFoldShuffleVectorInstruction(llvm::ConstantExpr *a1, llvm::ConstantExpr *a2, llvm::Constant *a3, _BOOL8 a4)
{
  LODWORD(v4) = a4;
  v35[32] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 24);
  if (a4)
  {
    v8 = a3;
    v11 = 4 * a4;
    v12 = 4 * a4;
    v13 = a3;
    while (*v13 == -1)
    {
      v13 = (v13 + 4);
      v12 -= 4;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v17 = a3;
    do
    {
      if (*v17)
      {
        goto LABEL_17;
      }

      v17 = (v17 + 4);
      v11 -= 4;
    }

    while (v11);
    v18 = llvm::ConstantInt::get((**v5 + 1992), 0, 0);
    Element = llvm::ConstantExpr::getExtractElement(a1, v18, 0, v19);
    if (llvm::Constant::isNullValue(Element))
    {
      llvm::VectorType::get(v7, (v4 | ((v6 == 19) << 32)), a3);

      return llvm::ConstantAggregateZero::get(v21, v22);
    }

    if (v6 == 19)
    {
      v6 = *(v5 + 8);
LABEL_17:
      if (v6 == 19)
      {
        return 0;
      }

      v24 = *(v5 + 32);
      v33 = v35;
      v34 = 0x2000000000;
      v4 = v4;
      if (v4)
      {
        do
        {
          v26 = *v8;
          v8 = (v8 + 4);
          v25 = v26;
          if (v26 == -1 || v25 >= 2 * v24)
          {
            v30 = llvm::UndefValue::get(v7, v25);
          }

          else
          {
            if (v25 >= v24)
            {
              v27 = llvm::ConstantInt::get((***a2 + 1992), (v25 - v24), 0);
              v29 = a2;
            }

            else
            {
              v27 = llvm::ConstantInt::get((***a1 + 1992), v25, 0);
              v29 = a1;
            }

            v30 = llvm::ConstantExpr::getExtractElement(v29, v27, 0, v28);
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v33, v30);
          --v4;
        }

        while (v4);
        v31 = v33;
        v32 = v34;
      }

      else
      {
        v32 = 0;
        v31 = v35;
      }

      v23 = llvm::ConstantVector::get(v31, v32, a3);
      if (v33 != v35)
      {
        free(v33);
      }

      return v23;
    }

    return llvm::ConstantVector::getSplat(v4, Element, a3);
  }

  else
  {
LABEL_5:
    llvm::VectorType::get(*(*a1 + 24), (a4 | ((v6 == 19) << 32)), a3);

    return llvm::UndefValue::get(v14, v15);
  }
}

llvm::Value *llvm::ConstantFoldInsertValueInstruction(llvm::Constant *a1, llvm::Value *a2, _DWORD *a3, _BOOL8 a4)
{
  v21[32] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = *a1;
    v8 = *(v7 + 8);
    if (v7)
    {
      v9 = v8 == 16;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(v7 + 12);
    }

    else
    {
      v10 = *(v7 + 32);
    }

    v19 = v21;
    v20 = 0x2000000000;
    if (v10)
    {
      v11 = 0;
      v12 = a4 - 1;
      while (1)
      {
        AggregateElement = llvm::Constant::getAggregateElement(a1, v11, a3, a4);
        if (!AggregateElement)
        {
          break;
        }

        inserted = AggregateElement;
        if (v11 == *a3)
        {
          inserted = llvm::ConstantFoldInsertValueInstruction(AggregateElement, a2, a3 + 1, v12);
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v19, inserted);
        v11 = (v11 + 1);
        if (v10 == v11)
        {
          v7 = *a1;
          v8 = *(*a1 + 8);
          v15 = v19;
          v16 = v20;
          goto LABEL_16;
        }
      }

      a2 = 0;
    }

    else
    {
      v16 = 0;
      v15 = v21;
LABEL_16:
      if (v8 == 16)
      {
        v17 = llvm::ConstantStruct::get(v7, v15, v16);
      }

      else
      {
        v17 = llvm::ConstantArray::get(v7, v15, v16);
      }

      a2 = v17;
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a2;
}