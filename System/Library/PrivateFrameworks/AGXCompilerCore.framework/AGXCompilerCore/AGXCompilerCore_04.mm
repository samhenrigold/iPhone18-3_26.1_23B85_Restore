uint64_t AGCLLVMTargetLowerer::buildFClamp(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*(a4 + 16) == 17)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (a3 && *(a3 + 16) == 17 && ((v10 = *(a3 + 32), llvm::APFloatBase::PPCDoubleDouble(a1) == v10) ? (v11 = *(a3 + 40)) : (v11 = a3 + 24), (*(v11 + 28) & 7) == 3 ? (v12 = v9 == 0) : (v12 = 1), !v12 && (v28 = 0, v13 = llvm::detail::IEEEFloat::IEEEFloat(v29, 1.0), v14 = llvm::APFloatBase::IEEEdouble(v13), MEMORY[0x20F330F50](v30, v29, v14), llvm::detail::IEEEFloat::~IEEEFloat(v29), llvm::APFloat::convert(), isExactlyValue = llvm::ConstantFP::isExactlyValue(), llvm::APFloat::Storage::~Storage(v30), isExactlyValue)))
  {
    v25 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (v8 + 8));
    v27 = *(v8 + 104);
    v16 = (*(*v8 + 40))(v8, &v25, a2, *(a1 + 40));
    if (v26)
    {
LABEL_19:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v22 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (v8 + 8));
    v24 = *(v8 + 104);
    v17 = (*(*v8 + 56))(v8, &v22, a2, a3, *(a1 + 40));
    if (v23)
    {
      llvm::MetadataTracking::untrack();
    }

    v19 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (v8 + 8));
    v21 = *(v8 + 104);
    v16 = (*(*v8 + 48))(v8, &v19, v17, a4, *(a1 + 40));
    if (v20)
    {
      goto LABEL_19;
    }
  }

  return v16;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildFMin(llvm::ConstantInt **a1, uint64_t a2, llvm::UndefValue **a3, llvm::FixedVectorType **a4)
{
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  v8 = AGCLLVMGen3TargetLowerer::buildFMinFMax(a1, &v10, a3, a4, a1[318], a1[319]);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

void llvm::APFloat::Storage::~Storage(llvm::APFloat::Storage *this)
{
  v2 = *this;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {
      v4 = v3 - 16;
      v5 = *(v3 - 8);
      if (v5)
      {
        v6 = (v3 + 32 * v5 - 24);
        v7 = -32 * v5;
        do
        {
          llvm::APFloat::Storage::~Storage(v6);
          v6 = (v8 - 32);
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x20F331DA0](v4, 0x1072C801E5F02E8);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(this);
  }
}

llvm::Value *AGCLLVMTargetLowerer::buildSaturate(uint64_t a1, uint64_t a2, llvm::Value *a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
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

  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v8 = *(a2 + 24);
  v20 = v8;
  v21 = a4;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    *v29 = 0u;
    v30 = 0u;
    AGCLLVMBuilder::unboxVector(a1, a3, v29);
    v9 = *(*a3 + 32);
    if (v9)
    {
      v10 = 0;
      InsertElement = 0;
      do
      {
        v12 = v29[v10];
        v25 = v18;
        v26 = v19;
        if (v19)
        {
          llvm::MetadataTracking::track();
        }

        v27 = v20;
        if (v21 == 1 && *(a1 + 1984) != 1)
        {
          v13 = 1320;
        }

        else
        {
          v13 = 1312;
        }

        v14 = AGCLLVMTargetLowerer::CallFPIntrinsic(a1, &v25, v12, *(a1 + v13));
        if (v26)
        {
          llvm::MetadataTracking::untrack();
        }

        if (!InsertElement)
        {
          llvm::FixedVectorType::get();
          InsertElement = llvm::UndefValue::get();
        }

        v28 = 257;
        v15 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v14, v15, &v25);
        ++v10;
      }

      while (v9 != v10);
    }

    else
    {
      InsertElement = 0;
    }

    goto LABEL_32;
  }

  v25 = v18;
  v26 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v27 = v20;
    if ((a4 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v27 = v8;
    if (!a4)
    {
LABEL_28:
      v16 = 1312;
      goto LABEL_30;
    }
  }

  if (*(a1 + 1984) == 1)
  {
    goto LABEL_28;
  }

  v16 = 1320;
LABEL_30:
  InsertElement = AGCLLVMTargetLowerer::CallFPIntrinsic(a1, &v25, a3, *(a1 + v16));
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

LABEL_32:
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  return InsertElement;
}

llvm::Instruction *AGCLLVMTargetLowerer::CallFPIntrinsic(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v30 = a3;
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a3;
  std::string::basic_string[abi:nn200100]<0>(&v26, a4);
  std::string::append(&v26, ".");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v25, *(v8 + 32));
    v10 = std::string::insert(&v25, 0, "v");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v23 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v23 >= 0)
    {
      v13 = HIBYTE(v23);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v26, v12, v13);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(a1 + 168))
  {
    v16 = "f32";
  }

  else
  {
    v16 = "f16";
  }

  std::string::append(&v26, v16);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v26;
  }

  else
  {
    v17 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v17, size, v8, v8);
  v24 = 257;
  v20 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v19 + 24), v19, &v30, 1, __p);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t AGCLLVMBuilder::combineRGBA(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value *a3, BOOL a4)
{
  v6 = AGCLLVMBuilder::extendVector(this, a2, 4, a4);
  v10 = 257;
  v7 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((this + 1), v6, a3, v7, v9);
}

llvm::Value *AGCLLVMBuilder::extendVector(llvm::ConstantInt **this, llvm::Value *a2, llvm::Type *a3, BOOL a4)
{
  v4 = a2;
  v18 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) != 0x12)
  {
    llvm::FixedVectorType::get();
    v9 = llvm::UndefValue::get();
    v13 = 257;
    v10 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateInsertElement((this + 1), v9, v4, v10, v12);
  }

  if (*(*a2 + 32) != a3)
  {
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v16 = llvm::ConstantInt::get();
    v17 = llvm::ConstantInt::get();
    v6 = llvm::ConstantVector::get();
    v7 = llvm::UndefValue::get();
    v13 = 257;
    return llvm::IRBuilderBase::CreateShuffleVector((this + 1), v4, v7, v6, v12);
  }

  return v4;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromState(llvm::ConstantInt **a1, uint64_t a2, unsigned int *a3, uint64_t a4, llvm::Value *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *a2;
  v32 = *(a2 + 16);
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v33 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v31);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = llvm::ConstantInt::get();
  v30 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), a5, v15, v29);
  v17 = *(a6 + 8);
  v18 = a6;
  if ((v17 & 0xFE) == 0x12)
  {
    v18 = **(a6 + 16);
    v17 = *(v18 + 8);
  }

  if ((v17 & 0xFFFFF0FF) == 0xD)
  {
    v18 = a1[24];
  }

  if (*(a6 + 32) >= a3[1])
  {
    v19 = a3[1];
  }

  else
  {
    v19 = *(a6 + 32);
  }

  if (v19 - 2 <= 2)
  {
    v18 = llvm::FixedVectorType::get();
  }

  v28 = v18;
  v20 = *a3;
  v27[0] = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(*a3, *(a3 + 16));
  v27[1] = v20;
  v27[2] = ~(-1 << v19);
  v27[3] = v19;
  v21 = (*(*a1 + 211))(a1, v27, *(a3 + 4), a4, v18, Mul, 0, 0, a7, a8, *(a3 + 18));
  v23 = AGCLLVMBuilder::extendVector(a1, v21, *(a6 + 32), v22);
  if ((*a3 & 0xFFFFFFFE) == 4)
  {
    v24 = a1[40];
    v30 = 257;
    return llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v23, v24, v29);
  }

  return v23;
}

uint64_t llvm::IRBuilderBase::CreateMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 88))(*(this + 9));
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

uint64_t AGCLLVMGen3TargetLowerer::getUSCFormatFromState(AGCLLVMGen3TargetLowerer *this, int a2)
{
  v2 = this - 1;
  result = 5;
  switch(v2)
  {
    case 0:
      result = 10;
      break;
    case 1:
      return result;
    case 2:
      if (a2)
      {
        result = 10;
      }

      else
      {
        result = 4;
      }

      break;
    case 5:
      result = 7;
      break;
    case 6:
      result = 6;
      break;
    case 7:
    case 8:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 17:
    case 21:
      result = 1;
      break;
    case 9:
    case 10:
    case 16:
      result = 2;
      break;
    case 18:
      result = 8;
      break;
    case 19:
      result = 13;
      break;
    case 20:
      result = 12;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer *a1, unsigned __int16 *a2, __int16 a3, uint64_t a4, llvm::Type ***a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v15 = 0;
  v52 = a3;
  v50 = a6;
  v51 = a4;
  v48 = a8;
  v49 = a7;
  v16 = 0;
  v17 = 0;
  if (a4 && a6)
  {
    if (*(a6 + 16) == 16 && *(a4 + 16) == 16)
    {
      v19 = (a6 + 24);
      if (*(a6 + 32) >= 0x41u)
      {
        v19 = *v19;
      }

      v17 = *v19;
      v20 = (a4 + 24);
      if (*(a4 + 32) >= 0x41u)
      {
        v20 = *v20;
      }

      v16 = *v20;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  v21 = a11;
  v47 = (*(*a1 + 1672))(a1, *a2, *(a2 + 1), 0, 0, 0);
  v22 = *(a2 + 1);
  v46 = v22;
  if (v47)
  {
    v23 = *(a1 + 19);
    if ((*(v22 + 8) & 0xFE) == 0x12)
    {
      v23 = llvm::FixedVectorType::get();
    }

    v46 = v23;
  }

  v45 = a7 != 0;
  v24 = *(a1 + 24);
  LOWORD(v37) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a6, v24, v36);
  v43[0] = a1;
  v43[1] = &v46;
  v43[2] = a2;
  v43[3] = &v49;
  v43[4] = &a10;
  v43[5] = &v45;
  v43[6] = &v48;
  v43[7] = &Cast;
  v43[8] = &v47;
  v36[0] = a1;
  v36[1] = &v49;
  v36[2] = &a10;
  v36[3] = &v45;
  v37 = &v52;
  v38 = a2;
  v39 = &v50;
  v40 = &v51;
  v41 = &v48;
  p_Cast = &Cast;
  if (((v15 | v21) & 1) == 0)
  {
    v34 = "OffsetLessThanSize_Read";
    v35 = 259;
    operator new();
  }

  llvm::UndefValue::get();
  if (v17 < v16)
  {
    v25 = v15;
  }

  else
  {
    v25 = 0;
  }

  if ((v25 & 1) != 0 || v21)
  {
    v31 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 8));
    v33 = *(a1 + 26);
    v27 = llvm::ConstantInt::get();
    v28 = (*(*a1 + 1680))(a1, &v31, v27, a9);
    if (v32)
    {
      llvm::MetadataTracking::untrack();
    }

    v26 = AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(v43, v28);
  }

  else
  {
    v26 = AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_1::operator()(v36);
  }

  return AGCLLVMGen3TargetLowerer::reconcileLLVMReadIntrinsicResultWithIR(a1, a5, *(a2 + 1), v26);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
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

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v24[7] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  std::string::basic_string[abi:nn200100]<0>(&v17, *(*a1 + 1632));
  AGCLLVMGen3TargetLowerer::getReadSuffix(&__p, v4, *a1[1], *(a1[2] + 6));
  v23[0] = v24;
  v23[1] = 0x700000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  v20 = v22;
  v21 = 0x700000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, a2);
  v5 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, v5);
  v6 = *a1[3];
  if (!v6)
  {
    v6 = *a1[4];
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, v6);
  v7 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, v7);
  if (*a1[6])
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 240));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, *a1[6]);
    std::string::append(&v17, "coords.");
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, *a1[7]);
  v8 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, v8);
  v9 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v20, v9);
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

  std::string::append(&v17, p_p, size);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v19 = 257;
  v13 = llvm::IRBuilderBase::CreateCall((v4 + 8), *(v12 + 24), v12, v20, v21, v18);
  v18[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v14 = AGCLLVMGen3TargetLowerer::convertFromF16(v4, v13, *a1[8]);
  if (v20 != v22)
  {
    free(v20);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v14;
}

void AGCLLVMGen3TargetLowerer::getReadSuffix(std::string *this, llvm::Type *a2, uint64_t a3, int a4)
{
  v5 = AGCLLVMGen3TargetLowerer::getReadSuffix(llvm::Type *,unsigned short)::num_str[a4];
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    a3 = **(a3 + 16);
  }

  if (*(a2 + 24) == a3)
  {
    v6 = "i16";
  }

  else if (*(a2 + 25) == a3)
  {
    v6 = "i32";
  }

  else if (*(a2 + 19) == a3)
  {
    v6 = "f16";
  }

  else
  {
    v6 = "f32";
  }

  std::string::basic_string[abi:nn200100]<0>(&v8, v6);
  v7 = std::string::insert(&v8, 0, v5);
  *this = *v7;
  v7->__r_.__value_.__r.__words[0] = 0;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

llvm::Value *AGCLLVMGen3TargetLowerer::convertFromF16(llvm::FixedVectorType **this, llvm::Value *a2, unsigned int a3)
{
  if (!a3)
  {
    return a2;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = *(*a2 + 32);
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v17 = 257;
        v8 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v8, v16);
        v10 = this[21];
        v15[16] = 257;
        FPExt = llvm::IRBuilderBase::CreateFPExt((this + 1), Element, v10, v15);
        v17 = 257;
        v12 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), InsertElement, FPExt, v12, v16);
      }
    }
  }

  else
  {
    v13 = this[21];
    v17 = 257;
    return llvm::IRBuilderBase::CreateFPExt((this + 1), a2, v13, v16);
  }

  return InsertElement;
}

llvm::Value *AGCLLVMGen3TargetLowerer::reconcileLLVMReadIntrinsicResultWithIR(llvm::ConstantInt **this, llvm::Type ***a2, llvm::Type *a3, llvm::Value *a4)
{
  v6 = a2;
  v7 = *(a2 + 8);
  if (v7 == 15)
  {
    v8 = a2[2];
    v6 = *v8;
    v7 = *(*v8 + 8);
  }

  if ((v7 & 0xFE) == 0x12)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a3 + 2);
  if ((v10 & 0xFE) == 0x12)
  {
    v11 = *(a3 + 8);
  }

  else
  {
    v11 = 1;
  }

  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v6);
  v13 = llvm::Type::getScalarSizeInBits(a3);
  if ((v7 & 0xFE) == 0x12)
  {
    v7 = *(*v6[2] + 8);
  }

  if (v7 != 13 || ((v10 & 0xFE) != 0x12 ? (v15 = v10) : (v15 = *(**(a3 + 2) + 8)), v15 != 13 || v13 * v11 != ScalarSizeInBits * v9))
  {
    if (v9 >= v11)
    {
      v16 = this;
      if (v11 >= v9)
      {
        goto LABEL_22;
      }

      v17 = v13;
      v19 = AGCLLVMBuilder::extendVector(this, a4, v9, v14);
      v18 = AGCLLVMBuilder::fillUnwrittenChannels(this, v19, ~(-1 << v11), 0, 0);
    }

    else
    {
      v16 = this;
      v17 = v13;
      v18 = AGCLLVMBuilder::subrangeVector(this, a4, 0, v9, 1);
    }

    a4 = v18;
    v13 = v17;
LABEL_22:
    if (ScalarSizeInBits < v13)
    {
      v23 = 257;
      return llvm::IRBuilderBase::CreateCast((v16 + 1), 38, a4, v6, v22);
    }
  }

  return a4;
}

uint64_t AGCLLVMStatelessFragmentObject::buildBlendEquation(uint64_t *a1, llvm::Value *a2, llvm::ConstantFP **a3, llvm::Value *a4, llvm::Value *a5, uint64_t a6, int a7, int a8, int a9, uint64_t a10, char a11, char a12)
{
  v13 = a6;
  v18 = a12;
  v19 = (a1 + *(*a1 - 24));
  if (a12)
  {
    Element = AGCLLVMBuilder::subrangeVector(v19 + 213, a2, 0, 3, 1);
    v21 = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), a4, 0, 3, 1);
  }

  else
  {
    v57 = 257;
    v22 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v19 + 214), a2, v22, v56);
    v23 = a1 + *(*a1 - 24);
    v57 = 257;
    v24 = llvm::ConstantInt::get();
    v25 = (v23 + 1712);
    v18 = 0;
    v21 = llvm::IRBuilderBase::CreateExtractElement(v25, a4, v24, v56);
  }

  v26 = v21;
  if (a7 == 6)
  {
    v27 = llvm::ConstantFP::get();
    if (v18)
    {
      FMul = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 3, v27, v28);
    }

    else
    {
      FMul = v27;
    }

    goto LABEL_10;
  }

  FMul = Element;
  if ((a7 - 1) >= 2)
  {
LABEL_10:
    v46 = v26;
    v29 = a1 + *(*a1 - 24);
    v30 = AGCLLVMStatelessFragmentObject::buildBlendFactor(a1, a2, a3, a4, a5, v13, a8, a10, a11, v18);
    v57 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul((v29 + 1712), FMul, v30, v56);
    v31 = a1 + *(*a1 - 24);
    v32 = AGCLLVMStatelessFragmentObject::buildBlendFactor(a1, a2, a3, a4, a5, v13, a9, a10, a11, v18);
    v57 = 257;
    v26 = llvm::IRBuilderBase::CreateFMul((v31 + 1712), v46, v32, v56);
  }

  v33 = 0;
  if (a7 > 3)
  {
    if (a7 == 4)
    {
      v39 = a1 + *(*a1 - 24);
      v57 = 257;
      v40 = (v39 + 1712);
      v41 = FMul;
      v34 = v26;
    }

    else
    {
      v34 = FMul;
      if (a7 != 5)
      {
        if (a7 == 6)
        {
LABEL_19:
          v35 = a1 + *(*a1 - 24);
          v57 = 257;
          return llvm::IRBuilderBase::CreateFAdd((v35 + 1712), v34, v26, v56);
        }

        return v33;
      }

      v44 = a1 + *(*a1 - 24);
      v57 = 257;
      v40 = (v44 + 1712);
      v41 = v26;
    }

    return llvm::IRBuilderBase::CreateFSub(v40, v41, v34, v56);
  }

  if (a7 == 1)
  {
    v37 = a1 + *(*a1 - 24);
    v38 = *(v37 + 271);
    v53 = *(v37 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (v37 + 1712));
    v55 = *(v37 + 452);
    v33 = (*(*v38 + 48))(v38, &v53, FMul, v26, 0);
    if (!v54)
    {
      return v33;
    }

LABEL_24:
    llvm::MetadataTracking::untrack();
    return v33;
  }

  if (a7 != 2)
  {
    v34 = FMul;
    if (a7 != 3)
    {
      return v33;
    }

    goto LABEL_19;
  }

  v42 = a1 + *(*a1 - 24);
  v43 = *(v42 + 271);
  v50 = *(v42 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v51, (v42 + 1712));
  v52 = *(v42 + 452);
  v33 = (*(*v43 + 56))(v43, &v50, FMul, v26, 0);
  if (v51)
  {
    goto LABEL_24;
  }

  return v33;
}

llvm::FixedVectorType **AGCLLVMStatelessFragmentObject::buildBlendFactor(uint64_t *a1, llvm::Type **a2, llvm::ConstantFP **a3, llvm::ConstantFP **a4, llvm::Value *a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  v12 = a3;
  if ((a7 & 0xFFFFFFFC) == 0xC)
  {
    if (a6)
    {
      GlobalVariable = llvm::Module::getGlobalVariable();
      if (!GlobalVariable)
      {
        GlobalVariable = llvm::User::operator new(0x58);
        v89[0] = "agc.blend_color";
        v90 = 259;
        llvm::GlobalVariable::GlobalVariable();
        llvm::GlobalObject::setSection();
        v17 = a1 + *(*a1 - 24);
        v18 = *(v17 + 268);
        v19 = AGCLLVMBuilder::buildGlobalMetadata(v17 + 213, GlobalVariable, 0x1Bu, 0);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v18, v19);
      }
    }

    else
    {
      llvm::FixedVectorType::get();
      v79 = llvm::PointerType::get();
      v22 = a1 + *(*a1 - 24);
      v23 = *(v22 + 238);
      v24 = llvm::ConstantInt::get();
      v90 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v22 + 1712), v23, a5, v24, v89);
      v88 = 257;
      GlobalVariable = llvm::IRBuilderBase::CreatePointerCast(v22 + 214, GEP, v79, v87, v26);
    }

    v27 = a1 + *(*a1 - 24);
    v28 = *(v27 + 252);
    v90 = 257;
    llvm::Type::isOpaquePointerTy(*GlobalVariable);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v27 + 214, v28, GlobalVariable, 0, v89);
    v30 = a1 + *(*a1 - 24);
    v31 = *(v30 + 271);
    v84 = *(v30 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v85, (v30 + 1712));
    v86 = *(v30 + 452);
    v32 = AGCLLVMTargetLowerer::buildClampColor(v31, &v84, AlignedLoad, a8, 0);
    if (v85)
    {
      llvm::MetadataTracking::untrack();
    }

    v20 = AGCLLVMObject::buildConvertColor(a1 + *(*a1 - 24), v32, *a2, a9, 1, 0);
    v12 = a3;
  }

  else
  {
    v20 = 0;
  }

  switch(a7)
  {
    case 1:
    case 2:
      v50 = llvm::ConstantFP::get();
      goto LABEL_41;
    case 3:
      goto LABEL_24;
    case 4:
      v47 = a1 + *(*a1 - 24);
      v34 = llvm::ConstantFP::get();
      v90 = 257;
      v35 = (v47 + 1712);
      v36 = a2;
      goto LABEL_22;
    case 5:
      v42 = a1 + *(*a1 - 24);
      v90 = 257;
      v43 = llvm::ConstantInt::get();
      v44 = (v42 + 1712);
      v45 = a2;
      goto LABEL_40;
    case 6:
      v37 = a1 + *(*a1 - 24);
      goto LABEL_29;
    case 7:
      v41 = 1;
      a2 = a4;
      if (!a10)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    case 8:
      v48 = a1 + *(*a1 - 24);
      v34 = llvm::ConstantFP::get();
      v90 = 257;
      v35 = (v48 + 1712);
      v36 = a4;
      goto LABEL_22;
    case 9:
      v76 = a1 + *(*a1 - 24);
      v90 = 257;
      v43 = llvm::ConstantInt::get();
      v44 = (v76 + 1712);
      v45 = a4;
      goto LABEL_40;
    case 10:
      v37 = a1 + *(*a1 - 24);
      a2 = a4;
LABEL_29:
      v90 = 257;
      v38 = llvm::ConstantInt::get();
      v39 = (v37 + 1712);
      v40 = a2;
      goto LABEL_35;
    case 11:
      v58 = a1 + *(*a1 - 24);
      v90 = 257;
      v59 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v58 + 1712), a2, v59, v89);
      v61 = a4;
      v62 = Element;
      v63 = a1 + *(*a1 - 24);
      v90 = 257;
      v64 = llvm::ConstantInt::get();
      v65 = llvm::IRBuilderBase::CreateExtractElement((v63 + 1712), v61, v64, v89);
      v66 = llvm::ConstantFP::get();
      v90 = 257;
      FSub = llvm::IRBuilderBase::CreateFSub((v63 + 1712), v66, v65, v89);
      v68 = a1 + *(*a1 - 24);
      v69 = *(v68 + 271);
      v81 = *(v68 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v82, (v68 + 1712));
      v83 = *(v68 + 452);
      v71 = (*(*v69 + 48))(v69, &v81, v62, FSub, 0);
      if (v82)
      {
        llvm::MetadataTracking::untrack();
      }

      v72 = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 4, v71, v70);
      v73 = a1 + *(*a1 - 24);
      v74 = llvm::ConstantFP::get();
      v90 = 257;
      v75 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((v73 + 1712), v72, v74, v75, v89);
      goto LABEL_23;
    case 12:
      v41 = 1;
      a2 = v20;
      if (a10)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    case 13:
      v46 = a1 + *(*a1 - 24);
      v34 = llvm::ConstantFP::get();
      v90 = 257;
      v35 = (v46 + 1712);
      v36 = v20;
      goto LABEL_22;
    case 14:
      v52 = a1 + *(*a1 - 24);
      v90 = 257;
      v43 = llvm::ConstantInt::get();
      v44 = (v52 + 1712);
      v45 = v20;
      goto LABEL_40;
    case 15:
      v37 = a1 + *(*a1 - 24);
      v90 = 257;
      v38 = llvm::ConstantInt::get();
      v39 = (v37 + 1712);
      v40 = v20;
      goto LABEL_35;
    case 16:
      v41 = 1;
      a2 = v12;
      if (a10)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    case 17:
      v33 = a1 + *(*a1 - 24);
      v34 = llvm::ConstantFP::get();
      v90 = 257;
      v35 = (v33 + 1712);
      v36 = v12;
LABEL_22:
      InsertElement = llvm::IRBuilderBase::CreateFSub(v35, v34, v36, v89);
LABEL_23:
      a2 = InsertElement;
LABEL_24:
      v41 = 1;
      if (a10)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    case 18:
      v51 = a1 + *(*a1 - 24);
      v90 = 257;
      v43 = llvm::ConstantInt::get();
      v44 = (v51 + 1712);
      v45 = v12;
LABEL_40:
      v50 = llvm::IRBuilderBase::CreateExtractElement(v44, v45, v43, v89);
      goto LABEL_41;
    case 19:
      v37 = a1 + *(*a1 - 24);
      v90 = 257;
      v38 = llvm::ConstantInt::get();
      v39 = (v37 + 1712);
      v40 = v12;
LABEL_35:
      v56 = llvm::IRBuilderBase::CreateExtractElement(v39, v40, v38, v89);
      v57 = llvm::ConstantFP::get();
      v90 = 257;
      v50 = llvm::IRBuilderBase::CreateFSub((v37 + 1712), v57, v56, v89);
LABEL_41:
      a2 = v50;
      break;
    default:
      a2 = 0;
      break;
  }

  v41 = 0;
  if (a10)
  {
LABEL_43:
    v77 = (a1 + *(*a1 - 24) + 1704);
    if (v41)
    {
      return AGCLLVMBuilder::subrangeVector(v77, a2, 0, 3, 1);
    }

    else
    {
      return AGCLLVMBuilder::splat(v77, 3, a2, a4);
    }
  }

LABEL_32:
  if (v41)
  {
    v53 = a1 + *(*a1 - 24);
    v90 = 257;
    v54 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v53 + 1712), a2, v54, v89);
  }

  return a2;
}

llvm::FixedVectorType **AGCLLVMBuilder::splat(llvm::ConstantInt **this, llvm::ConstantDataVector *a2, llvm::FixedVectorType **a3, BOOL a4)
{
  if (a2 != 1)
  {
    llvm::ConstantInt::get();
    Splat = llvm::ConstantDataVector::getSplat();
    llvm::FixedVectorType::get();
    v7 = llvm::UndefValue::get();
    v13 = 257;
    v8 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), v7, a3, v8, v12);
    v10 = llvm::UndefValue::get();
    v13 = 257;
    return llvm::IRBuilderBase::CreateShuffleVector((this + 1), InsertElement, v10, Splat, v12);
  }

  return a3;
}

uint64_t llvm::IRBuilderBase::CreateFMul(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 18, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::setFPAttrs(a1, v7, *(a1 + 96));
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

void AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, llvm::Value *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14)
{
  v18 = a13;
  v63 = a3;
  v62 = a4;
  v59 = a7;
  v58 = a8;
  v57 = a13;
  if (*(a6 + 16) == 16)
  {
    v19 = a6;
  }

  else
  {
    v19 = 0;
  }

  if (*(a4 + 16) == 16)
  {
    v20 = a4;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (v21)
  {
    v26 = 0;
    v24 = 0;
  }

  else
  {
    v23 = (v19 + 24);
    if (*(v19 + 32) >= 0x41u)
    {
      v23 = *v23;
    }

    v24 = *v23;
    v25 = (v20 + 24);
    if (*(v20 + 32) >= 0x41u)
    {
      v25 = *v25;
    }

    v26 = *v25;
  }

  v27 = a14;
  v28 = a11;
  v29 = *(a1 + 192);
  LOWORD(v49) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a6, v29, v48);
  v31 = AGCLLVMBuilder::extendVector(a1, a5, 4, v30);
  v32 = v31;
  v61 = v31;
  v33 = *(*v31 + 8);
  if ((v33 & 0xFE) == 0x12)
  {
    v33 = *(**(*v31 + 16) + 8);
  }

  if (v33 == 13)
  {
    v34 = v33 >> 8;
    v35 = *(a2 + 1);
    v36 = *(v35 + 8);
    if ((v36 & 0xFE) == 0x12)
    {
      v36 = *(**(v35 + 16) + 8);
    }

    if (v34 >= v36 >> 8)
    {
      v39 = v36 >> 8;
      if (v34 <= v39)
      {
        goto LABEL_30;
      }

      v32 = AGCLLVMBuilder::subrangeVector(a1, v31, 0, 4 / (v34 / v39), 1);
      v35 = *(a2 + 1);
      LOWORD(v49) = 257;
      v37 = a1 + 8;
      v38 = 49;
    }

    else
    {
      LOWORD(v49) = 257;
      v37 = a1 + 8;
      v38 = 39;
    }

    v61 = llvm::IRBuilderBase::CreateCast(v37, v38, v32, v35, v48);
  }

LABEL_30:
  v56[0] = a1;
  v56[1] = a2;
  v56[2] = &v57;
  v56[3] = &v61;
  v56[4] = &v59;
  v56[5] = &a12;
  v56[6] = &v58;
  v56[7] = &a10;
  v56[8] = &Cast;
  v48[0] = a1;
  v48[1] = a2;
  v48[2] = &v57;
  v48[3] = &v61;
  v49 = &v59;
  v50 = &a12;
  v51 = &v58;
  v52 = &v63;
  p_Cast = &Cast;
  v54 = &v62;
  v55 = &a10;
  if (((v22 | v27) & 1) == 0)
  {
    v46 = "OffsetLessThanSize_Write";
    v47 = 259;
    operator new();
  }

  if (v24 < v26)
  {
    v40 = v22;
  }

  else
  {
    v40 = 0;
  }

  if ((v40 & 1) != 0 || v27)
  {
    (*(*a1 + 1672))(a1, *a2, *(a2 + 1), 1, 0, v18);
    v43 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
    v45 = *(a1 + 104);
    v41 = llvm::ConstantInt::get();
    v42 = (*(*a1 + 1680))(a1, &v43, v41, v28);
    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }

    AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_0::operator()(v56, v42);
  }

  else
  {
    AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_1::operator()(v48);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
}

uint64_t llvm::IRBuilderBase::foldConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (*(a3 + 16) >= 0x15u)
  {
    a3 = 0;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    a4 = 0;
  }

  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v5 = (*(**(a1 + 72) + 184))(*(a1 + 72), a2);
    if (v5)
    {
      v9 = *(v5 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
    }
  }

  return v5;
}

uint64_t llvm::IRBuilderBase::CreateFSub(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 16, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::setFPAttrs(a1, v7, *(a1 + 96));
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

uint64_t llvm::IRBuilderBase::CreateFAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 14, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::setFPAttrs(a1, v7, *(a1 + 96));
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

void AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_0::operator()(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = (*(**a1 + 1672))(*a1, *a1[1], *(a1[1] + 8), 1, 0, *a1[2]);
  if (v5)
  {
    if ((*(*(a1[1] + 8) + 8) & 0xFE) == 0x12)
    {
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      if (*(*(a1[1] + 8) + 32))
      {
        v7 = 0;
        do
        {
          v8 = *a1[3];
          v35 = 257;
          v9 = llvm::ConstantInt::get();
          Element = llvm::IRBuilderBase::CreateExtractElement((v4 + 8), v8, v9, v33);
          v11 = *(v4 + 152);
          v32[8] = 257;
          FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v4 + 8), Element, v11, &v30);
          v35 = 257;
          v13 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v4 + 8), InsertElement, FPTrunc, v13, v33);
          ++v7;
        }

        while (v7 < *(*(a1[1] + 8) + 32));
      }

      *a1[3] = InsertElement;
    }

    else
    {
      v14 = *a1[3];
      v15 = *(v4 + 152);
      v35 = 257;
      *a1[3] = llvm::IRBuilderBase::CreateFPTrunc((v4 + 8), v14, v15, v33);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v27, *(v4 + 1640));
  AGCLLVMGen3TargetLowerer::getWriteSuffix(__p, v4, **a1[3]);
  v33[0] = v34;
  v33[1] = 0x800000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, **a1[3]);
  v30 = v32;
  v31 = 0x800000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, a2);
  v16 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v16);
  v17 = *a1[4];
  if (!v17)
  {
    v17 = *a1[5];
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v17);
  v18 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v18);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, *a1[3]);
  if (*a1[7])
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 240));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, *a1[7]);
    std::string::append(&v27, "coords.");
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, *a1[8]);
  v19 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v19);
  v20 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v20);
  if ((v26 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = __p[1];
  }

  std::string::append(&v27, v21, v22);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v24 = v23;
  if ((v5 & 0xFFFF0000) != 0x20000 || llvm::Type::getScalarSizeInBits(**a1[3]) != 16)
  {
    v29 = 257;
    llvm::IRBuilderBase::CreateCall((v4 + 8), *(v24 + 24), v24, v30, v31, v28);
    v28[0] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void *AGCLLVMGen3TargetLowerer::getWriteSuffix(AGCLLVMGen3TargetLowerer *this, llvm::Type *a2, uint64_t a3)
{
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    a3 = **(a3 + 16);
  }

  if (*(a2 + 24) == a3)
  {
    v3 = "i16";
  }

  else if (*(a2 + 25) == a3)
  {
    v3 = "i32";
  }

  else if (*(a2 + 19) == a3)
  {
    v3 = "f16";
  }

  else
  {
    v3 = "f32";
  }

  return std::string::basic_string[abi:nn200100]<0>(this, v3);
}

void AGCLLVMAGPFragmentShaderGen6::setupPerPrimitiveVaryings(AGCLLVMAGPFragmentShaderGen6 *this)
{
  v88 = *MEMORY[0x277D85DE8];
  if (*(this + 1982))
  {
    v2 = this + *(*this - 24);
    v72 = *(v2 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v73, (v2 + 1712));
    v74 = *(v2 + 452);
    v3 = *(this + 798);
    if (v3 && v3[16] >= 0x1Cu)
    {
      v4 = this + *(*this - 24);
      NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v3);
      llvm::IRBuilderBase::SetInsertPoint((v4 + 1712), NextNonDebugInstruction);
    }

    else
    {
      v6 = *(*(this + 20) + 80);
      if (v6)
      {
        v7 = (v6 - 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = this + *(*this - 24);
      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v7);
      llvm::IRBuilderBase::SetInsertPoint((v8 + 1712), v7, FirstInsertionPt);
    }

    memset(__p, 0, 20);
    v76 = 0;
    v77 = 0u;
    v78[0] = v79;
    v78[1] = 0x500000000;
    llvm::SmallVectorImpl<unsigned int>::assign(v78, 5uLL, -559038737);
    *__p = xmmword_20E70C560;
    LODWORD(__p[2]) = 0;
    *&v77 = AGCLLVMUserFragmentShader::setupInterpolation(this, 7u, 0, 1);
    *(&v77 + 1) = v10;
    v12 = AGCLLVMUserFragmentShader::replaceInterpolation(this, __p, v11);
    v13 = this + *(*this - 24);
    v71 = 257;
    v14 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((v13 + 1712), v12, v14, v70);
    v16 = this + *(*this - 24);
    v17 = *(v16 + 239);
    v71 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, Shl, v17, v70);
    if (v78[0] != v79)
    {
      free(v78[0]);
    }

    AGCLLVMAGPFragmentShader::getFragmentVarying(__p, this, *(this + *(*this - 24) + 1904), "agc.per_prim.primitive_address", 0x1EuLL, 1, 3, 1, 7, 0);
    v20 = AGCLLVMUserFragmentShader::replaceInterpolation(this, __p, v19);
    v21 = this + *(*this - 24);
    v22 = *(v21 + 239);
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateCast((v21 + 1712), 39, v20, v22, v70);
    v24 = this + *(*this - 24);
    v71 = 257;
    v25 = llvm::ConstantInt::get();
    v26 = llvm::IRBuilderBase::CreateShl((v24 + 1712), v23, v25, v70);
    if (v78[0] != v79)
    {
      free(v78[0]);
    }

    v27 = this + *(*this - 24);
    LOWORD(v77) = 257;
    v60 = llvm::IRBuilderBase::CreateOr((v27 + 1712), Cast, v26, __p);
    *(this + 7044) = 1;
    if (!*(this + 986))
    {
      AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(__p, this, *(this + *(*this - 24) + 1904), "air.amplification_id", 0x14uLL);
      v29 = AGCLLVMUserFragmentShader::replaceInterpolation(this, __p, v28);
      llvm::ValueHandleBase::operator=((this + 7872), v29);
      *(this + 6460) = 1;
      if (v78[0] != v79)
      {
        free(v78[0]);
      }
    }

    v30 = *this;
    v31 = *(*(this + *(*this - 24) + 2168) + 1878);
    memset(__p, 0, sizeof(__p));
    v76 = &v77 + 8;
    *&v77 = 0x800000000;
    v79[61] = 0xFFFFFFFFLL;
    v80 = v31;
    v86[7] = 0;
    memset(v81, 0, sizeof(v81));
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    memset(v86, 0, 26);
    v87 = 1;
    v32 = *(this + 1630);
    if (v32)
    {
      v33 = *(this + 814);
      v34 = v32 << 6;
      do
      {
        GenericVaryingAllocator::addVarying(__p, v33);
        v33 += 64;
        v34 -= 64;
      }

      while (v34);
      v30 = *this;
    }

    GenericVaryingAllocator::allocate(__p, *(this + *(v30 - 24) + 2168));
    v68 = 0;
    v69 = 4 * DWORD1(v82);
    if (v80)
    {
      v35 = (HIDWORD(v83) + 1) >> 1;
    }

    else
    {
      v35 = HIDWORD(v83);
    }

    v36 = v35 + DWORD1(v82);
    v66 = 4 * v36;
    v67 = 4 * (v36 + DWORD1(v85));
    v37 = this + *(*this - 24);
    v38 = llvm::ConstantInt::get();
    v39 = this + *(*this - 24);
    v40 = *(this + 986);
    v41 = *(v39 + 238);
    v71 = 257;
    v42 = llvm::IRBuilderBase::CreateCast((v39 + 1712), 39, v40, v41, v70);
    v65 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v37 + 1712), v38, v42, v64);
    v43 = *(this + 1982);
    if (v43)
    {
      v44 = *(this + 990);
      v45 = v44 + 16 * v43;
      v46 = this + 1712;
      do
      {
        if (v77)
        {
          v47 = v76;
          v48 = v77 << 6;
          while (*(v47 + 4) != *v44)
          {
            v47 += 64;
            v48 -= 64;
            if (!v48)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
LABEL_29:
          v47 = 0;
        }

        v49 = *(v44 + 8);
        Add = llvm::ConstantInt::get();
        if (v47[57] == 1)
        {
          v51 = *(*this - 24);
          v71 = 257;
          Add = llvm::IRBuilderBase::CreateAdd(&v46[v51], Add, Mul, v70);
        }

        v52 = this + *(*this - 24);
        v53 = *(v52 + 239);
        v71 = 257;
        v54 = llvm::IRBuilderBase::CreateCast((v52 + 1712), 39, Add, v53, v70);
        v65 = 257;
        v55 = llvm::IRBuilderBase::CreateAdd((v52 + 1712), v60, v54, v64);
        v56 = *(*this - 24);
        v57 = *v49;
        v71 = 257;
        llvm::IRBuilderBase::CreateCast(&v46[v56], 48, v55, v57, v70);
        llvm::Value::replaceAllUsesWith();
        v44 += 16;
      }

      while (v44 != v45);
    }

    v58 = this + *(*this - 24);
    v61 = v72;
    v62 = v73;
    if (v73)
    {
      llvm::MetadataTracking::track();
    }

    v63 = v74;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v61, (v58 + 1712));
    if (v62)
    {
      llvm::MetadataTracking::untrack();
    }

    v70[0] = v81;
    std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](v70);
    llvm::SmallVector<GenericVarying,8u>::~SmallVector(&v76);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v73)
    {
      llvm::MetadataTracking::untrack();
    }
  }
}

BOOL AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v58[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2168);
  v3 = (*(*v2 + 688))(v2);
  v4 = *(this + 660);
  v5 = *v4;
  if ((*v4 & 0x1F) != 0x17)
  {
    v6 = v3;
    v7 = v4 + 1;
    v8 = -1;
    while (v8 != 6)
    {
      v9 = *v7++;
      ++v8;
      if ((v9 & 0x1F) == 0x17)
      {
        v10 = -1;
        if ((~v5 & 0xFF000) == 0)
        {
          goto LABEL_14;
        }

        v11 = -1;
        if (v8 < 7)
        {
          goto LABEL_28;
        }

LABEL_9:
        v12 = v4 + 1;
        v13 = -1;
        while (v13 != 6)
        {
          v14 = *v12++;
          ++v13;
          if ((~v14 & 0xFF000) == 0)
          {
            if (v13 < 7)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        v10 = 0;
        v11 = 0;
        for (i = 0; i != 8; ++i)
        {
          if ((v4[8] >> i))
          {
            v16 = v4[i];
            if ((v16 & 0x1F) == 0x17 || ((v17 = (v16 & 0x1F) - 2, v17 > 0x14) ? (v20 = 0, v21 = 0) : (v18 = qword_20E716068[v17], v19 = qword_20E716260[v17], v20 = qword_20E7161B8[v17] | qword_20E716110[v17], v21 = v19 | v18), v53[0] = v20, v53[1] = v21, (~v16 & 0xFF000) == 0))
            {
LABEL_63:
              std::__throw_bad_optional_access[abi:nn200100]();
            }

            v22 = 0;
            v23 = 0;
            v24 = *(v6 + 964);
            do
            {
              if (!((1 << v22) >> (v16 >> 5)))
              {
                v23 |= *(v53 + v22);
              }

              ++v22;
            }

            while (v22 != 4);
            __dst[0] = v23;
            __dst[1] = 0;
            std::bitset<128ul>::operator<<=[abi:nn200100](__dst, v24 * (v16 >> 12));
            v11 |= __dst[0];
            v10 |= __dst[1];
          }
        }

        goto LABEL_28;
      }
    }

    if ((~v5 & 0xFF000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_13:
  v10 = -1;
LABEL_14:
  v11 = -1;
LABEL_28:
  v25 = *(*(llvm::Module::getFunction() + 8) + 24);
  v26 = llvm::CallBase::arg_end(v25);
  v28 = (v25 - 32 * (*(v25 + 5) & 0x7FFFFFF));
  if (((v26 - v28) & 0x1FFFFFFFE0) != 0)
  {
    v29 = *v28;
    v30 = **v28;
    if (v30)
    {
      v31 = *(v30 + 8) == 16;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      llvm::DataLayout::getStructLayout();
    }

    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v25);
  }

  else
  {
    v29 = 0;
  }

  v32 = *(this + 660);
  if ((~*v32 & 0xFF000) == 0)
  {
    v33 = 1;
    if (!v29)
    {
      return AGCLLVMUserFragmentShader::setupShaderOutputs(this);
    }

    goto LABEL_46;
  }

  v34 = v32 + 1;
  v35 = -1;
  while (v35 != 6)
  {
    v36 = *v34++;
    ++v35;
    if ((~v36 & 0xFF000) == 0)
    {
      goto LABEL_45;
    }
  }

  v35 = 7;
LABEL_45:
  v33 = v35 < 7;
  if (v29)
  {
LABEL_46:
    v37 = *(this + 8);
    if (v37)
    {
      v51 = v32[8];
      v52 = v33;
      v55 = 0;
      v38 = *(v37 + 8);
      if (v38)
      {
        v39 = 0;
        do
        {
          v40 = *(v37 - 8 * v38 + 8 * v39);
          if (v40 && isStringMDNode(*(v40 - 8 * *(v40 + 8)), "air.imageblock_data"))
          {
            v41 = *(*(this + 660) + 32);
            if ((~v41 & 0x1FF000) == 0)
            {
              goto LABEL_63;
            }

            v42 = (v41 >> 12) & 0x1FF;
            v43 = *this;
            v44 = *(*(this + *(*this - 24) + 2168) + 964) * v42;
            if (v44 > 0x40)
            {
              v11 = -1;
              __dst[0] = ~(-1 << v44);
              __dst[1] = 0;
              std::bitset<128ul>::operator<<=[abi:nn200100](__dst, 0x40uLL);
              v10 |= __dst[1];
              v43 = *this;
            }

            else
            {
              v11 |= ~(-1 << v44);
            }

            __dst[0] = v58;
            __dst[1] = 0x500000000;
            v45 = *(v43 - 24);
            v54 = 257;
            v53[0] = llvm::IRBuilderBase::CreateExtractValue(this + v45 + 1712, v29, &v55, 1, v53);
            v46 = *v53[0];
            v56[0] = &unk_2825585F0;
            v56[1] = this;
            v56[2] = v53;
            v56[3] = v56;
            AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(this, v46, __dst, this + 7552, 0, 1, v56, v47);
            std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v56);
            llvm::MDNode::replaceOperandWith();
            if (__dst[0] != v58)
            {
              free(__dst[0]);
            }
          }

          v39 = v55 + 1;
          v55 = v39;
          v37 = *(this + 8);
          v38 = *(v37 + 8);
        }

        while (v39 < v38);
      }

      v48 = v52;
      if ((v51 & 0x1FF000) == 0x1FF000)
      {
        v48 = 1;
      }

      if ((v48 & 1) == 0)
      {
        __dst[0] = v11;
        __dst[1] = 0;
        std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](__dst, v27);
        __dst[0] = v11;
        __dst[1] = v10;
        std::bitset<128ul>::operator>>=[abi:nn200100](__dst, 0x40uLL);
        std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](__dst, v49);
        llvm::Module::getOrInsertNamedMetadata();
        llvm::ConstantInt::get();
        __dst[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        llvm::ConstantInt::get();
        __dst[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
      }
    }
  }

  return AGCLLVMUserFragmentShader::setupShaderOutputs(this);
}

BOOL AGCLLVMUserFragmentShader::setupShaderOutputs(AGCLLVMUserFragmentShader *this)
{
  v96[8] = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  v3 = *(*(Function + 8) + 24);
  v4 = llvm::CallBase::arg_end(v3);
  v5 = (v3 - 32 * (*(v3 + 5) & 0x7FFFFFF));
  v82 = Function;
  if (((v4 - v5) & 0x1FFFFFFFE0) != 0)
  {
    v83 = *v5;
    v6 = **v5;
    v7 = *(*(this + 8) + 8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v83 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v3);
  v8 = v7;
  v95[0] = v96;
  v95[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(v95, v7, 0);
  if (v7)
  {
    if (*(v6 + 8) == 16)
    {
      AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, v83, v95);
    }

    else
    {
      *v95[0] = v83;
    }

    v9 = 0;
    v10 = 0;
    v81 = this + 1712;
    do
    {
      v11 = *(*(this + 8) - 8 * *(*(this + 8) + 8) + 8 * v9);
      if (!v11)
      {
        goto LABEL_61;
      }

      v12 = *v11;
      if (v12 > 0x22)
      {
        goto LABEL_61;
      }

      if (((0x7FFFFFFF0uLL >> v12) & 1) == 0)
      {
        goto LABEL_61;
      }

      v13 = *&v11[-8 * *(v11 + 2)];
      if (!v13 || *v13)
      {
        goto LABEL_61;
      }

      String = llvm::MDString::getString(v13);
      v16 = String;
      v17 = v15;
      v18 = *(v95[0] + v9);
      if (v15 > 11)
      {
        if (v15 == 12)
        {
          if (*String == 0x65766F632E726961 && *(String + 8) == 1701273970)
          {
            goto LABEL_61;
          }
        }

        else if (v15 == 17)
        {
          v25 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
          if (v25 && *(String + 16) == 116)
          {
            v87 = 0;
            LODWORD(v88) = 0;
            LODWORD(v91) = 1;
            if (!parseMDInt(0, v11, &v91, &v88))
            {
              goto LABEL_115;
            }

            LODWORD(v91) = 2;
            if (!parseMDInt(0, v11, &v91, &v87))
            {
              goto LABEL_115;
            }

            v27 = this + 32 * v88 + 5792;
            if (!v87)
            {
              v27 = this + 32 * v88 + 5536;
            }

            v28 = *(v27 + 3);
            if (v28)
            {
              v29 = *(*this - 24);
              goto LABEL_59;
            }

            goto LABEL_61;
          }
        }
      }

      else if (v15 == 9)
      {
        if (*String == 0x747065642E726961 && *(String + 8) == 104)
        {
          v29 = *(*this - 24);
          v28 = *(this + 760);
          goto LABEL_59;
        }
      }

      else if (v15 == 11 && *String == 0x6E6574732E726961 && *(String + 3) == 0x6C69636E6574732ELL)
      {
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*v18);
        v21 = this + *(*this - 24);
        v22 = *(v21 + 237);
        v94 = 257;
        if (ScalarSizeInBits > 0x10)
        {
          v23 = (v21 + 1712);
          v24 = 38;
        }

        else
        {
          v23 = (v21 + 1712);
          v24 = 39;
        }

        Cast = llvm::IRBuilderBase::CreateCast(v23, v24, v18, v22, &v91);
        v28 = *(this + 763);
        v44 = &v81[*(*this - 24)];
        goto LABEL_60;
      }

      if (AGCLLVMUserFragmentShader::isSampleMaskVariant(String, v15))
      {
        if (AGCLLVMUserFragmentShader::getEffectiveFragmentRate(*(this + 1618), v16, v17))
        {
          v32 = this + *(*this - 24);
          if (((*(*(this + 660) + 32) >> 10) & 3) != 0)
          {
            v33 = llvm::ConstantInt::get();
            v94 = 257;
            v34 = llvm::IRBuilderBase::CreateAnd((v32 + 1712), v18, v33, &v91);
            v35 = this + *(*this - 24);
            v36 = llvm::ConstantInt::get();
            v94 = 257;
            Shl = llvm::IRBuilderBase::CreateShl((v35 + 1712), v34, v36, &v91);
            v38 = *(*this - 24);
            v94 = 257;
            Select = llvm::IRBuilderBase::CreateOr(&v81[v38], Shl, v34, &v91);
          }

          else
          {
            v40 = llvm::ConstantInt::get();
            v94 = 257;
            v41 = llvm::IRBuilderBase::CreateAnd((v32 + 1712), v18, v40, &v91);
            v42 = (this + *(*this - 24));
            v43 = llvm::ConstantInt::get();
            v94 = 257;
            llvm::IRBuilderBase::CreateICmp(v42 + 214, 32, v41, v43, &v91);
            llvm::ConstantInt::get();
            llvm::ConstantInt::get();
            v94 = 257;
            Select = llvm::IRBuilderBase::CreateSelect();
          }

          v18 = Select;
        }

        if (*(v18 + 16) - 11 <= 1)
        {
          v18 = llvm::ConstantInt::get();
        }

        v29 = *(*this - 24);
        v28 = *(this + 766);
LABEL_59:
        v44 = &v81[v29];
        Cast = v18;
LABEL_60:
        llvm::IRBuilderBase::CreateAlignedStore(v44, Cast, v28, 0, 0);
      }

LABEL_61:
      v10 = ++v9 >= v8;
    }

    while (v8 != v9);
  }

  if (v83)
  {
    EraseInstructionChain(v83);
  }

  llvm::Instruction::eraseFromParent(v3);
  llvm::Function::eraseFromParent(v82);
  if (*(this + 6445) == 1)
  {
    v91 = v93;
    v92 = 0x400000000;
    v46 = *(this + 806);
    v47 = *(v46 + 1);
    if (v47)
    {
      do
      {
        v48 = *(v47 + 24);
        v47 = *(v47 + 8);
        llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v48);
        v49 = this + *(*this - 24);
        if (*(this + 6462))
        {
          v50 = *(v49 + 271);
          v84 = *(v49 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v85, (v49 + 1712));
          v86 = *(v49 + 452);
          v51 = llvm::ConstantInt::get();
          (*(*v50 + 624))(v50, &v84, v51);
          if (v85)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        else
        {
          v52 = *(v49 + 220);
          v90[8] = 257;
          v53 = llvm::BasicBlock::splitBasicBlock();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v53);
          v54 = *(v52 + 40);
          if (v54 == v52 + 40)
          {
            v57 = 0;
          }

          else
          {
            v55 = v54 - 24;
            if (v54)
            {
              v56 = v54 - 24;
            }

            else
            {
              v56 = 0;
            }

            if (*(v56 + 16) - 29 >= 0xB)
            {
              v57 = 0;
            }

            else
            {
              v57 = v55;
            }
          }

          v58 = *(this + 776);
          v59 = (v57 - 32);
          if (*(v57 - 32))
          {
            v60 = *(v57 - 24);
            **(v57 - 16) = v60;
            if (v60)
            {
              *(v60 + 16) = *(v57 - 16);
            }
          }

          *v59 = v58;
          if (v58)
          {
            v63 = *(v58 + 8);
            v61 = (v58 + 8);
            v62 = v63;
            *(v57 - 24) = v63;
            if (v63)
            {
              *(v62 + 16) = v57 - 24;
            }

            *(v57 - 16) = v61;
            *v61 = v59;
          }
        }

        llvm::Instruction::eraseFromParent(v48);
      }

      while (v47);
      v46 = *(this + 806);
    }

    llvm::Function::eraseFromParent(v46);
    v88 = v90;
    v89 = 0x400000000;
    v64 = v92;
    if (v92)
    {
      do
      {
        v65 = *(v91 + v64 - 1);
        LODWORD(v92) = v64 - 1;
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v88, v65);
        v66 = v65 + 5;
        for (i = v65[6]; i != v66; i = i[1])
        {
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
        }

        v68 = *v66;
        if (*v66 != v66)
        {
          v69 = (v68 - 3);
          v70 = v68 ? (v68 - 3) : 0;
          v71 = *(v70 + 16) - 29;
          v72 = v71 >= 0xB ? 0 : v69;
          if (v71 <= 0xA)
          {
            NumSuccessors = llvm::Instruction::getNumSuccessors(v69);
            if (NumSuccessors)
            {
              v74 = NumSuccessors;
              for (j = 0; j != v74; ++j)
              {
                Successor = llvm::Instruction::getSuccessor(v72);
                if (llvm::BasicBlock::getSinglePredecessor(Successor))
                {
                  v77 = llvm::Instruction::getSuccessor(v72);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v77);
                }

                v78 = llvm::Instruction::getSuccessor(v72);
                llvm::BasicBlock::removePredecessor(v78, v65);
              }
            }
          }
        }

        llvm::BasicBlock::dropAllReferences(v65);
        v64 = v92;
      }

      while (v92);
      while (v89)
      {
        v79 = *(v88 + v89 - 1);
        LODWORD(v89) = v89 - 1;
        llvm::BasicBlock::eraseFromParent(v79);
      }
    }

    if (v88 != v90)
    {
      free(v88);
    }

    if (v91 != v93)
    {
      free(v91);
    }
  }

  AGCLLVMFragmentShader::inlineReadAndWriteCalls((this + 4536));
  v10 = 1;
LABEL_115:
  if (v95[0] != v96)
  {
    free(v95[0]);
  }

  return v10;
}

uint64_t llvm::IRBuilderBase::CreateAlignedStore(unsigned int **a1, llvm::Type **a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, *a2);
  }

  v9 = llvm::User::operator new(0x40);
  llvm::StoreInst::StoreInst();
  v15 = 257;
  (*(*a1[10] + 16))(a1[10], v9, v14, a1[6], a1[7]);
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = *a1;
    v12 = v11 + 16 * v10;
    do
    {
      llvm::Instruction::setMetadata();
      v11 += 16;
    }

    while (v11 != v12);
  }

  return v9;
}

uint64_t EraseInstructionChain(llvm::Value *a1)
{
  v1 = 0;
  if (a1 && *(a1 + 16) >= 0x1Cu)
  {
    if (*(a1 + 1))
    {
      return 0;
    }

    else
    {
      LODWORD(v1) = 0;
      while (1)
      {
        v2 = *(a1 + 5);
        if ((v2 & 0x7FFFFFF) == 0)
        {
          break;
        }

        v3 = (v2 & 0x40000000) != 0 ? *(a1 - 1) : (a1 - 32 * (v2 & 0x7FFFFFF));
        v4 = *v3;
        if (*(*v3 + 16) <= 0x1Bu)
        {
          break;
        }

        llvm::Instruction::eraseFromParent(a1);
        v1 = (v1 + 1);
        a1 = v4;
        if (*(v4 + 1))
        {
          return v1;
        }
      }

      llvm::Instruction::eraseFromParent(a1);
      return (v1 + 1);
    }
  }

  return v1;
}

void AGCLLVMFragmentShader::inlineReadAndWriteCalls(AGCLLVMFragmentShader *this)
{
  AGCLLVMObject::replaceLIBSpillingFunctions((this + *(*this - 24)), 0);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("AGC_DISABLE_EARLY_STATELESS_PSO_INLINING", v2)) == 0 || *Value == 48 || !atoi(Value))
  {
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    v4 = *this;
    v5 = *(this + *(*this - 24) + 2136);
    v6 = v5 + 24;
    v7 = *(v5 + 32);
    if (v7 != v5 + 24)
    {
      do
      {
        if (v7)
        {
          v8 = (v7 - 56);
        }

        else
        {
          v8 = 0;
        }

        Name = llvm::Value::getName(v8);
        if (v10 >= 0x14 && (*Name == 0x646165722E636761 ? (v11 = *(Name + 8) == 0x7562656D6172665FLL) : (v11 = 0), v11 ? (v12 = *(Name + 16) == 1919247974) : (v12 = 0), v12) || (v13 = llvm::Value::getName(v8), v14 >= 0x15) && (*v13 == 0x746972772E636761 ? (v15 = v13[1] == 0x62656D6172665F65) : (v15 = 0), v15 ? (v16 = *(v13 + 13) == 0x726566667562656DLL) : (v16 = 0), v16))
        {
          if (*(v8 + 9) != (v8 + 72))
          {
            v17 = v21[0];
            if (!v21[0])
            {
LABEL_34:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v18 = v17;
                v19 = v17[4];
                if (v8 >= v19)
                {
                  break;
                }

                v17 = *v18;
                if (!*v18)
                {
                  goto LABEL_34;
                }
              }

              if (v19 >= v8)
              {
                break;
              }

              v17 = v18[1];
              if (!v17)
              {
                goto LABEL_34;
              }
            }
          }
        }

        v7 = *(v7 + 8);
      }

      while (v7 != v6);
      v4 = *this;
    }

    AGCLLVMObject::inlineAndRemoveFunctions(*(this + *(v4 - 24) + 2136), &v20);
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v21[0]);
  }
}

void AGCLLVMObject::replaceLIBSpillingFunctions(AGCLLVMObject *this, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v3 = "entry";
    v4 = 259;
    operator new();
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v3 = "entry";
    v4 = 259;
    operator new();
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v3 = "entry";
    v4 = 259;
    operator new();
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v3 = "entry";
    v4 = 259;
    operator new();
  }

  AGCLLVMObject::inlineAndRemoveFunctions(*(this + 267), &v6);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v7[0]);
}

void AGCLLVMObject::inlineAndRemoveFunctions(uint64_t a1, void *a2)
{
  v33[16] = *MEMORY[0x277D85DE8];
  v31 = v33;
  v32 = 0x1000000000;
  v3 = a1 + 24;
  v4 = *(a1 + 32);
  if (v4 != a1 + 24)
  {
    do
    {
      v5 = v4 - 56;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = v5 + 72;
      for (i = *(v5 + 80); i != v6; i = *(i + 8))
      {
        v8 = i - 24;
        if (!i)
        {
          v8 = 0;
        }

        v9 = v8 + 40;
        for (j = *(v8 + 48); j != v9; j = *(j + 8))
        {
          if (j)
          {
            v11 = j - 24;
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v11 + 16);
          if (v12 == 84)
          {
            v13 = v11;
          }

          else
          {
            v13 = 0;
          }

          if (j)
          {
            if (v12 == 84)
            {
              v14 = *(v11 - 32);
              if (v14)
              {
                if (!*(v14 + 16))
                {
                  v15 = *(v11 + 72);
                  v16 = a2[1];
                  v17 = *(v14 + 24) != v15 || v16 == 0;
                  if (!v17)
                  {
                    do
                    {
                      v18 = v16[4];
                      if (v14 >= v18)
                      {
                        if (v18 >= v14)
                        {
                          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, v13);
                          break;
                        }

                        ++v16;
                      }

                      v16 = *v16;
                    }

                    while (v16);
                  }
                }
              }
            }
          }
        }
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    if (v32)
    {
      v19 = v31;
      v20 = 8 * v32;
      do
      {
        v26[0] = &v27;
        v26[1] = 0x800000000;
        v28 = v30;
        v29 = 0x800000000;
        v30[64] = 1;
        llvm::InlineFunction();
        if (v28 != v30)
        {
          free(v28);
        }

        llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(v26);
        v19 += 8;
        v20 -= 8;
      }

      while (v20);
    }
  }

  v23 = *a2;
  v21 = a2 + 1;
  v22 = v23;
  if (v23 != v21)
  {
    do
    {
      llvm::Function::eraseFromParent(v22[4]);
      v24 = v22[1];
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
          v25 = v22[2];
          v17 = *v25 == v22;
          v22 = v25;
        }

        while (!v17);
      }

      v22 = v25;
    }

    while (v25 != v21);
  }

  if (v31 != v33)
  {
    free(v31);
  }
}

char ***llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[3 * v3 - 3];
    v5 = -24 * v3;
    do
    {
      v6 = *(v4 + 2);
      if (v6 != -8192 && v6 != -4096 && v6 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v4);
      }

      v4 = (v4 - 24);
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_2()
{

  operator new();
}

__n128 OUTLINED_FUNCTION_3(uint64_t a1)
{
  result = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 24) = v1[1].n128_u64[0];
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
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
    llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::grow(a1, v7);
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

uint64_t *llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::grow(uint64_t a1, int a2)
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
      v19 = (v4 + 8);
      v20 = v18;
      do
      {
        v21 = *(v19 - 1);
        v10 = v21 | 0x1000;
        if ((v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v33 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v33);
          v22 = v33;
          *v33 = *(v19 - 1);
          v23 = *v19;
          *v19 = 0;
          v22[1] = v23;
          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
          v24 = *v19;
          *v19 = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        v19 += 2;
        v20 -= 16;
      }

      while (v20);
    }

    return llvm::deallocate_buffer(v10, v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v25 = *(a1 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
      v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
      v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
      v30 = vdupq_n_s64(v28);
      v31 = result + 2;
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_20E70C4F0)));
        if (v32.i8[0])
        {
          *(v31 - 2) = -4096;
        }

        if (v32.i8[4])
        {
          *v31 = -4096;
        }

        v26 += 2;
        v31 += 4;
      }

      while (v29 != v26);
    }
  }

  return result;
}

uint64_t *llvm::optional_detail::OptionalStorage<llvm::TargetLibraryInfoImpl,false>::reset(uint64_t *result)
{
  if (*(result + 200) == 1)
  {
    v1 = result;
    v2 = result[22];
    if (v2)
    {
      v1[23] = v2;
      operator delete(v2);
    }

    v3 = v1[19];
    if (v3)
    {
      v1[20] = v3;
      operator delete(v3);
    }

    llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::destroyAll(v1 + 15);
    result = llvm::deallocate_buffer(*(v1 + 34), v1[15], (32 * *(v1 + 34)));
    *(v1 + 200) = 0;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::destroyAll(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = 32 * v1;
    do
    {
      if (*v2 <= 0xFFFFFFFD && *(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      v2 += 32;
      v3 -= 32;
    }

    while (v3);
  }
}

char *llvm::PassInfoMixin<AGCLLVMPrintModulePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x48)
  {
    v1 = v0;
  }

  else
  {
    v1 = 72;
  }

  v2 = &aStringrefLlvmG_91[v1];
  v3 = 72 - v1;
  if ((72 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 72 - v1;
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

char *llvm::PassInfoMixin<AGCLLVMVerifyModulePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x49)
  {
    v1 = v0;
  }

  else
  {
    v1 = 73;
  }

  v2 = &aStringrefLlvmG_89[v1];
  v3 = 73 - v1;
  if ((73 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 73 - v1;
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

char *llvm::PassInfoMixin<llvm::DCEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x3F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 63;
  }

  v2 = &aStringrefLlvmG_93[v1];
  v3 = 63 - v1;
  if ((63 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 63 - v1;
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

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::run()
{
  v2 = *MEMORY[0x277D85DE8];
  llvm::TargetLibraryAnalysis::run();
  operator new();
}

uint64_t llvm::TargetLibraryInfo::TargetLibraryInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 0x600000000;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a1 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v4 >= 7)
    {
      *(a1 + 16) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*(a1 + 8), *(a2 + 8), 8 * *(a2 + 16));
    *(a1 + 16) = v4;
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::TargetLibraryInfo,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825B0188;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825B0158;
  llvm::optional_detail::OptionalStorage<llvm::TargetLibraryInfoImpl,false>::reset(a1 + 1);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserObject::setupIndirectSamplersAGP(AGCLLVMUserObject *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v20 = *MEMORY[0x277D85DE8];
  if (*(v1 + 14) == 1)
  {

    AGCLLVMUserObject::setupIndirectSamplersGL(v1);
  }

  else if ((*(*(v1 + *(*v1 - 24) + 1688) + 1954) & 1) == 0)
  {
    v3 = 0;
    v2 = 0u;
    bzero(v4, 0x2C0uLL);
    v4[6] = v6;
    v5 = 16;
    v6[16] = v8;
    v7 = 8;
    v8[12] = 0u;
    v9 = 0;
    v10 = v12;
    v11 = 16;
    memset(&v12[128], 0, 44);
    v13 = v15;
    v14 = 2;
    v15[1] = 0u;
    v16 = 0;
    v17 = &v19;
    v18 = 2;
    operator new();
  }
}

void llvm::SROAPass::~SROAPass(llvm::SROAPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 84);
  if (v5 != this + 688)
  {
    free(v5);
  }

  llvm::deallocate_buffer(*(this + 166), *(this + 81), (8 * *(this + 166)));
  v6 = *(this + 77);
  if (v6 != this + 632)
  {
    free(v6);
  }

  llvm::deallocate_buffer(*(this + 152), *(this + 74), (8 * *(this + 152)));
  v7 = *(this + 71);
  if (v7)
  {
    *(this + 72) = v7;
    operator delete(v7);
  }

  v8 = *(this + 53);
  if (v8 != this + 440)
  {
    free(v8);
  }

  llvm::deallocate_buffer(*(this + 104), *(this + 50), (8 * *(this + 104)));
  llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(*(this + 24), (*(this + 24) + 24 * *(this + 50)));
  v9 = *(this + 24);
  if (v9 != this + 208)
  {
    free(v9);
  }

  v10 = *(this + 6);
  if (v10 != this + 64)
  {
    free(v10);
  }

  llvm::deallocate_buffer(*(this + 10), *(this + 3), (8 * *(this + 10)));
}

uint64_t llvm::SROAPass::SROAPass(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 48) = a1 + 64;
  v5 = a1 + 48;
  LODWORD(v4) = *(v5 - 12);
  *(v5 - 12) = *(a2 + 36);
  *(a2 + 36) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  *(v5 + 8) = 0x1000000000;
  if (*(a2 + 56))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v5, a2 + 48);
  }

  v6 = (a1 + 208);
  *(a1 + 192) = a1 + 208;
  v7 = (a1 + 192);
  *(a1 + 200) = 0x800000000;
  v8 = *(a2 + 200);
  if (v8 && a1 != a2)
  {
    v9 = *(a2 + 192);
    if (v9 == (a2 + 208))
    {
      if (v8 > 8)
      {
        llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range((a1 + 208), (a1 + 208));
        *(a1 + 200) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v10 = &v9[3 * v8];
      do
      {
        llvm::ValueHandleBase::ValueHandleBase(v6, 2u, v9);
        v9 += 3;
        v6 = (v6 + 24);
      }

      while (v9 != v10);
      v11 = *(a2 + 192);
      *(a1 + 200) = v8;
      llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(v11, (v11 + 24 * *(a2 + 200)));
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range((a1 + 208), (a1 + 208));
      if (*v7 != v6)
      {
        free(*v7);
      }

      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a2 + 192) = a2 + 208;
      *(a2 + 204) = 0;
    }

    *(a2 + 200) = 0;
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a1 + 408) = *(a2 + 408);
  *(a2 + 408) = 0;
  v12 = *(a1 + 412);
  *(a1 + 412) = *(a2 + 412);
  *(a2 + 412) = v12;
  v13 = *(a1 + 416);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = v13;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x1000000000;
  if (*(a2 + 432))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(a1 + 424, a2 + 424);
  }

  *(a1 + 584) = 0;
  v14 = 0uLL;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 600) = *(a2 + 600);
  *(a2 + 600) = 0;
  v15 = *(a1 + 604);
  *(a1 + 604) = *(a2 + 604);
  *(a2 + 604) = v15;
  v16 = *(a1 + 608);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = v16;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x200000000;
  v17 = *(a2 + 624);
  if (v17 && a1 != a2)
  {
    v18 = *(a2 + 616);
    if (v18 == a2 + 632)
    {
      if (v17 >= 3)
      {
        *(a1 + 624) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*(a1 + 616), *(a2 + 616), 8 * *(a2 + 624));
      *(a1 + 624) = v17;
      *(a2 + 624) = 0;
      v14 = 0uLL;
    }

    else
    {
      v19 = *(a2 + 624);
      *(a1 + 616) = v18;
      *(a1 + 624) = v19;
      *(a2 + 616) = a2 + 632;
      *(a2 + 624) = 0;
    }
  }

  *(a1 + 664) = 0;
  *(a1 + 648) = v14;
  *(a1 + 648) = *(a2 + 648);
  *(a2 + 648) = 0;
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = 0;
  v20 = *(a1 + 660);
  *(a1 + 660) = *(a2 + 660);
  *(a2 + 660) = v20;
  v21 = *(a1 + 664);
  *(a1 + 664) = *(a2 + 664);
  *(a2 + 664) = v21;
  *(a1 + 672) = a1 + 688;
  *(a1 + 680) = 0x200000000;
  v22 = *(a2 + 680);
  if (v22 && a1 != a2)
  {
    v23 = *(a2 + 672);
    if (v23 == a2 + 688)
    {
      if (v22 >= 3)
      {
        *(a1 + 680) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*(a1 + 672), *(a2 + 672), 8 * *(a2 + 680));
      *(a1 + 680) = v22;
      *(a2 + 680) = 0;
    }

    else
    {
      v24 = *(a2 + 680);
      *(a1 + 672) = v23;
      *(a1 + 680) = v24;
      *(a2 + 672) = a2 + 688;
      *(a2 + 680) = 0;
    }
  }

  return a1;
}

llvm::ValueHandleBase *llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(llvm::ValueHandleBase *result, llvm::ValueHandleBase *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      v2 = (v2 - 24);
      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList(v2);
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t llvm::InstructionWorklist::InstructionWorklist(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x10000000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(a1, a2);
  }

  *(a1 + 2080) = 0;
  *(a1 + 2064) = 0u;
  *(a1 + 2064) = *(a2 + 2064);
  *(a2 + 2064) = 0;
  *(a1 + 2072) = *(a2 + 2072);
  *(a2 + 2072) = 0;
  v4 = *(a1 + 2076);
  *(a1 + 2076) = *(a2 + 2076);
  *(a2 + 2076) = v4;
  v5 = *(a1 + 2080);
  *(a1 + 2080) = *(a2 + 2080);
  *(a2 + 2080) = v5;
  v6 = a1 + 2088;
  *(a1 + 2088) = 1;
  v7 = 2096;
  v8 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  do
  {
    *(a1 + v7) = v8;
    v7 += 16;
  }

  while (v7 != 2224);
  v9 = *(a2 + 2088);
  *(a2 + 2088) = *(a1 + 2088) & 0xFFFFFFFE | v9 & 1;
  *(a1 + 2088) = v9 & 0xFFFFFFFE | *(a1 + 2088) & 1;
  v10 = *(a1 + 2092);
  *(a1 + 2092) = *(a2 + 2092);
  *(a2 + 2092) = v10;
  v11 = *(a1 + 2088);
  v12 = *(a2 + 2088);
  if ((v11 & 1) == 0)
  {
    v13 = a1 + 2088;
    v6 = a2 + 2088;
    if ((v12 & 1) == 0)
    {
      v14 = *(a1 + 2096);
      *(a1 + 2096) = *(a2 + 2096);
      *(a2 + 2096) = v14;
      LODWORD(v14) = *(a1 + 2104);
      *(a1 + 2104) = *(a2 + 2104);
      *(a2 + 2104) = v14;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v11 = *(a2 + 2088);
  v13 = a2 + 2088;
  if ((v12 & 1) == 0)
  {
LABEL_9:
    v22 = *(v13 + 8);
    *v13 = v11 | 1;
    for (i = 8; i != 136; i += 8)
    {
      *(v13 + i) = *(v6 + i);
    }

    *v6 &= ~1u;
    *(v6 + 8) = v22;
    goto LABEL_18;
  }

  v16 = 0;
  v17 = a1 + 2096;
  v18 = a2 + 2096;
  do
  {
    v19 = *(v17 + v16);
    v20 = *(v18 + v16);
    if (v19 != -4096 && v20 == -4096)
    {
      *(v17 + v16) = -4096;
    }

    else
    {
      *(v17 + v16) = v20;
    }

    *(v18 + v16) = v19;
    v16 += 8;
  }

  while (v16 != 128);
LABEL_18:
  *(a1 + 2224) = a1 + 2240;
  *(a1 + 2232) = 0x1000000000;
  if (*(a2 + 2232))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(a1 + 2224, a2 + 2224);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::SROAPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_94[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
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

char *llvm::PassInfoMixin<llvm::InstCombinePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x47)
  {
    v1 = v0;
  }

  else
  {
    v1 = 71;
  }

  v2 = &aStringrefLlvmG_95[v1];
  v3 = 71 - v1;
  if ((71 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 71 - v1;
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

void llvm::detail::PassModel<llvm::Function,llvm::InstCombinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825B0118;
  v5 = *(a1 + 2232);
  if (v5 != (a1 + 2248))
  {
    free(v5);
  }

  if ((*(a1 + 2096) & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 2112), *(a1 + 2104), (8 * *(a1 + 2112)));
  }

  llvm::deallocate_buffer(*(a1 + 2088), *(a1 + 2072), (16 * *(a1 + 2088)));
  v6 = *(a1 + 8);
  if (v6 != (a1 + 24))
  {
    free(v6);
  }

  JUMPOUT(0x20F331DC0);
}

void llvm::detail::PassModel<llvm::Function,llvm::SROAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825B00D8;
  llvm::SROAPass::~SROAPass((a1 + 1), a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMUserObject::allocateTexturesAndSamplers(AGCLLVMUserObject *this)
{
  v1 = this;
  v268[2] = *MEMORY[0x277D85DE8];
  AGCLLVMUserObject::getDimensionFunctionMap(this);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v2);
  AGCLLVMUserObject::getUniqueIDFunctionSet(v3);
  AGCLLVMUserObject::getTextureAtomicFunctionSet(v4);
  v202 = v206;
  v203 = v206;
  v204 = 8;
  v205 = 0;
  v177 = (*(*(v1 + *(*v1 - 24)) + 80))(v1 + *(*v1 - 24));
  v6 = *(v1 + 15);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v8 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", v5)) != 0 && *Value != 48 && atoi(Value) || *(*(v1 + *(*v1 - 24) + 2168) + 1900) != 0;
  v180 = v8;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v10 = AGCEnv::isEnabled(void)::is_internal == 1 && (v9 = AGCEnv::getValue("AGC_FORCE_BINDLESS", v5)) != 0 && *v9 != 48 && atoi(v9) || *(*(v1 + *(*v1 - 24) + 2168) + 1900) != 0;
  v178 = v10;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v185 = v6;
  v179 = 0;
  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v11 = AGCEnv::getValue("AGC_FORCE_BINDLESS_HEAP", v5);
    if (v11)
    {
      if (*v11 != 48 && atoi(v11))
      {
        v179 = 1;
      }
    }
  }

  v183 = *(v1 + 879);
  v182 = *(v1 + 882);
  v12 = *v1;
  v13 = *(v1 + *(*v1 - 24) + 2136);
  v14 = *(v13 + 32);
  v187 = v13 + 24;
  v188 = v1;
  if (v14 == v13 + 24)
  {
    v16 = 0;
    v15 = 0;
    v186 = 0;
LABEL_90:
    v41 = *(v1 + *(v12 - 24) + 2136);
    v42 = v41 + 24;
    v43 = *(v41 + 32);
    if (v43 != v41 + 24)
    {
      v44 = 0;
      v45 = 0;
      while (1)
      {
        v46 = v43 - 56;
        if (!v43)
        {
          v46 = 0;
        }

        v47 = v46 + 72;
        v48 = *(v46 + 80);
        if (v48 == v46 + 72)
        {
          v50 = 0;
        }

        else
        {
          do
          {
            v49 = v48 - 24;
            if (!v48)
            {
              v49 = 0;
            }

            v50 = *(v49 + 48);
            if (v50 != v49 + 40)
            {
              break;
            }

            v48 = *(v48 + 8);
          }

          while (v48 != v47);
        }

        while (v48 != v47)
        {
          v51 = (v50 - 24);
          if (v50)
          {
            v52 = v50 - 24;
          }

          else
          {
            v52 = 0;
          }

          v53 = *(v52 + 16);
          if (v50 && v53 == 60)
          {
            goto LABEL_107;
          }

          if (!v50 || v53 != 77)
          {
            if (v50 && v53 == 75)
            {
LABEL_107:
              v51 = *(v50 - 56);
            }

            else if (!v50 || v53 != 76)
            {
              goto LABEL_124;
            }

            v54 = *v51;
            if (!*v51)
            {
              goto LABEL_124;
            }

            goto LABEL_113;
          }

          v54 = **(v50 - 56);
          if (*(v54 + 8) != 15)
          {
            goto LABEL_124;
          }

LABEL_113:
          if ((llvm::Type::isOpaquePointerTy(v54) & 1) == 0 && ((*(v54 + 8) >> 8) - 1) <= 1)
          {
            isTextureOrSamplerType = AGCLLVMUserObject::isTextureOrSamplerType(v188, **(v54 + 16));
            v44 |= isTextureOrSamplerType;
            v45 |= (isTextureOrSamplerType >> 8) & 1;
            if (!*(v188 + 950) || (v44) && (!*(v188 + 478) || (v45))
            {
              goto LABEL_132;
            }
          }

LABEL_124:
          v50 = *(v50 + 8);
          v56 = v48 - 24;
          if (!v48)
          {
            v56 = 0;
          }

          while (v50 == v56 + 40)
          {
            v48 = *(v48 + 8);
            if (v48 == v47)
            {
              break;
            }

            v56 = v48 - 24;
            if (!v48)
            {
              v56 = 0;
            }

            v50 = *(v56 + 48);
          }
        }

        v43 = *(v43 + 8);
        if (v43 == v42)
        {
LABEL_132:
          v1 = v188;
          goto LABEL_134;
        }
      }
    }

    LOBYTE(v45) = 0;
    v44 = 0;
LABEL_134:
    v57 = *(v1 + 3858) | v44;
    *(v1 + 3858) = v57 & 1;
    *(v1 + 3859) |= v45 != 0;
    *(v1 + 3913) = v16 & 1;
    if (*(*(v1 + *(*v1 - 24) + 2168) + 1869))
    {
      v58 = 0;
      v59 = v177 == 27;
      v60 = v185;
    }

    else
    {
      v60 = v185;
      v59 = v177 == 27;
      if (v57 & 1 | ((v182 + v183) > 0x30) || (AGCLLVMUserObject::needsDylibResources(v1) & 1) != 0)
      {
        v58 = 1;
      }

      else
      {
        v58 = *(v1 + 15) | v186 | (v178 || v179);
      }
    }

    if (*(*(v1 + *(*v1 - 24) + 2168) + 1869))
    {
      v61 = 0;
      if ((v58 & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(v1 + 3859) & 1) != 0 || ((AGCLLVMUserObject::needsDylibResources(v1) | v180))
    {
      v61 = 1;
      if ((v58 & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else
    {
      v61 = *(v1 + 15);
      if ((v58 & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    if ((*(v1 + 3858) & 1) == 0 && (AGCLLVMUserObject::needsDylibResources(v1) & 1) == 0 && ((v179 | v186 | v15 | *(v1 + 15)) & 1) == 0)
    {
      v62 = (v177 != 27) & (v16 ^ 1);
      goto LABEL_152;
    }

LABEL_151:
    v62 = 0;
LABEL_152:
    *(v1 + 3767) = v62;
    if (v61 & 1) == 0 || (*(v1 + 3859) & 1) != 0 || (AGCLLVMUserObject::needsDylibResources(v1) & 1) != 0 || (*(v1 + 15))
    {
      LOBYTE(v63) = 0;
    }

    else
    {
      v63 = *(*(v1 + *(*v1 - 24) + 2168) + 1900);
      if (v63)
      {
        LOBYTE(v63) = (v177 != 27) & ~v15;
      }
    }

    v64 = v60 | v59;
    *(v1 + 3896) = v63;
    v201 = 1;
    if ((*(*v1 + 416))(v1))
    {
      if ((v60 | v59))
      {
        if (v201 == 1)
        {
          v66 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 0, v65);
        }

        else
        {
          v66 = 0;
        }

        v201 = v66;
        __p = v1;
        v240[0] = &unk_2825A8350;
        v240[1] = &__p;
        v241 = v240;
        for (i = *(v1 + 408); i; i = *i)
        {
          std::function<void ()(llvm::Function *)>::operator()(v241, i[5], v65);
        }

        v131 = v240;
LABEL_231:
        std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v131);
        goto LABEL_235;
      }

      if (v61)
      {
        if (*(v1 + 3896) == 1)
        {
          v245 = 0;
          v244 = 0;
          v243 = &v244;
          v242 = &unk_2825A73D0;
          __p = &v220 + 8;
          *&v220 = 0x400000000;
          if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
          {
            if (v201 == 1)
            {
              v129 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 0, v128);
            }

            else
            {
              v129 = 0;
            }

            v201 = v129;
          }

          v238[0] = &unk_2825A85D8;
          v238[1] = &v242;
          v239 = v238;
          for (j = *(v1 + 396); j; j = *j)
          {
            std::function<void ()(llvm::Function *)>::operator()(v239, j[5], v128);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v238);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(&v242, &__p, v1 + 1024);
          AGCLLVMUserObject::createSamplerHeapIndexArray(v1, &__p);
          v260 = v1;
          v237 = 0;
          operator new();
        }

        if (*(*(v1 + *(*v1 - 24) + 2168) + 1900))
        {
          v245 = 0;
          v244 = 0;
          v243 = &v244;
          v242 = &unk_2825A73D0;
          __p = &v220 + 8;
          *&v220 = 0x400000000;
          if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
          {
            if (v201 == 1)
            {
              v150 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 0, v149);
            }

            else
            {
              v150 = 0;
            }

            v201 = v150;
          }

          v235[0] = &unk_2825A86F8;
          v235[1] = &v242;
          v236 = v235;
          for (k = *(v1 + 396); k; k = *k)
          {
            std::function<void ()(llvm::Function *)>::operator()(v236, k[5], v149);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v235);
          v233[0] = &unk_2825A8788;
          v233[1] = &v242;
          v234 = v233;
          for (m = *(v1 + 420); m; m = *m)
          {
            std::function<void ()(llvm::Function *)>::operator()(v234, m[5], v173);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v233);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(&v242, &__p, v1 + 1024);
          AGCLLVMUserObject::createSamplerHeapIndexArray(v1, &__p);
          if (*(v1 + 421))
          {
            AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(v1, &__p, v1 + 2008);
          }

          v260 = v1;
          v232 = 0;
          operator new();
        }

        if (v180)
        {
          v245 = 0;
          v244 = 0;
          v243 = &v244;
          v242 = &unk_2825A73D0;
          __p = &v220 + 8;
          v65.n128_u64[0] = 0x400000000;
          *&v220 = 0x400000000;
          v230[0] = &unk_2825A89C8;
          v230[1] = &v242;
          v231 = v230;
          for (n = *(v1 + 396); n; n = *n)
          {
            std::function<void ()(llvm::Function *)>::operator()(v231, n[5], v65);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v230);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(&v242, &__p, v1 + 1024);
          AGCLLVMUserObject::createSamplerArrays(v1, &__p, v164);
          v260 = v1;
          v229 = 0;
          operator new();
        }

        if (*(v1 + 3856) == 1)
        {
          if (v201 == 1)
          {
            v171 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 1, v65);
          }

          else
          {
            v171 = 0;
          }

          v201 = v171;
        }

        else
        {
          __p = &unk_20E75F419;
          v220 = 0u;
          v221 = 0u;
          v222 = 1065353216;
          if (v201 == 1)
          {
            v196[0] = 0;
            v196[1] = 0;
            v195 = v196;
            std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(&v195, *(v1 + 128), v1 + 129);
            AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(v1, v1 + 3144, &__p, &v195, v175);
          }

          v201 = 0;
          std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(&v220);
        }

        __p = v1;
        v227[0] = &unk_2825A8AE8;
        v227[1] = &v201;
        v227[2] = &__p;
        v228 = v227;
        for (ii = *(v1 + 408); ii; ii = *ii)
        {
          std::function<void ()(llvm::Function *)>::operator()(v228, ii[5], v65);
        }

        v131 = v227;
        goto LABEL_231;
      }

      if (v201 == 1)
      {
        v198[0] = 0;
        v198[1] = 0;
        v197 = v198;
        std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(&v197, *(v1 + 128), v1 + 129);
        AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(v1, v1 + 3144, v1 + 3240, &v197, v132);
      }
    }

    else if (v201 == 1)
    {
      v181 = v60 | v59;
      v67 = v200;
      v200[0] = 0;
      v200[1] = 0;
      v199 = v200;
      std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(&v199, *(v1 + 128), v1 + 129);
      __p = &v220 + 8;
      v68.n128_u64[0] = 0x400000000;
      *&v220 = 0x400000000;
      v268[0] = 0;
      v268[1] = 0;
      v266 = &unk_2825A73D0;
      v267 = v268;
      v253[0] = &unk_2825A7FA8;
      v253[1] = &v266;
      v254 = v253;
      for (jj = *(v1 + 396); jj; jj = *jj)
      {
        std::function<void ()(llvm::Function *)>::operator()(v254, jj[5], v68);
      }

      std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v253);
      v251[0] = &unk_2825A8038;
      v251[1] = &v266;
      v252 = v251;
      for (kk = *(v1 + 408); kk; kk = *kk)
      {
        std::function<void ()(llvm::Function *)>::operator()(v252, kk[5], v70);
      }

      std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v251);
      v72 = 0uLL;
      memset(v249, 0, sizeof(v249));
      v250 = 1065353216;
      v73 = v267;
      if (v267 == v268)
      {
LABEL_213:
        TypeAllocSize = v249;
        LOBYTE(v207) = 1;
        v242 = &unk_2825A80C8;
        v243 = &v207;
        v244 = &TypeAllocSize;
        v245 = &v242;
        for (mm = *(v1 + 396); mm; mm = *mm)
        {
          std::function<void ()(llvm::Function *)>::operator()(v245, mm[5], v72);
        }

        std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&v242);
        v260 = &unk_2825A8158;
        v261 = &v207;
        v262 = &TypeAllocSize;
        v263 = &v260;
        for (nn = *(v1 + 408); nn; nn = *nn)
        {
          std::function<void ()(llvm::Function *)>::operator()(v263, nn[5], v125);
        }

        std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&v260);
        v127 = v207;
      }

      else
      {
        v184 = v58;
        while (1)
        {
          v74 = v200[0];
          if (!v200[0])
          {
            break;
          }

          v75 = *(v73 + 9);
          v76 = v67;
          do
          {
            v77 = v74;
            v78 = v76;
            v79 = *(v74 + 9) + *(v74 + 8);
            if (v79 > v75)
            {
              v76 = v74;
            }

            v74 = v74[v79 <= v75];
          }

          while (v74);
          if (v76 == v67)
          {
            break;
          }

          if (v79 > v75)
          {
            v80 = (v77 + 4);
          }

          else
          {
            v77 = v78;
            v80 = (v78 + 4);
          }

          if (v75 < *(v77 + 8))
          {
            break;
          }

          v81 = *(v73 + 7);
          if (*(v73 + 8) != v81)
          {
            break;
          }

          v82 = v67;
          AGCLLVMUserObject::Sampler::getAllocationInfo(&v207, v80, v81);
          v83 = v207;
          v84 = (v207 >> 20) & 0x7FF;
          v85 = v207 & 0xFFFFFLL;
          v86 = llvm::User::operator new(0x58);
          if ((v83 & 0x80000000) != 0)
          {
            TypeAllocSize = v84;
            v257 = ".";
            v259 = 776;
            v87 = 2;
            v88 = 8;
            v89 = &v260;
            v260 = &TypeAllocSize;
            v262 = v85;
          }

          else
          {
            LODWORD(v260) = v85;
            v87 = 8;
            v88 = 1;
            v89 = v260;
          }

          v264 = v87;
          v265 = v88;
          v242 = "agc.sampler_words";
          v244 = v89;
          v246 = 3;
          v247 = v87;
          llvm::GlobalVariable::GlobalVariable();
          *(v86 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          llvm::GlobalObject::setAlignment();
          v90 = v1 + *(*v1 - 24);
          v91 = *(v90 + 268);
          v92 = AGCLLVMBuilder::buildGlobalMetadata(v90 + 213, v86, 1u, v83);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v91, v92);
          if ((*(*v1 + 384))(v1))
          {
            NullValue = llvm::User::operator new(0x58);
            if ((v83 & 0x80000000) != 0)
            {
              TypeAllocSize = v84;
              v257 = ".";
              v259 = 776;
              v260 = &TypeAllocSize;
              v262 = v85;
              v94 = 2;
              v95 = 8;
              v96 = &v260;
            }

            else
            {
              LODWORD(v260) = v85;
              v94 = 8;
              v95 = 1;
              v96 = v260;
            }

            v264 = v94;
            v265 = v95;
            v242 = "agc.es1_sampler_lod_bias";
            v244 = v96;
            v245 = v261;
            v246 = 3;
            v247 = v94;
            llvm::GlobalVariable::GlobalVariable();
            *(NullValue + 80) |= 1u;
            llvm::GlobalObject::setSection();
            v99 = v1 + *(*v1 - 24);
            v100 = *(v99 + 268);
            v101 = AGCLLVMBuilder::buildGlobalMetadata(v99 + 213, NullValue, 0x13u, v85);
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v100, v101);
          }

          else
          {
            v97 = llvm::PointerType::get();
            NullValue = llvm::Constant::getNullValue(v97, v98);
          }

          v102 = llvm::User::operator new(0x58);
          if ((v83 & 0x80000000) != 0)
          {
            TypeAllocSize = v84;
            v257 = ".";
            v259 = 776;
            v260 = &TypeAllocSize;
            v262 = v85;
            v103 = 2;
            v104 = 8;
            v105 = &v260;
          }

          else
          {
            LODWORD(v260) = v85;
            v103 = 8;
            v104 = 1;
            v105 = v260;
          }

          v264 = v103;
          v265 = v104;
          v242 = "agc.sampler_unique_id";
          v244 = v105;
          v246 = 3;
          v247 = v103;
          llvm::GlobalVariable::GlobalVariable();
          *(v102 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v106 = v1 + *(*v1 - 24);
          v107 = *(v106 + 268);
          v108 = AGCLLVMBuilder::buildGlobalMetadata(v106 + 213, v102, 0x62u, v85);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v107, v108);
          v109 = llvm::User::operator new(0x58);
          if ((v83 & 0x80000000) != 0)
          {
            TypeAllocSize = v84;
            v257 = ".";
            v259 = 776;
            v260 = &TypeAllocSize;
            v262 = v85;
            v110 = 2;
            v111 = 8;
            v112 = &v260;
          }

          else
          {
            LODWORD(v260) = v85;
            v110 = 8;
            v111 = 1;
            v112 = v260;
          }

          v264 = v110;
          v265 = v111;
          v242 = "agc.sampler_heap_index";
          v244 = v112;
          v246 = 3;
          v247 = v110;
          llvm::GlobalVariable::GlobalVariable();
          *(v109 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v113 = v1 + *(*v1 - 24);
          v114 = *(v113 + 268);
          v115 = AGCLLVMBuilder::buildGlobalMetadata(v113 + 213, v109, 0x5Cu, v83);
          v116 = v114;
          v1 = v188;
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v116, v115);
          if ((*(v208 + 9) & 1) == 0)
          {
            v242 = llvm::PointerType::get();
            v243 = llvm::PointerType::get();
            v244 = llvm::PointerType::get();
            llvm::StructType::setBody();
          }

          v242 = v86;
          v243 = NullValue;
          v244 = v102;
          llvm::ConstantStruct::get();
          v117 = llvm::User::operator new(0x58);
          if ((v83 & 0x80000000) != 0)
          {
            TypeAllocSize = v84;
            v257 = ".";
            v259 = 776;
            v260 = &TypeAllocSize;
            v262 = v85;
            v118 = 2;
            v119 = 8;
            v120 = &v260;
          }

          else
          {
            LODWORD(v260) = v85;
            v118 = 8;
            v119 = 1;
            v120 = v260;
          }

          v67 = v82;
          v264 = v118;
          v265 = v119;
          v242 = "agc.sampler_state_struct_ptr";
          v244 = v120;
          v246 = 3;
          v247 = v118;
          llvm::GlobalVariable::GlobalVariable();
          *(v117 + 80) |= 1u;
          llvm::GlobalVariable::setInitializer();
          *llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](v188 + 688, v117) = v85;
          v242 = 4;
          v243 = 0;
          v244 = v117;
          v121 = v117;
          v58 = v184;
          if (v117 != -8192)
          {
            v121 = v117;
            if (v117 != -4096)
            {
              v121 = v117;
              if (v117)
              {
                llvm::ValueHandleBase::AddToUseList(&v242);
                v121 = v244;
              }
            }
          }

          std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(v188 + 102, v121, &v242);
          if (v244 != -8192 && v244 != -4096 && v244)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v242);
          }

          v242 = v73 + 28;
          std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v249, *(v73 + 7), &v242)[3] = v117;
          v122 = v73[1];
          if (v122)
          {
            do
            {
              v123 = v122;
              v122 = *v122;
            }

            while (v122);
          }

          else
          {
            do
            {
              v123 = v73[2];
              v20 = *v123 == v73;
              v73 = v123;
            }

            while (!v20);
          }

          v73 = v123;
          if (v123 == v268)
          {
            goto LABEL_213;
          }
        }

        v127 = 0;
      }

      v64 = v181;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v249);
      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v268[0]);
      if (__p != &v220 + 8)
      {
        free(__p);
      }

      v201 = v127 & 1;
      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v200[0]);
LABEL_235:
      if ((*(*v1 + 400))(v1))
      {
        if (v64)
        {
          if (&v202 != (v1 + 1048))
          {
            llvm::SmallPtrSetImplBase::CopyFrom((v1 + 1048), &v202);
          }

          AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(v1, v133);
          __p = v1;
          v225[0] = &unk_2825A8F20;
          v225[1] = &__p;
          v226 = v225;
          for (i1 = *(v1 + 402); i1; i1 = *i1)
          {
            std::function<void ()(llvm::Function *)>::operator()(v226, i1[5], v134);
          }

          v136 = v225;
LABEL_242:
          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v136);
LABEL_294:
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3096));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3144));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3192));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3240));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3288));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3336));
          v161 = v201;
          goto LABEL_295;
        }

        if (v58)
        {
          if (*(v1 + 3767) == 1)
          {
            if (&v202 != (v1 + 1048))
            {
              llvm::SmallPtrSetImplBase::CopyFrom((v1 + 1048), &v202);
            }

            v262 = 0;
            v263 = 0;
            v260 = &unk_2825A73D0;
            v261 = &v262;
            __p = &v220 + 8;
            *&v220 = 0x400000000;
            v242 = &v244;
            v139 = *v1;
            v243 = 0x400000000;
            TypeAllocSize = llvm::DataLayout::getTypeAllocSize((v1 + 224), *(*(v1 + *(v139 - 24) + 2168) + 1784));
            LODWORD(v256) = v140;
            LODWORD(v249[0]) = llvm::TypeSize::operator unsigned long long();
            if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
            {
              AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(v1, v141);
            }

            v223[0] = &unk_2825A91F0;
            v223[1] = &v260;
            v224 = v223;
            for (i2 = *(v1 + 390); i2; i2 = *i2)
            {
              std::function<void ()(llvm::Function *)>::operator()(v224, i2[5], v141);
            }

            std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v223);
            addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(&v260, &__p, v1 + 1000);
            TypeAllocSize = v1;
            v256 = v249;
            operator new();
          }

          if (!*(*(v1 + *(*v1 - 24) + 2168) + 1900))
          {
            if (v201 == 1)
            {
              v165 = v203;
              if (v203 == v202)
              {
                v166 = (&v204 + 4);
              }

              else
              {
                v166 = &v204;
              }

              v167 = *v166;
              v168 = &v203[v167];
              if (v167)
              {
                v169 = 8 * v167;
                do
                {
                  if (*v165 < 0xFFFFFFFFFFFFFFFELL)
                  {
                    goto LABEL_311;
                  }

                  ++v165;
                  v169 -= 8;
                }

                while (v169);
                v165 = v168;
              }

LABEL_311:
              std::vector<llvm::Value *>::vector[abi:nn200100]<llvm::SmallPtrSetIterator<llvm::Value *>,0>(&__p, v165, v168, v168);
              AGCLLVMUserObject::allocateBindlessTextures(v1, &__p, (v1 + 3192), (v1 + 3096), (v1 + 3288));
            }

            goto LABEL_294;
          }

          if (&v202 != (v1 + 1048))
          {
            llvm::SmallPtrSetImplBase::CopyFrom((v1 + 1048), &v202);
          }

          __p = &v220 + 8;
          *&v220 = 0x800000000;
          v245 = 0;
          v244 = 0;
          v243 = &v244;
          v242 = &unk_2825A73D0;
          if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
          {
            AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(v1, v151);
          }

          v217[0] = &unk_2825A9310;
          v217[1] = &v242;
          v218 = v217;
          for (i3 = *(v1 + 390); i3; i3 = *i3)
          {
            std::function<void ()(llvm::Function *)>::operator()(v218, i3[5], v151);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v217);
          v215[0] = &unk_2825A93A0;
          v215[1] = &v242;
          v216 = v215;
          for (i4 = *(v1 + 414); i4; i4 = *i4)
          {
            std::function<void ()(llvm::Function *)>::operator()(v216, i4[5], v153);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v215);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex16x2,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(&v242, &__p, v1 + 1000);
          AGCLLVMUserObject::createTextureHeapIndexArray(v1, &__p);
          if (*(v1 + 415))
          {
            AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(v1, &__p, v1 + 1816);
          }

          v260 = v1;
          v213[0] = &unk_2825A9430;
          v213[1] = &v242;
          v213[2] = &v260;
          v214 = v213;
          for (i5 = *(v1 + 390); i5; i5 = *i5)
          {
            std::function<void ()(llvm::Function *)>::operator()(v214, i5[5], v155);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v213);
          TypeAllocSize = v1;
          v211[0] = &unk_2825A94C0;
          v211[1] = &v242;
          v211[2] = &TypeAllocSize;
          v212 = v211;
          for (i6 = *(v1 + 414); i6; i6 = *i6)
          {
            std::function<void ()(llvm::Function *)>::operator()(v212, i6[5], v157);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v211);
          std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v244);
          if (__p != &v220 + 8)
          {
            free(__p);
          }

          __p = v1;
          v209[0] = &unk_2825A9550;
          v209[1] = &__p;
          v210 = v209;
          for (i7 = *(v1 + 402); i7; i7 = *i7)
          {
            std::function<void ()(llvm::Function *)>::operator()(v210, i7[5], v159);
          }

          v136 = v209;
          goto LABEL_242;
        }

        if (!AGCLLVMUserObject::allTextureUsesAreDirect(v1, *(v1 + 390), v133) || !AGCLLVMUserObject::allTextureUsesAreDirect(v1, *(v1 + 402), v143))
        {
          if (v201 == 1)
          {
            v190[0] = 0;
            v190[1] = 0;
            v189 = v190;
            std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(&v189, *(v1 + 125), v1 + 126);
            v245 = 0;
            v244 = 0;
            v243 = &v244;
            v242 = &unk_2825A73D0;
            __p = &v220 + 8;
            v145.n128_u64[0] = 0x400000000;
            *&v220 = 0x400000000;
            v260 = &unk_2825A8FB0;
            v261 = &v242;
            v263 = &v260;
            for (i8 = *(v1 + 390); i8; i8 = *i8)
            {
              std::function<void ()(llvm::Function *)>::operator()(v263, i8[5], v145);
            }

            std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&v260);
            TypeAllocSize = &unk_2825A9040;
            v256 = &v242;
            p_TypeAllocSize = &TypeAllocSize;
            for (i9 = *(v1 + 402); i9; i9 = *i9)
            {
              std::function<void ()(llvm::Function *)>::operator()(p_TypeAllocSize, i9[5], v147);
            }

            std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&TypeAllocSize);
            addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex16x2,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(&v242, &__p, &v189);
            AGCLLVMUserObject::createTextureArrays(v1, &__p);
            AGCLLVMUserObject::createTextureHeapIndexArray(v1, &__p);
            v253[0] = v1;
            LOBYTE(v251[0]) = 1;
            operator new();
          }

          v201 = 0;
          *(v1 + 2392) = 1;
          goto LABEL_294;
        }

        if (v201 == 1)
        {
          v192[0] = 0;
          v192[1] = 0;
          v191 = v192;
          std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(&v191, *(v1 + 125), v1 + 126);
          v201 = AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(v1, v1 + 3096, v1 + 3192, &v191, v144);
          v138 = v192[0];
          goto LABEL_245;
        }
      }

      else if (v201 == 1)
      {
        v194[0] = 0;
        v194[1] = 0;
        v193 = v194;
        std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(&v193, *(v1 + 125), v1 + 126);
        v201 = AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(v1, v1 + 3096, v1 + 3192, &v193, v137);
        v138 = v194[0];
LABEL_245:
        std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v138);
        goto LABEL_294;
      }

      v201 = 0;
      goto LABEL_294;
    }

    v201 = 0;
    goto LABEL_235;
  }

  v186 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 8);
    if (v14)
    {
      v18 = (v14 - 56);
    }

    else
    {
      v18 = 0;
    }

    llvm::Value::getName(v18);
    Key = llvm::StringMapImpl::FindKey();
    v20 = Key == -1 || dword_28117E5F8 == Key;
    v21 = !v20;
    AGCLLVMUserObject::getSampleFunctionInfo(&v242, v1, (v14 - 56));
    if (v248 == 1)
    {
      v22 = BYTE6(v245);
      v23 = BYTE6(v245);
      if (*(v14 - 38))
      {
        llvm::Function::BuildLazyArguments((v14 - 56));
        v23 = BYTE6(v245);
      }

      __p = *(*(v14 + 32) + 40 * v23);
      v24 = __p;
      llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v188 + 942, &__p);
      if (v24)
      {
        v25 = *(v24 + 8) == 15;
      }

      else
      {
        v25 = 0;
      }

      if (v25 && (llvm::Type::isOpaquePointerTy(v24) & 1) == 0)
      {
        v260 = **(v24 + 2);
        llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v188 + 942, &v260);
      }

      v26 = HIBYTE(v245);
      v1 = v188;
      if (HIBYTE(v245))
      {
        if (*(v14 - 38))
        {
          llvm::Function::BuildLazyArguments((v14 - 56));
          v26 = HIBYTE(v245);
        }

        *(v188 + 478) = *(*(v14 + 32) + 40 * v26);
      }

      if (*(**(*(v14 - 32) + 16) + 8) == 16)
      {
        v27 = &v260;
        v260 = &unk_2825A7F60;
        v261 = &v260;
        v263 = &v260;
        v28 = *(v14 - 48);
        if (!v28)
        {
          goto LABEL_82;
        }

        do
        {
          v29 = *(v28 + 24);
          if (v29)
          {
            __p = &v221 + 8;
            *&v220 = &v221 + 8;
            *(&v220 + 1) = 16;
            LODWORD(v221) = 0;
            v30 = std::function<BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(v263, v29);
            if (v220 != __p)
            {
              free(v220);
            }

            v16 |= v30;
          }

          v28 = *(v28 + 8);
        }

        while (v28);
        v27 = v263;
        if (v263 == &v260)
        {
LABEL_82:
          ((*v27)[4])(v27);
        }

        else if (v263)
        {
          (*(*v263 + 40))(v263);
        }
      }

      goto LABEL_83;
    }

    llvm::Value::getName((v14 - 56));
    v31 = llvm::StringMapImpl::FindKey();
    if (v31 != -1 && v31 != dword_28117E5D8 || (llvm::Value::getName((v14 - 56)), v32 = llvm::StringMapImpl::FindKey(), v32 != -1) && v32 != dword_28117E598 || (llvm::Value::getName((v14 - 56)), v33 = llvm::StringMapImpl::FindKey(), v33 != -1) && v33 != dword_28117E5F8 && (__p = llvm::Value::getName((v14 - 56)), *&v220 = v34, llvm::StringRef::find() == -1))
    {
      if (*(v14 - 38))
      {
        llvm::Function::BuildLazyArguments((v14 - 56));
      }

      __p = **(v14 + 32);
      v38 = __p;
      llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &__p);
      if (v38 && *(v38 + 8) == 15 && (llvm::Type::isOpaquePointerTy(v38) & 1) == 0)
      {
        v260 = **(v38 + 2);
        llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &v260);
      }

      v22 = 0;
      goto LABEL_83;
    }

    llvm::Value::getName((v14 - 56));
    v35 = llvm::StringMapImpl::FindKey();
    if (v35 != -1 && v35 != dword_28117DBF0)
    {
      break;
    }

LABEL_86:
    v15 |= v21;
    v14 = v17;
    if (v17 == v187)
    {
      v12 = *v1;
      goto LABEL_90;
    }
  }

  if (*(v14 - 38))
  {
    llvm::Function::BuildLazyArguments((v14 - 56));
  }

  __p = **(v14 + 32);
  v36 = __p;
  llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &__p);
  if (v36 && *(v36 + 8) == 15 && (llvm::Type::isOpaquePointerTy(v36) & 1) == 0)
  {
    v260 = **(v36 + 2);
    llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &v260);
  }

  if (!((*(v14 - 48) != 0) | v186 & 1))
  {
    v22 = 0;
    v186 = 0;
LABEL_83:
    v39 = *(v18 + 1);
    if (v39)
    {
      v40 = 32 * v22;
      do
      {
        llvm::SmallPtrSetImpl<void *>::insert(&__p, &v202, *(*(v39 + 24) - 32 * (*(*(v39 + 24) + 20) & 0x7FFFFFF) + v40));
        v39 = *(v39 + 8);
      }

      while (v39);
    }

    goto LABEL_86;
  }

  v37 = (v1 + *(*v1 - 24));
  if (*(v37[90].__r_.__value_.__l.__size_ + 1923))
  {
    v22 = 0;
    v186 = 1;
    goto LABEL_83;
  }

  std::string::append(v37 + 69, "Texture atomics not supported on device architecture.");
  v161 = 0;
LABEL_295:
  if (v203 != v202)
  {
    free(v203);
  }

  return v161 & 1;
}

void AGCLLVMUserObject::getDimensionFunctionMap(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map = 0;
    *&dword_28117E5D8 = 0;
    qword_28117E5E0 = 0x1800000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getIsNullTextureFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getIsNullTextureFunctionSet(void)::is_null_texture_function_set = 0;
    *&dword_28117E598 = 0;
    qword_28117E5A0 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getIsNullTextureFunctionSet(void)::is_null_texture_function_set, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getTextureAtomicFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set = 0;
    *&dword_28117DBF0 = 0;
    qword_28117DBF8 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getUniqueIDFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set = 0;
    *&dword_28117E5F8 = 0;
    qword_28117E600 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, &dword_20E4E1000);
  }
}

uint64_t AGCLLVMUserObject::getSampleFunctionInfo(AGCLLVMUserObject *this, llvm::Function *a2, llvm::Value *a3)
{
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(a2 + 4448));
  llvm::Value::getName(a3);
  result = llvm::StringMapImpl::FindKey();
  v8 = result;
  if (result == -1)
  {
    v8 = *(SampleFunctionMap + 2);
  }

  if (v8 == *(SampleFunctionMap + 2))
  {
    v9 = 0;
    *this = 0;
  }

  else
  {
    v10 = *SampleFunctionMap + 8 * v8;
    if (*(a2 + 4448) == 1 && *(*(a3 + 3) + 12) - 1 < *(*v10 + 37))
    {
      v11 = AGCLLVMUserObject::getSampleFunctionMap(0);
      llvm::Value::getName(a3);
      result = llvm::StringMapImpl::FindKey();
      v12 = result;
      if (result == -1)
      {
        v12 = *(v11 + 2);
      }

      v10 = *v11 + 8 * v12;
    }

    v13 = *v10;
    v14 = *(v13 + 24);
    *this = *(v13 + 8);
    *(this + 1) = v14;
    *(this + 2) = *(v13 + 40);
    *(this + 6) = *(v13 + 56);
    v9 = 1;
  }

  *(this + 56) = v9;
  return result;
}

uint64_t llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(_DWORD *a1, uint64_t *a2)
{
  v9 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(a1, *a2, &v9);
  if (result)
  {
    return result;
  }

  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_13;
  }

  if (v6 + ~v5 - a1[1] <= v6 >> 3)
  {
LABEL_13:
    llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::grow(a1, v6);
    v9 = 0;
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(a1, *a2, &v9);
  }

  v7 = v9;
  *a1 += 2;
  if (*v7 != -4096)
  {
    --a1[1];
  }

  v8 = *a2;
  *v7 = *a2;

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((a1 + 6), v8);
}

uint64_t AGCLLVMUserObject::isTextureOrSamplerType(AGCLLVMUserObject *this, llvm::Type *a2)
{
  v4 = a2 >> 4;
  if (*(this + 3768))
  {
    v6 = this + 3776;
    v5 = 2;
  }

  else
  {
    v5 = *(this + 946);
    if (!v5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v6 = *(this + 472);
  }

  v7 = v5 - 1;
  v8 = (v4 ^ (a2 >> 9)) & v7;
  v9 = *&v6[8 * v8];
  if (v9 == a2)
  {
    v10 = 1;
  }

  else
  {
    v19 = 1;
    do
    {
      v10 = v9 != -4096;
      if (v9 == -4096)
      {
        break;
      }

      v20 = v8 + v19++;
      v8 = v20 & v7;
      v9 = *&v6[8 * v8];
      v10 = 1;
    }

    while (v9 != a2);
  }

LABEL_7:
  v11 = *(this + 478);
  v12 = v11 == a2;
  if ((*(a2 + 2) & 0xFE) != 0x10)
  {
    return v10 | ((v11 == a2) << 8);
  }

  v13 = *(this + 962);
  if (v13)
  {
    v14 = *(this + 479);
    LODWORD(v15) = (v4 ^ (a2 >> 9)) & (v13 - 1);
    v16 = v14 + 16 * v15;
    v17 = *v16;
    if (*v16 == a2)
    {
LABEL_10:
      if (v16 != v14 + 16 * v13)
      {
        return *(v16 + 8);
      }
    }

    else
    {
      v21 = 1;
      while (v17 != -4096)
      {
        v22 = v15 + v21++;
        v15 = v22 & (v13 - 1);
        v17 = *(v14 + 16 * v15);
        if (v17 == a2)
        {
          v16 = v14 + 16 * v15;
          goto LABEL_10;
        }
      }
    }
  }

  if (*(a2 + 2) == 17)
  {
    isTextureOrSamplerType = AGCLLVMUserObject::isTextureOrSamplerType(this, **(a2 + 2));
    LOBYTE(v10) = isTextureOrSamplerType & 1;
    v12 = (isTextureOrSamplerType >> 8) & 1;
  }

  else if (*(a2 + 2) == 16)
  {
    v23 = *(a2 + 3);
    if (v23)
    {
      v24 = *(a2 + 2);
      v25 = 8 * v23;
      do
      {
        v26 = *v24++;
        v27 = AGCLLVMUserObject::isTextureOrSamplerType(this, v26);
        LOBYTE(v10) = v27 & 1 | v10;
        v12 |= (v27 >> 8) & 1;
        v25 -= 8;
      }

      while (v25);
    }
  }

  v18 = v10 | (v12 << 8);
  v33 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 479), *(this + 962), a2, &v33) & 1) == 0)
  {
    v29 = *(this + 960);
    v30 = *(this + 962);
    if (4 * v29 + 4 >= 3 * v30)
    {
      v30 *= 2;
    }

    else if (v30 + ~v29 - *(this + 961) > v30 >> 3)
    {
LABEL_32:
      v31 = v33;
      ++*(this + 960);
      if (*v31 != -4096)
      {
        --*(this + 961);
      }

      *v31 = a2;
      *(v31 + 8) = v18;
      return v18;
    }

    llvm::DenseMap<llvm::Type *,std::pair<BOOL,BOOL>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::pair<BOOL,BOOL>>>::grow(this + 3832, v30);
    v33 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 479), *(this + 962), a2, &v33);
    goto LABEL_32;
  }

  return v18;
}

uint64_t AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(AGCLLVMUserObject *this)
{
  if ((AGCLLVMUserObject::mayBeCalledFromIntersectionFunction(this) & 1) != 0 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 27)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 15);
  }

  return v2 & 1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t AGCLLVMUserObject::areIndirectSamplersSupported(AGCLLVMUserObject *this)
{
  if (*(this + 14) == 1)
  {
    v1 = *(*(this + *(*this - 24) + 2168) + 1865);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t *llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::grow(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 3)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if (*a1)
  {
    v8 = v14;
    for (i = 8; i != 24; i += 8)
    {
      v10 = *(a1 + i);
      if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *v8++ = v10;
      }
    }

    if (a2 > 2)
    {
      *a1 &= ~1u;
      v11 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v11;
    }

    return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::moveFromOldBuckets(a1, v14, v8);
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 2)
    {
      v13 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::moveFromOldBuckets(a1, v6, &v6[v7]);

    return llvm::deallocate_buffer(v15, v6, (8 * v7));
  }
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 6;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[2 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
    if (v13.i8[0])
    {
      *&v8[2 * v10] = -4096;
    }

    if (v13.i8[4])
    {
      *&v8[2 * v10 + 2] = -4096;
    }

    v10 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(v5, v14, &v15);
      *v15 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(uint64_t result, uint64_t a2, uint64_t a3)
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

      v13 = *(a2 + 8);
      *(v3 + 9) = v13;
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        result = AGCLLVMUserObject::Sampler::getAllocationInfo(&v21, (v9 + 4), i);
        v15 = *a2;
        if (v13 >= *(a2 + 12))
        {
          if (v15 <= &v21 && v15 + 24 * v13 > &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v15 + 24 * *(a2 + 8);
        v17 = v21;
        *(v16 + 16) = v22;
        *v16 = v17;
        v13 = *(a2 + 8) + 1;
        *(a2 + 8) = v13;
      }

      v18 = v3[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v3[2];
          v20 = *v19 == v3;
          v3 = v19;
        }

        while (!v20);
      }

      v3 = v19;
    }

    while (v19 != v4);
  }

  return result;
}

void AGCLLVMUserObject::createSamplerHeapIndexArray(void *a1, uint64_t a2)
{
  AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, (a1 + 259));
  v4 = a1 + 82;
  llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(v4, *(a2 + 8));
  if (*(a2 + 8))
  {
    v5 = 0;
    v6 = *a2;
    v7 = *v4;
    do
    {
      v8 = *v6;
      v6 += 6;
      *(v7 + 4 * v5++) = v8;
    }

    while (v5 < *(a2 + 8));
  }
}

llvm::ValueAsMetadata *AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(void *a1, uint64_t *a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = llvm::ArrayType::get(*(a3 + 32), *(a2 + 2));
  v7 = 1;
  v8 = llvm::User::operator new(0x58);
  v9 = *(a3 + 24);
  v10 = "_indirect";
  if (*v9)
  {
    v20[0] = "_indirect";
    v7 = 3;
    v10 = v9;
  }

  v19[0] = v10;
  v21 = 3;
  v22 = v7;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v19[0] = v20;
  v19[1] = 0x2000000000;
  v11 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v19, v11);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v12 = *(a2 + 2);
  if (v12)
  {
    v13 = *a2;
    v14 = 24 * v12;
    do
    {
      v13 += 24;
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v19, Impl);
      v14 -= 24;
    }

    while (v14);
  }

  v16 = *(a1 + *(*a1 - 24) + 2144);
  v17 = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, v17);
  llvm::ValueHandleBase::operator=(a3, v8);
  *(a3 + 48) = v6;
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  return v8;
}

uint64_t iterateResourceUsers(llvm::Constant *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v4 = *(this + 1);
    while (v4)
    {
      v13 = v17;
      v14 = v17;
      v15 = 4;
      v16 = 0;
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      if (v6)
      {
        v7 = *(v6 + 16) == 5;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        for (i = *(v6 + 8); i; i = *(i + 8))
        {
          llvm::SmallPtrSetImpl<void *>::insert(v12, &v13, *(i + 24));
        }
      }

      else
      {
        llvm::SmallPtrSetImpl<void *>::insert(v12, &v13, v6);
      }

      std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::__value_func[abi:nn200100](v18, a2);
      v10 = iterateResourceUsers(&v13, v18, v9);
      std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v18);
      if (v14 != v13)
      {
        free(v14);
      }

      v4 = v5;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    llvm::Constant::removeDeadConstantUsers(this);
  }

  return 1;
}

void llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v2 != a2)
      {
        bzero((*a1 + 4 * v2), 4 * a2 - 4 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

uint64_t std::function<void ()(llvm::Function *)>::operator()(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, a3);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2>,void ()(llvm::Function *)>::operator()(v4, v5);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v5[0] = &unk_2825A8398;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

uint64_t AGCLLVMUserObject::areIndirectTexturesSupported(AGCLLVMUserObject *this)
{
  if (*(this + 14) == 1)
  {
    v1 = *(*(this + *(*this - 24) + 2168) + 1865);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t iterateResourceUsers(void *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[1];
  v5 = 16;
  if (v4 == *a1)
  {
    v5 = 20;
  }

  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = 8 * v6;
    for (i = a1[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v7 -= 8;
      if (!v7)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a1[1];
  }

  v9 = (v4 + 8 * v6);
  if (i == v9)
  {
    return 1;
  }

  while (1)
  {
    v15 = *i;
    v10 = *(a2 + 24);
    if (!v10)
    {
      break;
    }

    result = (*(*v10 + 48))(v10, &v15, a3);
    ++i;
    if (result)
    {
      v12 = i == v9;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      while (*i >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (++i == v9)
        {
          return result;
        }
      }

      if (i != v9)
      {
        continue;
      }
    }

    return result;
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
  return AGCArgumentBuffer::Resource::Bounds::Bounds(v13, v14);
}

AGCArgumentBuffer::Resource::Bounds *AGCArgumentBuffer::Resource::Bounds::Bounds(AGCArgumentBuffer::Resource::Bounds *this, llvm::Constant *a2)
{
  AggregateElement = llvm::Constant::getAggregateElement(a2);
  v5 = llvm::Constant::getAggregateElement(a2);
  v6 = (AggregateElement + 24);
  if (*(AggregateElement + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  *this = *v6;
  v7 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v7 = *v7;
  }

  *(this + 1) = *v7;
  return this;
}

void IntervalMap<unsigned int>::insert(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_111:
    operator new();
  }

  v9 = (a1 + 16);
  v10 = *(a1 + 16);
  do
  {
    v11 = *(v10 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * v13);
  }

  while (v10);
  v14 = (a1 + 16);
  do
  {
    v15 = *(v7 + 28);
    v16 = v15 > HIDWORD(a2);
    v17 = v15 <= HIDWORD(a2);
    if (v16)
    {
      v14 = v7;
    }

    v7 = *(v7 + 8 * v17);
  }

  while (v7);
  if (v9 == v14)
  {
    v14 = v9;
  }

  else
  {
    v18 = v9;
    do
    {
      if (*(v18 + 7) < v4)
      {
        v4 = *(v18 + 7);
      }

      if (v6 <= *(v18 + 8))
      {
        LODWORD(v6) = *(v18 + 8);
      }

      (**a1)(a1, a3, *(v18 + 9));
      v19 = v18[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v49 = *v20 == v18;
          v18 = v20;
        }

        while (!v49);
      }

      v18 = v20;
    }

    while (v20 != v14);
  }

  v21 = (a1 + 8);
  if (v9 == v14)
  {
    goto LABEL_110;
  }

  do
  {
    v22 = v9;
    v23 = v9[1];
    v24 = v9;
    if (v23)
    {
      do
      {
        v9 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v9 = v24[2];
        v49 = *v9 == v24;
        v24 = v9;
      }

      while (!v49);
    }

    if (*v21 == v22)
    {
      *v21 = v9;
    }

    v25 = *(a1 + 16);
    --*(a1 + 24);
    v26 = *v22;
    v27 = v22;
    if (*v22)
    {
      v28 = v22[1];
      if (!v28)
      {
        v27 = v22;
LABEL_40:
        v30 = 0;
        v29 = v27[2];
        *(v26 + 16) = v29;
        goto LABEL_41;
      }

      do
      {
        v27 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    v26 = v27[1];
    if (v26)
    {
      goto LABEL_40;
    }

    v29 = v27[2];
    v30 = 1;
LABEL_41:
    v31 = *v29;
    if (*v29 == v27)
    {
      *v29 = v26;
      if (v27 == v25)
      {
        v31 = 0;
        v25 = v26;
      }

      else
      {
        v31 = v29[1];
      }
    }

    else
    {
      v29[1] = v26;
    }

    v32 = *(v27 + 24);
    if (v27 != v22)
    {
      v33 = v22[2];
      v27[2] = v33;
      v33[*v33 != v22] = v27;
      v35 = *v22;
      v34 = v22[1];
      *(v35 + 16) = v27;
      *v27 = v35;
      v27[1] = v34;
      if (v34)
      {
        *(v34 + 16) = v27;
      }

      *(v27 + 24) = *(v22 + 24);
      if (v25 == v22)
      {
        v25 = v27;
      }
    }

    if (!v25 || !v32)
    {
      goto LABEL_104;
    }

    if (!v30)
    {
      *(v26 + 24) = 1;
      goto LABEL_104;
    }

    while (1)
    {
      v36 = v31[2];
      v37 = *v36;
      if (*v36 == v31)
      {
        break;
      }

      if ((v31[3] & 1) == 0)
      {
        *(v31 + 24) = 1;
        *(v36 + 24) = 0;
        v38 = v36[1];
        v39 = *v38;
        v36[1] = *v38;
        if (v39)
        {
          *(v39 + 16) = v36;
        }

        v40 = v36[2];
        v38[2] = v40;
        v40[*v40 != v36] = v38;
        *v38 = v36;
        v36[2] = v38;
        if (v25 == *v31)
        {
          v25 = v31;
        }

        v31 = *(*v31 + 8);
      }

      v41 = *v31;
      if (*v31 && *(v41 + 24) != 1)
      {
        v42 = v31[1];
        if (v42 && (v42[3] & 1) == 0)
        {
LABEL_90:
          v41 = v31;
        }

        else
        {
          *(v41 + 24) = 1;
          *(v31 + 24) = 0;
          v50 = v41[1];
          *v31 = v50;
          if (v50)
          {
            *(v50 + 16) = v31;
          }

          v51 = v31[2];
          v41[2] = v51;
          v51[*v51 != v31] = v41;
          v41[1] = v31;
          v31[2] = v41;
          v42 = v31;
        }

        v52 = v41[2];
        *(v41 + 24) = *(v52 + 24);
        *(v52 + 24) = 1;
        *(v42 + 24) = 1;
        v53 = *(v52 + 8);
        v54 = *v53;
        *(v52 + 8) = *v53;
        if (v54)
        {
          *(v54 + 16) = v52;
        }

        v55 = *(v52 + 16);
        v53[2] = v55;
        v55[*v55 != v52] = v53;
        *v53 = v52;
        goto LABEL_103;
      }

      v42 = v31[1];
      if (v42 && *(v42 + 24) != 1)
      {
        goto LABEL_90;
      }

      *(v31 + 24) = 0;
      v43 = v31[2];
      if (v43 == v25 || (v43[24] & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_82:
      v31 = *(*(v43 + 2) + 8 * (**(v43 + 2) == v43));
    }

    if ((v31[3] & 1) == 0)
    {
      *(v31 + 24) = 1;
      *(v36 + 24) = 0;
      v44 = v37[1];
      *v36 = v44;
      if (v44)
      {
        *(v44 + 16) = v36;
      }

      v45 = v36[2];
      v37[2] = v45;
      v45[*v45 != v36] = v37;
      v37[1] = v36;
      v36[2] = v37;
      v46 = v31[1];
      if (v25 == v46)
      {
        v25 = v31;
      }

      v31 = *v46;
    }

    v47 = *v31;
    if (*v31 && *(v47 + 24) != 1)
    {
      goto LABEL_99;
    }

    v48 = v31[1];
    if (!v48 || *(v48 + 24) == 1)
    {
      *(v31 + 24) = 0;
      v43 = v31[2];
      v49 = v43[24] != 1 || v43 == v25;
      if (v49)
      {
LABEL_84:
        v43[24] = 1;
        goto LABEL_104;
      }

      goto LABEL_82;
    }

    if (v47 && (v47[3] & 1) == 0)
    {
LABEL_99:
      v48 = v31;
      goto LABEL_100;
    }

    *(v48 + 24) = 1;
    *(v31 + 24) = 0;
    v56 = *v48;
    v31[1] = *v48;
    if (v56)
    {
      *(v56 + 16) = v31;
    }

    v57 = v31[2];
    v48[2] = v57;
    v57[*v57 != v31] = v48;
    *v48 = v31;
    v31[2] = v48;
    v47 = v31;
LABEL_100:
    v52 = v48[2];
    *(v48 + 24) = *(v52 + 24);
    *(v52 + 24) = 1;
    *(v47 + 24) = 1;
    v53 = *v52;
    v58 = *(*v52 + 8);
    *v52 = v58;
    if (v58)
    {
      *(v58 + 16) = v52;
    }

    v59 = *(v52 + 16);
    v53[2] = v59;
    v59[*v59 != v52] = v53;
    v53[1] = v52;
LABEL_103:
    *(v52 + 16) = v53;
LABEL_104:
    operator delete(v22);
  }

  while (v9 != v14);
LABEL_110:
  v60 = *v8;
  if (!*v8)
  {
    goto LABEL_111;
  }

  while (1)
  {
    v8 = v60;
    if (v6 < *(v60 + 28))
    {
      goto LABEL_110;
    }

    if (*(v60 + 32) >= v4)
    {
      break;
    }

    v60 = *(v60 + 8);
    if (!v60)
    {
      goto LABEL_111;
    }
  }
}

unint64_t addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(unint64_t result, uint64_t a2, uint64_t a3)
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

      *(v3 + 9) = *(a2 + 8);
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        AGCLLVMUserObject::Texture::getAllocationInfo(v19, (v9 + 4), i);
        result = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(a2, v19);
        v14 = (*a2 + 32 * *(a2 + 8));
        v15 = *(result + 16);
        *v14 = *result;
        v14[1] = v15;
        ++*(a2 + 8);
      }

      v16 = v3[1];
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
          v17 = v3[2];
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v4);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](uint64_t a1)
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

void AGCLLVMUserObject::createTextureHeapIndexArray(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a1 + 2396) = *(a2 + 8);
  v21 = 0;
  LOWORD(v20) = 0;
  v19 = 0xFFFFFFFF00400000;
  v22 = 0;
  v4 = &v19;
  v5 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(a2, &v19);
  v6 = (*a2 + 32 * *(a2 + 8));
  v7 = v5[1];
  *v6 = *v5;
  v6[1] = v7;
  ++*(a2 + 8);
  v8 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, a1 + 1752);
  v19 = &v21;
  v20 = 0x800000000;
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 4;
    do
    {
      v14 = *(*a2 + v13);
      if (v14 != -1)
      {
        v4 = v4 & 0xFFFFFF0000000000 | 4;
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v19, v11 + v14, v4);
        v9 = *(a2 + 8);
      }

      ++v12;
      v11 += 0x400000000;
      v13 += 32;
    }

    while (v12 < v9);
    if (v20)
    {
      v15 = a1 + *(*a1 - 24);
      if ((*(v15 + 2284) & 1) == 0)
      {
        v16 = std::__throw_bad_optional_access[abi:nn200100]();
        AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(v16, v17, v18);
        return;
      }

      (*(**(v15 + 2168) + 184))(*(v15 + 2168), v10, &v19, *(v15 + 2280));
    }
  }

  if (v19 != &v21)
  {
    free(v19);
  }
}

llvm::ValueAsMetadata *AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(void *a1, uint64_t *a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = llvm::ArrayType::get(*(a3 + 32), *(a2 + 2));
  v7 = 1;
  v8 = llvm::User::operator new(0x58);
  v9 = *(a3 + 24);
  v10 = "_indirect";
  if (*v9)
  {
    v20[0] = "_indirect";
    v7 = 3;
    v10 = v9;
  }

  v19[0] = v10;
  v21 = 3;
  v22 = v7;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v19[0] = v20;
  v19[1] = 0x2000000000;
  v11 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v19, v11);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v12 = *(a2 + 2);
  if (v12)
  {
    v13 = *a2;
    v14 = 32 * v12;
    do
    {
      v13 += 32;
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v19, Impl);
      v14 -= 32;
    }

    while (v14);
  }

  v16 = *(a1 + *(*a1 - 24) + 2144);
  v17 = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, v17);
  llvm::ValueHandleBase::operator=(a3, v8);
  *(a3 + 48) = v6;
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  return v8;
}

unint64_t llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 32 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

void AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *this)
{
  for (i = *(this + 3); i; i = *i)
  {
    llvm::Function::eraseFromParent(i[5]);
  }

  if (*(this + 4))
  {
    std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::__deallocate_node(*(this + 3));
    *(this + 3) = 0;
    v3 = *(this + 2);
    if (v3)
    {
      for (j = 0; j != v3; ++j)
      {
        *(*(this + 1) + 8 * j) = 0;
      }
    }

    *(this + 4) = 0;
  }
}

uint64_t AGCLLVMUserObject::replaceTexturesAndSamplers(AGCLLVMUserObject *this)
{
  v1 = this;
  v641 = *MEMORY[0x277D85DE8];
  AGCLLVMUserObject::getDimensionFunctionMap(this);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v2);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v3);
  AGCLLVMUserObject::getUniqueIDFunctionSet(v4);
  AGCLLVMUserObject::getTextureAtomicFunctionSet(v5);
  v6 = *(v1 + *(*v1 - 24) + 2136);
  v7 = *(v6 + 32);
  v8 = v6 + 24;
  v570 = v1 + 2168;
  v595 = v1;
  if (v7 != v6 + 24)
  {
    v9 = 0;
    v10 = 0;
    v11 = v1 + 1712;
    v583 = v1 + 1912;
    v573 = v6 + 24;
    do
    {
      v593 = *(v7 + 8);
      if (v7)
      {
        v12 = (v7 - 56);
      }

      else
      {
        v12 = 0;
      }

      v578 = v12;
      Name = llvm::Value::getName(v12);
      if (v14 >= 0x14)
      {
        v15 = *Name == 0x5F7465672E726961 && *(Name + 8) == 0x6D61735F64616572;
        if (v15 && *(Name + 16) == 1919249520)
        {
          v17 = llvm::Value::getName((v7 - 56));
          v19 = v18 < 0x11 || *(v17 + v18 - 17) != 0x5F65727574786574 || *(v17 + v18 - 9) != 0x315F726566667562 || *(v17 + v18 - 1) != 100;
          v22 = llvm::Value::getName((v7 - 56));
          if (v23 >= 3)
          {
            v24 = (*(v22 + v23 - 3) ^ 0x315F | *(v22 + v23 - 1) ^ 0x64) == 0;
            if ((*(v22 + v23 - 3) ^ 0x315F | *(v22 + v23 - 1) ^ 0x64) == 0 && !v19)
            {
              v24 = *(*&v570[*(*v1 - 24)] + 1884);
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = *(v7 - 48);
          if (v25)
          {
            if (v24)
            {
              v26 = 0;
            }

            else
            {
              v26 = 2;
            }

            v588 = v26;
            v27 = &unk_20E75F419;
            if (v24)
            {
              v27 = "_1d";
            }

            v575 = v27;
            v586 = *v27;
            do
            {
              v28 = *(v25 + 24);
              v25 = *(v25 + 8);
              llvm::IRBuilderBase::SetInsertPoint(&v11[*(*v1 - 24)], v28);
              if (v24)
              {
                v29 = v10;
              }

              else
              {
                v29 = v9;
              }

              if (!v29)
              {
                InternalConstSampler = AGCLLVMUserObject::getInternalConstSampler(v1, v588);
                v32 = v31;
                llvm::ArrayType::get(*&v583[*(*v1 - 24)], 2);
                __p.__r_.__value_.__r.__words[0] = InternalConstSampler;
                __p.__r_.__value_.__l.__size_ = v32;
                v33 = 1;
                v29 = llvm::User::operator new(0x58);
                v34 = llvm::IntegerType::get();
                llvm::ArrayType::get(v34, 2);
                llvm::ConstantDataSequential::getImpl();
                if (v586)
                {
                  *&v617[16] = v575;
                  v33 = 3;
                }

                *v617 = "__agc_internal_read_sampler";
                LOBYTE(v618) = 3;
                BYTE1(v618) = v33;
                llvm::GlobalVariable::GlobalVariable();
                if (v24)
                {
                  v10 = v29;
                }

                else
                {
                  v9 = v29;
                }

                v1 = v595;
                llvm::Module::getOrInsertNamedMetadata();
                *v617 = 0uLL;
                *v617 = llvm::MDString::get();
                *&v617[8] = llvm::ValueAsMetadata::get();
                llvm::MDTuple::getImpl();
                llvm::NamedMDNode::addOperand();
              }

              v35 = *(*v1 - 24);
              v36 = *v28;
              LOWORD(v618) = 257;
              llvm::IRBuilderBase::CreateCast(&v11[v35], 49, v29, v36, v617);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v28);
            }

            while (v25);
          }

          llvm::Function::eraseFromParent(v578);
          v8 = v573;
        }
      }

      v7 = v593;
    }

    while (v593 != v8);
  }

  v614 = v616;
  v615 = 0x800000000;
  ConstantSamplers = AGCLLVMUserObject::extractConstantSamplers(v1, &v614);
  v611 = v613;
  v612 = 0x800000000;
  v609[0] = v610;
  v609[1] = 0x800000000;
  v38 = v1 + 1712;
  v594 = v1 + 1712;
  if (v615)
  {
    v39 = v614;
    v40 = (v614 + 8 * v615);
    while (1)
    {
      v41 = *v39;
      __p.__r_.__value_.__r.__words[0] = 0;
      v635.__r_.__value_.__r.__words[0] = 0;
      AGCLLVMUserObject::isConstantSampler(v1, v41, &__p, &v635);
      v42 = __p.__r_.__value_.__r.__words[0];
      v43 = v635.__r_.__value_.__r.__words[0];
      v44 = *(v1 + 122);
      v45 = *(v1 + 123);
      if (v44 >= v45)
      {
        v47 = *(v1 + 121);
        v48 = v44 - v47;
        v49 = (v44 - v47) >> 4;
        v50 = v49 + 1;
        if ((v49 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v51 = v45 - v47;
        if (v51 >> 3 > v50)
        {
          v50 = v51 >> 3;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF0)
        {
          v52 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v52);
        }

        v53 = (16 * v49);
        *v53 = __p.__r_.__value_.__r.__words[0];
        v53[1] = v43;
        v46 = 16 * v49 + 16;
        memcpy(0, v47, v48);
        v54 = *(v1 + 121);
        *(v1 + 121) = 0;
        *(v1 + 122) = v46;
        *(v1 + 123) = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v44 = __p.__r_.__value_.__r.__words[0];
        *(v44 + 1) = v43;
        v46 = (v44 + 16);
      }

      *(v1 + 122) = v46;
      v55 = *v1;
      if (*(*&v570[*(*v1 - 24)] + 1900))
      {
LABEL_94:
        v67 = (*(*&v55 + 416))(v1);
        v68 = *(*v1 - 24);
        if (!v67)
        {
          std::string::append((v1 + v68 + 1656), "Indirect samplers are not supported");
          v82 = 0;
          goto LABEL_713;
        }

        if (*(*&v570[v68] + 1900))
        {
          AGCLLVMUserObject::getBindlessConstantSampler(v1, v42, v43, *v41);
        }

        else
        {
          if (v612 >= HIDWORD(v612))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v611 + v612) = ((*(v1 + 119) - *(v1 + 118)) >> 4) | 0x100000000;
          LODWORD(v612) = v612 + 1;
          v69 = llvm::ConstantInt::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v609, v69);
          ConstantSamplerGlobal = AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(v1, v42, v43);
          if ((*(v1 + 15) & 1) != 0 || *(v1 + 3856) == 1)
          {
            v71 = AGCLLVMUserObject::buildSamplerArgumentPointer(v1, ConstantSamplerGlobal, 0);
            v72 = *(*v1 - 24);
            v73 = *v41;
            LOWORD(v618) = 257;
            v74 = &v594[v72];
            v75 = 50;
          }

          else
          {
            v76 = v1 + *(*v1 - 24);
            v71 = llvm::ConstantInt::get();
            v73 = *v41;
            LOWORD(v618) = 257;
            v74 = (v76 + 1712);
            v75 = 48;
          }

          llvm::IRBuilderBase::CreateCast(v74, v75, v71, v73, v617);
        }

        ConstantSamplers = llvm::Value::replaceAllUsesWith();
        goto LABEL_104;
      }

      SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(v1 + 4448));
      AGCLLVMUserObject::getUniqueIDFunctionSet(SampleFunctionMap);
      *v617 = &v617[16];
      *&v617[8] = 0x2000000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v617, v41);
      v57 = *&v617[8];
      if (!*&v617[8])
      {
LABEL_88:
        v66 = 0;
        goto LABEL_90;
      }

      while (1)
      {
        v58 = *(*v617 + 8 * v57-- - 8);
        *&v617[8] = v57;
        v59 = *(v58 + 8);
        if (v59)
        {
          break;
        }

LABEL_87:
        v1 = v595;
        if (!v57)
        {
          goto LABEL_88;
        }
      }

      while (1)
      {
        v60 = *(v59 + 24);
        v61 = *(v60 + 16);
        if (v61 <= 0x1B)
        {
          if (v61 != 5 || *(v60 + 18) != 49)
          {
            goto LABEL_89;
          }

          goto LABEL_73;
        }

        if (v61 == 84)
        {
          break;
        }

        if (v61 != 77)
        {
          goto LABEL_89;
        }

LABEL_73:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v617, v60);
LABEL_74:
        v59 = *(v59 + 8);
        if (!v59)
        {
          v57 = *&v617[8];
          goto LABEL_87;
        }
      }

      v62 = *(v60 - 32);
      if (v62 && !*(v62 + 16) && *(v62 + 24) == *(v60 + 72))
      {
        llvm::Value::getName(v62);
        Key = llvm::StringMapImpl::FindKey();
        if (Key != -1 && Key != SampleFunctionMap[2])
        {
          goto LABEL_74;
        }

        v64 = llvm::StringMapImpl::FindKey();
        if (v64 != -1 && v64 != dword_28117E5F8)
        {
          goto LABEL_74;
        }
      }

LABEL_89:
      v66 = 1;
      v1 = v595;
LABEL_90:
      ConstantSamplers = *v617;
      if (*v617 != &v617[16])
      {
        free(*v617);
      }

      if (v66)
      {
        v55 = *v1;
        goto LABEL_94;
      }

LABEL_104:
      if (++v39 == v40)
      {
        v38 = v594;
        if (v612 && !*(*(v1 + *(*v1 - 24) + 2168) + 1900))
        {
          v77 = llvm::ArrayType::get(*(v1 + 271), v612);
          v78 = 1;
          v79 = llvm::User::operator new(0x58);
          v80 = *(v1 + 270);
          v81 = "_indirect";
          if (*v80)
          {
            *&v617[16] = "_indirect";
            v78 = 3;
            v81 = v80;
          }

          *v617 = v81;
          LOBYTE(v618) = 3;
          BYTE1(v618) = v78;
          llvm::GlobalVariable::GlobalVariable();
          if (*(v1 + 272))
          {
            strlen(*(v1 + 272));
          }

          llvm::GlobalObject::setSection();
          *v617 = &v617[16];
          *&v617[8] = 0x2000000000;
          v83 = llvm::ValueAsMetadata::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v617, v83);
          llvm::ConstantInt::get();
          v84 = llvm::ValueAsMetadata::get();
          if (v612)
          {
            v85 = v84;
            v86 = v611;
            v87 = 8 * v612;
            do
            {
              *&__p.__r_.__value_.__l.__data_ = v85;
              v86 += 8;
              llvm::ConstantInt::get();
              __p.__r_.__value_.__l.__size_ = llvm::ValueAsMetadata::get();
              Impl = llvm::MDTuple::getImpl();
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v617, Impl);
              v87 -= 8;
            }

            while (v87);
          }

          v89 = *(v1 + *(*v1 - 24) + 2144);
          v90 = llvm::MDTuple::getImpl();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v89, v90);
          llvm::ValueHandleBase::operator=((v1 + 2136), v79);
          *(v1 + 273) = v77;
          if (*v617 != &v617[16])
          {
            free(*v617);
          }

          v91 = llvm::ArrayType::get(*(v1 + *(*v1 - 24) + 1912), v612);
          v92 = llvm::User::operator new(0x58);
          llvm::ArrayType::get(*(v1 + *(*v1 - 24) + 1912), v612);
          *v617 = "agc.constant_sampler_unique_id";
          LOWORD(v618) = 259;
          llvm::GlobalVariable::GlobalVariable();
          *(v92 + 80) |= 1u;
          llvm::ConstantArray::get();
          llvm::GlobalVariable::setInitializer();
          ConstantSamplers = llvm::ValueHandleBase::operator=((v1 + 2264), v92);
          *(v1 + 289) = v91;
          v38 = v594;
        }

        break;
      }
    }
  }

  AGCLLVMUserObject::getGetNullTextureFunctionSet(ConstantSamplers);
  v93 = *v1;
  v94 = *(v1 + *(*v1 - 24) + 2136);
  v95 = *(v94 + 32);
  v96 = v94 + 24;
  if (v95 == v94 + 24)
  {
    goto LABEL_165;
  }

  v584 = v94 + 24;
  v97 = &qword_28117E000;
  do
  {
    v98 = *(v95 + 8);
    if (v95)
    {
      v99 = (v95 - 56);
    }

    else
    {
      v99 = 0;
    }

    llvm::Value::getName(v99);
    v100 = llvm::StringMapImpl::FindKey();
    if (v100 != -1 && v100 != *(v97 + 350))
    {
      v589 = (v95 - 56);
      v101 = AGCLLVMUserObject::getSampleFunctionMap(*(v1 + 4448));
      AGCLLVMUserObject::getDimensionFunctionMap(v101);
      AGCLLVMUserObject::getIsNullTextureFunctionSet(v102);
      AGCLLVMUserObject::getUniqueIDFunctionSet(v103);
      if ((*(*(v1 + *(*v1 - 24) + 2168) + 1869) & 1) != 0 || *(v1 + 2392) == 1)
      {
        llvm::ConstantInt::get();
        llvm::ConstantExpr::getIntToPtr();
      }

      else
      {
        llvm::Constant::getNullValue(**(*(v95 - 32) + 16), v104);
      }

      v105 = *(v95 - 48);
      if (!v105)
      {
        goto LABEL_162;
      }

      while (1)
      {
        v106 = *(v105 + 24);
        v105 = *(v105 + 8);
        v107 = *(v106 + 1);
        if (!v107)
        {
          goto LABEL_161;
        }

        do
        {
          v108 = *(v107 + 24);
          v107 = *(v107 + 8);
          if (v108)
          {
            if (*(v108 + 16) == 84)
            {
              v109 = *(v108 - 32);
              if (v109)
              {
                if (!*(v109 + 16) && *(v109 + 24) == *(v108 + 72))
                {
                  llvm::Value::getName(*(v108 - 32));
                  v110 = llvm::StringMapImpl::FindKey();
                  v111 = v110;
                  if (v110 == -1)
                  {
                    v111 = v101[2];
                  }

                  v112 = *v101 + 8 * v111;
                  llvm::Value::getName(v109);
                  v113 = llvm::StringMapImpl::FindKey();
                  v115 = v113 != -1 && v113 != dword_28117E5D8;
                  if (v112 != *v101 + 8 * v101[2] || v115)
                  {
                    llvm::UndefValue::get();
LABEL_157:
                    llvm::Value::replaceAllUsesWith();
                    llvm::Instruction::eraseFromParent(v108);
                    continue;
                  }

                  llvm::Value::getName(v109);
                  v117 = llvm::StringMapImpl::FindKey();
                  if (v117 != -1 && v117 != dword_28117E5F8)
                  {
                    llvm::Constant::getNullValue(*v108, v118);
                    goto LABEL_157;
                  }

                  llvm::Value::getName(v109);
                  v119 = llvm::StringMapImpl::FindKey();
                  if (v119 != -1 && v119 != dword_28117E598)
                  {
                    llvm::ConstantInt::get();
                    goto LABEL_157;
                  }
                }
              }
            }
          }
        }

        while (v107);
        if (*(v106 + 1))
        {
          llvm::Value::replaceAllUsesWith();
        }

LABEL_161:
        llvm::Instruction::eraseFromParent(v106);
        if (!v105)
        {
LABEL_162:
          llvm::Function::eraseFromParent(v589);
          v1 = v595;
          v96 = v584;
          v97 = &qword_28117E000;
          break;
        }
      }
    }

    v95 = v98;
  }

  while (v98 != v96);
  v93 = *v1;
  v38 = v594;
LABEL_165:
  v606 = v608;
  v607 = 0x1000000000;
  v120 = *(v1 + *(*&v93 - 24) + 2136);
  v121 = *(v120 + 32);
  v122 = v120 + 24;
  if (v121 == v120 + 24)
  {
    LOBYTE(v555) = 0;
    goto LABEL_503;
  }

  v576 = 0;
  LODWORD(v555) = 0;
  v123 = v1 + 1704;
  v581 = v1 + 2136;
  v574 = v120 + 24;
  v587 = v1 + 1704;
  while (2)
  {
    v124 = *(v121 + 8);
    v125 = (v121 - 56);
    if (v121)
    {
      v126 = (v121 - 56);
    }

    else
    {
      v126 = 0;
    }

    AGCLLVMUserObject::getSampleFunctionInfo(&v635, v1, v126);
    if (v637 == 1)
    {
      if (v636 && *(*&v570[*(*v1 - 24)] + 1884) == 1)
      {
        HIDWORD(v635.__r_.__value_.__r.__words[0]) = 0;
      }

      if ((AGCLLVMUserObject::replaceSamplerFunctionUses(v1, v121 - 56, &v635) & 1) == 0)
      {
LABEL_501:
        v82 = 0;
        goto LABEL_711;
      }

      if (*(v121 - 48))
      {
        v576 = 1;
        goto LABEL_282;
      }

LABEL_257:
      llvm::Function::eraseFromParent(v125);
      goto LABEL_282;
    }

    llvm::Value::getName((v121 - 56));
    v127 = llvm::StringMapImpl::FindKey();
    v582 = v124;
    v585 = v121;
    v590 = (v121 - 56);
    if (v127 == -1 || v127 == dword_28117E5D8)
    {
      llvm::Value::getName((v121 - 56));
      v159 = llvm::StringMapImpl::FindKey();
      if (v159 != -1 && v159 != dword_28117E5F8)
      {
        v160 = (v121 - 56);
        *v617 = llvm::Value::getName(v590);
        *&v617[8] = v161;
        if (v161 == 28 && !llvm::StringRef::compare_insensitive() || (__p.__r_.__value_.__r.__words[0] = llvm::Value::getName(v590), __p.__r_.__value_.__l.__size_ = v162, v162 == 28) && !llvm::StringRef::compare_insensitive())
        {
          llvm::Value::getName(v590);
          llvm::Module::getOrInsertFunction();
          if (llvm::GlobalValue::isDeclaration(v163))
          {
            *v617 = "entry";
            LOWORD(v618) = 259;
            operator new();
          }
        }

        *v617 = llvm::Value::getName(v590);
        *&v617[8] = v194;
        v195 = llvm::StringRef::find();
        if (*(v121 - 38))
        {
          llvm::Function::BuildLazyArguments(v590);
        }

        isOpaquePointerTy = llvm::Type::isOpaquePointerTy(**(v121 + 32));
        v197 = *(v121 - 48);
        if (!v197)
        {
          goto LABEL_280;
        }

        v198 = isOpaquePointerTy;
        do
        {
          v199 = *(v197 + 24);
          v197 = *(v197 + 8);
          v200 = *(v199 - 4 * (*(v199 + 5) & 0x7FFFFFF));
          if (*(v200 + 16) - 11 > 1)
          {
            llvm::IRBuilderBase::SetInsertPoint(&v594[*(*v1 - 24)], v199);
            if (v198)
            {
              llvm::Value::getName(v160);
              Function = llvm::Module::getFunction();
              v602.n128_u64[0] = v200;
              if (AGCLLVMUserObject::isConstantSampler(v1, v200, &__p, v596))
              {
                v202 = v1 + *(*v1 - 24);
                v203 = *(v202 + 239);
                LOWORD(v618) = 257;
                llvm::Type::isOpaquePointerTy(*v200);
                v204 = v203;
                v1 = v595;
                AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v202 + 214, v204, v200, 0, v617);
                v206 = (v1 + *(*v1 - 24));
                v207 = llvm::PointerType::get(v206[270], 2);
                LOWORD(v618) = 257;
                v124 = v582;
                v208 = (v206 + 214);
                v160 = v590;
                v602.n128_u64[0] = llvm::IRBuilderBase::CreateCast(v208, 48, AlignedLoad, v207, v617);
              }

              v209 = *(*v1 - 24);
              LOWORD(v618) = 257;
              llvm::IRBuilderBase::CreateCall(&v594[v209], *(Function + 24), Function, &v602, 1, v617);
            }

            else if (v195 == -1)
            {
              v210 = *(*v1 - 24);
              v211 = AGCLLVMUserObject::buildImageArgumentPointer(v1, v200, 9);
              LOWORD(v618) = 257;
              v212 = &v587[v210];
              v160 = v590;
              AGCLLVMBuilder::CreateLoad(v212, v211, v617);
            }

            else
            {
              *v617 = 0;
              if (AGCLLVMUserObject::isConstantSampler(v1, v200, v617, &__p) && !*(*(v1 + *(*v1 - 24) + 2168) + 1900))
              {
                llvm::ConstantInt::get();
              }

              else
              {
                AGCLLVMUserObject::buildSamplerArgumentPointer(v1, v200, 2);
              }
            }
          }

          else
          {
            llvm::UndefValue::get();
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v199);
        }

        while (v197);
        v123 = v587;
        v122 = v574;
        if (*(v585 - 48))
        {
          v576 = 1;
        }

        else
        {
LABEL_280:
          llvm::Function::eraseFromParent(v160);
        }

        goto LABEL_281;
      }

      llvm::Value::getName(v590);
      v164 = llvm::StringMapImpl::FindKey();
      if (v164 != -1 && v164 != dword_28117E5B8)
      {
        v165 = *(v121 - 48);
        v125 = (v121 - 56);
        if (v165)
        {
          while (1)
          {
            v166 = *(v165 + 24);
            v165 = *(v165 + 8);
            v167 = *(v166 - 4 * (*(v166 + 5) & 0x7FFFFFF));
            if (v167[16] - 11 > 1)
            {
              if (((*(*v1 + 400))(v1) & 1) == 0 && *(llvm::Value::stripPointerCasts(v167) + 16) > 0x14u)
              {
                goto LABEL_228;
              }

              llvm::IRBuilderBase::SetInsertPoint(&v594[*(*v1 - 24)], v166);
              v168 = v1 + *(*v1 - 24);
              v169 = *(v168 + 271);
              v170 = *(v169 + 1064);
              if (v170)
              {
                v171 = strlen(*(v169 + 1064));
              }

              else
              {
                v171 = 0;
              }

              inserted = AGCLLVMBuilder::getOrInsertFunction<>((v168 + 1704), v170, v171, *(v168 + 231));
              v173 = *(*v1 - 24);
              LOWORD(v618) = 257;
              llvm::IRBuilderBase::CreateCall(&v594[v173], *(inserted + 24), inserted, 0, 0, v617);
              v121 = v585;
            }

            else
            {
              llvm::UndefValue::get();
            }

            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v166);
LABEL_228:
            if (!v165)
            {
              goto LABEL_245;
            }
          }
        }

        goto LABEL_247;
      }

      v125 = (v121 - 56);
      llvm::Value::getName(v590);
      v174 = llvm::StringMapImpl::FindKey();
      if (v174 == -1 || v174 == dword_28117E598)
      {
        llvm::Value::getName(v590);
        v175 = llvm::StringMapImpl::FindKey();
        if (v175 != -1)
        {
          v38 = v594;
          if (v175 == dword_28117DBF0)
          {
            goto LABEL_282;
          }

          if (*(*&v570[*(*v1 - 24)] + 1943) == 1)
          {
            v176 = llvm::Value::getName(v590);
            v178 = 11;
            if (v177 < 0xB)
            {
              v178 = v177;
            }

            v179 = v177 - v178;
            v180 = v178 + v176;
            v599 = (v178 + v176);
            v600 = v177 - v178;
            if (v177 - v178 >= 4)
            {
              if (*v180 == 1684107116)
              {
                v550 = 0;
                v569 = 0;
                v181 = 1;
LABEL_335:
                v38 = v594;
                goto LABEL_336;
              }

              if (v179 == 4)
              {
                LOBYTE(v181) = 1;
              }

              else
              {
                LOBYTE(v181) = 0;
                if (*v180 == 1919906931 && *(v180 + 4) == 101)
                {
                  v550 = 0;
                  v181 = 2;
                  v226 = 1;
                  goto LABEL_334;
                }
              }
            }

            else
            {
              v181 = 1;
              if (v179 != 3)
              {
                v550 = 0;
LABEL_333:
                v226 = 2;
LABEL_334:
                v569 = v226;
                goto LABEL_335;
              }
            }

            if (*v180 == 26989 && *(v180 + 2) == 110)
            {
              v216 = 10;
            }

            else
            {
              if (*v180 != 24941 || *(v180 + 2) != 120)
              {
                if (v179 >= 0x10)
                {
                  if (*v180 == 0x5F657261706D6F63 && *(v180 + 8) == 0x65676E6168637865)
                  {
                    v550 = 0;
                    v181 = 1;
                    v226 = 3;
                    goto LABEL_334;
                  }
                }

                else if (v179 < 8)
                {
                  if (v181)
                  {
                    goto LABEL_331;
                  }

                  goto LABEL_327;
                }

                if (*v180 == 0x65676E6168637865)
                {
LABEL_331:
                  v550 = 0;
                  goto LABEL_332;
                }

LABEL_327:
                if (*v180 != 1668572518 || *(v180 + 4) != 104)
                {
                  goto LABEL_331;
                }

                if (v179 >= 6)
                {
                  v412 = 6;
                }

                else
                {
                  v412 = v177 - v178;
                }

                v413 = llvm::StringRef::find();
                v414 = v413 == -1 && llvm::StringRef::find() != -1;
                v415 = (v180 + v412);
                v416 = v179 - v412;
                if (v179 - v412 < 3)
                {
                  v38 = v594;
                  v121 = v585;
                  if (v416 != 2)
                  {
                    v550 = 0;
LABEL_487:
                    v181 = 1;
                    v569 = 2;
LABEL_336:
                    v565 = llvm::StringRef::find();
                    if (v565 != -1)
                    {
                      v227 = 0;
                      v591 = *(*&v570[*(*v1 - 24)] + 1884) ^ 1;
                      v563 = 1;
                      v228 = 4;
LABEL_338:
                      v562 = v228;
LABEL_344:
                      v566 = llvm::StringRef::find();
                      v230 = *(v121 - 48);
                      if (!v230)
                      {
LABEL_397:
                        LODWORD(v555) = 1;
                        v124 = v582;
                        goto LABEL_282;
                      }

                      v559 = 0;
                      v568 = v181;
                      v231 = v181 + v227 + 1;
                      if (v566 == -1)
                      {
                        v232 = v231;
                      }

                      else
                      {
                        v232 = v181 + v227 + 2;
                      }

                      v561 = v232;
                      v557 = v232 + 1;
                      if (v591 == 1)
                      {
                        v233 = 2;
                      }

                      else
                      {
                        v233 = 3;
                      }

                      v558 = 32 * v231;
                      while (1)
                      {
                        v234 = *(v230 + 3);
                        v572 = *(v230 + 1);
                        llvm::IRBuilderBase::SetInsertPoint(&v38[*(*v1 - 24)], v234);
                        *&v617[16] = 0;
                        *&v617[23] = 0;
                        v618 = 0u;
                        v619 = 0u;
                        v620 = 0u;
                        v621 = 0u;
                        v622 = 0;
                        v626 = 0;
                        v625 = 0u;
                        v624 = 0u;
                        v623 = 0u;
                        v628 = 0u;
                        memset(v629, 0, 28);
                        v631 = 0u;
                        memset(v632, 0, 29);
                        v630 = 0u;
                        v632[29] = 1;
                        v633 = 0;
                        LOBYTE(v634) = 0;
                        v627 = 4;
                        *&v617[8] = 4;
                        v235 = *(v234 + 5) & 0x7FFFFFF;
                        *v617 = 2;
                        *&v617[4] = v591;
                        v236 = *(v234 - 4 * v235);
                        *&v618 = AGCLLVMUserObject::buildBindlessIndexAsPtr(v1, v236);
                        *&v619 = AGCLLVMUserObject::buildImageArgumentPointer(v1, v236, 0);
                        v237 = AGCLLVMUserObject::getInternalConstSampler(v1, v562);
                        v239 = v238;
                        v240 = llvm::PointerType::get();
                        v241 = v239;
                        v242 = v234;
                        BindlessConstantSampler = AGCLLVMUserObject::getBindlessConstantSampler(v1, v237, v241, v240);
                        *(&v618 + 1) = AGCLLVMUserObject::buildBindlessSamplerIndex(v1, BindlessConstantSampler, v244, v245);
                        *(&v621 + 1) = AGCLLVMUserObject::buildSamplerArgumentPointer(v1, BindlessConstantSampler, 0);
                        v247 = *(v234 + 4 * v568 + -4 * (*(v234 + 5) & 0x7FFFFFF));
                        *&v625 = v247;
                        if (*(v1 + 4448) == 1 && (v591 & 1) == 1 && *(*(v585 - 32) + 12) - 1 == v557 + dword_20E70CAE0[v569])
                        {
                          *(&v625 + 1) = *(v234 + 4 * v561 + -4 * (*(v234 + 5) & 0x7FFFFFF));
                          v559 = 1;
                        }

                        if (v591 == 3)
                        {
                          *&v625 = AGCLLVMBuilder::extendVector(&v123[*(*v1 - 24)], v247, 4, v246);
                        }

                        v248 = v234;
                        if (v565 != -1 && (*(*&v570[*(*v1 - 24)] + 1884) & 1) == 0)
                        {
                          llvm::FixedVectorType::get();
                          v249 = *&v570[*(*v1 - 24)];
                          (*(*v249 + 912))(v249, v250, v251);
                          v252 = llvm::ConstantInt::get();
                          v253 = *&v570[*(*v1 - 24)];
                          (*(*v253 + 912))(v253, v254, v255);
                          v256 = llvm::ConstantInt::get();
                          v257 = *(*v1 - 24);
                          LOWORD(v640) = 257;
                          v258 = llvm::IRBuilderBase::CreateAnd(&v594[v257], v625, v252, &__p);
                          v259 = *(*v595 - 24);
                          LOWORD(v640) = 257;
                          llvm::IRBuilderBase::CreateLShr(&v594[v259], v625, v256, &__p);
                          v260 = AGCLLVMUserObject::buildImageTextureBufferLength(v595, v236);
                          v261 = v595 + *(*v595 - 24);
                          v262 = *(v261 + 238);
                          LOWORD(v640) = 257;
                          Cast = llvm::IRBuilderBase::CreateCast((v261 + 1712), 39, v625, v262, &__p);
                          v597 = 257;
                          llvm::IRBuilderBase::CreateICmp(v261 + 214, 36, Cast, v260, v596);
                          v264 = *&v570[*(*v595 - 24)];
                          v38 = v594;
                          (*(*v264 + 912))(v264, v265, v266);
                          v123 = v587;
                          llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          Select = llvm::IRBuilderBase::CreateSelect();
                          v242 = v248;
                          v268 = llvm::UndefValue::get();
                          v269 = &v587[*(*v595 - 24)];
                          LOWORD(v640) = 257;
                          v270 = llvm::ConstantInt::get();
                          v271 = v258;
                          v1 = v595;
                          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v269 + 8), v268, v271, v270, &__p);
                          v273 = &v587[*(*v595 - 24)];
                          LOWORD(v640) = 257;
                          v274 = llvm::ConstantInt::get();
                          *&v625 = llvm::IRBuilderBase::CreateInsertElement((v273 + 8), InsertElement, Select, v274, &__p);
                        }

                        *&v630 = 0;
                        v275 = llvm::ConstantInt::get();
                        if (v566 != -1)
                        {
                          v626 = *(v242 + v558 + -32 * (*(v242 + 5) & 0x7FFFFFF));
                          v276 = v626;
                          v277 = *(*v1 - 24);
                          v278 = llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          ICmp = llvm::IRBuilderBase::CreateICmp(&v38[v277], 34, v276, v278, &__p);
                          v597 = 257;
                          v275 = llvm::IRBuilderBase::CreateOr(&v38[v277], v275, ICmp, v596);
                        }

                        if ((v563 & 1) == 0)
                        {
                          *&v631 = *(v242 + 4 * v568 + -4 * (*(v242 + 5) & 0x7FFFFFF) + 4);
                          v280 = v631;
                          v281 = *(*v1 - 24);
                          v282 = llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          v283 = llvm::IRBuilderBase::CreateICmp(&v38[v281], 34, v280, v282, &__p);
                          v597 = 257;
                          llvm::IRBuilderBase::CreateOr(&v38[v281], v275, v283, v596);
                        }

                        v284 = v625;
                        if ((*(*v625 + 8) & 0xFE) == 0x12)
                        {
                          v285 = &v123[*(*v1 - 24)];
                          LOWORD(v640) = 257;
                          v286 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateExtractElement((v285 + 8), v284, v286, &__p);
                          v287 = v625;
                          v288 = v1 + *(*v1 - 24);
                          llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          v289 = llvm::IRBuilderBase::CreateSelect();
                          v597 = 257;
                          v290 = llvm::ConstantInt::get();
                          *&v625 = llvm::IRBuilderBase::CreateInsertElement((v288 + 1712), v287, v289, v290, v596);
                          v38 = v594;
                          v242 = v248;
                        }

                        else
                        {
                          llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          *&v625 = llvm::IRBuilderBase::CreateSelect();
                        }

                        if (v591)
                        {
                          v627 = 1;
                          *&v628 = llvm::ConstantInt::get();
                        }

                        else
                        {
                          v627 = 3;
                        }

                        *v617 = 11;
                        if (*(&v625 + 1))
                        {
                          if (*(*(&v625 + 1) + 16) > 0x14u)
                          {
                            v291 = 0;
                            goto LABEL_378;
                          }

                          if ((llvm::Constant::isZeroValue(*(&v625 + 1)) & 1) == 0)
                          {
                            v291 = *(&v625 + 1) == 0;
                            goto LABEL_378;
                          }

                          *(&v625 + 1) = 0;
                        }

                        v291 = 1;
LABEL_378:
                        v292 = *v1;
                        if ((*(*&v570[*(*v1 - 24)] + 1953) & 1) == 0 && !v291)
                        {
                          for (i = 0; i != v233; ++i)
                          {
                            v294 = &v123[*(*v1 - 24)];
                            v295 = v625;
                            LOWORD(v640) = 257;
                            v296 = llvm::ConstantInt::get();
                            Element = llvm::IRBuilderBase::CreateExtractElement((v294 + 8), v295, v296, &__p);
                            v298 = &v123[*(*v1 - 24)];
                            v299 = *(&v625 + 1);
                            LOWORD(v640) = 257;
                            v300 = llvm::ConstantInt::get();
                            v301 = llvm::IRBuilderBase::CreateExtractElement((v298 + 8), v299, v300, &__p);
                            v302 = v1 + *(*v1 - 24);
                            v303 = v625;
                            LOWORD(v640) = 257;
                            Add = llvm::IRBuilderBase::CreateAdd((v302 + 1712), Element, v301, &__p);
                            v597 = 257;
                            v305 = llvm::ConstantInt::get();
                            llvm::IRBuilderBase::CreateInsertElement((v302 + 1712), v303, Add, v305, v596);
                          }

                          *(&v625 + 1) = 0;
                          v292 = *v1;
                          v242 = v248;
                        }

                        v306 = (v1 + *(*&v292 - 24));
                        v307 = v306[135].n128_u64[1];
                        v602 = v306[110];
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v603, &v306[107]);
                        v604 = v306[113].n128_u32[0];
                        v308 = (*(*v307 + 288))(v307, &v602, v617);
                        if (v603)
                        {
                          llvm::MetadataTracking::untrack();
                        }

                        v309 = v1 + *(*v1 - 24);
                        v310 = *(v309 + 239);
                        LOWORD(v640) = 257;
                        v311 = llvm::IRBuilderBase::CreateCast((v309 + 1712), 49, v308, v310, &__p);
                        v312 = (v1 + *(*v1 - 24));
                        v313 = llvm::ConstantInt::get();
                        LOWORD(v640) = 257;
                        llvm::IRBuilderBase::CreateICmp(v312 + 214, 32, v311, v313, &__p);
                        v314 = *(*v1 - 24);
                        v315 = llvm::PointerType::get();
                        LOWORD(v640) = 257;
                        v316 = llvm::IRBuilderBase::CreateCast(&v38[v314], 48, v311, v315, &__p);
                        v317 = llvm::UndefValue::get();
                        if (v569 > 1)
                        {
                          if (v569 == 2)
                          {
                            v338 = *(v242 + 4 * (v561 + v559) + -4 * (*(v242 + 5) & 0x7FFFFFF));
                            v339 = &v587[*(*v595 - 24)];
                            LOWORD(v640) = 257;
                            v340 = llvm::ConstantInt::get();
                            v341 = llvm::IRBuilderBase::CreateExtractElement((v339 + 8), v338, v340, &__p);
                            v555 &= 0xFFFFFFFFFFFF0000;
                            AtomicRMW = llvm::IRBuilderBase::CreateAtomicRMW(&v594[*(*v595 - 24)], v550, v316, v341, 0, 2, 1);
                            v343 = v595 + *(*v595 - 24);
                            v344 = *(v343 + 238);
                            if (*v341 == v344)
                            {
                              LOWORD(v640) = 257;
                              llvm::IRBuilderBase::CreateCast((v343 + 1712), 49, AtomicRMW, v344, &__p);
                              llvm::ConstantInt::get();
                              LOWORD(v640) = 257;
                              v345 = llvm::IRBuilderBase::CreateSelect();
                              v346 = &v587[*(*v595 - 24)];
                              LOWORD(v640) = 257;
                              v347 = llvm::ConstantInt::get();
                              v348 = llvm::IRBuilderBase::CreateInsertElement((v346 + 8), v317, v345, v347, &__p);
                              v349 = &v587[*(*v595 - 24)];
                              v350 = llvm::ConstantInt::get();
                              LOWORD(v640) = 257;
                              v351 = llvm::ConstantInt::get();
                              v352 = llvm::IRBuilderBase::CreateInsertElement((v349 + 8), v348, v350, v351, &__p);
                              v353 = &v587[*(*v595 - 24)];
                              v354 = llvm::ConstantInt::get();
                              LOWORD(v640) = 257;
                              v355 = llvm::ConstantInt::get();
                              v356 = llvm::IRBuilderBase::CreateInsertElement((v353 + 8), v352, v354, v355, &__p);
                              v357 = &v587[*(*v595 - 24)];
                              v358 = llvm::ConstantInt::get();
                              LOWORD(v640) = 257;
                              v359 = llvm::ConstantInt::get();
                              llvm::IRBuilderBase::CreateInsertElement((v357 + 8), v356, v358, v359, &__p);
                            }

                            v38 = v594;
                            v122 = v574;
                            v123 = v587;
                            goto LABEL_396;
                          }

                          v365 = *(v242 + 4 * (v561 + v559) + -4 * (*(v242 + 5) & 0x7FFFFFF));
                          v552 = v365;
                          v366 = *(*v595 - 24);
                          LOWORD(v640) = 257;
                          v248 = v242;
                          Load = AGCLLVMBuilder::CreateLoad(&v587[v366], v365, &__p);
                          v368 = *(v248 + 4 * (v561 + v559) + -4 * (*(v248 + 5) & 0x7FFFFFF) + 4);
                          v369 = &v587[*(*v595 - 24)];
                          LOWORD(v640) = 257;
                          v370 = llvm::ConstantInt::get();
                          v551 = llvm::IRBuilderBase::CreateExtractElement((v369 + 8), Load, v370, &__p);
                          v371 = &v587[*(*v595 - 24)];
                          LOWORD(v640) = 257;
                          v372 = llvm::ConstantInt::get();
                          v373 = llvm::IRBuilderBase::CreateExtractElement((v371 + 8), v368, v372, &__p);
                          v556 &= 0xFFFFFFFFFFFF0000;
                          AtomicCmpXchg = llvm::IRBuilderBase::CreateAtomicCmpXchg(&v594[*(*v595 - 24)], v316, v551, v373, 0, 2, 2, 1);
                          v375 = *(*v595 - 24);
                          LODWORD(v596[0]) = 0;
                          LOWORD(v640) = 257;
                          llvm::IRBuilderBase::CreateExtractValue(&v594[v375], AtomicCmpXchg, v596, 1, &__p);
                          llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          v376 = llvm::IRBuilderBase::CreateSelect();
                          v377 = llvm::UndefValue::get();
                          v378 = &v587[*(*v595 - 24)];
                          LOWORD(v640) = 257;
                          v379 = llvm::ConstantInt::get();
                          v380 = llvm::IRBuilderBase::CreateInsertElement((v378 + 8), v377, v376, v379, &__p);
                          v381 = &v587[*(*v595 - 24)];
                          v382 = llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          v383 = llvm::ConstantInt::get();
                          v384 = llvm::IRBuilderBase::CreateInsertElement((v381 + 8), v380, v382, v383, &__p);
                          v385 = &v587[*(*v595 - 24)];
                          v386 = llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          v387 = llvm::ConstantInt::get();
                          v388 = llvm::IRBuilderBase::CreateInsertElement((v385 + 8), v384, v386, v387, &__p);
                          v389 = &v587[*(*v595 - 24)];
                          v390 = llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          v391 = llvm::ConstantInt::get();
                          v392 = v390;
                          v123 = v587;
                          v393 = llvm::IRBuilderBase::CreateInsertElement((v389 + 8), v388, v392, v391, &__p);
                          llvm::IRBuilderBase::CreateAlignedStore(&v594[*(*v595 - 24)], v393, v552, 0, 0);
                          v394 = *(*v595 - 24);
                          LOWORD(v640) = 257;
                          llvm::IRBuilderBase::CreateICmp(&v594[v394], 32, v551, v376, &__p);
                          llvm::ConstantInt::get();
                          v38 = v594;
                          llvm::ConstantInt::get();
                          LOWORD(v640) = 257;
                          llvm::IRBuilderBase::CreateSelect();
                        }

                        else
                        {
                          if (v569)
                          {
                            v360 = (v242 - 4 * (*(v242 + 5) & 0x7FFFFFF))[4];
                            v361 = &v587[*(*v595 - 24)];
                            LOWORD(v640) = 257;
                            v362 = llvm::ConstantInt::get();
                            v363 = llvm::IRBuilderBase::CreateExtractElement((v361 + 8), v360, v362, &__p);
                            v364 = v316;
                            v123 = v587;
                            v554 &= 0xFFFFFFFFFFFF0000;
                            llvm::IRBuilderBase::CreateAtomicRMW(&v38[*(*v595 - 24)], 0, v364, v363, 0, 2, 1);
                          }

                          else
                          {
                            v318 = (v595 + *(*v595 - 24));
                            v319 = llvm::ConstantInt::get();
                            v553 &= 0xFFFFFFFFFFFF0000;
                            v320 = llvm::IRBuilderBase::CreateAtomicRMW(v318 + 214, 1, v316, v319, 0, 2, 1);
                            v321 = v595 + *(*v595 - 24);
                            v322 = *(v321 + 238);
                            LOWORD(v640) = 257;
                            llvm::IRBuilderBase::CreateCast((v321 + 1712), 49, v320, v322, &__p);
                            llvm::ConstantInt::get();
                            LOWORD(v640) = 257;
                            v323 = llvm::IRBuilderBase::CreateSelect();
                            v123 = v587;
                            v324 = &v587[*(*v595 - 24)];
                            LOWORD(v640) = 257;
                            v325 = llvm::ConstantInt::get();
                            v326 = llvm::IRBuilderBase::CreateInsertElement((v324 + 8), v317, v323, v325, &__p);
                            v327 = &v587[*(*v595 - 24)];
                            v328 = llvm::ConstantInt::get();
                            LOWORD(v640) = 257;
                            v329 = llvm::ConstantInt::get();
                            v330 = llvm::IRBuilderBase::CreateInsertElement((v327 + 8), v326, v328, v329, &__p);
                            v331 = &v587[*(*v595 - 24)];
                            v332 = llvm::ConstantInt::get();
                            LOWORD(v640) = 257;
                            v333 = llvm::ConstantInt::get();
                            v334 = llvm::IRBuilderBase::CreateInsertElement((v331 + 8), v330, v332, v333, &__p);
                            v38 = v594;
                            v335 = &v587[*(*v595 - 24)];
                            v336 = llvm::ConstantInt::get();
                            LOWORD(v640) = 257;
                            v337 = llvm::ConstantInt::get();
                            llvm::IRBuilderBase::CreateInsertElement((v335 + 8), v334, v336, v337, &__p);
                          }

                          v248 = v242;
                        }

                        v122 = v574;
LABEL_396:
                        llvm::Value::replaceAllUsesWith();
                        llvm::Instruction::eraseFromParent(v248);
                        v1 = v595;
                        v230 = v572;
                        if (!v572)
                        {
                          goto LABEL_397;
                        }
                      }
                    }

                    if (llvm::StringRef::find() != -1)
                    {
                      v227 = 0;
                      v563 = 1;
                      v562 = 2;
                      v229 = 1;
LABEL_341:
                      v591 = v229;
                      goto LABEL_344;
                    }

                    if (llvm::StringRef::find() != -1)
                    {
                      v562 = 0;
                      v227 = 0;
                      v591 = 0;
                      v563 = 1;
                      goto LABEL_344;
                    }

                    if (llvm::StringRef::find() == -1)
                    {
                      if (llvm::StringRef::find() != -1)
                      {
                        v563 = 0;
                        v227 = 1;
                        v229 = 2;
                        v562 = 2;
                        goto LABEL_341;
                      }

                      v227 = 0;
                      v591 = 0;
                    }

                    else
                    {
                      v227 = 0;
                      v591 = 3;
                    }

                    v563 = 1;
                    v228 = 2;
                    goto LABEL_338;
                  }

                  goto LABEL_432;
                }

                v418 = *v415 == 25697 && *(v415 + 2) == 100;
                v38 = v594;
                v121 = v585;
                if (v418)
                {
                  if (v414)
                  {
                    v417 = 11;
                  }

                  else
                  {
                    v417 = 1;
                  }

                  goto LABEL_486;
                }

                if (*v415 == 30067 && *(v415 + 2) == 98)
                {
                  if (v414)
                  {
                    v417 = 12;
                  }

                  else
                  {
                    v417 = 2;
                  }

                  goto LABEL_486;
                }

                if (*v415 == 24941 && *(v415 + 2) == 120)
                {
                  if (v413 == -1)
                  {
                    v417 = 9;
                  }

                  else
                  {
                    v417 = 7;
                  }

                  goto LABEL_486;
                }

                if (*v415 == 26989 && *(v415 + 2) == 110)
                {
                  if (v413 == -1)
                  {
                    v417 = 10;
                  }

                  else
                  {
                    v417 = 8;
                  }

                  goto LABEL_486;
                }

                if (*v415 == 28257 && *(v415 + 2) == 100)
                {
                  v417 = 3;
                }

                else
                {
                  if (*v415 != 28536 || *(v415 + 2) != 114)
                  {
LABEL_432:
                    if (bswap32(*v415) >> 16 == 28530)
                    {
                      v417 = 5;
                    }

                    else
                    {
                      v417 = 0;
                    }

                    goto LABEL_486;
                  }

                  v417 = 6;
                }

LABEL_486:
                v550 = v417;
                goto LABEL_487;
              }

              v216 = 9;
            }

            v550 = v216;
LABEL_332:
            v181 = 1;
            goto LABEL_333;
          }

          if (!*(v121 - 48))
          {
            goto LABEL_257;
          }

          v190 = llvm::Value::getName(v590);
          v192 = 11;
          if (v191 < 0xB)
          {
            v192 = v191;
          }

          v602.n128_u64[0] = v192 + v190;
          v602.n128_u64[1] = v191 - v192;
          if (*(v1 + 4448) != 1 || llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1)
          {
LABEL_416:
            LODWORD(v555) = 1;
LABEL_281:
            v38 = v594;
            goto LABEL_282;
          }

          if (v602.n128_u64[1] >= 5)
          {
            v217 = bswap64(*v602.n128_u64[0] | (*(v602.n128_u64[0] + 4) << 32));
            v218 = v217 >= 0x73746F7265000000;
            v219 = v217 > 0x73746F7265000000;
            v220 = !v218;
            if (v219 == v220)
            {
              v193 = 3;
            }

            else
            {
              v193 = 2;
            }
          }

          else
          {
            v193 = 2;
          }

          if (llvm::StringRef::find() == -1)
          {
            v221 = v193;
          }

          else
          {
            v221 = v193 + 1;
          }

          if (v602.n128_u64[1] < 4)
          {
            goto LABEL_319;
          }

          if (*v602.n128_u64[0] == 1684107116)
          {
            goto LABEL_398;
          }

          if (v602.n128_u64[1] == 4)
          {
LABEL_319:
            v223 = 3;
            goto LABEL_399;
          }

          if (*v602.n128_u64[0] == 1919906931 && *(v602.n128_u64[0] + 4) == 101)
          {
LABEL_398:
            v223 = 2;
            goto LABEL_399;
          }

          if (v602.n128_u64[1] < 0x10)
          {
            goto LABEL_319;
          }

          v424 = bswap64(*v602.n128_u64[0]);
          if (v424 == 0x636F6D706172655FLL)
          {
            v424 = bswap64(*(v602.n128_u64[0] + 8));
            v425 = 0x65786368616E6765;
            if (v424 == 0x65786368616E6765)
            {
              v426 = 0;
LABEL_473:
              if (v426)
              {
                v223 = 3;
              }

              else
              {
                v223 = 5;
              }

LABEL_399:
              v395 = *(v121 - 32);
              v396 = *(v395 + 12);
              if (v396 - 1 == v221 + v223 + 1)
              {
                v397 = 0;
                *v617 = &v617[16];
                *&v617[8] = 0x1000000000;
                do
                {
                  v398 = v221 + 1;
                  if (v397 != v221)
                  {
                    v398 = v397 + 1;
                    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v617, *(*(v395 + 16) + 8 * (v397 + 1)));
                    v396 = *(v395 + 12);
                  }

                  v397 = v398;
                }

                while (v398 < (v396 - 1));
                v399 = llvm::FunctionType::get();
                v400 = *(v585 - 24);
                v401 = llvm::Value::getName(v590);
                LOWORD(v640) = 1283;
                __p.__r_.__value_.__r.__words[0] = "__placeholder.";
                __p.__r_.__value_.__r.__words[2] = v401;
                v639 = v402;
                v403 = *&v581[*(*v1 - 24)];
                v404 = llvm::User::operator new(0x78);
                *(MEMORY[0x20F331170](v404, v399, v400 & 0xF, 0xFFFFFFFFLL, &__p, v403) + 112) = *(v585 + 56);
                v405 = *(v585 - 48);
                while (v405)
                {
                  v406 = *(v405 + 24);
                  v405 = *(v405 + 8);
                  llvm::IRBuilderBase::SetInsertPoint(&v594[*(*v1 - 24)], v406);
                  v407 = 0;
                  __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
                  __p.__r_.__value_.__l.__size_ = 0x1000000000;
                  for (j = v406; ; j = (j + 32))
                  {
                    v409 = llvm::CallBase::arg_end(v406);
                    v410 = *(v406 + 5) & 0x7FFFFFF;
                    if (v407 >= ((v409 - (v406 + 32 * -v410)) >> 5))
                    {
                      break;
                    }

                    if (v221 != v407)
                    {
                      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, *(j - 4 * v410));
                    }

                    ++v407;
                  }

                  v411 = *(*v1 - 24);
                  v597 = 257;
                  llvm::IRBuilderBase::CreateCall(&v594[v411], *(v404 + 24), v404, __p.__r_.__value_.__l.__data_, LODWORD(__p.__r_.__value_.__r.__words[1]), v596);
                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v406);
                  if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
                  {
                    free(__p.__r_.__value_.__l.__data_);
                  }
                }

                llvm::Function::eraseFromParent(v590);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v606, v404);
                if (*v617 != &v617[16])
                {
                  free(*v617);
                }

                v122 = v574;
                v123 = v587;
              }

              goto LABEL_416;
            }
          }

          else
          {
            v425 = 0x636F6D706172655FLL;
          }

          if (v424 < v425)
          {
            v426 = -1;
          }

          else
          {
            v426 = 1;
          }

          goto LABEL_473;
        }
      }

      else
      {
        v182 = *(v121 - 48);
        if (!v182)
        {
          goto LABEL_247;
        }

        do
        {
          v183 = *(v182 + 24);
          v182 = *(v182 + 8);
          v184 = *(v183 - 4 * (*(v183 + 5) & 0x7FFFFFF));
          if (v184[16] - 11 > 1)
          {
            llvm::IRBuilderBase::SetInsertPoint(&v594[*(*v1 - 24)], v183);
            v185 = AGCLLVMUserObject::buildImageHeapIndex(v1, v184);
            v186 = *(*v1 - 24);
            LOWORD(v618) = 257;
            NullValue = llvm::Constant::getNullValue(*v185, v187);
            v189 = &v594[v186];
            v125 = v590;
            v121 = v585;
            llvm::IRBuilderBase::CreateICmp(v189, 32, v185, NullValue, v617);
          }

          else
          {
            llvm::UndefValue::get();
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v183);
        }

        while (v182);
LABEL_245:
        if (!*(v121 - 48))
        {
LABEL_247:
          llvm::Function::eraseFromParent(v125);
          goto LABEL_248;
        }

        v576 = 1;
      }

LABEL_248:
      v38 = v594;
      goto LABEL_282;
    }

    v128 = *(v121 - 48);
    if (!v128)
    {
      goto LABEL_214;
    }

    v129 = *(AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map + 8 * v127);
    while (2)
    {
      v130 = *(v128 + 24);
      v128 = *(v128 + 8);
      v131 = *(v130 - 4 * (*(v130 + 5) & 0x7FFFFFF));
      if (v131[16] - 11 <= 1)
      {
        llvm::UndefValue::get();
        goto LABEL_183;
      }

      if (((*(*v595 + 400))(v595) & 1) != 0 || *(llvm::Value::stripPointerCasts(v131) + 16) <= 0x14u)
      {
        llvm::IRBuilderBase::SetInsertPoint(&v38[*(*v595 - 24)], v130);
        v132 = *(v129 + 12);
        if (v132 > 2)
        {
          if (v132 == 3)
          {
            v152 = *(*v595 - 24);
            v153 = AGCLLVMUserObject::buildImageArgumentPointer(v595, v131, 2);
            LOWORD(v618) = 257;
            v154 = AGCLLVMBuilder::CreateLoad(&v587[v152], v153, v617);
            v125 = v590;
            v155 = &v587[*(*v595 - 24)];
            LOWORD(v618) = 257;
            v156 = llvm::ConstantInt::get();
            v157 = (v155 + 8);
            v38 = v594;
            llvm::IRBuilderBase::CreateExtractElement(v157, v154, v156, v617);
          }

          else
          {
            if (v132 == 4)
            {
              v134 = v595;
              v135 = *(*v595 - 24);
              v136 = v131;
              v137 = 5;
            }

            else
            {
              if (v132 != 5)
              {
                goto LABEL_183;
              }

              v134 = v595;
              v135 = *(*v595 - 24);
              v136 = v131;
              v137 = 6;
            }

            v158 = AGCLLVMUserObject::buildImageArgumentPointer(v134, v136, v137);
            LOWORD(v618) = 257;
            AGCLLVMBuilder::CreateLoad(&v587[v135], v158, v617);
          }
        }

        else if (v132 < 3)
        {
          if (v132 || (*(v129 + 16) & 1) == 0)
          {
            v138 = *(*v595 - 24);
            v139 = AGCLLVMUserObject::buildImageArgumentPointer(v595, v131, 2);
            LOWORD(v618) = 257;
            v140 = AGCLLVMBuilder::CreateLoad(&v587[v138], v139, v617);
            v141 = &v587[*(*v595 - 24)];
            LOWORD(v618) = 257;
            v142 = llvm::ConstantInt::get();
            v143 = (v141 + 8);
            v38 = v594;
            v133 = llvm::IRBuilderBase::CreateExtractElement(v143, v140, v142, v617);
          }

          else
          {
            v133 = AGCLLVMUserObject::buildImageTextureBufferLength(v595, v131);
          }

          v144 = v133;
          v145 = llvm::CallBase::arg_end(v130);
          v146 = (v130 - 32 * (*(v130 + 5) & 0x7FFFFFF));
          if (((v145 - v146) & 0x1FFFFFFFE0) == 0x40)
          {
            v147 = AGCLLVMBuilder::i32Extend(&v587[*(*v595 - 24)], v146[4], 0);
            v148 = *(*v595 - 24);
            LOWORD(v618) = 257;
            LShr = llvm::IRBuilderBase::CreateLShr(&v38[v148], v144, v147, v617);
            v150 = llvm::ConstantInt::get();
            llvm::ConstantInt::get();
            v151 = *(*v595 - 24);
            LOWORD(v618) = 257;
            llvm::IRBuilderBase::CreateICmp(&v38[v151], 32, LShr, v150, v617);
            LOWORD(v618) = 257;
            v124 = v582;
            llvm::IRBuilderBase::CreateSelect();
          }

          v125 = v590;
        }

LABEL_183:
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v130);
      }

      if (v128)
      {
        continue;
      }

      break;
    }

    v1 = v595;
    if (*(v585 - 48))
    {
      v576 = 1;
      goto LABEL_215;
    }

LABEL_214:
    llvm::Function::eraseFromParent(v125);
LABEL_215:
    v122 = v574;
    v123 = v587;
LABEL_282:
    v121 = v124;
    if (v124 != v122)
    {
      continue;
    }

    break;
  }

  if (v607)
  {
    v427 = v606;
    v428 = 8 * v607;
    do
    {
      v429 = llvm::Value::getName(*v427);
      if (v430 >= 0xE)
      {
        v431 = 14;
      }

      else
      {
        v431 = v430;
      }

      v635.__r_.__value_.__r.__words[0] = v431 + v429;
      v635.__r_.__value_.__l.__size_ = v430 - v431;
      llvm::StringRef::str(&__p, &v635);
      LOWORD(v618) = 260;
      *v617 = &__p;
      llvm::Value::setName();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v427;
      v428 -= 8;
    }

    while (v428);
  }

  v93 = *v1;
  if (v576)
  {
    if ((*(*&v93 + 400))(v1))
    {
      v432 = "Could not statically determine the target of a texture write";
    }

    else
    {
      v432 = "Could not resolve texture/sampler references";
    }

    std::string::append((v1 + *(*v1 - 24) + 1656), v432);
    goto LABEL_501;
  }

LABEL_503:
  if ((*(*(v1 + *(*&v93 - 24) + 1688) + 1954) & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    operator new();
  }

  v433 = *(v1 + 102);
  v434 = (v1 + 824);
  if (v433 != (v1 + 824))
  {
    v435 = v595 + 1696;
    do
    {
      v436 = v433[6];
      if (v436)
      {
        if (*(v436 + 1))
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*&v435[*(*v595 - 24)]))
          {
            v437 = *&v435[*(*v595 - 24)];
            __p.__r_.__value_.__r.__words[0] = llvm::Value::getName(v436);
            __p.__r_.__value_.__l.__size_ = v438;
            llvm::StringRef::str(v617, &__p);
            v439 = v617[23] >= 0 ? v617 : *v617;
            AGCTargetPrinter::printMessage(v437, "%s: image or sample GV %s still has references: \n", "void AGCLLVMUserObject::cleanupSamplerGlobalVariables()", v439);
            if ((v617[23] & 0x80000000) != 0)
            {
              operator delete(*v617);
            }
          }

          v440 = *(v436 + 1);
          if (v440)
          {
            v441 = MEMORY[0x277D821F8] + 16;
            do
            {
              memset(&__p, 0, sizeof(__p));
              *&v617[8] = 0;
              BYTE8(v618) = 0;
              *&v619 = 0;
              DWORD2(v619) = 1;
              *&v617[24] = 0;
              *&v618 = 0;
              *&v617[16] = 0;
              *v617 = v441;
              *&v620 = &__p;
              llvm::raw_ostream::SetUnbuffered(v617);
              llvm::Value::print(*(v440 + 24), v617);
              if (AGCTargetPrinter::isValidToPrintMessage(*&v435[*(*v595 - 24)]))
              {
                v442 = v620;
                if (*(v620 + 23) < 0)
                {
                  v442 = *v620;
                }

                AGCTargetPrinter::printMessage(*&v435[*(*v595 - 24)], "\t%s\n", v442);
              }

              llvm::raw_ostream::~raw_ostream(v617);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v440 = *(v440 + 8);
            }

            while (v440);
          }
        }

        else
        {
          llvm::GlobalVariable::eraseFromParent(v433[6]);
        }
      }

      v443 = v433[1];
      if (v443)
      {
        do
        {
          v444 = v443;
          v443 = *v443;
        }

        while (v443);
      }

      else
      {
        do
        {
          v444 = v433[2];
          v15 = *v444 == v433;
          v433 = v444;
        }

        while (!v15);
      }

      v433 = v444;
    }

    while (v444 != v434);
  }

  v445 = v595;
  std::__tree<llvm::WeakVH>::destroy(*(v595 + 103));
  *(v595 + 102) = v434;
  *v434 = 0u;
  v446 = *(v595 + 190);
  v447 = v594;
  if (v446 || *(v595 + 191))
  {
    v448 = (v595 + 752);
    v449 = *(v595 + 192);
    if (v449 <= 4 * v446 || v449 < 0x41)
    {
      *&v617[8] = 2uLL;
      *&v617[24] = -4096;
      *v617 = &unk_2825A7378;
      *&v618 = 0;
      *&__p.__r_.__value_.__r.__words[1] = 2uLL;
      v639 = -8192;
      __p.__r_.__value_.__r.__words[0] = &unk_2825A7378;
      v640 = 0;
      if (v449)
      {
        v454 = *v448;
        v455 = 48 * v449;
        v456 = (v454 + 32);
        do
        {
          llvm::ValueHandleBase::operator=((v456 - 3), &v617[8]);
          *v456 = v618;
          v456 += 6;
          v455 -= 48;
        }

        while (v455);
        v457 = v639;
        *(v595 + 95) = 0;
        if (v457 != -8192 && v457 != -4096 && v457 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&__p.__r_.__value_.__r.__words[1]);
        }
      }

      else
      {
        *(v595 + 95) = 0;
      }

      if (*&v617[24] != -8192 && *&v617[24] != -4096 && *&v617[24])
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v617[8]);
      }

      v447 = v594;
    }

    else
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::destroyAll(v595 + 188);
      v450 = 1 << (33 - __clz(v446 - 1));
      if (v450 <= 64)
      {
        v450 = 64;
      }

      if (v446)
      {
        v451 = v450;
      }

      else
      {
        v451 = 0;
      }

      if (v451 == *(v595 + 192))
      {
LABEL_544:
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(v595 + 94);
      }

      else
      {
        llvm::deallocate_buffer((3 * v449), *v448, (48 * v449));
        if (v451)
        {
          v452 = (4 * v451 / 3u + 1) | ((4 * v451 / 3u + 1) >> 1);
          v453 = v452 | (v452 >> 2) | ((v452 | (v452 >> 2)) >> 4);
          LODWORD(v453) = (((v453 | (v453 >> 8)) >> 16) | v453 | (v453 >> 8)) + 1;
          *(v595 + 192) = v453;
          *(v595 + 94) = MEMORY[0x20F330650](48 * v453, 8);
          goto LABEL_544;
        }

        *v448 = 0;
        *(v595 + 95) = 0;
        *(v595 + 192) = 0;
      }
    }
  }

  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(v595 + 97);
  if (*(v595 + 118) == *(v595 + 119))
  {
    goto LABEL_737;
  }

  v459 = *v595;
  v460 = *(v595 + *(*v595 - 24) + 2136);
  v461 = v460 + 8;
  v462 = *(v460 + 16);
  if (v462 == v460 + 8)
  {
    v465 = 0;
    v464 = 0;
    v463 = 0;
  }

  else
  {
    v463 = 0;
    v464 = 0;
    v465 = 0;
    do
    {
      if (v462)
      {
        v466 = (v462 - 56);
      }

      else
      {
        v466 = 0;
      }

      if (*(v466 + 1))
      {
        if ((*(v466 + 34) & 0x40) != 0 && (v467 = llvm::GlobalObject::getSectionImpl(v466), v468 == 11) && (*v467 == 0x74735F6567616D69 ? (v469 = *(v467 + 3) == 0x65746174735F6567) : (v469 = 0), v469))
        {
          if (*(*v466 + 8) == 17)
          {
            v463 = (v463 + *(*v466 + 32));
          }

          else
          {
            v463 = (v463 + 1);
          }
        }

        else if ((*(v466 + 34) & 0x40) != 0 && (v470 = llvm::GlobalObject::getSectionImpl(v466), v471 == 13) && (*v470 == 0x5F72656C706D6173 ? (v472 = *(v470 + 5) == 0x65746174735F7265) : (v472 = 0), v472))
        {
          ++v464;
        }

        else if ((*(v466 + 34) & 0x40) != 0 && (SectionImpl = llvm::GlobalObject::getSectionImpl(v466), v474 == 15) && (*SectionImpl == 0x746E6174736E6F63 ? (v475 = *(SectionImpl + 7) == 0x7265766972645F74) : (v475 = 0), v475) || (*(v466 + 34) & 0x40) != 0 && (v476 = llvm::GlobalObject::getSectionImpl(v466), v477 == 16) && (*v476 == 0x746E6174736E6F63 ? (v478 = v476[1] == 0x72656C706D61735FLL) : (v478 = 0), v478))
        {
          ++v465;
        }
      }

      v462 = *(v462 + 8);
    }

    while (v462 != v461);
    v445 = v595;
    v459 = *v595;
  }

  v479 = *(v445 + *(v459 - 24) + 2168);
  v480 = v464 + v465;
  v481 = (*(*v479 + 504))(v479, v463, (v464 + v465));
  v447 = v594;
  if (v481)
  {
LABEL_737:
    if (((*(*v445 + 408))(v445) & 1) == 0)
    {
      v482 = *(v445 + *(*v445 - 24) + 2136);
      v483 = *(v482 + 32);
      v560 = (v482 + 24);
      if (v483 != (v482 + 24))
      {
        do
        {
          v564 = v483[1];
          v592 = (v483 - 7);
          if (v483)
          {
            v484 = (v483 - 7);
          }

          else
          {
            v484 = 0;
          }

          v485 = *&v570[*(*v445 - 24)];
          v486 = llvm::Value::getName(v484);
          if ((*(*v485 + 888))(v485, v486, v487))
          {
            if (*(*&v570[*(*v445 - 24)] + 1865) == 1 && llvm::Value::hasNUsesOrMore(v592))
            {
              {
                AGCLLVMUserObject::replaceIndirectTextureWriteFunctionUses(llvm::Function *)::force_inline_env_var = 1;
              }

              v488 = AGCLLVMUserObject::replaceIndirectTextureWriteFunctionUses(llvm::Function *)::force_inline_env_var;
            }

            else
            {
              v488 = 1;
            }

            v567 = v488;
            v489 = *(v483 - 6);
            if (v489)
            {
              v579 = 0;
              do
              {
                v490 = 0;
                v491 = *(v489 + 24);
                v571 = *(v489 + 8);
                v635.__r_.__value_.__r.__words[0] = &v635.__r_.__value_.__r.__words[2];
                v635.__r_.__value_.__l.__size_ = 0x1000000000;
                while (1)
                {
                  v492 = llvm::CallBase::arg_end(v491);
                  v493 = v491 - 32 * (*(v491 + 20) & 0x7FFFFFF);
                  if (v490 >= ((v492 - v493) >> 5))
                  {
                    v577 = 0;
                    LODWORD(v490) = 0;
                    goto LABEL_633;
                  }

                  v494 = *(v493 + 32 * v490);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v635, v494);
                  v495 = *(v494 + 16);
                  do
                  {
                    if (v495 != 77)
                    {
                      break;
                    }

                    v494 = *(v494 - 32);
                    v495 = *(v494 + 16);
                  }

                  while (v494);
                  if (v495 == 84)
                  {
                    v496 = *(v494 - 32);
                    if (v496)
                    {
                      if (!*(v496 + 16) && *(v496 + 24) == *(v494 + 72))
                      {
                        v497 = llvm::Value::getName(v496);
                        if (v498 == 21)
                        {
                          v499 = *v497 == 0x7867612E6D766C6CLL && v497[1] == 0x657275747865742ELL;
                          if (v499 && *(v497 + 13) == 0x6574617453657275)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  ++v490;
                }

                v577 = *(v494 - 32 * (*(v494 + 20) & 0x7FFFFFF) + 32);
LABEL_633:
                v501 = (v490 + 1);
                for (k = v491 + 32 * v501; ; k += 32)
                {
                  v503 = llvm::CallBase::arg_end(v491);
                  v504 = *(v491 + 20) & 0x7FFFFFF;
                  if (v501 >= ((v503 - (v491 + 32 * -v504)) >> 5))
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v635, *(k - 32 * v504));
                  LODWORD(v501) = v501 + 1;
                }

                if (v577 && *(v577 + 16) >= 0x15u)
                {
                  v505 = v579;
                  if (!(v567 & 1 | (v579 != 0)))
                  {
                    v506 = llvm::Value::getName(v592);
                    v507 = *&v570[*(*v445 - 24)];
                    if ((*(*v507 + 896))(v507, v506, v508))
                    {
                      v509 = *(v491 - 32 * (*(v491 + 20) & 0x7FFFFFF));
                      v510 = (v509 + 24);
                      if (*(v509 + 32) >= 0x41u)
                      {
                        v510 = *v510;
                      }

                      v511 = *v510;
                    }

                    else
                    {
                      v511 = -1;
                    }

                    v605.n128_u64[0] = llvm::Value::getName(v592);
                    v605.n128_u64[1] = v512;
                    if (v511 < 0)
                    {
                      v513 = 8;
                    }

                    else
                    {
                      v513 = 9;
                    }

                    if (v511 < 0)
                    {
                      v514 = "llvm.agx";
                    }

                    else
                    {
                      v514 = "llvm.agx2";
                    }

                    llvm::StringRef::split(&v602, &v605, v514, v513);
                    llvm::StringRef::str(&v599, &v603);
                    if (v511 < 0)
                    {
                      std::string::basic_string[abi:nn200100]<0>(&v598, "agx.air.indirect");
                    }

                    else
                    {
                      std::string::basic_string[abi:nn200100]<0>(v617, "agx2.air.indirect.format");
                      std::to_string(&__p, v511);
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

                      v517 = std::string::append(v617, p_p, size);
                      v518 = v517->__r_.__value_.__r.__words[2];
                      *&v598.__r_.__value_.__l.__data_ = *&v517->__r_.__value_.__l.__data_;
                      v598.__r_.__value_.__r.__words[2] = v518;
                      v517->__r_.__value_.__l.__size_ = 0;
                      v517->__r_.__value_.__r.__words[2] = 0;
                      v517->__r_.__value_.__r.__words[0] = 0;
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if ((v617[23] & 0x80000000) != 0)
                      {
                        operator delete(*v617);
                      }
                    }

                    if ((v601 & 0x80u) == 0)
                    {
                      v519 = &v599;
                    }

                    else
                    {
                      v519 = v599;
                    }

                    if ((v601 & 0x80u) == 0)
                    {
                      v520 = v601;
                    }

                    else
                    {
                      v520 = v600;
                    }

                    std::string::append(&v598, v519, v520);
                    v505 = llvm::Module::getFunction();
                    if (!v505)
                    {
                      *v617 = &v617[16];
                      *&v617[8] = 0x1000000000;
                      if (*(v483 - 38))
                      {
                        llvm::Function::BuildLazyArguments(v592);
                      }

                      for (m = v483[4]; ; m += 5)
                      {
                        if (*(v483 - 19))
                        {
                          llvm::Function::BuildLazyArguments(v592);
                        }

                        if (m == (v483[4] + 40 * v483[5]))
                        {
                          Int16Ty = llvm::Type::getInt16Ty(*(v445 + *(*v445 - 24) + 1776), v521);
                          *(*v617 + 8 * v490) = Int16Ty;
                          llvm::FunctionType::get();
                          llvm::Module::getOrInsertFunction();
                          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
                          __p.__r_.__value_.__l.__size_ = 0x1000000000;
                          v580 = v525;
                          if (*(v525 + 12))
                          {
                            v526 = 0;
                            v527 = 0;
                            do
                            {
                              if (*(v525 + 9))
                              {
                                llvm::Function::BuildLazyArguments(v580);
                                v525 = v580;
                              }

                              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, *(v525 + 11) + v526);
                              v525 = v580;
                              ++v527;
                              v526 += 40;
                            }

                            while (v527 < *(v580 + 12));
                          }

                          v596[0] = "entry";
                          v597 = 259;
                          operator new();
                        }

                        v523 = *m;
                        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v617, v523);
                      }
                    }

                    if (SHIBYTE(v598.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v528 = v505;
                      operator delete(v598.__r_.__value_.__l.__data_);
                      v505 = v528;
                    }

                    if (v601 < 0)
                    {
                      v529 = v505;
                      operator delete(v599);
                      v505 = v529;
                    }
                  }

                  v579 = v505;
                  v530 = *(v491 + 40);
                  *v617 = "indirect.tex.write.end";
                  LOWORD(v618) = 259;
                  v531 = llvm::BasicBlock::splitBasicBlock();
                  v532 = *(v530 + 40);
                  if (v532 == v530 + 40)
                  {
                    v535 = 0;
                  }

                  else
                  {
                    v533 = (v532 - 24);
                    if (v532)
                    {
                      v534 = v532 - 24;
                    }

                    else
                    {
                      v534 = 0;
                    }

                    if (*(v534 + 16) - 29 >= 0xB)
                    {
                      v535 = 0;
                    }

                    else
                    {
                      v535 = v533;
                    }
                  }

                  llvm::Instruction::eraseFromParent(v535);
                  v536 = v445 + *(*v445 - 24);
                  *(v536 + 220) = v530;
                  *(v536 + 221) = v530 + 40;
                  v537 = v445 + *(*v445 - 24);
                  v538 = *(v537 + 237);
                  LOWORD(v618) = 257;
                  v539 = llvm::IRBuilderBase::CreateCast((v537 + 1712), 38, v577, v538, v617);
                  if (v567)
                  {
                    v540 = *(v445 + 879);
                    llvm::IRBuilderBase::CreateSwitch(&v447[*(*v445 - 24)], v539, v531, v540);
                    if (v540)
                    {
                      llvm::ConstantInt::get();
                      llvm::ConstantInt::get();
                      *v617 = "indirect.switch.case";
                      LOWORD(v618) = 259;
                      operator new();
                    }
                  }

                  else
                  {
                    *(v635.__r_.__value_.__r.__words[0] + 8 * v490) = v539;
                    v541 = *(*v445 - 24);
                    LOWORD(v618) = 257;
                    llvm::IRBuilderBase::CreateCall(&v447[v541], *(v579 + 3), v579, v635.__r_.__value_.__l.__data_, LODWORD(v635.__r_.__value_.__r.__words[1]), v617);
                    llvm::IRBuilderBase::CreateBr(&v447[*(*v445 - 24)], v531, v542);
                  }

                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v491);
                }

                if (v635.__r_.__value_.__l.__data_ != &v635.__r_.__value_.__r.__words[2])
                {
                  free(v635.__r_.__value_.__l.__data_);
                }

                v489 = v571;
              }

              while (v571);
            }
          }

          v483 = v564;
        }

        while (v564 != v560);
      }
    }

    if (v555)
    {
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(v445, 0, 0);
      v82 = 1;
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(v445, 0, 1u);
      AGCLLVMUserObject::buildImageTextureBufferLength(v445, 0);
    }

    else
    {
      v82 = 1;
    }
  }

  else
  {
    std::to_string(&v635, v480 + v463);
    v544 = std::string::insert(&v635, 0, "Total number of textures and samplers (");
    v545 = v544->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v544->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v545;
    v544->__r_.__value_.__l.__size_ = 0;
    v544->__r_.__value_.__r.__words[2] = 0;
    v544->__r_.__value_.__r.__words[0] = 0;
    v546 = std::string::append(&__p, ") exceeds GPU allowance.");
    v547 = v546->__r_.__value_.__r.__words[2];
    *v617 = *&v546->__r_.__value_.__l.__data_;
    *&v617[16] = v547;
    v546->__r_.__value_.__l.__size_ = 0;
    v546->__r_.__value_.__r.__words[2] = 0;
    v546->__r_.__value_.__r.__words[0] = 0;
    if (v617[23] >= 0)
    {
      v548 = v617;
    }

    else
    {
      v548 = *v617;
    }

    if (v617[23] >= 0)
    {
      v549 = v617[23];
    }

    else
    {
      v549 = *&v617[8];
    }

    std::string::append((v445 + *(*v445 - 24) + 1656), v548, v549);
    if ((v617[23] & 0x80000000) != 0)
    {
      operator delete(*v617);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v635.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v635.__r_.__value_.__l.__data_);
    }

    v82 = 0;
  }

LABEL_711:
  if (v606 != v608)
  {
    free(v606);
  }

LABEL_713:
  if (v609[0] != v610)
  {
    free(v609[0]);
  }

  if (v611 != v613)
  {
    free(v611);
  }

  if (v614 != v616)
  {
    free(v614);
  }

  return v82;
}