llvm::Instruction *sub_23C4BC894(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.rsqrt");
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

uint64_t sub_23C4BC958(uint64_t a1, llvm::ConstantFP **a2, uint64_t a3)
{
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  v11 = 257;
  v6 = sub_23C4BBCA0(a1 + 8, a2, a3, v10);
  v7 = (*(*a1 + 24))(a1, v6);
  v11 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v11 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v11 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v11 = 257;
  sub_23C4A0BD4(a1 + 8, v7, Select, v10);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Instruction *sub_23C4BCACC(uint64_t a1, llvm::ConstantFP **a2, int a3)
{
  v6 = *a2;
  v7 = llvm::ConstantFP::get();
  v26 = 257;
  v8 = sub_23C49EA2C(a1 + 8, a2, v7, v25);
  if (a3)
  {
    v9 = llvm::ConstantFP::get();
    v26 = 257;
    v8 = sub_23C4A0BD4(a1 + 8, v8, v9, v25);
  }

  v10 = sub_23C4BBA04(a1, v8);
  v26 = 257;
  v11 = sub_23C4A0EC4(a1 + 8, v8, v10, v25);
  v12 = llvm::ConstantFP::get();
  v13 = llvm::ConstantFP::get();
  v26 = 257;
  v14 = sub_23C49EA2C(a1 + 8, v11, v12, v25);
  v15 = *(a1 + 344);
  if ((*(v15 + 1650) & 1) == 0)
  {
    v26 = 257;
    v16 = sub_23C4A0EC4(a1 + 8, v13, v14, v25);
    v17 = sub_23C4BCCA4(a1, v14, v16);
    v26 = 257;
    v18 = sub_23C4A0EC4(a1 + 8, v14, v12, v25);
    v14 = sub_23C4BCDAC(a1, v17, v18);
    v15 = *(a1 + 344);
  }

  v24 = v14;
  v19 = 1128;
  if (v6 == *(a1 + 152))
  {
    v19 = 1136;
  }

  v20 = *(v15 + v19);
  if (v20)
  {
    v21 = strlen(*(v15 + v19));
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_23C49EB10(a1, v20, v21, v6, v6);
  v26 = 257;
  return sub_23C497A7C((a1 + 8), *(v22 + 24), v22, &v24, 1, v25);
}

uint64_t sub_23C4BCCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

  v8 = (*(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) & 2) == 0 && v6 == 2;
  v9 = *(a1 + 344);
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v10 = (*(*v9 + 48))(v9, &v12, a2, a3, v8);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4BCDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

  v8 = (*(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) & 2) == 0 && v6 == 2;
  v9 = *(a1 + 344);
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v10 = (*(*v9 + 56))(v9, &v12, a2, a3, v8);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4BCEB4(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = sub_23C4BCACC(a1, a2, 0);
  v5 = sub_23C4BCACC(a1, a2, 1);
  v8 = 257;
  return sub_23C4BBCA0(a1 + 8, v4, v5, v7);
}

llvm::Instruction *sub_23C4BCF20(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = **(*a3 + 16);
  if (((*a2)[2] & 0xFE) == 0x12 && (v7 = v5[8], v7 != 1))
  {
    v11 = llvm::UndefValue::get();
    v12 = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v24 = 257;
        v14 = llvm::ConstantInt::get();
        v15 = sub_23C5057E8(a1 + 8, a2, v14, v23);
        v16 = sub_23C4BCACC(a1, v15, 1);
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v5);
        if (ScalarSizeInBits > llvm::Type::getScalarSizeInBits(v6))
        {
          v16 = sub_23C505300(a1, v16, v6);
        }

        v24 = 257;
        v18 = llvm::ConstantInt::get();
        v12 = sub_23C505AA8(a1 + 8, v12, v16, v18, v23);
        v19 = sub_23C4BCACC(a1, v15, 0);
        v24 = 257;
        v20 = llvm::ConstantInt::get();
        v11 = sub_23C505AA8(a1 + 8, v11, v19, v20, v23);
      }
    }

    sub_23C4BA8C0((a1 + 8), v12, a3, 0);
    return v11;
  }

  else
  {
    v8 = sub_23C4BCACC(a1, a2, 1);
    v9 = llvm::Type::getScalarSizeInBits(v5);
    if (v9 > llvm::Type::getScalarSizeInBits(v6))
    {
      v8 = sub_23C505300(a1, v8, v6);
    }

    sub_23C4BA8C0((a1 + 8), v8, a3, 0);

    return sub_23C4BCACC(a1, a2, 0);
  }
}

llvm::Instruction *sub_23C4BD164(uint64_t a1, uint64_t a2)
{
  v12 = 257;
  v4 = sub_23C49EA2C(a1 + 8, a2, a2, v11);
  v5 = llvm::ConstantFP::get();
  v10[16] = 257;
  v6 = sub_23C4A0EC4(a1 + 8, v4, v5, v10);
  v7 = sub_23C4BBBDC(a1, v6);
  v12 = 257;
  v8 = sub_23C4A0BD4(a1 + 8, a2, v7, v11);
  return sub_23C4BD208(a1, v8);
}

llvm::Instruction *sub_23C4BD208(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.log");
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

llvm::Instruction *sub_23C4BD2CC(uint64_t a1, uint64_t a2)
{
  v12 = 257;
  v4 = sub_23C49EA2C(a1 + 8, a2, a2, v11);
  v5 = llvm::ConstantFP::get();
  v10[16] = 257;
  v6 = sub_23C4A0BD4(a1 + 8, v4, v5, v10);
  v7 = sub_23C4BBBDC(a1, v6);
  v12 = 257;
  v8 = sub_23C4A0BD4(a1 + 8, a2, v7, v11);
  return sub_23C4BD208(a1, v8);
}

uint64_t sub_23C4BD370(uint64_t a1, llvm::Type *a2)
{
  v4 = llvm::ConstantFP::get();
  v12 = 257;
  v5 = sub_23C4A0BD4(a1 + 8, v4, a2, v11);
  v12 = 257;
  v6 = sub_23C4A0EC4(a1 + 8, v4, a2, v11);
  v12 = 257;
  v7 = sub_23C4BBCA0(a1 + 8, v5, v6, v11);
  v8 = sub_23C4BD208(a1, v7);
  v9 = llvm::ConstantFP::get();
  v12 = 257;
  return sub_23C49EA2C(a1 + 8, v8, v9, v11);
}

uint64_t sub_23C4BD440(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BD4E0(a1, a2);
  v12 = 257;
  v5 = sub_23C4BB8E4(a1 + 8, a2, v11);
  v6 = sub_23C4BD4E0(a1, v5);
  v12 = 257;
  v7 = sub_23C4A0BD4(a1 + 8, v4, v6, v11);
  v8 = llvm::ConstantFP::get();
  v10[16] = 257;
  return sub_23C49EA2C(a1 + 8, v7, v8, v10);
}

llvm::Instruction *sub_23C4BD4E0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.exp");
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

uint64_t sub_23C4BD5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 257;
  v6 = sub_23C4BBCA0(a1 + 8, a2, a3, v16);
  v7 = *(a1 + 344);
  v18 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
  v8 = *(a1 + 104);
  v20 = v8;
  v12 = v18;
  v13 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v8 = v20;
  }

  v14 = v8;
  v9 = sub_23C4A2368(v7, &v12, v6, "llvm.trunc");
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = 257;
  v10 = sub_23C49EA2C(a1 + 8, v9, a3, v16);
  v15 = 257;
  return sub_23C4A0EC4(a1 + 8, a2, v10, &v12);
}

uint64_t sub_23C4BD6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 257;
  v6 = sub_23C4BBCA0(a1 + 8, a2, a3, v11);
  v7 = sub_23C4BBA04(a1, v6);
  v12 = 257;
  v8 = sub_23C49EA2C(a1 + 8, v7, a3, v11);
  v10[16] = 257;
  return sub_23C4A0EC4(a1 + 8, a2, v8, v10);
}

llvm::Value *sub_23C4BD74C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BBA04(a1, a2);
  v18 = 257;
  v5 = sub_23C4A0EC4(a1 + 8, a2, v4, v17);
  v6 = *a2;
  v7 = *(*a2 + 8);
  v8 = v7;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(v6 + 16) + 8);
  }

  if (v8 == 2 && (*(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) & 4) == 0)
  {
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v7 = *(**(v6 + 16) + 8);
    }

    if (v7 == 2)
    {
      v9 = 160;
    }

    else
    {
      v9 = 152;
    }

    if (v7 == 2)
    {
      v10 = v17;
    }

    else
    {
      v10 = &v16;
    }

    v11 = llvm::ConstantInt::get();
    v12 = *(a1 + v9);
    *(v10 + 16) = 257;
    v14 = sub_23C49ACF8(a1 + 8, 49, v11, v12, v10);
    if ((*(v6 + 8) & 0xFE) == 0x12)
    {
      sub_23C5060BC(a1, *(v6 + 32), v14, v13);
    }

    sub_23C4BB410(a1, a2);
    v18 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantFP::get();
    v18 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v5;
}

uint64_t sub_23C4BD904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a3, v8);
  v9 = 257;
  return sub_23C4A0BD4(a1 + 8, v6, a4, v8);
}

llvm::Instruction *sub_23C4BD964(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v8 = 257;
  v5 = sub_23C49EA2C(a1 + 8, a2, v4, v7);
  return sub_23C4BD9C8(a1, v5);
}

llvm::Instruction *sub_23C4BD9C8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.exp2");
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

uint64_t sub_23C4BDA8C(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v5 = sub_23C4BDAFC(a1, a2);
  v8 = 257;
  return sub_23C49EA2C(a1 + 8, v5, v4, v7);
}

llvm::Instruction *sub_23C4BDAFC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.log2");
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

uint64_t sub_23C4BDBC0(uint64_t a1, uint64_t *a2)
{
  sub_23C4BB410(a1, a2);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateSelect();
  v11 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v13 = 257;
  v5 = sub_23C4A0BD4(a1 + 8, a2, Select, v12);
  v6 = *(a1 + 192);
  v13 = 257;
  v7 = sub_23C4BB4D4(a1 + 8, v5, v6, v12);
  v8 = *(a1 + 160);
  v11 = 257;
  sub_23C49EF30(a1 + 8, v7, v8, &v10);
  llvm::ConstantFP::get();
  v13 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v13 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4BDD84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BD4E0(a1, a2);
  v12 = 257;
  v5 = sub_23C4BB8E4(a1 + 8, a2, v11);
  v6 = sub_23C4BD4E0(a1, v5);
  v12 = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v4, v6, v11);
  v8 = llvm::ConstantFP::get();
  v10[16] = 257;
  return sub_23C49EA2C(a1 + 8, v7, v8, v10);
}

uint64_t sub_23C4BDE24(uint64_t a1, llvm::Type *a2)
{
  v4 = llvm::ConstantFP::get();
  v13 = 257;
  v5 = sub_23C49EA2C(a1 + 8, a2, v4, v12);
  v6 = sub_23C4BD4E0(a1, v5);
  v7 = llvm::ConstantFP::get();
  v13 = 257;
  v8 = sub_23C4A0EC4(a1 + 8, v6, v7, v12);
  v9 = llvm::ConstantFP::get();
  v13 = 257;
  v10 = sub_23C4A0BD4(a1 + 8, v6, v9, v12);
  v13 = 257;
  return sub_23C4BBCA0(a1 + 8, v8, v10, v12);
}

unsigned __int8 *sub_23C4BDEF4(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = &qword_27E1F6980;
  if ((atomic_load_explicit(&qword_27E1F69A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F69A0))
  {
    qword_27E1F6980 = 0;
    *&dword_27E1F6988 = 0;
    qword_27E1F6990 = 0x1800000000;
    __cxa_atexit(sub_23C4BE7C4, &qword_27E1F6980, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F69A0);
  }

  if (!dword_27E1F698C)
  {
    v68 = a2;
    v69 = a1;
    v75 = 0;
    v89 = &v91;
    v90 = xmmword_23C532530;
    while (1)
    {
      v7 = 0;
      do
      {
        v8 = 0;
        v82 = off_278BBF3C0[v7];
        __s = v82 + 2;
        v70 = v7;
        v76 = byte_23C532B33[v7];
        v77 = *v82;
        do
        {
          v9 = off_278BBF3C0[v8];
          if (*v82 == 102)
          {
            v74 = 1;
          }

          else
          {
            v74 = 2;
            if (*v9 != 102)
            {
              v73 = 0;
              v10 = 1;
              goto LABEL_11;
            }
          }

          v73 = 1;
          v10 = 4;
LABEL_11:
          v71 = v8;
          v72 = v10;
          v11 = 0;
          v80 = byte_23C532B33[v8];
          v79 = v9 + 2;
          v81 = off_278BBF3C0[v8];
          do
          {
            v12 = 0;
            v13 = 0;
            v14 = v74;
            if ((v73 & (v11 == 0)) == 0)
            {
              v14 = v11;
            }

            v83 = v14;
            v15 = 1;
            do
            {
              v84 = *v9;
              v85 = *v82;
              *&v90 = 0;
              sub_23C4BE764(&v89, *v82);
              sub_23C4BE764(&v89, v82[1]);
              v16 = *(&off_278BBF3A0 + v75);
              v17 = strlen(v16);
              sub_23C4B01BC(&v89, v16, &v16[v17]);
              v18 = strlen(__s);
              sub_23C4B01BC(&v89, __s, &__s[v18]);
              sub_23C4B01BC(&v89, ".", "");
              sub_23C4BE764(&v89, *v9);
              sub_23C4BE764(&v89, v9[1]);
              v19 = strlen(v16);
              sub_23C4B01BC(&v89, v16, &v16[v19]);
              v20 = strlen(v79);
              sub_23C4B01BC(&v89, v79, &v79[v20]);
              v21 = v11;
              v22 = strlen(*(&off_278BBF418 + v11));
              sub_23C4B01BC(&v89, *(&off_278BBF418 + v11), *(&off_278BBF418 + v11) + v22);
              v23 = strlen(*(&off_278BBF448 + v13));
              sub_23C4B01BC(&v89, *(&off_278BBF448 + v13), *(&off_278BBF448 + v13) + v23);
              v24 = v89;
              v25 = v90;
              v26 = llvm::StringMapImpl::LookupBucketFor();
              v28 = *v6;
              v29 = v26;
              v30 = *(*v6 + 8 * v26);
              if (v30 == -8)
              {
                LODWORD(qword_27E1F6990) = qword_27E1F6990 - 1;
              }

              else if (v30)
              {
                v9 = v81;
                v11 = v21;
                goto LABEL_28;
              }

              v31 = v6;
              v32 = MEMORY[0x23EED4160](v25 + 25, 8);
              v33 = v32;
              v34 = v32 + 24;
              if (v25)
              {
                memcpy((v32 + 24), v24, v25);
              }

              *(v34 + v25) = 0;
              v33[1] = 0;
              v33[2] = 0;
              *v33 = v25;
              *(v28 + 8 * v29) = v33;
              v6 = v31;
              ++*(v31 + 3);
              v35 = (*v31 + 8 * llvm::StringMapImpl::RehashTable(v31));
              v9 = v81;
              v11 = v21;
              while (1)
              {
                v30 = *v35;
                if (*v35 && v30 != -8)
                {
                  break;
                }

                ++v35;
              }

LABEL_28:
              v27.i16[0] = v84;
              v27.i16[1] = v85;
              v37 = vand_s8(vceq_s16(vdup_lane_s32(v27, 0), 0x73007300660066), 0x1000100010001);
              *(v30 + 8) = vuzp1_s8(v37, v37).u32[0];
              *(v30 + 12) = v80;
              *(v30 + 13) = v76;
              *(v30 + 16) = v83;
              *(v30 + 20) = v12;
              v38 = v15 & (v77 != 102);
              v12 = 1;
              v13 = 1;
              v15 = 0;
            }

            while ((v38 & 1) != 0);
            ++v11;
          }

          while (v11 != v72);
          v8 = v71 + 1;
        }

        while (v71 != 10);
        v7 = v70 + 1;
      }

      while (v70 != 10);
      if (++v75 == 4)
      {
        if (v89 != &v91)
        {
          free(v89);
        }

        a2 = v68;
        a1 = v69;
        break;
      }
    }
  }

  Key = llvm::StringMapImpl::FindKey();
  v40 = Key;
  if (Key == -1)
  {
    v40 = *(v6 + 2);
  }

  v41 = *(*v6 + 8 * v40);
  v42 = *a2;
  if (*(v41 + 9) == 1)
  {
    v43 = *(v41 + 13);
    if (*(v41 + 8))
    {
      if (v43 >= *(v41 + 12))
      {
        v56 = *(a1 + 160);
        v92 = 257;
        return sub_23C4B284C(a1 + 8, v42, v56, &v89);
      }

      v44 = *(v41 + 16);
      if (v44 == 1 || v44 == 2)
      {
        v45 = *(a1 + 152);
        v92 = 257;
        return sub_23C49FEB4(a1 + 8, v42, v45, &v89);
      }

      return 0;
    }

    v51 = 160;
    if (v43 == 16)
    {
      v51 = 152;
    }

    if (*(v41 + 16) == 1)
    {
      v52 = *(a1 + v51);
      if (*(v41 + 10) == 1)
      {
        v92 = 257;
        return sub_23C49EF30(a1 + 8, v42, v52, &v89);
      }

      else
      {
        v87 = 257;
        return sub_23C49EF94(a1 + 8, v42, v52, v86);
      }
    }

    return 0;
  }

  if (!*(v41 + 8))
  {
    v53 = 0;
    v54 = *(v41 + 13);
    if (v54 <= 0xF)
    {
      if (v54 == 1)
      {
        v63 = sub_23C506198(a1, *a2, *(v41 + 10));
        v64 = llvm::ConstantInt::get();
        v92 = 257;
        return sub_23C497D84((a1 + 8), 33, v63, v64, &v89);
      }

      if (v54 != 8)
      {
        goto LABEL_81;
      }

      v55 = 176;
    }

    else
    {
      switch(v54)
      {
        case 0x40u:
          v55 = 200;
          break;
        case 0x20u:
          v55 = 192;
          break;
        case 0x10u:
          v55 = 184;
          break;
        default:
LABEL_81:
          if (v54 >= *(v41 + 12))
          {
            if (*(v41 + 10) == 1)
            {
              v92 = 257;
              v61 = a1 + 8;
              v62 = 40;
            }

            else
            {
              v92 = 257;
              v61 = a1 + 8;
              v62 = 39;
            }
          }

          else
          {
            v92 = 257;
            v61 = a1 + 8;
            v62 = 38;
          }

          return sub_23C49ACF8(v61, v62, v42, v53, &v89);
      }
    }

    v53 = *(a1 + v55);
    goto LABEL_81;
  }

  v47 = sub_23C504E2C(a1, *a2, 1);
  v48 = 0;
  v88 = v47;
  v49 = *(v41 + 13);
  if (v49 > 0xF)
  {
    switch(v49)
    {
      case 0x40u:
        v50 = 200;
        break;
      case 0x20u:
        v50 = 192;
        break;
      case 0x10u:
        v50 = 184;
        break;
      default:
        goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v49 == 1)
  {
    llvm::ConstantFP::get();
    v92 = 257;
    return llvm::IRBuilderBase::CreateFCmpHelper();
  }

  if (v49 == 8)
  {
    v50 = 176;
LABEL_70:
    v48 = *(a1 + v50);
  }

LABEL_71:
  v57 = *(v41 + 16);
  if (v57 == 2)
  {
    if (*(v41 + 11) == 1)
    {
      v92 = 257;
      return sub_23C4BB4D4(a1 + 8, v47, v48, &v89);
    }

    else
    {
      v92 = 257;
      return sub_23C49B2C8(a1 + 8, v47, v48, &v89);
    }
  }

  else
  {
    if (v57 != 1)
    {
      return 0;
    }

    v58 = *(a1 + 344);
    v59 = *(v58 + 1160);
    if (v59)
    {
      v60 = strlen(*(v58 + 1160));
    }

    else
    {
      v60 = 0;
    }

    v65 = sub_23C49EB10(a1, v59, v60, *(a1 + 192), *(a1 + 160));
    v92 = 257;
    v66 = sub_23C497A7C((a1 + 8), *(v65 + 24), v65, &v88, 1, &v89);
    v87 = 257;
    return sub_23C49B1E4(a1 + 8, v66, v48, 0, v86, v67);
  }
}

void *sub_23C4BE764(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

uint64_t sub_23C4BE7C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 25));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4BE840(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  sub_23C4BEBF4();
  Key = llvm::StringMapImpl::FindKey();
  v8 = 0;
  v9 = qword_27E1F69A8;
  if (Key == -1)
  {
    v10 = dword_27E1F69B0;
  }

  else
  {
    v10 = Key;
  }

  v11 = *(qword_27E1F69A8 + 8 * v10);
  v12 = *(v11 + 8);
  if (v12 > 2)
  {
    switch(v12)
    {
      case 3:
        v19 = *(a1 + 344);
        v30 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (a1 + 8));
        v32 = *(a1 + 104);
        v8 = (*(*v19 + 96))(v19, &v30, 7, *(a1 + 184), *a2, 1, 0);
        if (v31)
        {
LABEL_20:
          llvm::MetadataTracking::untrack();
        }

        break;
      case 4:
        v26 = *(a1 + 344);
        v27 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (a1 + 8));
        v29 = *(a1 + 104);
        v8 = (*(*v26 + 96))(v26, &v27, 8, *(a1 + 184), *a2, 1, 0);
        if (!v28)
        {
          return v8;
        }

        goto LABEL_20;
      case 5:
        v14 = *a2;
        v15 = *(*a1 + 96);

        return v15(a1, v14);
    }

    return v8;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v20 = **a2;
      if (*(v20 + 32) == 3)
      {
        if ((*(v20 + 8) & 0xFE) == 0x12)
        {
          v20 = **(v20 + 16);
        }

        v21 = sub_23C50593C(a1, *a2, 4, v7);
        *a2 = v21;
        NullValue = llvm::Constant::getNullValue(v20, v22);
        v40 = 257;
        v24 = llvm::ConstantInt::get();
        *a2 = sub_23C505AA8(a1 + 8, v21, NullValue, v24, v39);
      }

      v25 = *(a1 + 344);
      v36 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
      v38 = *(a1 + 104);
      v8 = (*(*v25 + 96))(v25, &v36, 5, *(a1 + 192), *a2, 1, *(*(v9 + 8 * v10) + 12));
      if (!v37)
      {
        return v8;
      }
    }

    else
    {
      if (v12 != 2)
      {
        return v8;
      }

      v13 = *(a1 + 344);
      v33 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
      v35 = *(a1 + 104);
      v8 = (*(*v13 + 96))(v13, &v33, 0, *(a1 + 184), *a2, 1, 0);
      if (!v34)
      {
        return v8;
      }
    }

    goto LABEL_20;
  }

  v17 = *a2;
  v18 = *(*a1 + 80);

  return v18(a1, v17, v11 + 12);
}

void sub_23C4BEBF4()
{
  if ((atomic_load_explicit(&qword_27E1F69C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F69C8))
  {
    qword_27E1F69A8 = 0;
    *&dword_27E1F69B0 = 0;
    qword_27E1F69B8 = 0x1000000000;
    __cxa_atexit(sub_23C4BF2FC, &qword_27E1F69A8, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F69C8);
  }

  if (!dword_27E1F69B4)
  {
    v0 = 0;
    v1 = 1;
    do
    {
      v2 = 0;
      v60 = v1;
      v3 = off_278BBF458[v0];
      v4 = 1;
      do
      {
        v5 = 0;
        v61 = v4;
        v6 = off_278BBF468[v2];
        do
        {
          v7 = atoi(v3);
          v8 = atoi(v6);
          v9 = off_278BBF478[v5];
          v10 = atoi(v9);
          sub_23C49F8D0(&v67, ".");
          if ((v10 & 0xFE) != 0)
          {
            std::string::append(&v67, "v");
            std::string::append(&v67, v9);
          }

          std::string::append(&v67, "f");
          std::string::append(&v67, v3);
          sub_23C49F8D0(&v66, v9);
          std::string::append(&v66, "x");
          std::string::append(&v66, v6);
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = &v67;
          }

          else
          {
            v11 = v67.__r_.__value_.__r.__words[0];
          }

          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v67.__r_.__value_.__l.__size_;
          }

          std::string::append(&v66, v11, size);
          std::operator+<char>();
          if (v65 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v65 >= 0)
          {
            v14 = v65;
          }

          else
          {
            v14 = v64;
          }

          v15 = (v7 << 32) | (v8 << 40) | (v10 << 48);
          *(*sub_23C4BF1F4(p_p, v14) + 8) = v15 | 0x100000000000000;
          if (v65 < 0)
          {
            operator delete(__p);
          }

          std::operator+<char>();
          if (v65 >= 0)
          {
            v16 = &__p;
          }

          else
          {
            v16 = __p;
          }

          if (v65 >= 0)
          {
            v17 = v65;
          }

          else
          {
            v17 = v64;
          }

          *(*sub_23C4BF1F4(v16, v17) + 8) = v15;
          if (v65 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          ++v5;
        }

        while (v5 != 3);
        v4 = 0;
        v2 = 1;
      }

      while ((v61 & 1) != 0);
      v1 = 0;
      v0 = 1;
    }

    while ((v60 & 1) != 0);
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = 0;
      v59 = v19;
      v21 = 1;
      do
      {
        v22 = 0;
        v62 = v21;
        if (v21)
        {
          v23 = ".rgb10.v3f";
        }

        else
        {
          v23 = ".rgb10a2.v4f";
        }

        v24 = (v18 << 40) | v20;
        v25 = 1;
        do
        {
          v26 = v25;
          if (v25)
          {
            v27 = "unorm";
          }

          else
          {
            v27 = "snorm";
          }

          v28 = (v24 | v22) ^ 0x10000000001;
          v29 = 1;
          do
          {
            v30 = v29;
            sub_23C49F8D0(&v67, v27);
            std::string::append(&v67, v23);
            std::string::append(&v67, off_278BBF458[v18]);
            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v67;
            }

            else
            {
              v31 = v67.__r_.__value_.__r.__words[0];
            }

            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v67.__r_.__value_.__l.__size_;
            }

            *(*sub_23C4BF1F4(v31, v32) + 8) = v28;
            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v67.__r_.__value_.__l.__data_);
            }

            v29 = 0;
          }

          while ((v30 & 1) != 0);
          v25 = 0;
          v22 = 0x100000000;
        }

        while ((v26 & 1) != 0);
        v21 = 0;
        v20 = 0x1000000000000;
      }

      while ((v62 & 1) != 0);
      v19 = 0;
      v18 = 1;
    }

    while ((v59 & 1) != 0);
    v33 = 0;
    v34 = 1;
    do
    {
      v35 = v34;
      sub_23C49F8D0(&v67, "unorm.rgb565.v3f");
      std::string::append(&v67, off_278BBF458[v33]);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v67;
      }

      else
      {
        v36 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v36, v37) + 8) = 2;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v34 = 0;
      v33 = 1;
    }

    while ((v35 & 1) != 0);
    v38 = 0;
    v39 = 1;
    do
    {
      v40 = v39;
      sub_23C49F8D0(&v66, "unorm4x8.srgb.v4f");
      v41 = std::string::append(&v66, off_278BBF458[v38]);
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v67;
      }

      else
      {
        v43 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v43, v44) + 8) = 5;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v39 = 0;
      v38 = 1;
    }

    while ((v40 & 1) != 0);
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = v46;
      sub_23C49F8D0(&v66, "unorm.rg11b10f.v3f");
      v48 = std::string::append(&v66, off_278BBF458[v45]);
      v49 = v48->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v67;
      }

      else
      {
        v50 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v50, v51) + 8) = 3;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v46 = 0;
      v45 = 1;
    }

    while ((v47 & 1) != 0);
    v52 = 0;
    v53 = 1;
    do
    {
      v54 = v53;
      sub_23C49F8D0(&v66, "unorm.rgb9e5.v3f");
      v55 = std::string::append(&v66, off_278BBF458[v52]);
      v56 = v55->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v67;
      }

      else
      {
        v57 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v57, v58) + 8) = 4;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v53 = 0;
      v52 = 1;
    }

    while ((v54 & 1) != 0);
  }
}

uint64_t *sub_23C4BF1F4(const void *a1, size_t a2)
{
  i = (qword_27E1F69A8 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F69B8) = qword_27E1F69B8 - 1;
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

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
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
  ++dword_27E1F69B4;
    ;
  }

  return i;
}

uint64_t sub_23C4BF2FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4BF378(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  sub_23C4BEBF4();
  Key = llvm::StringMapImpl::FindKey();
  v9 = 0;
  v10 = qword_27E1F69A8;
  if (Key == -1)
  {
    v11 = dword_27E1F69B0;
  }

  else
  {
    v11 = Key;
  }

  v12 = *(qword_27E1F69A8 + 8 * v11);
  v13 = *(v12 + 8);
  if (v13 > 2)
  {
    switch(v13)
    {
      case 3:
        if (a4 >= 3)
        {
          v27 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v28 = v27 >= 0x66313600;
          v29 = v27 > 0x66313600;
          v30 = !v28;
          v22 = v29 == v30;
          v20 = 160;
          if (v22)
          {
            v20 = 152;
          }
        }

        else
        {
          v20 = 160;
        }

        v31 = *(a1 + v20);
        v32 = *(a1 + 344);
        v46 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (a1 + 8));
        v48 = *(a1 + 104);
        v9 = (*(*v32 + 104))(v32, &v46, 7, v31, *a2, 1, 0);
        if (!v47)
        {
          return v9;
        }

        break;
      case 4:
        if (a4 >= 3)
        {
          v38 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v28 = v38 >= 0x66313600;
          v39 = v38 > 0x66313600;
          v40 = !v28;
          v22 = v39 == v40;
          v26 = 160;
          if (v22)
          {
            v26 = 152;
          }
        }

        else
        {
          v26 = 160;
        }

        v41 = *(a1 + v26);
        v42 = *(a1 + 344);
        v43 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
        v45 = *(a1 + 104);
        v9 = (*(*v42 + 104))(v42, &v43, 8, v41, *a2, 1, 0);
        if (!v44)
        {
          return v9;
        }

        break;
      case 5:
        v15 = *a2;
        v16 = *(*a1 + 104);

        return v16(a1, v15, a3, a4);
      default:
        return v9;
    }

LABEL_50:
    llvm::MetadataTracking::untrack();
    return v9;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (*(v12 + 14))
      {
        v21 = 5;
      }

      else
      {
        v21 = 4;
      }

      v22 = *(v12 + 13) == 0;
      v23 = 160;
      if (!v22)
      {
        v23 = 152;
      }

      v24 = *(a1 + v23);
      v25 = *(a1 + 344);
      v52 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (a1 + 8));
      v54 = *(a1 + 104);
      v9 = (*(*v25 + 104))(v25, &v52, v21, v24, *a2, 1, *(*(v10 + 8 * v11) + 12));
      if (!v53)
      {
        return v9;
      }
    }

    else
    {
      if (v13 != 2)
      {
        return v9;
      }

      if (a4 >= 3)
      {
        v33 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v28 = v33 >= 0x66313600;
        v34 = v33 > 0x66313600;
        v35 = !v28;
        v22 = v34 == v35;
        v14 = 160;
        if (v22)
        {
          v14 = 152;
        }
      }

      else
      {
        v14 = 160;
      }

      v36 = *(a1 + v14);
      v37 = *(a1 + 344);
      v49 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v50, (a1 + 8));
      v51 = *(a1 + 104);
      v9 = (*(*v37 + 104))(v37, &v49, 0, v36, *a2, 1, 0);
      if (!v50)
      {
        return v9;
      }
    }

    goto LABEL_50;
  }

  v18 = *a2;
  v19 = *(*a1 + 88);

  return v19(a1, v18, v12 + 12);
}

uint64_t sub_23C4BF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 72))(*(a1 + 72));
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
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C4BF8B0(uint64_t a1, llvm::Type ****a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (v4 == 117)
  {
    v8 = sub_23C506630(a1, *a2, v5, 34);
    v9 = a1;
    v10 = v7;
    v11 = 36;
    goto LABEL_5;
  }

  if (v4 == 115)
  {
    v8 = sub_23C506630(a1, *a2, v5, 38);
    v9 = a1;
    v10 = v7;
    v11 = 40;
LABEL_5:

    return sub_23C506630(v9, v8, v10, v11);
  }

  v13 = *(a1 + 344);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = *v6;
  if (((*v6)[1] & 0xFE) == 0x12)
  {
    v14 = *v14[2];
  }

  v15 = (*(*v13 + 72))(v13, &v16, v6, v5, v7, v14 == *(a1 + 160));
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t sub_23C4BFA14(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 184);
  if (*a2 == *(a1 + 176))
  {
    v6 = *(a1 + 184);
  }

  else
  {
    v6 = *a2;
    if (v4 != v5)
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(a1 + 344) + 784) + 42) == 1)
  {
    v6 = *(a1 + 192);
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

  v8 = sub_23C49EB10(a1, v7, 14, v4, v4);
  v14 = 257;
  v15 = sub_23C49ACF8(a1 + 8, 39, a2, v6, v13);
  v12 = 257;
  v9 = sub_23C497A7C((a1 + 8), *(v8 + 24), v8, &v15, 1, v11);
  v14 = 257;
  return sub_23C49ACF8(a1 + 8, 38, v9, v4, v13);
}

uint64_t sub_23C4BFB1C(uint64_t a1, llvm::ConstantInt **a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v11 = 257;
  v7 = sub_23C49A668(a1 + 8, v6, a2, v10);
  v9[16] = 257;
  return sub_23C4BF7D4(a1 + 8, v7, v6, v9);
}

uint64_t sub_23C4BFB98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = **a2;
  v8 = *(a2 + 16);
  v9 = *(a1 + 192);
  v30 = 257;
  v10 = sub_23C49ACF8(a1 + 8, 39, v5, v9, v29);
  v30 = 257;
  v11 = sub_23C49B560(a1 + 8, v10, v6, v29);
  v14 = sub_23C4BFB1C(a1, v8, v12, v13);
  v28 = 257;
  v15 = sub_23C49A8E0(a1 + 8, v11, v14, v27);
  if (*a3 == 115)
  {
    v16 = llvm::ConstantInt::get();
    v30 = 257;
    v17 = sub_23C4BF7D4(a1 + 8, v8, v16, v29);
    v28 = 257;
    v18 = sub_23C49A668(a1 + 8, v16, v17, v27);
    v30 = 257;
    v19 = sub_23C49A8E0(a1 + 8, v15, v18, v29);
    v20 = llvm::ConstantInt::get();
    v28 = 257;
    sub_23C497D84((a1 + 8), 33, v19, v20, v27);
    AllOnesValue = llvm::Constant::getAllOnesValue(*(a1 + 192), v21);
    v30 = 257;
    v23 = sub_23C49A668(a1 + 8, AllOnesValue, v8, v29);
    v28 = 257;
    sub_23C49A98C(a1 + 8, v15, v23, v27);
    v30 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  v24 = llvm::ConstantInt::get();
  v30 = 257;
  sub_23C497D84((a1 + 8), 32, v8, v24, v29);
  v28 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v30 = 257;
  return sub_23C49ACF8(a1 + 8, 38, Select, v7, v29);
}

uint64_t sub_23C4BFDAC(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = **a2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = sub_23C4BFB1C(a1, v8, a3, a4);
  v27 = 257;
  v11 = sub_23C49A668(a1 + 8, v10, v9, v26);
  v12 = *(a1 + 192);
  v27 = 257;
  v13 = sub_23C49ACF8(a1 + 8, 39, v5, v12, v26);
  v14 = *(a1 + 192);
  v27 = 257;
  v15 = sub_23C49ACF8(a1 + 8, 39, v6, v14, v26);
  v27 = 257;
  v17 = sub_23C4BFF4C(a1 + 8, v11, v26, v16);
  v25 = 257;
  v18 = sub_23C49A8E0(a1 + 8, v13, v17, v24);
  v27 = 257;
  v19 = sub_23C49A668(a1 + 8, v15, v9, v26);
  v25 = 257;
  v20 = sub_23C49A8E0(a1 + 8, v19, v11, v24);
  v27 = 257;
  sub_23C49A98C(a1 + 8, v18, v20, v26);
  v21 = llvm::ConstantInt::get();
  v27 = 257;
  sub_23C497D84((a1 + 8), 32, v8, v21, v26);
  v25 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v27 = 257;
  return sub_23C49ACF8(a1 + 8, 38, Select, v7, v26);
}

uint64_t sub_23C4BFF4C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, llvm::Instruction *a4)
{
  if (a2 && a2[16] <= 0x14u)
  {
    Not = (*(**(a1 + 72) + 208))(*(a1 + 72), a2, a3, a4);
    if (Not)
    {
      v7 = *(Not + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sub_23C49B15C(a1, Not, a3);
    }
  }

  else
  {
    Not = llvm::BinaryOperator::CreateNot();
    sub_23C49B15C(a1, Not, a3);
  }

  return Not;
}

uint64_t sub_23C4C0018(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_23C49F8D0(__p, *(*(a1 + 344) + 1088));
  if (v16 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v16 >= 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_23C49EB10(a1, v5, v6, *(a1 + 192), *(a1 + 192));
  v8 = *(a1 + 192);
  v14 = 257;
  v17 = sub_23C49ACF8(a1 + 8, 39, a2, v8, v13);
  v14 = 257;
  v9 = sub_23C497A7C((a1 + 8), *(v7 + 24), v7, &v17, 1, v13);
  v17 = v9;
  v10 = llvm::ConstantInt::get();
  v14 = 257;
  v17 = sub_23C49B560(a1 + 8, v9, v10, v13);
  v14 = 257;
  v11 = sub_23C49ACF8(a1 + 8, 38, v17, v4, v13);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

uint64_t sub_23C4C014C(uint64_t a1, llvm::Constant *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v5 = sub_23C505D44(a1, a2, v14);
  v6 = *&v14[0];
  if (v5 >= 2)
  {
    v7 = v5 - 1;
    v8 = v14 + 1;
    do
    {
      v9 = *v8;
      v13 = 257;
      if (a3)
      {
        v10 = sub_23C49A98C(a1 + 8, v6, v9, v12);
      }

      else
      {
        v10 = sub_23C49A8E0(a1 + 8, v6, v9, v12);
      }

      v6 = v10;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return v6;
}

uint64_t sub_23C4C0224(uint64_t a1, llvm::ConstantFP **a2)
{
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C0320(uint64_t a1, llvm::Type *a2, uint64_t a3, llvm::ConstantFP **a4)
{
  v8 = llvm::ConstantFP::get();
  v15 = 257;
  v9 = sub_23C4A0EC4(a1 + 8, v8, a4, v14);
  v13[16] = 257;
  v10 = sub_23C49EA2C(a1 + 8, a2, v9, v13);
  v15 = 257;
  v11 = sub_23C49EA2C(a1 + 8, a3, a4, v14);
  v15 = 257;
  return sub_23C4A0BD4(a1 + 8, v10, v11, v14);
}

uint64_t sub_23C4C03D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {

    return sub_23C50654C(a1, a2, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7 = 257;
    return sub_23C49EA2C(a1 + 8, a2, a3, v6);
  }
}

uint64_t sub_23C4C042C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 704) + *(**(a1 + 704) - 24);
  v5 = *(v4 + 104);
  v7 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (a1 + 8));
  v9 = *(a1 + 104);
  sub_23C49769C(&v7, v4 + 8);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  result = (*(**(a1 + 704) + 24))(*(a1 + 704), a2);
  *(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) = v5;
  return result;
}

uint64_t sub_23C4C0510(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 704) + *(**(a1 + 704) - 24);
  v5 = *(v4 + 104);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  sub_23C49769C(&v9, v4 + 8);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 704);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 104) = v5;
  return (*(v7 + 32))(v6, a2);
}

uint64_t sub_23C4C0608(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C4C042C(a1, a2);
  v5 = sub_23C4BB410(a1, v4);
  v6 = sub_23C4C0510(a1, a2);
  v7 = sub_23C4BB410(a1, v6);
  v10 = 257;
  return sub_23C4A0BD4(a1 + 8, v5, v7, v9);
}

uint64_t sub_23C4C0684(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = 184;
  if (*a2 == *(a1 + 160))
  {
    v7 = 192;
  }

  v8 = (*(*v6 + 136))(v6, &v10, a2, a3, *(a1 + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C0750(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = 152;
  if (*a2 == *(a1 + 192))
  {
    v7 = 160;
  }

  v8 = (*(*v6 + 144))(v6, &v10, a2, a3, *(a1 + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C081C(unsigned int **a1, uint64_t **a2)
{
  v4 = *a2;
  v5 = a2[1];
  sub_23C4C0A44(a1, *a2, v5);
  sub_23C4C0B1C(a1, v4, v5);
  v15 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  Select = llvm::IRBuilderBase::CreateSelect();
  v7 = sub_23C4C0A44(a1, *a2, a2[1]);
  sub_23C4C0A44(a1, v7, a2[2]);
  if (*Select == a1[20])
  {
    v8 = a1[24];
  }

  else
  {
    v8 = a1[23];
  }

  v15 = 257;
  v9 = sub_23C49ACF8((a1 + 1), 49, Select, v8, v14);
  v10 = llvm::ConstantInt::get();
  v15 = 257;
  v11 = sub_23C49A8E0((a1 + 1), v9, v10, v14);
  v12 = llvm::ConstantInt::get();
  v15 = 257;
  sub_23C497D84(a1 + 1, 34, v11, v12, v14);
  v15 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C0A44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
  }

  v8 = (*(*v6 + 48))(v6, &v10, a2, a3, v7 == *(a1 + 160));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C0B1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
  }

  v8 = (*(*v6 + 56))(v6, &v10, a2, a3, v7 == *(a1 + 160));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C0BF4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_23C4BCCA4(a1, *a2, v4);
  sub_23C4BCDAC(a1, v3, v4);
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C0CE8(uint64_t a1, llvm::UndefValue **a2, unsigned int a3, BOOL a4)
{
  v4 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(*a2 + 8);
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

      if (v10 | v12 && ((v9 - 11) < 2 || *(**(v10 - 32) + 24) == *(a1 + 160)) && ((v11 - 11) <= 1 || *(**(v12 - 32) + 24) == *(a1 + 160)))
      {
        llvm::FixedVectorType::get();
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
            v4 = sub_23C49AA38((a1 + 8), v13, v14, v15, v16, v23);
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

    else if (v7 && v8 == 73 && *(**(v7 - 32) + 24) == *(a1 + 160))
    {
      v4 = *(v7 - 32);
    }
  }

LABEL_27:
  v29 = llvm::ConstantInt::get();
  v30 = llvm::ConstantInt::get();
  v31 = llvm::ConstantInt::get();
  v17 = sub_23C505670(a1, v4, v6 - 1, 1);
  v18 = llvm::ConstantVector::get();
  v24 = 257;
  v19 = sub_23C49A3AC((a1 + 8), v4, v4, v18, v23);
  v24 = 257;
  v20 = sub_23C4BBCA0(a1 + 8, v17, v19, v23);
  v25 = llvm::ConstantInt::get();
  v26 = llvm::ConstantInt::get();
  v27 = llvm::ConstantInt::get();
  v28 = llvm::ConstantInt::get();
  v21 = llvm::ConstantVector::get();
  v24 = 257;
  return sub_23C49A3AC((a1 + 8), v20, v19, v21, v23);
}

void sub_23C4C1064(uint64_t a1, llvm::Instruction *a2)
{
  if (MGGetBoolAnswer() && (v3 = sub_23C4A2690("AGC_ENABLE_IS_UNIFORM_STRIPPING")) != 0 && *v3 != 48 && atoi(v3))
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
    sub_23C4AE5DC(&__dst, v18);
    v12 = std::string::insert(&__dst, 0, "llvm.agx.is.uniform");
    v13 = v12->__r_.__value_.__r.__words[2];
    *__p = *&v12->__r_.__value_.__l.__data_;
    v17 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    llvm::Module::getOrInsertFunction();
    *(a2 + 9) = v8;
    sub_23C4C11E8(a2, v14);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_23C4C11E8(uint64_t result, uint64_t a2)
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

uint64_t sub_23C4C1230(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 200);
  v5 = 257;
  return sub_23C49ACF8(a1 + 8, 47, a2, v2, v4);
}

uint64_t *sub_23C4C126C(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x23EED4160](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 24) = 0;
  *(v11 + 28) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t sub_23C4C1364(uint64_t a1, llvm::Type ****a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *a2;
  if (*a3 == 115)
  {
    v8 = sub_23C506630(a1, v7, v5, 40);
    v9 = sub_23C506630(a1, v4, v5, 38);
    v17 = 257;
    sub_23C497D84((a1 + 8), 41, v6, v8, v16);
    v15 = 257;
    v10 = (a1 + 8);
    v11 = 39;
  }

  else
  {
    v12 = sub_23C506630(a1, v7, v5, 36);
    v9 = sub_23C506630(a1, v4, v5, 34);
    v17 = 257;
    sub_23C497D84((a1 + 8), 37, v6, v12, v16);
    v15 = 257;
    v10 = (a1 + 8);
    v11 = 35;
  }

  sub_23C497D84(v10, v11, v6, v9, v14);
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C14B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BCDAC(a1, *a2, a2[1]);
  v5 = a2[2];

  return sub_23C4BCDAC(a1, v4, v5);
}

uint64_t sub_23C4C1504(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C4C0B1C(a1, *a2, *(a2 + 8));
  v5 = *(a2 + 16);

  return sub_23C4C0B1C(a1, v4, v5);
}

uint64_t sub_23C4C1550(uint64_t a1, llvm::Type ****a2, _BYTE *a3)
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

  v6 = sub_23C506630(a1, *a2, a2[1], v5);

  return sub_23C506630(a1, v6, v4, v5);
}

uint64_t sub_23C4C15C0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BCCA4(a1, *a2, a2[1]);
  v5 = a2[2];

  return sub_23C4BCCA4(a1, v4, v5);
}

uint64_t sub_23C4C160C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C4C0A44(a1, *a2, *(a2 + 8));
  v5 = *(a2 + 16);

  return sub_23C4C0A44(a1, v4, v5);
}

uint64_t sub_23C4C1658(uint64_t a1, llvm::Type ****a2, _BYTE *a3)
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

  v6 = sub_23C506630(a1, *a2, a2[1], v5);

  return sub_23C506630(a1, v6, v4, v5);
}

uint64_t sub_23C4C16C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v11 = 257;
  v6 = sub_23C49ADDC(a1 + 8, v4, v5, v10);
  v7 = a2[2];
  v9[16] = 257;
  return sub_23C49A474(a1 + 8, v6, v7, v9);
}

uint64_t sub_23C4C1730(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v6 = 257;
  return sub_23C49ADDC(a1 + 8, v3, v2, v5);
}

uint64_t sub_23C4C17B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 344);
  v7 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (a1 + 8));
  v9 = *(a1 + 104);
  v5 = (*(*v4 + 40))(v4, &v7, a2, 0);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t sub_23C4C185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 344);
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  v9 = (*(*v8 + 72))(v8, &v11, a2, a3, a4, 0);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t sub_23C4C1918(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v10 = *(a1 + 104);
  v5 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  v6 = (*(*v4 + 40))(v4, &v8, a2, v5 == *(a1 + 160));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4C19F0(uint64_t a1, llvm::Type ****a2, _BYTE *a3)
{
  if (*a3 == 115)
  {
    v3 = 40;
  }

  else
  {
    v3 = 36;
  }

  return sub_23C506630(a1, *a2, a2[1], v3);
}

uint64_t sub_23C4C1A10(uint64_t a1, llvm::Type ****a2, _BYTE *a3)
{
  if (*a3 == 115)
  {
    v3 = 38;
  }

  else
  {
    v3 = 34;
  }

  return sub_23C506630(a1, *a2, a2[1], v3);
}

llvm::Type **sub_23C4C1A30(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a3;
  v8 = **a2;
  v9 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v8);
  if (v7 == 115)
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v11 = v9 + 130;
        break;
      case 32:
        v11 = v9 + 132;
        break;
      case 16:
        v11 = v9 + 131;
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v11 = v9 + 133;
        break;
      case 32:
        v11 = v9 + 135;
        break;
      case 16:
        v11 = v9 + 134;
        break;
      default:
        goto LABEL_16;
    }
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = strlen(*v11);
    v14 = sub_23C49B858(a1, v12, v13, v8, v8, v8, v8);
    v35[0] = v5;
    v35[1] = v4;
    v35[2] = v6;
    v34 = 257;
    return sub_23C497A7C((a1 + 8), *(v14 + 24), v14, v35, 3, v33);
  }

LABEL_16:
  v31 = 0;
  v32 = 0;
  v30 = 0;
  sub_23C4D5768(*(a1 + 72), v8, v7 == 115, &v32, &v31, &v30);
  v16 = v30;
  v34 = 257;
  if (v7 == 115)
  {
    v17 = sub_23C4D58A8(a1 + 8, v5, v30, v33);
    v34 = 257;
    v18 = sub_23C4D58A8(a1 + 8, v4, v16, v33);
    v34 = 257;
    v19 = sub_23C4D58A8(a1 + 8, v6, v16, v33);
    v34 = 257;
    v20 = sub_23C49ADDC(a1 + 8, v17, v18, v33);
    v34 = 257;
    v21 = sub_23C49A474(a1 + 8, v20, v19, v33);
    v34 = 257;
    sub_23C497D84((a1 + 8), 40, v21, v32, v33);
    v36 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v34 = 257;
    sub_23C497D84((a1 + 8), 38, Select, v31, v33);
    v36 = 257;
    v23 = llvm::IRBuilderBase::CreateSelect();
    v34 = 257;
    return sub_23C4D58A8(a1 + 8, v23, v8, v33);
  }

  else
  {
    v24 = sub_23C4A6F5C(a1 + 8, v5, v30, v33);
    v34 = 257;
    v25 = sub_23C4A6F5C(a1 + 8, v4, v16, v33);
    v34 = 257;
    v26 = sub_23C4A6F5C(a1 + 8, v6, v16, v33);
    v34 = 257;
    v27 = sub_23C49ADDC(a1 + 8, v24, v25, v33);
    v34 = 257;
    v28 = sub_23C49A474(a1 + 8, v27, v26, v33);
    v34 = 257;
    sub_23C497D84((a1 + 8), 34, v28, v31, v33);
    v36 = 257;
    v29 = llvm::IRBuilderBase::CreateSelect();
    v34 = 257;
    return sub_23C4A6F5C(a1 + 8, v29, v8, v33);
  }
}

llvm::Instruction *sub_23C4C1DC0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = **a2;
  v8 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v7);
  if (v6 == 115)
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 124;
        break;
      case 32:
        v10 = v8 + 126;
        break;
      case 16:
        v10 = v8 + 125;
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 127;
        break;
      case 32:
        v10 = v8 + 129;
        break;
      case 16:
        v10 = v8 + 128;
        break;
      default:
        goto LABEL_16;
    }
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = strlen(*v10);
    v13 = sub_23C49B938(a1, v11, v12, v7, v7, v7);
    v37[0] = v4;
    v37[1] = v5;
    v36 = 257;
    return sub_23C497A7C((a1 + 8), *(v13 + 24), v13, v37, 2, v35);
  }

LABEL_16:
  v33 = 0;
  v34 = 0;
  v32 = 0;
  sub_23C4D5768(*(a1 + 72), v7, v6 == 115, &v34, &v33, &v32);
  v36 = 257;
  if (v6 == 115)
  {
    v15 = sub_23C4BF7D4(a1 + 8, v4, v5, v35);
    v36 = 257;
    v16 = sub_23C4D5948((a1 + 8), v4, v5, v35);
    v38 = 257;
    v17 = sub_23C4D5948((a1 + 8), v5, v15, v37);
    v31 = 257;
    v19 = sub_23C4BFF4C(a1 + 8, v17, v30, v18);
    v29 = 257;
    v20 = sub_23C49A8E0(a1 + 8, v16, v19, v28);
    v21 = llvm::ConstantInt::get();
    v27 = 257;
    sub_23C497D84((a1 + 8), 40, v20, v21, v26);
    v22 = llvm::ConstantInt::get();
    v36 = 257;
    sub_23C497D84((a1 + 8), 39, v4, v22, v35);
    v23 = *v4;
    v36 = 257;
    sub_23C49ACF8(a1 + 8, 38, v33, v23, v35);
    v24 = *v4;
    v38 = 257;
    sub_23C49ACF8(a1 + 8, 38, v34, v24, v37);
    v31 = 257;
    llvm::IRBuilderBase::CreateSelect();
    v36 = 257;
  }

  else
  {
    v25 = sub_23C4BF7D4(a1 + 8, v4, v5, v35);
    v36 = 257;
    sub_23C497D84((a1 + 8), 34, v25, v4, v35);
    llvm::ConstantInt::get();
    v38 = 257;
  }

  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Type **sub_23C4C20FC(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = **a2;
  v8 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v7);
  if (v6 == 115)
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 118;
        break;
      case 32:
        v10 = v8 + 120;
        break;
      case 16:
        v10 = v8 + 119;
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 121;
        break;
      case 32:
        v10 = v8 + 123;
        break;
      case 16:
        v10 = v8 + 122;
        break;
      default:
        goto LABEL_16;
    }
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = strlen(*v10);
    v13 = sub_23C49B938(a1, v11, v12, v7, v7, v7);
    v28[0] = v4;
    v28[1] = v5;
    v27 = 257;
    return sub_23C497A7C((a1 + 8), *(v13 + 24), v13, v28, 2, v26);
  }

LABEL_16:
  v24 = 0;
  v25 = 0;
  v23 = 0;
  sub_23C4D5768(*(a1 + 72), v7, v6 == 115, &v25, &v24, &v23);
  if (v6 == 115)
  {
    v15 = v23;
    v27 = 257;
    v16 = sub_23C4D58A8(a1 + 8, v4, v23, v26);
    v27 = 257;
    v17 = sub_23C4D58A8(a1 + 8, v5, v15, v26);
    v27 = 257;
    v18 = sub_23C49A474(a1 + 8, v16, v17, v26);
    v27 = 257;
    sub_23C497D84((a1 + 8), 38, v18, v24, v26);
    v29 = 257;
    sub_23C497D84((a1 + 8), 40, v18, v25, v28);
    llvm::IRBuilderBase::CreateSelect();
    Select = llvm::IRBuilderBase::CreateSelect();
    v20 = *v4;
    v27 = 257;
    return sub_23C4D58A8(a1 + 8, Select, v20, v26);
  }

  else
  {
    v27 = 257;
    v21 = sub_23C49A474(a1 + 8, v4, v5, v26);
    v27 = 257;
    sub_23C497D84((a1 + 8), 36, v21, v4, v26);
    v22 = *v4;
    v29 = 257;
    sub_23C4A6F5C(a1 + 8, v24, v22, v28);
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t sub_23C4C23DC(uint64_t a1, uint64_t a2, _BYTE *a3)
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

  sub_23C497D84(v6, v7, v4, v5, v11);
  v12 = 257;
  sub_23C4BF7D4(a1 + 8, v5, v4, v11);
  v10 = 257;
  sub_23C4BF7D4(a1 + 8, v4, v5, v9);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Instruction *sub_23C4C24B0(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a3 == 117)
  {
    return v3;
  }

  v5 = *v3;
  if ((*(*v3 + 8) & 0xFE) == 0x12)
  {
    v5 = **(*v3 + 16);
  }

  v6 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v5);
  switch(ScalarSizeInBits)
  {
    case 8:
      v8 = v6 + 114;
      break;
    case 32:
      v8 = v6 + 116;
      break;
    case 16:
      v8 = v6 + 115;
      break;
    default:
LABEL_14:
      v13 = llvm::ConstantInt::get();
      v19 = 257;
      sub_23C497D84((a1 + 8), 40, v3, v13, v18);
      v17[16] = 257;
      if (*(v3 + 16) <= 0x14u)
      {
        v15 = (*(**(a1 + 80) + 192))(*(a1 + 80), v3, 0, 0);
        if (v15)
        {
          v16 = *(v15 + 16) >= 0x1Cu;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          sub_23C49B15C((a1 + 8), v15, v17);
        }
      }

      else
      {
        v19 = 257;
        Neg = llvm::BinaryOperator::CreateNeg();
        sub_23C49B15C((a1 + 8), Neg, v17);
      }

      v19 = 257;
      return llvm::IRBuilderBase::CreateSelect();
  }

  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_14;
  }

  v10 = strlen(*v8);
  v11 = sub_23C49EB10(a1, v9, v10, v5, v5);

  return sub_23C506244(a1, v11, v3);
}

uint64_t sub_23C4C27D4(uint64_t a1)
{
  v2 = *(a1 + 320);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    if (v3)
    {
      v6 = (v3 - 56);
    }

    else
    {
      v6 = 0;
    }

    v3 = *(v3 + 8);
    Name = llvm::Value::getName(v6);
    v16[0] = 0;
    v16[1] = 0;
    v14 = 0;
    v15 = 0;
    if (sub_23C4C28BC(Name, v8, v16, &v14) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(a1 + 712);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = Key;
      }

      v12 = (*v9 + 8 * v11);
      if (v12 != (**(a1 + 712) + 8 * *(*(a1 + 712) + 8)))
      {
        sub_23C4C2978(a1 + 352, v5, *v12 + 8, v14, v15);
      }
    }
  }

  return *(a1 + 720);
}

uint64_t sub_23C4C28BC(_DWORD *a1, unint64_t a2, char **a3, char **a4)
{
  if (a2 < 4 || *a1 != 779250017)
  {
    return 0;
  }

  v7 = (a1 + 1);
  v8 = (a2 - 4);
  if (a2 == 4 || (v9 = memchr(a1 + 1, 46, v8)) == 0 || (v10 = v9 - v7, v9 - v7 == -1))
  {
    v14 = 0;
    *a3 = v7;
    a3[1] = v8;
    v13 = &unk_23C53F34D;
  }

  else
  {
    if (v8 >= v10)
    {
      v11 = (v9 - v7);
    }

    else
    {
      v11 = v8;
    }

    *a3 = v7;
    a3[1] = v11;
    if (v8 >= v10 + 1)
    {
      v12 = (v10 + 1);
    }

    else
    {
      v12 = v8;
    }

    v13 = &v12[v7];
    v14 = (v8 - v12);
  }

  *a4 = v13;
  a4[1] = v14;
  return 1;
}

uint64_t sub_23C4C2978(uint64_t a1, llvm::Function *this, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v6 = this;
  v88 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 16);
  if (v8 != 9)
  {
    if (v8 == 8)
    {
      v9 = *a3;
      if (*a3)
      {
        v10 = strlen(*a3);
        v85[0] = &v85[3];
        *&v85[1] = xmmword_23C532530;
        sub_23C4B01BC(v85, v9, &v9[v10]);
      }

      else
      {
        v85[2] = 64;
        v85[0] = &v85[3];
        v85[1] = 0;
      }

      sub_23C4B01BC(v85, ".", "");
      sub_23C4B01BC(v85, a4, &a5[a4]);
      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (v85[0] != &v85[3])
      {
        free(v85[0]);
      }

      return llvm::Function::eraseFromParent(v6);
    }

    v16 = **(*(this + 3) + 16);
    v17 = ((*(v16 + 8) & 0xFE) == 18) & *(a3 + 21);
    if (v17 == 1)
    {
      v18 = *(v16 + 32);
    }

    else
    {
      v18 = 1;
    }

    v70 = v18;
    v68 = *(a1 + 104);
    v19 = *(this + 1);
    if (!v19)
    {
LABEL_88:
      *(a1 + 104) = v68;
      v6 = this;
      return llvm::Function::eraseFromParent(v6);
    }

    while (1)
    {
      v20 = *(v19 + 24);
      v71 = *(v19 + 8);
      FastMathFlags = sub_23C497EEC(v20);
      if (FastMathFlags)
      {
        FastMathFlags = llvm::Instruction::getFastMathFlags(v20);
      }

      *(a1 + 104) = FastMathFlags;
      sub_23C4C30FC(a1 + 8, v20);
      v22 = llvm::UndefValue::get();
      if (v70)
      {
        break;
      }

LABEL_85:
      if (*v20 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v20);
      v19 = v71;
      if (!v71)
      {
        goto LABEL_88;
      }
    }

    v23 = 0;
    while (1)
    {
      v75 = v22;
      v87 = 0;
      v86 = 0u;
      memset(v85, 0, sizeof(v85));
      v24 = sub_23C4B88A0(v20) - v20 + 32 * (*(v20 + 20) & 0x7FFFFFF);
      if ((v24 & 0x1FFFFFFFE0) != 0)
      {
        v25 = (v24 >> 5);
        v26 = v85;
        v27 = v20;
        do
        {
          v28 = (v27 - 32 * (*(v20 + 20) & 0x7FFFFFF));
          v29 = *v28;
          *v26 = *v28;
          if (v17 && (*(*v29 + 8) & 0xFE) == 0x12)
          {
            v84 = 257;
            v30 = llvm::ConstantInt::get();
            *v26 = sub_23C5057E8(a1 + 8, v29, v30, &PrimitiveSizeInBits);
          }

          ++v26;
          v27 += 32;
          --v25;
        }

        while (v25);
      }

      if (*(a3 + 20))
      {
        v31 = *v85[0];
        if ((*(*v85[0] + 8) & 0xFE) == 0x12)
        {
          v31 = **(v31 + 2);
        }

        PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v31);
        v83 = v32;
        if (llvm::TypeSize::operator unsigned long long() == 32)
        {
          v33 = 0;
        }

        else
        {
          v34 = *(a1 + 160);
          if ((*(*v85[0] + 8) & 0xFE) == 0x12)
          {
            v34 = llvm::FixedVectorType::get();
          }

          if ((v24 & 0x1FFFFFFFE0) != 0)
          {
            v35 = (v24 >> 5);
            v36 = v85;
            do
            {
              v37 = *v36;
              if (*(**v36 + 8) != 15)
              {
                v84 = 257;
                *v36 = sub_23C4B284C(a1 + 8, v37, v34, &PrimitiveSizeInBits);
              }

              ++v36;
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

      v38 = *(a1 + 344);
      v79 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v80, (a1 + 8));
      v81 = *(a1 + 104);
      sub_23C49769C(&v79, v38 + 8);
      if (v80)
      {
        llvm::MetadataTracking::untrack();
      }

      v39 = 0;
      v40 = *(a3 + 16);
      if (v40 <= 3)
      {
        switch(v40)
        {
          case 1:
            v53 = *a3;
            v54 = *(a3 + 8);
            v55 = (*(a1 + 344) + (v54 >> 1));
            if (v54)
            {
              v53 = *(*v55 + v53);
            }

            v63 = (v53)(v55);
            goto LABEL_74;
          case 2:
            v46 = *a3;
            v62 = *(a3 + 8);
            v48 = *v20;
            v49 = (*(a1 + 344) + (v62 >> 1));
            if (v62)
            {
LABEL_63:
              v46 = *(*v49 + v46);
            }

LABEL_64:
            v63 = (v46)(v49, v48);
LABEL_74:
            v39 = v63;
            break;
          case 3:
            v46 = *a3;
            v47 = *(a3 + 8);
            v48 = v85[0];
            v49 = (*(a1 + 344) + (v47 >> 1));
            if (v47)
            {
              goto LABEL_63;
            }

            goto LABEL_64;
        }
      }

      else
      {
        if (v40 <= 5)
        {
          if (v40 == 4)
          {
            v56 = (v85[0] + 24);
            if (*(v85[0] + 8) >= 0x41u)
            {
              v56 = *v56;
            }

            v44 = *v56;
            v41 = *a3;
            v57 = *(a3 + 8);
            v43 = *v20;
            v45 = (*(a1 + 344) + (v57 >> 1));
            if (v57)
            {
              v41 = *(*v45 + v41);
            }
          }

          else
          {
            v41 = *a3;
            v42 = *(a3 + 8);
            v43 = v85[0];
            v44 = v85[1];
            v45 = (*(a1 + 344) + (v42 >> 1));
            if (v42)
            {
              v41 = *(*v45 + v41);
            }
          }

          v63 = (v41)(v45, v43, v44);
          goto LABEL_74;
        }

        if (v40 == 6)
        {
          v50 = *a3;
          v58 = *(a3 + 8);
          v59 = v85[0];
          v60 = v85[1];
          v61 = v85[2];
          v52 = (*(a1 + 344) + (v58 >> 1));
          if ((v58 & 1) == 0)
          {
            goto LABEL_73;
          }

          v63 = (*(*v52 + v50))(v52, v85[0], v85[1], v85[2]);
          goto LABEL_74;
        }

        if (v40 == 7)
        {
          v50 = *a3;
          v51 = *(a3 + 8);
          v52 = (*(a1 + 344) + (v51 >> 1));
          if (v51)
          {
            v50 = *(*v52 + v50);
          }

          v59 = v85;
          v61 = a5;
          v60 = a4;
LABEL_73:
          v63 = (v50)(v52, v59, v60, v61);
          goto LABEL_74;
        }
      }

      v64 = *(a1 + 344);
      v76 = *(v64 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (v64 + 8));
      v78 = *(v64 + 104);
      sub_23C49769C(&v76, a1 + 8);
      if (v77)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v33)
      {
        v65 = *v20;
        if (v17 && (*(v65 + 8) & 0xFE) == 0x12)
        {
          v65 = **(v65 + 16);
        }

        v84 = 257;
        v39 = sub_23C49FEB4(a1 + 8, v39, v65, &PrimitiveSizeInBits);
      }

      if (v17)
      {
        v84 = 257;
        v66 = llvm::ConstantInt::get();
        v39 = sub_23C505AA8(a1 + 8, v75, v39, v66, &PrimitiveSizeInBits);
      }

      ++v23;
      v22 = v39;
      if (v23 == v70)
      {
        goto LABEL_85;
      }
    }
  }

  v11 = *(this + 1);
  while (v11)
  {
    v12 = *(v11 + 24);
    v11 = *(v11 + 8);
    v13 = *a3;
    v14 = *(a3 + 8);
    v15 = (*(a1 + 344) + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    (v13)(v15, v12);
  }

  return llvm::Function::eraseFromParent(v6);
}

uint64_t sub_23C4C30FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 56) = a2 + 24;
  v3 = *(a2 + 48);
  v5 = v3;
  if (v3)
  {
    llvm::MetadataTracking::track();
    v3 = v5;
  }

  result = sub_23C49779C(a1, v3);
  if (v5)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t *sub_23C4C3164(const void *a1, size_t a2)
{
  i = (qword_27E1F69F8 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F6A08) = qword_27E1F6A08 - 1;
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

  v8 = MEMORY[0x23EED4160](a2 + 41, 8);
  v9 = v8;
  v10 = v8 + 40;
  if (a2)
  {
    memcpy((v8 + 40), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x1800000000;
  *i = v9;
  ++dword_27E1F6A04;
    ;
  }

  return i;
}

uint64_t *sub_23C4C3270(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x23EED4160](a3 + 25, 8);
  v11 = v10;
  v12 = v10 + 24;
  if (a3)
  {
    memcpy((v10 + 24), a2, a3);
  }

  *(v12 + a3) = 0;
  v11[1] = 0;
  v11[2] = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t sub_23C4C3364(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = sub_23C4C33B0(a1, a2);
  v7 = 257;
  return sub_23C4BBCA0(a1 + 8, v4, a2, v6);
}

llvm::Instruction *sub_23C4C33B0(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v10 = 257;
  v5 = sub_23C49EA2C(a1 + 8, a2, a2, v9);
  v8[16] = 257;
  v6 = sub_23C4A0EC4(a1 + 8, v4, v5, v8);
  return sub_23C4BBBDC(a1, v6);
}

uint64_t sub_23C4C3434(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = sub_23C4C33B0(a1, a2);
  v7 = 257;
  return sub_23C4BBCA0(a1 + 8, a2, v4, v6);
}

uint64_t sub_23C4C3480(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v11 = 257;
  v5 = sub_23C49EA2C(a1 + 8, a2, a2, v10);
  v9[16] = 257;
  v6 = sub_23C4A0BD4(a1 + 8, v4, v5, v9);
  v7 = sub_23C4BBBDC(a1, v6);
  v11 = 257;
  return sub_23C4BBCA0(a1 + 8, v4, v7, v10);
}

uint64_t sub_23C4C351C(uint64_t a1, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v11 = 257;
  v5 = sub_23C49EA2C(a1 + 8, a2, a2, v10);
  v9[16] = 257;
  v6 = sub_23C4A0BD4(a1 + 8, v4, v5, v9);
  v7 = sub_23C4BBBDC(a1, v6);
  v11 = 257;
  return sub_23C4BBCA0(a1 + 8, a2, v7, v10);
}

uint64_t sub_23C4C35C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
                  llvm::deallocate_buffer(v13, (*v13 + 25));
                }

                v11 += 8;
              }

              while (v12 != v11);
            }
          }

          free(v7[1]);
          llvm::deallocate_buffer(v7, (v9 + 41));
        }
      }
    }
  }

  free(*a1);
  return a1;
}

BOOL sub_23C4C36B8(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (!v2)
  {
    return v2;
  }

  v3 = sub_23C4B1878(a1 + *(*a1 - 24));
  v58 = sub_23C4B03D4(v3, v4);
  v60 = 0;
  v61 = 0;
  v5 = 22;
  v62 = 0;
  do
  {
    v6 = a1 + *(*a1 - 24);
    *(v6 + 774) = 1;
    v7 = *(v6 + 736);
    v8 = *(v6 + 752);
    v9 = *(v6 + 744);
    if (*(v6 + 784) == 1)
    {
      v10 = sub_23C4B2F14(v6 + 704, 0);
      sub_23C4B0980((v6 + 704), 4, v10);
    }

    if (v5 == 16)
    {
      v11 = 2;
      v12 = sub_23C4B0A6C(v6 + 704, 2);
      sub_23C4B0980((v6 + 704), 6, v12);
      v13 = sub_23C4B0A6C(v6 + 704, 2);
      sub_23C4B0980((v6 + 704), 8, v13);
LABEL_7:
      v14 = sub_23C4B2F14(v6 + 704, v11);
      sub_23C4B0980((v6 + 704), 10, v14);
      goto LABEL_11;
    }

    if (*(v6 + 784) == 1)
    {
      v15 = sub_23C4B0A6C(v6 + 704, 0);
      sub_23C4B0980((v6 + 704), 6, v15);
      if (*(v6 + 784))
      {
        v16 = sub_23C4B0A6C(v6 + 704, 0);
        sub_23C4B0980((v6 + 704), 8, v16);
        v11 = 0;
        if (*(v6 + 784))
        {
          goto LABEL_7;
        }
      }
    }

LABEL_11:
    v59 = sub_23C4B03D4(v6 + 704, v7 - v8 + v9);
    sub_23C4C3CEC(&v60, &v59);
    --v5;
  }

  while (v5);
  v17 = v60;
  if (v61 == v60)
  {
    v18 = &unk_27E1F74FC;
  }

  else
  {
    v18 = v60;
  }

  v19 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v18, (v61 - v60) >> 2);
  v20 = a1 + *(*a1 - 24);
  *(v20 + 774) = 1;
  v21 = *(v20 + 744);
  v22 = *(v20 + 736) - *(v20 + 752);
  if (*(v20 + 784) == 1)
  {
    v23 = sub_23C4B0A6C(v20 + 704, 0);
    sub_23C4B0980((v20 + 704), 4, v23);
    if (*(v20 + 784))
    {
      v24 = sub_23C4B0A6C(v20 + 704, 0);
      sub_23C4B0980((v20 + 704), 6, v24);
      if (*(v20 + 784))
      {
        v25 = sub_23C4B0A6C(v20 + 704, 0);
        sub_23C4B0980((v20 + 704), 8, v25);
        if (*(v20 + 784))
        {
          v26 = sub_23C4B0A6C(v20 + 704, 0);
          sub_23C4B0980((v20 + 704), 10, v26);
          if (*(v20 + 784))
          {
            v27 = sub_23C4B0A6C(v20 + 704, 0);
            sub_23C4B0980((v20 + 704), 12, v27);
          }
        }
      }
    }
  }

  v28 = *(a1 + 12);
  if (v28 <= 4)
  {
    v28 = 4;
  }

  sub_23C4B0A04((v20 + 704), 14, v28 - 4);
  v29 = sub_23C4B03D4(v20 + 704, v22 + v21);
  v30 = a1 + *(*a1 - 24);
  *(v30 + 774) = 1;
  v31 = *(v30 + 744);
  v32 = *(v30 + 736) - *(v30 + 752);
  if (*(v30 + 784) == 1)
  {
    v33 = sub_23C4B0A6C(v30 + 704, 0);
    sub_23C4B0980((v30 + 704), 14, v33);
    if (*(v30 + 784))
    {
      v34 = sub_23C4B0A6C(v30 + 704, 0);
      sub_23C4B0980((v30 + 704), 12, v34);
      if (*(v30 + 784))
      {
        v35 = sub_23C4B0A6C(v30 + 704, 0);
        sub_23C4B0980((v30 + 704), 10, v35);
        if (*(v30 + 784))
        {
          v36 = sub_23C4B0A6C(v30 + 704, 0);
          sub_23C4B0980((v30 + 704), 8, v36);
          if (*(v30 + 784))
          {
            v37 = sub_23C4B0A6C(v30 + 704, 0);
            sub_23C4B0980((v30 + 704), 6, v37);
            if (*(v30 + 784))
            {
              v38 = sub_23C4B0A6C(v30 + 704, 0);
              sub_23C4B0980((v30 + 704), 4, v38);
            }
          }
        }
      }
    }
  }

  v39 = sub_23C4B03D4(v30 + 704, v32 + v31);
  v40 = a1 + *(*a1 - 24);
  *(v40 + 774) = 1;
  v41 = *(v40 + 736);
  v42 = *(v40 + 752);
  v43 = *(v40 + 744);
  v44 = sub_23C4B2F14(v40 + 704, 1);
  sub_23C4B0980((v40 + 704), 6, v44);
  if (*(v40 + 784) == 1)
  {
    v45 = sub_23C4B2F14(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 8, v45);
  }

  sub_23C4B0A04((v40 + 704), 10, *(a1 + 12));
  if (*(v40 + 784) == 1)
  {
    v46 = sub_23C4B0A6C(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 12, v46);
    if (*(v40 + 784))
    {
      v47 = sub_23C4B0A6C(v40 + 704, 0);
      sub_23C4B0980((v40 + 704), 14, v47);
    }
  }

  sub_23C4B02B4((v40 + 704), 16, v29);
  sub_23C4B02B4((v40 + 704), 18, v39);
  if (*(v40 + 784) == 1)
  {
    v48 = sub_23C4B2F14(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 20, v48);
  }

  v49 = v41 - v42;
  sub_23C4B02B4((v40 + 704), 22, v19);
  if (*(v40 + 784) == 1)
  {
    v50 = sub_23C4B0A6C(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 26, v50);
  }

  v51 = sub_23C4B03D4(v40 + 704, v49 + v43);
  v52 = a1 + *(*a1 - 24);
  *(v52 + 774) = 1;
  v53 = *(v52 + 744);
  v54 = *(v52 + 736) - *(v52 + 752);
  sub_23C4B5F88((v52 + 704), v58);
  sub_23C4C521C((v52 + 704), v51);
  v55 = a1 + *(*a1 - 24);
  v56 = sub_23C4B03D4(v52 + 704, v54 + v53);
  sub_23C4B1AD8(v55 + 704, v56);
  if (v17)
  {
    operator delete(v17);
  }

  return v2;
}

void sub_23C4C3CEC(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_23C496CE8();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_23C4B1830(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_23C4C3DE0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v9, &unk_23C53F34D);
  sub_23C49F8D0(v7, "passthrough_size");
  sub_23C4B7004(&v11, v7, *(a1 + 16));
  sub_23C49F8D0(__p, "pad_size");
  sub_23C4B7004(&v12, __p, *(a1 + 20));
  sub_23C4B70B4(a2, v9, &v11, 2);
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

uint64_t sub_23C4C3F20(uint64_t a1)
{
  v2 = *(a1 + *(*a1 - 24) + 320);
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
      sub_23C4B22E0(a1 + *(*a1 - 24), v5);
      break;
    }
  }

  sub_23C4B2B20(a1 + *(*a1 - 24));
  v6 = (*(*(a1 + *(*a1 - 24)) + 24))(a1 + *(*a1 - 24));
  if (sub_23C4B00BC(v6))
  {
    v7 = (*(*(a1 + *(*a1 - 24)) + 24))(a1 + *(*a1 - 24));
    sub_23C4AA240(v7, "------ Start compilation key description for %s shader %u  ------", v7, *(a1 + *(*a1 - 24) + 696));
    v8 = (*(*(a1 + *(*a1 - 24)) + 72))(__p);
    if (v15 >= 0)
    {
      sub_23C4AA240(v8, __p);
    }

    else
    {
      sub_23C4AA240(v8, __p[0]);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (*(*(a1 + *(*a1 - 24)) + 24))(a1 + *(*a1 - 24));
    sub_23C4AA240(v9, "------ End compilation key description for %s shader %u  ------", v9, *(a1 + *(*a1 - 24) + 696));
  }

  v10 = (a1 + *(*a1 - 24));
  v11 = v10[16].__r_.__value_.__r.__words[2];
  size = v10[13].__r_.__value_.__l.__size_;
  if (*(a1 + 8) == 1)
  {
    if ((sub_23C4AF8FC(v11, v10, size, 1, 2, 0) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_23C4AF8FC(v11, v10, size, 1, 3, 0);
    if (!result)
    {
      return result;
    }
  }

  result = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24));
  if (result)
  {
    sub_23C4C420C(a1 + *(*a1 - 24));
    return 1;
  }

  return result;
}

void sub_23C4C420C(uint64_t a1)
{
  v2 = (*(*a1 + 24))(a1);
  if (sub_23C4B00BC(v2))
  {
    if (*(a1 + 736) - *(a1 + 752) + *(a1 + 744))
    {
      operator new();
    }

    if (*(a1 + 928) - *(a1 + 944) + *(a1 + 936))
    {
      v3 = (*(**(a1 + 344) + 496))(*(a1 + 344));
      v4 = *(a1 + 944);
      __p[0] = 0;
      __p[1] = 0;
      v10 = 0;
      sub_23C530100(v3, v4, __p);
      v5 = (*(*a1 + 24))(a1);
      sub_23C4AA240(v5, "------ Start Target Translator Metadata %s shader %d ------\n", v5, *(a1 + 696));
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      sub_23C4AA240(v6, "%s", v7);
      v8 = (*(*a1 + 24))(a1);
      sub_23C4AA240(v8, "------ End Target Translator Metadata %s shader %d ------\n", v8, *(a1 + 696));
      sub_23C53018C(v3);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_23C4C50F8(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 24);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C518C(uint64_t a1)
{
  sub_23C4B130C(a1 + 24);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4C521C(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return sub_23C4B0A04(v3, 6, v4);
  }

  return result;
}

BOOL sub_23C4C52A0(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v69 = sub_23C4B03D4(v3, v4);
    v74 = 0;
    v75 = 0;
    v5 = 22;
    v76 = 0;
    do
    {
      v6 = a1 + *(*a1 - 24);
      *(v6 + 774) = 1;
      v7 = *(v6 + 736);
      v8 = *(v6 + 752);
      v9 = *(v6 + 744);
      if (*(v6 + 784) == 1)
      {
        v10 = sub_23C4B2F14(v6 + 704, 0);
        sub_23C4B0980((v6 + 704), 4, v10);
        if (*(v6 + 784))
        {
          v11 = sub_23C4B0A6C(v6 + 704, 0);
          sub_23C4B0980((v6 + 704), 6, v11);
          if (*(v6 + 784))
          {
            v12 = sub_23C4B0A6C(v6 + 704, 0);
            sub_23C4B0980((v6 + 704), 8, v12);
            if (*(v6 + 784))
            {
              v13 = sub_23C4B2F14(v6 + 704, 0);
              sub_23C4B0980((v6 + 704), 10, v13);
            }
          }
        }
      }

      LODWORD(v71) = sub_23C4B03D4(v6 + 704, v7 - v8 + v9);
      sub_23C4C3CEC(&v74, &v71);
      --v5;
    }

    while (v5);
    v14 = v74;
    if (v75 == v74)
    {
      v15 = &unk_27E1F74FC;
    }

    else
    {
      v15 = v74;
    }

    v68 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v15, (v75 - v74) >> 2);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v16 = a1 + *(*a1 - 24);
    *(v16 + 774) = 1;
    v17 = *(v16 + 744);
    v18 = *(v16 + 736) - *(v16 + 752);
    if (*(v16 + 784) == 1)
    {
      v19 = sub_23C4B0A6C(v16 + 704, 0);
      sub_23C4B0980((v16 + 704), 4, v19);
      if (*(v16 + 784))
      {
        v20 = sub_23C4B0A6C(v16 + 704, 0);
        sub_23C4B0980((v16 + 704), 6, v20);
      }
    }

    v21 = sub_23C4B0A6C(v16 + 704, 3);
    sub_23C4B0980((v16 + 704), 8, v21);
    sub_23C4B0A04((v16 + 704), 12, *(a1 + 16));
    v22 = sub_23C4B2F14(v16 + 704, 3);
    sub_23C4B0980((v16 + 704), 10, v22);
    v70 = sub_23C4B03D4(v16 + 704, v18 + v17);
    sub_23C4C3CEC(&v71, &v70);
    v23 = v71;
    if (v72 == v71)
    {
      v24 = &unk_27E1F744C;
    }

    else
    {
      v24 = v71;
    }

    v67 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v24, (v72 - v71) >> 2);
    v25 = a1 + *(*a1 - 24);
    *(v25 + 774) = 1;
    v26 = *(v25 + 744);
    v27 = *(v25 + 736) - *(v25 + 752);
    if (*(v25 + 784) == 1)
    {
      v28 = sub_23C4B0A6C(v25 + 704, 0);
      sub_23C4B0980((v25 + 704), 4, v28);
      if (*(v25 + 784))
      {
        v29 = sub_23C4B0A6C(v25 + 704, 0);
        sub_23C4B0980((v25 + 704), 6, v29);
        if (*(v25 + 784))
        {
          v30 = sub_23C4B0A6C(v25 + 704, 0);
          sub_23C4B0980((v25 + 704), 8, v30);
          if (*(v25 + 784))
          {
            v31 = sub_23C4B0A6C(v25 + 704, 0);
            sub_23C4B0980((v25 + 704), 10, v31);
            if (*(v25 + 784))
            {
              v32 = sub_23C4B0A6C(v25 + 704, 0);
              sub_23C4B0980((v25 + 704), 12, v32);
            }
          }
        }
      }
    }

    v33 = *(a1 + 12);
    if (v33 <= 4)
    {
      v33 = 4;
    }

    sub_23C4B0A04((v25 + 704), 14, v33 - 4);
    v34 = sub_23C4B03D4(v25 + 704, v27 + v26);
    v35 = a1 + *(*a1 - 24);
    *(v35 + 774) = 1;
    v36 = *(v35 + 744);
    v37 = *(v35 + 736) - *(v35 + 752);
    if (*(v35 + 784) == 1)
    {
      v38 = sub_23C4B0A6C(v35 + 704, 0);
      sub_23C4B0980((v35 + 704), 14, v38);
      if (*(v35 + 784))
      {
        v39 = sub_23C4B0A6C(v35 + 704, 0);
        sub_23C4B0980((v35 + 704), 12, v39);
        if (*(v35 + 784))
        {
          v40 = sub_23C4B0A6C(v35 + 704, 0);
          sub_23C4B0980((v35 + 704), 10, v40);
          if (*(v35 + 784))
          {
            v41 = sub_23C4B0A6C(v35 + 704, 0);
            sub_23C4B0980((v35 + 704), 8, v41);
            if (*(v35 + 784))
            {
              v42 = sub_23C4B0A6C(v35 + 704, 0);
              sub_23C4B0980((v35 + 704), 6, v42);
              if (*(v35 + 784))
              {
                v43 = sub_23C4B0A6C(v35 + 704, 0);
                sub_23C4B0980((v35 + 704), 4, v43);
              }
            }
          }
        }
      }
    }

    v44 = sub_23C4B03D4(v35 + 704, v37 + v36);
    v45 = a1 + *(*a1 - 24);
    *(v45 + 774) = 1;
    v46 = *(v45 + 744);
    v47 = *(v45 + 736) - *(v45 + 752);
    sub_23C4C521C((v45 + 704), v67);
    v48 = sub_23C4B03D4(v45 + 704, v47 + v46);
    v49 = a1 + *(*a1 - 24);
    *(v49 + 774) = 1;
    v50 = *(v49 + 736);
    v51 = *(v49 + 752);
    v52 = *(v49 + 744);
    sub_23C4B5F88((v49 + 704), v48);
    v53 = sub_23C4B2F14(v49 + 704, 1);
    sub_23C4B0980((v49 + 704), 6, v53);
    if (*(v49 + 784) == 1)
    {
      v54 = sub_23C4B2F14(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 8, v54);
    }

    sub_23C4B0A04((v49 + 704), 10, *(a1 + 12));
    if (*(v49 + 784) == 1)
    {
      v55 = sub_23C4B0A6C(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 12, v55);
      if (*(v49 + 784))
      {
        v56 = sub_23C4B0A6C(v49 + 704, 0);
        sub_23C4B0980((v49 + 704), 14, v56);
      }
    }

    sub_23C4B02B4((v49 + 704), 16, v34);
    sub_23C4B02B4((v49 + 704), 18, v44);
    if (*(v49 + 784) == 1)
    {
      v57 = sub_23C4B2F14(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 20, v57);
    }

    v58 = v50 - v51;
    sub_23C4B02B4((v49 + 704), 22, v68);
    if (*(v49 + 784) == 1)
    {
      v59 = sub_23C4B0A6C(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 26, v59);
    }

    v60 = sub_23C4B03D4(v49 + 704, v58 + v52);
    v61 = a1 + *(*a1 - 24);
    *(v61 + 774) = 1;
    v62 = *(v61 + 744);
    v63 = *(v61 + 736) - *(v61 + 752);
    sub_23C4B5F88((v61 + 704), v69);
    sub_23C4C521C((v61 + 704), v60);
    v64 = a1 + *(*a1 - 24);
    v65 = sub_23C4B03D4(v61 + 704, v63 + v62);
    sub_23C4B1AD8(v64 + 704, v65);
    if (v23)
    {
      operator delete(v23);
    }

    if (v14)
    {
      operator delete(v14);
    }
  }

  return v2;
}

void sub_23C4C5A24(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v6, &unk_23C53F34D);
  sub_23C49F8D0(v4, "vertex_stride");
  sub_23C4B7004(&__p, v4, *(a1 + 12));
  sub_23C4B70B4(a2, v6, &__p, 1);
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

void sub_23C4C5B04(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 24);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C5B98(uint64_t a1)
{
  sub_23C4B130C(a1 + 24);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4C5C2C(uint64_t a1)
{
  result = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (result)
  {
    v76 = result;
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v75 = sub_23C4B03D4(v3, v4);
    v81 = 0;
    v82 = 0;
    v5 = 22;
    v83 = 0;
    do
    {
      v6 = a1 + *(*a1 - 24);
      *(v6 + 774) = 1;
      v7 = *(v6 + 736);
      v8 = *(v6 + 752);
      v9 = *(v6 + 744);
      if (*(v6 + 784) == 1)
      {
        v10 = sub_23C4B2F14(v6 + 704, 0);
        sub_23C4B0980((v6 + 704), 4, v10);
        if (*(v6 + 784))
        {
          v11 = sub_23C4B0A6C(v6 + 704, 0);
          sub_23C4B0980((v6 + 704), 6, v11);
          if (*(v6 + 784))
          {
            v12 = sub_23C4B0A6C(v6 + 704, 0);
            sub_23C4B0980((v6 + 704), 8, v12);
            if (*(v6 + 784))
            {
              v13 = sub_23C4B2F14(v6 + 704, 0);
              sub_23C4B0980((v6 + 704), 10, v13);
            }
          }
        }
      }

      LODWORD(v78) = sub_23C4B03D4(v6 + 704, v7 - v8 + v9);
      sub_23C4C3CEC(&v81, &v78);
      --v5;
    }

    while (v5);
    __p = v81;
    if (v82 == v81)
    {
      v14 = &unk_27E1F74FC;
    }

    else
    {
      v14 = v81;
    }

    v73 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v14, (v82 - v81) >> 2);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    if (*(a1 + 32) != -1)
    {
      v15 = a1 + *(*a1 - 24);
      *(v15 + 774) = 1;
      v16 = *(v15 + 744);
      v17 = *(v15 + 736) - *(v15 + 752);
      if (*(v15 + 784) == 1)
      {
        v18 = sub_23C4B0A6C(v15 + 704, 0);
        sub_23C4B0980((v15 + 704), 4, v18);
        if (*(v15 + 784))
        {
          v19 = sub_23C4B0A6C(v15 + 704, 0);
          sub_23C4B0980((v15 + 704), 6, v19);
        }
      }

      v20 = sub_23C4B0A6C(v15 + 704, 3);
      sub_23C4B0980((v15 + 704), 8, v20);
      sub_23C4B0A04((v15 + 704), 12, *(a1 + 32));
      v21 = sub_23C4B2F14(v15 + 704, 4);
      sub_23C4B0980((v15 + 704), 10, v21);
      v77 = sub_23C4B03D4(v15 + 704, v17 + v16);
      sub_23C4C3CEC(&v78, &v77);
    }

    if (*(a1 + 36) != -1)
    {
      v22 = a1 + *(*a1 - 24);
      *(v22 + 774) = 1;
      v23 = *(v22 + 744);
      v24 = *(v22 + 736) - *(v22 + 752);
      if (*(v22 + 784) == 1)
      {
        v25 = sub_23C4B0A6C(v22 + 704, 0);
        sub_23C4B0980((v22 + 704), 4, v25);
        if (*(v22 + 784))
        {
          v26 = sub_23C4B0A6C(v22 + 704, 0);
          sub_23C4B0980((v22 + 704), 6, v26);
        }
      }

      v27 = sub_23C4B0A6C(v22 + 704, 3);
      sub_23C4B0980((v22 + 704), 8, v27);
      sub_23C4B0A04((v22 + 704), 12, *(a1 + 36));
      v28 = sub_23C4B2F14(v22 + 704, 2);
      sub_23C4B0980((v22 + 704), 10, v28);
      v77 = sub_23C4B03D4(v22 + 704, v24 + v23);
      sub_23C4C3CEC(&v78, &v77);
    }

    v29 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744B, 0);
    v30 = v78;
    if (v79 == v78)
    {
      v31 = &unk_27E1F744C;
    }

    else
    {
      v31 = v78;
    }

    v32 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v31, (v79 - v78) >> 2);
    v33 = a1 + *(*a1 - 24);
    *(v33 + 774) = 1;
    v34 = *(v33 + 744);
    v35 = *(v33 + 736) - *(v33 + 752);
    if (*(v33 + 784) == 1)
    {
      v36 = sub_23C4B0A6C(v33 + 704, 0);
      sub_23C4B0980((v33 + 704), 4, v36);
      if (*(v33 + 784))
      {
        v37 = sub_23C4B0A6C(v33 + 704, 0);
        sub_23C4B0980((v33 + 704), 6, v37);
        if (*(v33 + 784))
        {
          v38 = sub_23C4B0A6C(v33 + 704, 0);
          sub_23C4B0980((v33 + 704), 8, v38);
          if (*(v33 + 784))
          {
            v39 = sub_23C4B0A6C(v33 + 704, 0);
            sub_23C4B0980((v33 + 704), 10, v39);
            if (*(v33 + 784))
            {
              v40 = sub_23C4B0A6C(v33 + 704, 0);
              sub_23C4B0980((v33 + 704), 12, v40);
              if (*(v33 + 784))
              {
                v41 = sub_23C4B0A6C(v33 + 704, 0);
                sub_23C4B0980((v33 + 704), 14, v41);
              }
            }
          }
        }
      }
    }

    v42 = sub_23C4B03D4(v33 + 704, v35 + v34);
    v43 = a1 + *(*a1 - 24);
    *(v43 + 774) = 1;
    v44 = *(v43 + 744);
    v45 = *(v43 + 736) - *(v43 + 752);
    if (*(v43 + 784) == 1)
    {
      v46 = sub_23C4B0A6C(v43 + 704, 0);
      sub_23C4B0980((v43 + 704), 14, v46);
      if (*(v43 + 784))
      {
        v47 = sub_23C4B0A6C(v43 + 704, 0);
        sub_23C4B0980((v43 + 704), 12, v47);
        if (*(v43 + 784))
        {
          v48 = sub_23C4B0A6C(v43 + 704, 0);
          sub_23C4B0980((v43 + 704), 10, v48);
          if (*(v43 + 784))
          {
            v49 = sub_23C4B0A6C(v43 + 704, 0);
            sub_23C4B0980((v43 + 704), 8, v49);
            if (*(v43 + 784))
            {
              v50 = sub_23C4B0A6C(v43 + 704, 0);
              sub_23C4B0980((v43 + 704), 6, v50);
              if (*(v43 + 784))
              {
                v51 = sub_23C4B0A6C(v43 + 704, 0);
                sub_23C4B0980((v43 + 704), 4, v51);
              }
            }
          }
        }
      }
    }

    v52 = sub_23C4B03D4(v43 + 704, v45 + v44);
    v53 = a1 + *(*a1 - 24);
    *(v53 + 774) = 1;
    v54 = *(v53 + 744);
    v55 = *(v53 + 736) - *(v53 + 752);
    sub_23C4B5F88((v53 + 704), v29);
    sub_23C4C521C((v53 + 704), v32);
    v56 = sub_23C4B03D4(v53 + 704, v55 + v54);
    v57 = a1 + *(*a1 - 24);
    *(v57 + 774) = 1;
    v58 = *(v57 + 736);
    v59 = *(v57 + 752);
    v60 = *(v57 + 744);
    sub_23C4B5F88((v57 + 704), v56);
    if (*(v57 + 784) == 1)
    {
      v61 = sub_23C4B2F14(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 6, v61);
    }

    sub_23C4B2DFC((v57 + 704), 8, *(a1 + 44) != 0);
    sub_23C4B0A04((v57 + 704), 10, *(a1 + 40));
    if (*(v57 + 784) == 1)
    {
      v62 = sub_23C4B0A6C(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 12, v62);
      if (*(v57 + 784))
      {
        v63 = sub_23C4B0A6C(v57 + 704, 0);
        sub_23C4B0980((v57 + 704), 14, v63);
      }
    }

    sub_23C4B02B4((v57 + 704), 16, v42);
    sub_23C4B02B4((v57 + 704), 18, v52);
    if (*(v57 + 784) == 1)
    {
      v64 = sub_23C4B2F14(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 20, v64);
    }

    v65 = v58 - v59;
    sub_23C4B02B4((v57 + 704), 22, v73);
    if (*(v57 + 784) == 1)
    {
      v66 = sub_23C4B0A6C(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 26, v66);
    }

    v67 = sub_23C4B03D4(v57 + 704, v65 + v60);
    v68 = a1 + *(*a1 - 24);
    *(v68 + 774) = 1;
    v69 = *(v68 + 744);
    v70 = *(v68 + 736) - *(v68 + 752);
    sub_23C4B5F88((v68 + 704), v75);
    sub_23C4C521C((v68 + 704), v67);
    v71 = a1 + *(*a1 - 24);
    v72 = sub_23C4B03D4(v68 + 704, v70 + v69);
    sub_23C4B1AD8(v71 + 704, v72);
    if (v30)
    {
      operator delete(v30);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v76;
  }

  return result;
}

void sub_23C4C64E8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  sub_23C49F8D0(v21, "AGCTABlitState");
  sub_23C49F8D0(v19, "blitType");
  sub_23C4B705C(&v23, v19, off_278BBF580[*v3 & 7]);
  sub_23C49F8D0(v17, "primitiveSizePOT");
  sub_23C4B7004(&v24, v17, (*v3 >> 8) & 7);
  sub_23C49F8D0(v15, "primitiveCount");
  sub_23C4B7004(&v25, v15, (*v3 >> 11));
  sub_23C49F8D0(v13, "loopCount");
  sub_23C4B7004(&v26, v13, (*v3 >> 19) & 0xF);
  sub_23C49F8D0(v11, "sampleCountPOT");
  sub_23C4B7004(&v27, v11, (*v3 >> 23) & 3);
  sub_23C49F8D0(v9, "regionOffset");
  sub_23C4B7004(&v28, v9, (*v3 >> 25) & 1);
  sub_23C49F8D0(v7, "blitTextureFormat");
  sub_23C4B7004(&v29, v7, *v3 >> 3);
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v30, __p, (*v3 >> 27) & 0xF);
  sub_23C4B70B4(a2, v21, &v23, 8);
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

void sub_23C4C6764(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 48);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C67F8(uint64_t a1)
{
  sub_23C4B130C(a1 + 48);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C4C688C(uint64_t *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = a1 + *(*a1 - 24);
    if (*(*(v3 + 43) + 1672) == 1)
    {
      v18 = 0x8000000000008000;
      sub_23C4B2C10(&v18, (v3 + 704));
      operator new();
    }

    v4 = sub_23C4B1878(a1 + *(*a1 - 24));
    v5 = v4;
    v7 = v6;
    if (*(*(a1 + *(*a1 - 24) + 344) + 1672) == 1)
    {
      sub_23C4C6A98(v4, 0);
    }

    v8 = sub_23C4B03D4(v5, v7);
    v9 = sub_23C510F9C(a1 + 2);
    v11 = sub_23C4B03D4(v9, v10);
    v12 = a1 + *(*a1 - 24);
    v12[774] = 1;
    v13 = *(v12 + 186);
    v14 = *(v12 + 184) - *(v12 + 188);
    sub_23C4B5F88(v12 + 88, v8);
    sub_23C4B5FF0(v12 + 88, v11);
    v15 = a1 + *(*a1 - 24);
    v16 = sub_23C4B03D4((v12 + 704), v14 + v13);
    sub_23C4B1AD8((v15 + 704), v16);
  }

  return v2;
}

uint64_t *sub_23C4C6A98(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return sub_23C4B0A04(v3, 10, v4);
  }

  return result;
}

void sub_23C4C6B1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23C4C6CD8(&v7, *(a1 + 544));
  v4 = *(a1 + 584);
  sub_23C49F8D0(v16, "AGCColorMaskState");
  sub_23C49F8D0(v14, "redEnableBits");
  sub_23C4B7424(&v18, v14, *v4);
  sub_23C49F8D0(v12, "greenEnableBits");
  sub_23C4B7424(&v19, v12, v4[1]);
  sub_23C49F8D0(v10, "blueEnableBits");
  sub_23C4B7424(&v20, v10, v4[2]);
  sub_23C49F8D0(__p, "alphaEnableBits");
  sub_23C4B7424(&v21, __p, v4[3]);
  sub_23C4B70B4(&v6, v16, &v18, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v21.__r_.__value_.__l.__data_ + i * 8));
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

  sub_23C4B7AC8(a2, &v7.__r_.__value_.__l.__data_, &v6.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23C4C6CD8(std::string *a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v44, "AGCDrawBufferState");
  sub_23C49F8D0(v42, "enabledBits");
  sub_23C4B7424(&v54, v42, *(a2 + 32));
  sub_23C49F8D0(v40, "sampleCount");
  sub_23C4B7004(&v55, v40, (*(a2 + 32) >> 8) & 0xF);
  sub_23C49F8D0(v38, "colorSampleCount");
  sub_23C4B7004(&v56, v38, *(a2 + 32) >> 12);
  sub_23C49F8D0(v36, "outputPartitionSize");
  sub_23C4B7004(&v57, v36, *(a2 + 34));
  sub_23C49F8D0(v34, "LIBSpilling");
  sub_23C4B7004(&v58, v34, HIBYTE(*(a2 + 32)) & 1);
  sub_23C49F8D0(v32, "unused");
  sub_23C4B7004(&v59, v32, *(a2 + 32) >> 25);
  sub_23C49F8D0(v30, "encoded : ");
  sub_23C49F8D0(v28, "encoded[0]");
  sub_23C4C718C(&v27, a2);
  sub_23C4B733C(&v46, v28, &v27);
  sub_23C49F8D0(v25, "encoded[1]");
  sub_23C4C718C(&v24, (a2 + 4));
  sub_23C4B733C(&v47, v25, &v24);
  sub_23C49F8D0(v22, "encoded[2]");
  sub_23C4C718C(&v21, (a2 + 8));
  sub_23C4B733C(&v48, v22, &v21);
  sub_23C49F8D0(v19, "encoded[3]");
  sub_23C4C718C(&v18, (a2 + 12));
  sub_23C4B733C(&v49, v19, &v18);
  sub_23C49F8D0(v16, "encoded[4]");
  sub_23C4C718C(&v15, (a2 + 16));
  sub_23C4B733C(&v50, v16, &v15);
  sub_23C49F8D0(v13, "encoded[5]");
  sub_23C4C718C(&v12, (a2 + 20));
  sub_23C4B733C(&v51, v13, &v12);
  sub_23C49F8D0(v10, "encoded[6]");
  sub_23C4C718C(&v9, (a2 + 24));
  sub_23C4B733C(&v52, v10, &v9);
  sub_23C49F8D0(v7, "encoded[7]");
  sub_23C4C718C(&__p, (a2 + 28));
  sub_23C4B733C(&v53, v7, &__p);
  sub_23C4B70B4(&v60, v30, &v46, 8);
  sub_23C4B70B4(a1, v44, &v54, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v60.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v60.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  for (j = 0; j != -24; j -= 3)
  {
    if (SHIBYTE(v53.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v53.__r_.__value_.__l.__data_ + j * 8));
    }
  }

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
}

void sub_23C4C718C(std::string *a1, _DWORD *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v19, "AGCDrawBuffer");
  sub_23C49F8D0(v17, "pbeSourceFormat");
  sub_23C4B705C(&v21, v17, off_278BBF5B8[*a2 & 0x1F]);
  sub_23C49F8D0(v15, "numWrittenComponents");
  sub_23C4B7004(&v22, v15, *a2 >> 5);
  sub_23C49F8D0(v13, "gammaCorrection");
  sub_23C4B7004(&v23, v13, (*a2 >> 8) & 1);
  sub_23C49F8D0(v11, "colorSpaceConversion");
  sub_23C4B705C(&v24, v11, off_278BBF670[(*a2 >> 9) & 7]);
  sub_23C49F8D0(v9, "preEmitSwizzle");
  sub_23C4B705C(&v25, v9, off_278BBF698[(*a2 >> 12) & 7]);
  sub_23C49F8D0(v7, "outputPartitionOffset");
  sub_23C4B7004(&v26, v7, (*a2 >> 15));
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v27, __p, *a2 >> 23);
  sub_23C4B70B4(a1, v19, &v21, 7);
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

void sub_23C4C73EC(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 592);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C746C(uint64_t a1)
{
  sub_23C4B130C(a1 + 576);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C74D4(uint64_t a1)
{
  sub_23C4B130C(a1 + 592);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C7580(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23C4C6CD8(&v7, *(a1 + 544));
  v4 = *(a1 + 584);
  sub_23C49F8D0(v12, "AGCBackgroundObjectState");
  sub_23C49F8D0(v10, "dimensionBits");
  std::to_string(&v14, *v4);
  sub_23C4B733C(&v15, v10, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v14, "arrayBits");
  sub_23C4C7728(&v16, &v14.__r_.__value_.__l.__data_, v4[1]);
  sub_23C49F8D0(__p, "clearedBits");
  sub_23C4C7728(&v17, __p, *(v4 + 3));
  sub_23C4B70B4(&v6, v12, &v15, 3);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v17.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v17.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  sub_23C4B7AC8(a2, &v7.__r_.__value_.__l.__data_, &v6.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_23C4C7728(std::string *a1, const void **a2, unsigned __int8 a3)
{
  std::to_string(&v5, a3);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4C7794(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 592);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C7814(uint64_t a1)
{
  sub_23C4B130C(a1 + 576);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C787C(uint64_t a1)
{
  sub_23C4B130C(a1 + 592);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C4C7910(uint64_t *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v5 = sub_23C4B03D4(v3, v4);
    v6 = a1 + *(*a1 - 24);
    v6[774] = 1;
    v7 = *(v6 + 186);
    v8 = *(v6 + 184) - *(v6 + 188);
    sub_23C4B5F88(v6 + 88, v5);
    v9 = a1 + *(*a1 - 24);
    v10 = sub_23C4B03D4((v6 + 704), v8 + v7);
    sub_23C4B1AD8((v9 + 704), v10);
    if (*(a1 + 25) == 1)
    {
      v11 = a1 + *(*a1 - 24);
      v11[966] = 1;
      v12 = *(v11 + 234);
      v13 = *(v11 + 232) - *(v11 + 236);
      v14 = sub_23C4B2F14((v11 + 896), 1);
      sub_23C4B0980(v11 + 112, 4, v14);
      if (v11[976] == 1)
      {
        v15 = sub_23C4B2F14((v11 + 896), 0);
        sub_23C4B0980(v11 + 112, 6, v15);
        if (v11[976])
        {
          v16 = sub_23C4B0A6C((v11 + 896), 0);
          sub_23C4B0980(v11 + 112, 8, v16);
          if (v11[976])
          {
            v17 = sub_23C4B0A6C((v11 + 896), 0);
            sub_23C4B0980(v11 + 112, 10, v17);
          }
        }
      }

      v18 = sub_23C4B03D4((v11 + 896), v13 + v12);
      v19 = *a1;
      v20 = a1 + *(*a1 - 24);
      v20[966] = 1;
      v21 = *(v20 + 234);
      v22 = *(v20 + 232) - *(v20 + 236);
      if (v18)
      {
        v23 = v18;
        sub_23C4B08D8((v20 + 896), 4uLL);
        sub_23C4B0A04(v20 + 112, 8, (*(v20 + 232) - *(v20 + 236) + *(v20 + 234) - v23 + 4));
        v19 = *a1;
      }

      v24 = a1 + *(v19 - 24);
      v25 = sub_23C4B03D4((v20 + 896), v22 + v21);
      sub_23C4B1AD8((v24 + 896), v25);
    }
  }

  return v2;
}

void sub_23C4C7B94(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v100 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  sub_23C49F8D0(v73, "AGCEndOfTileState");
  sub_23C49F8D0(v71, "emitMask");
  sub_23C4B7424(&v92, v71, *(v3 + 72));
  sub_23C49F8D0(v69, "conditionalMask");
  sub_23C4B7424(&v93, v69, *(v3 + 74));
  sub_23C49F8D0(v67, "sampleCount");
  sub_23C4C8324(&v94, v67, *(v3 + 76) & 0xFLL);
  sub_23C49F8D0(v65, "outputPartitionSize");
  sub_23C4C8324(&v95, v65, (*(v3 + 72) >> 36) & 0x7FLL);
  sub_23C49F8D0(v63, "numEmits");
  sub_23C4C8324(&v96, v63, (*(v3 + 72) >> 43) & 0x1FLL);
  sub_23C49F8D0(v61, "dummyEmitIndex");
  sub_23C4C8324(&v97, v61, *(v3 + 78) & 0x1FLL);
  sub_23C49F8D0(v59, "unused");
  sub_23C4C8324(&v98, v59, *(v3 + 72) >> 54);
  sub_23C49F8D0(v57, "encoded : ");
  sub_23C49F8D0(v55, "encoded[0]");
  sub_23C4C837C(&v54, v3);
  sub_23C4B733C(&v75, v55, &v54);
  sub_23C49F8D0(v52, "encoded[1]");
  sub_23C4C837C(&v51, (v3 + 4));
  sub_23C4B733C(&v76, v52, &v51);
  sub_23C49F8D0(v49, "encoded[2]");
  sub_23C4C837C(&v48, (v3 + 8));
  sub_23C4B733C(&v77, v49, &v48);
  sub_23C49F8D0(v46, "encoded[3]");
  sub_23C4C837C(&v45, (v3 + 12));
  sub_23C4B733C(&v78, v46, &v45);
  sub_23C49F8D0(v43, "encoded[4]");
  sub_23C4C837C(&v42, (v3 + 16));
  sub_23C4B733C(&v79, v43, &v42);
  sub_23C49F8D0(v40, "encoded[5]");
  sub_23C4C837C(&v39, (v3 + 20));
  sub_23C4B733C(&v80, v40, &v39);
  sub_23C49F8D0(v37, "encoded[6]");
  sub_23C4C837C(&v36, (v3 + 24));
  sub_23C4B733C(&v81, v37, &v36);
  sub_23C49F8D0(v34, "encoded[7]");
  sub_23C4C837C(&v33, (v3 + 28));
  sub_23C4B733C(&v82, v34, &v33);
  sub_23C49F8D0(v31, "encoded[8]");
  sub_23C4C837C(&v30, (v3 + 32));
  sub_23C4B733C(&v83, v31, &v30);
  sub_23C49F8D0(v28, "encoded[9]");
  sub_23C4C837C(&v27, (v3 + 36));
  sub_23C4B733C(&v84, v28, &v27);
  sub_23C49F8D0(v25, "encoded[10]");
  sub_23C4C837C(&v24, (v3 + 40));
  sub_23C4B733C(&v85, v25, &v24);
  sub_23C49F8D0(v22, "encoded[11]");
  sub_23C4C837C(&v21, (v3 + 44));
  sub_23C4B733C(&v86, v22, &v21);
  sub_23C49F8D0(v19, "encoded[12]");
  sub_23C4C837C(&v18, (v3 + 48));
  sub_23C4B733C(&v87, v19, &v18);
  sub_23C49F8D0(v16, "encoded[13]");
  sub_23C4C837C(&v15, (v3 + 52));
  sub_23C4B733C(&v88, v16, &v15);
  sub_23C49F8D0(v13, "encoded[14]");
  sub_23C4C837C(&v12, (v3 + 56));
  sub_23C4B733C(&v89, v13, &v12);
  sub_23C49F8D0(v10, "encoded[15]");
  sub_23C4C837C(&v9, (v3 + 60));
  sub_23C4B733C(&v90, v10, &v9);
  sub_23C49F8D0(v7, "encoded[16]");
  sub_23C4C837C(&__p, (v3 + 64));
  sub_23C4B733C(&v91, v7, &__p);
  sub_23C4B70B4(&v99, v57, &v75, 17);
  sub_23C4B70B4(a2, v73, &v92, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v99.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v99.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  v5 = 51;
  do
  {
    if (v75.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v73[v5]);
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
}

void sub_23C4C8324(std::string *a1, const void **a2, unint64_t __val)
{
  std::to_string(&v5, __val);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4C837C(std::string *a1, unsigned __int8 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v15, "AGCEmitState");
  sub_23C49F8D0(v13, "slotIndex");
  sub_23C4B7004(&v17, v13, *a2);
  sub_23C49F8D0(v11, "channelFormat");
  sub_23C4B7004(&v18, v11, a2[1]);
  sub_23C49F8D0(v9, "dimension");
  sub_23C4B7004(&v19, v9, a2[2]);
  sub_23C49F8D0(v7, "gammaCorrection");
  sub_23C4B7004(&v20, v7, HIBYTE(*a2) & 1);
  sub_23C49F8D0(__p, "sparse");
  sub_23C4B7004(&v21, __p, (*a2 >> 25) & 1);
  sub_23C4B70B4(a1, v15, &v17, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v21.__r_.__value_.__l.__data_ + i * 8));
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
}

const char *sub_23C4C8538(void *a1)
{
  if ((*(*(a1 + *(*a1 - 40) + 16) + 78) & 0x20) != 0)
  {
    return "sw_eot";
  }

  else
  {
    return "eot";
  }
}

void sub_23C4C8574(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 32);

  JUMPOUT(0x23EED50C0);
}

const char *sub_23C4C85FC(uint64_t a1)
{
  if ((*(*(a1 + 16) + 78) & 0x20) != 0)
  {
    return "sw_eot";
  }

  else
  {
    return "eot";
  }
}

void sub_23C4C8620(uint64_t a1)
{
  sub_23C4B130C(a1 + 32);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C4C86C4(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v5 = sub_23C4B03D4(v3, v4);
    v6 = a1 + *(*a1 - 24);
    v6[774] = 1;
    v7 = *(v6 + 186);
    v8 = *(v6 + 184) - *(v6 + 188);
    sub_23C4B5F88(v6 + 88, v5);
    v9 = a1 + *(*a1 - 24);
    v10 = sub_23C4B03D4((v6 + 704), v8 + v7);
    sub_23C4B1AD8((v9 + 704), v10);
  }

  return v2;
}

uint64_t sub_23C4C87DC(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  if (sub_23C4B00BC(v2))
  {
    v3 = (*(*a1 + 16))(a1);
    sub_23C4AA240(v3, "------ Start compilation key description for %s shader %u  ------", v3, *(a1 + *(*a1 - 24) + 696));
    v4 = (*(*a1 + 40))(__p, a1);
    if (v8 >= 0)
    {
      sub_23C4AA240(v4, __p);
    }

    else
    {
      sub_23C4AA240(v4, __p[0]);
    }

    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = (*(*a1 + 16))(a1);
    sub_23C4AA240(v5, "------ End compilation key description for %s shader %u  ------", v5, *(a1 + *(*a1 - 24) + 696));
  }

  result = sub_23C4AF8FC(*(a1 + *(*a1 - 24) + 400), (a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 320), 1, 2, 0);
  if (result)
  {
    result = (*(*a1 + 8))(a1);
    if (result)
    {
      sub_23C4C420C(a1 + *(*a1 - 24));
      return 1;
    }
  }

  return result;
}

void sub_23C4C89C0(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 8);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C8A40(uint64_t a1)
{
  sub_23C4B130C(a1 + 8);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C8B08(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  sub_23C4C6CD8(&v12, *(a1 + 544));
  v4 = *(a1 + 584);
  if (v4)
  {
    sub_23C49F8D0(&v29, "AGC3DBlitState");
    sub_23C49F8D0(v27, "blitType");
    sub_23C4B705C(&v30, v27, off_278BBF6C8[*v4 & 7]);
    sub_23C49F8D0(v25, "readBufferSampleCount");
    sub_23C4B7004(&v31, v25, (*v4 >> 3) & 0xF);
    sub_23C49F8D0(v23, "sample3D");
    sub_23C4B7004(&v32, v23, (*v4 >> 7) & 1);
    sub_23C49F8D0(v21, "regionOffset");
    sub_23C4B7004(&v33, v21, (*v4 >> 8) & 1);
    sub_23C49F8D0(v19, "remapAddress");
    sub_23C4B7004(&v34, v19, (*v4 >> 9) & 1);
    sub_23C49F8D0(v17, "remapAddressPOT");
    sub_23C4B7004(&v35, v17, (*v4 >> 10) & 1);
    sub_23C49F8D0(v15, "strideDiscard");
    sub_23C4B7004(&v36, v15, (*v4 >> 11) & 1);
    sub_23C49F8D0(__p, "blitTextureFormat");
    sub_23C4B7004(&v37, __p, (*v4 >> 12) & 0x1F);
    sub_23C4B70B4(&v11, &v29, &v30, 8);
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
    sub_23C49F8D0(&v11, &unk_23C53F34D);
  }

  sub_23C4B7AC8(&v29, &v12.__r_.__value_.__l.__data_, &v11.__r_.__value_.__l.__data_);
  v6 = std::string::append(&v29, "\ntoken type : ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 592);
  if ((atomic_load_explicit(&qword_27E1F7098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7098))
  {
    sub_23C49F8D0(qword_27E1F6A20, "AGCStreamTokenUnknownShader");
    sub_23C49F8D0(&qword_27E1F6A20[3], "AGCStreamTokenGLSLVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[6], "AGCStreamTokenGLSLFragmentShader");
    sub_23C49F8D0(&qword_27E1F6A20[9], "AGCStreamTokenMetalVertexProgram");
    sub_23C49F8D0(&qword_27E1F6A20[12], "AGCStreamTokenMetalFragmentProgram");
    sub_23C49F8D0(&qword_27E1F6A20[15], "AGCStreamTokenMetalTileProgram");
    sub_23C49F8D0(&qword_27E1F6A20[18], "AGCStreamTokenMetalComputeProgram");
    sub_23C49F8D0(&qword_27E1F6A20[21], "AGCStreamTokenClearFragmentShader");
    sub_23C49F8D0(&qword_27E1F6A20[24], "AGCStreamTokenResolveFragmentShaderGL");
    sub_23C49F8D0(&qword_27E1F6A20[27], "AGCStreamTokenBackgroundObjectFragmentShader");
    sub_23C49F8D0(&qword_27E1F6A20[30], "AGCStreamToken3DBlitFragmentShader");
    sub_23C49F8D0(&qword_27E1F6A20[33], "AGCStreamTokenTABlitVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[36], "AGCStreamTokenBlitComputeShader");
    sub_23C49F8D0(&qword_27E1F6A20[39], "AGCStreamTokenBlitSparseShader");
    sub_23C49F8D0(&qword_27E1F6A20[42], "AGCStreamTokenEndOfTileProgram");
    sub_23C49F8D0(&qword_27E1F6A20[45], "AGCStreamTokenExecuteIndirectESLGenerationVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[48], "AGCStreamTokenExecuteIndirectRangeExecutionVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[51], "AGCStreamTokenExecuteIndirectRangeExecutionComputeShader");
    sub_23C49F8D0(&qword_27E1F6A20[54], "AGCStreamTokenExecuteIndirectCDMPatchUpShader");
    sub_23C49F8D0(&qword_27E1F6A20[57], "AGCStreamTokenVisibilityVertexClearShader");
    sub_23C49F8D0(&qword_27E1F6A20[60], "AGCStreamTokenTileDispatchVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[63], "AGCStreamTokenClearVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[66], "AGCStreamTokenResolveVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[69], "AGCStreamTokenBlitVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[72], "AGCStreamTokenVDMStateSyncProgram");
    sub_23C49F8D0(&qword_27E1F6A20[75], "AGCStreamTokenContextSaveProgram");
    sub_23C49F8D0(&qword_27E1F6A20[78], "AGCStreamTokenContextRestoreProgram");
    sub_23C49F8D0(&qword_27E1F6A20[81], "AGCStreamTokenToggledContextSaveProgram");
    sub_23C49F8D0(&qword_27E1F6A20[84], "AGCStreamTokenToggledContextRestoreProgram");
    sub_23C49F8D0(&qword_27E1F6A20[87], "AGCStreamTokenComputeFlushProgram");
    sub_23C49F8D0(&qword_27E1F6A20[90], "AGCStreamTokenComputeFlushProgramWithFWInterrupt");
    sub_23C49F8D0(&qword_27E1F6A20[93], "AGCStreamTokenComputeFenceProgram");
    sub_23C49F8D0(&qword_27E1F6A20[96], "AGCStreamTokenComputeTGSizeOptimizationProgram");
    sub_23C49F8D0(&qword_27E1F6A20[99], "AGCStreamTokenSwTessellationNonBucketedEmitDrawCommandsVSProgram");
    sub_23C49F8D0(&qword_27E1F6A20[102], "AGCStreamTokenSwTessellationBucketedComputeInstanceCountsVSProgram");
    sub_23C49F8D0(&qword_27E1F6A20[105], "AGCStreamTokenSwTessellationBucketedSumInstanceCountsVSProgram");
    sub_23C49F8D0(&qword_27E1F6A20[108], "AGCStreamTokenSwTessellationBucketedEmitDrawCommandsVSProgram");
    sub_23C49F8D0(&qword_27E1F6A20[111], "AGCStreamTokenVDMNOPDBGProgram");
    sub_23C49F8D0(&qword_27E1F6A20[114], "AGCStreamTokenSwTessellationBucketedClearInstanceCountsProgram");
    sub_23C49F8D0(&qword_27E1F6A20[117], "AGCStreamTokenUtilityProgram");
    sub_23C49F8D0(&qword_27E1F6A20[120], "AGCStreamTokenNumGfxShaders");
    sub_23C49F8D0(&qword_27E1F6A20[123], "AGCStreamTokenBitCodeGLIR");
    sub_23C49F8D0(&qword_27E1F6A20[126], "AGCStreamTokenVertexContextStateGL");
    sub_23C49F8D0(&qword_27E1F6A20[129], "AGCStreamTokenFragmentContextStateGL");
    sub_23C49F8D0(&qword_27E1F6A20[132], "AGCStreamTokenVertexContextStateAGP");
    sub_23C49F8D0(&qword_27E1F6A20[135], "AGCStreamTokenFragmentContextStateAGP");
    sub_23C49F8D0(&qword_27E1F6A20[138], "AGCStreamTokenSamplerRemapState");
    sub_23C49F8D0(&qword_27E1F6A20[141], "AGCStreamTokenSamplerPCFState");
    sub_23C49F8D0(&qword_27E1F6A20[144], "AGCStreamTokenDrawBufferState");
    sub_23C49F8D0(&qword_27E1F6A20[147], "AGCStreamTokenTileState");
    sub_23C49F8D0(&qword_27E1F6A20[150], "AGCStreamTokenBackgroundObjectState");
    sub_23C49F8D0(&qword_27E1F6A20[153], "AGCStreamTokenEndOfTileState");
    sub_23C49F8D0(&qword_27E1F6A20[156], "AGCStreamToken3DBlitState");
    sub_23C49F8D0(&qword_27E1F6A20[159], "AGCStreamTokenTABlitState");
    sub_23C49F8D0(&qword_27E1F6A20[162], "AGCStreamTokenCDMBlitState");
    sub_23C49F8D0(&qword_27E1F6A20[165], "AGCStreamTokenBlitSparseState");
    sub_23C49F8D0(&qword_27E1F6A20[168], "AGCStreamTokenVaryingSemantics");
    sub_23C49F8D0(&qword_27E1F6A20[171], "AGCStreamTokenVaryingTypes");
    sub_23C49F8D0(&qword_27E1F6A20[174], "AGCStreamTokenClearFragmentColorMaskState");
    sub_23C49F8D0(&qword_27E1F6A20[177], "AGCStreamTokenComputeContextStateAGP");
    sub_23C49F8D0(&qword_27E1F6A20[180], "AGCStreamTokenTexUnitBiasState");
    sub_23C49F8D0(&qword_27E1F6A20[183], "AGCStreamTokenTessellationDriverState");
    sub_23C49F8D0(&qword_27E1F6A20[186], "AGCStreamTokenExecuteIndirectDriverState");
    sub_23C49F8D0(&qword_27E1F6A20[189], "AGCStreamTokenGPUGatherVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[192], "AGCStreamTokenGPUGatherComputeShader");
    sub_23C49F8D0(&qword_27E1F6A20[195], "AGCStreamTokenPDSPatchUpVertexShader");
    sub_23C49F8D0(&qword_27E1F6A20[198], "AGCStreamTokenPDSPatchUpComputeShader");
    sub_23C49F8D0(&qword_27E1F6A20[201], "ACGStreamTokenArch");
    sub_23C49F8D0(&qword_27E1F6A20[204], "AGCStreamTokenEnd");
    __cxa_atexit(sub_23C4C9530, qword_27E1F6A20, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F7098);
  }

  v9 = &qword_27E1F6A20[3 * v8];
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

uint64_t sub_23C4C9530(uint64_t a1)
{
  v2 = 1656;
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

const char *sub_23C4C957C(void *a1)
{
  v1 = *(a1 + *(*a1 - 40) + 592);
  v2 = "texture fetch";
  if (v1 == 10)
  {
    v2 = "blit3D";
  }

  if (v1 == 8)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void sub_23C4C95C4(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 600);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C9644(uint64_t a1)
{
  sub_23C4B130C(a1 + 584);

  JUMPOUT(0x23EED50C0);
}

const char *sub_23C4C96A0(uint64_t a1)
{
  v1 = *(a1 + 592);
  v2 = "texture fetch";
  if (v1 == 10)
  {
    v2 = "blit3D";
  }

  if (v1 == 8)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void sub_23C4C96D0(uint64_t a1)
{
  sub_23C4B130C(a1 + 600);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C9748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[1];
  *(a1 + 8) = 0;
  operator new();
}

uint64_t sub_23C4C99DC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = llvm::User::operator new(0x58);
  v15[0] = "agc.region_offsets";
  v16 = 259;
  v7 = llvm::GlobalVariable::GlobalVariable();
  *(v7 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C(a1 + *(*a1 - 24), v6, 0x45u, 0);
  v8 = (a1 + *(*a1 - 24));
  v16 = 257;
  v9 = sub_23C497C88(v8 + 1, **(*v6 + 16), v6, 0, v15);
  v10 = a1 + *(*a1 - 24);
  v11 = llvm::ConstantInt::get();
  v16 = 257;
  *a2 = sub_23C49A8E0((v10 + 8), v9, v11, v15);
  v12 = a1 + *(*a1 - 24);
  v16 = 257;
  v13 = llvm::ConstantInt::get();
  result = sub_23C49B560((v12 + 8), v9, v13, v15);
  *a3 = result;
  return result;
}

unsigned __int8 *sub_23C4C9BA0(void *a1, llvm::Type *a2, unsigned __int8 *a3, llvm::UndefValue *a4, uint64_t a5, llvm::Instruction *a6)
{
  v6 = a4;
  v101 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 2) & 0xFE) == 0x12)
  {
    v9 = *(a4 + 8);
  }

  else
  {
    v9 = 1;
  }

  if (a2 <= 14)
  {
    if (a2 > 12)
    {
      if (a2 == 13)
      {
        v96 = llvm::ConstantInt::get();
        v97 = llvm::ConstantInt::get();
        v98 = llvm::ConstantInt::get();
        v99 = llvm::ConstantInt::get();
        v30 = (a1 + *(*a1 - 24));
        v31 = llvm::ConstantVector::get();
        v95 = 257;
        v32 = sub_23C49A3AC(v30 + 1, a3, a3, v31, v94);
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 43);
        v88 = *(v33 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v33 + 8));
        v90 = *(v33 + 26);
        v15 = (*(*v34 + 96))(v34, &v88, 1, v6, v32, 1, 0);
        if (!v89)
        {
          return v15;
        }
      }

      else
      {
        v96 = llvm::ConstantInt::get();
        v97 = llvm::ConstantInt::get();
        v98 = llvm::ConstantInt::get();
        v99 = llvm::ConstantInt::get();
        v21 = (a1 + *(*a1 - 24));
        v22 = llvm::ConstantVector::get();
        v95 = 257;
        v23 = sub_23C49A3AC(v21 + 1, a3, a3, v22, v94);
        v24 = a1 + *(*a1 - 24);
        v25 = *(v24 + 43);
        v85 = *(v24 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v24 + 8));
        v87 = *(v24 + 26);
        v15 = (*(*v25 + 96))(v25, &v85, 2, v6, v23, 1, 0);
        if (!v86)
        {
          return v15;
        }
      }

      goto LABEL_29;
    }

    if (a2 == 11)
    {
      v28 = a1 + *(*a1 - 24);
      v29 = *(v28 + 43);
      v79 = *(v28 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v80, (v28 + 8));
      v81 = *(v28 + 26);
      v15 = (*(*v29 + 96))(v29, &v79, 6, v6, a3, 0, 0);
      if (!v80)
      {
        return v15;
      }

      goto LABEL_29;
    }

    if (a2 == 12)
    {
      v96 = llvm::ConstantInt::get();
      v97 = llvm::ConstantInt::get();
      v98 = llvm::ConstantInt::get();
      v16 = (a1 + *(*a1 - 24));
      v17 = llvm::ConstantVector::get();
      v95 = 257;
      v18 = sub_23C49A3AC(v16 + 1, a3, a3, v17, v94);
      v19 = a1 + *(*a1 - 24);
      v20 = *(v19 + 43);
      v91 = *(v19 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v19 + 8));
      v93 = *(v19 + 26);
      v15 = (*(*v20 + 96))(v20, &v91, 0, v6, v18, 1, 0);
      if (!v92)
      {
        return v15;
      }

      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (a2 > 16)
  {
    switch(a2)
    {
      case 0x11:
        v35 = a1 + *(*a1 - 24);
        v36 = *(v35 + 43);
        v73 = *(v35 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v74, (v35 + 8));
        v75 = *(v35 + 26);
        v15 = (*(*v36 + 96))(v36, &v73, 8, v6, a3, 0, 0);
        if (!v74)
        {
          return v15;
        }

        goto LABEL_29;
      case 0x12:
        v42 = llvm::ConstantFP::get();
        v43 = a1 + *(*a1 - 24);
        v95 = 257;
        v44 = llvm::ConstantInt::get();
        v45 = sub_23C5057E8((v43 + 8), a3, v44, v94);
        v46 = a1 + *(*a1 - 24);
        v47 = *(v46 + 20);
        v95 = 257;
        v48 = sub_23C49ACF8((v46 + 8), 49, v45, v47, v94);
        v100 = 257;
        v49 = sub_23C49EA2C((v46 + 8), v48, v42, &v96);
        v50 = *(a1 + *(*a1 - 24) + 192);
        v72 = 257;
        return sub_23C49B2C8((v46 + 8), v49, v50, v71);
      case 0x13:
        v96 = llvm::ConstantInt::get();
        v97 = llvm::ConstantInt::get();
        v98 = llvm::ConstantInt::get();
        v99 = llvm::ConstantInt::get();
        v10 = (a1 + *(*a1 - 24));
        v11 = llvm::ConstantVector::get();
        v95 = 257;
        v12 = sub_23C49A3AC(v10 + 1, a3, a3, v11, v94);
        v13 = a1 + *(*a1 - 24);
        v14 = *(v13 + 43);
        v68 = *(v13 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v69, (v13 + 8));
        v70 = *(v13 + 26);
        v15 = (*(*v14 + 120))(v14, &v68, v12);
        if (v69)
        {
          goto LABEL_29;
        }

        return v15;
    }

LABEL_31:
    if (v9 == 4)
    {
      v57 = a1 + *(*a1 - 24);
      v95 = 257;
      v55 = (v57 + 8);
      v56 = v94;
      v54 = a3;
    }

    else
    {
      if (v9 != 1)
      {
        v15 = llvm::UndefValue::get();
        if (v9)
        {
          v59 = 0;
          v60 = v9;
          do
          {
            v61 = a1 + *(*a1 - 24);
            v95 = 257;
            v62 = llvm::ConstantInt::get();
            v63 = sub_23C5057E8((v61 + 8), a3, v62, v94);
            v65 = v6;
            if ((*(v6 + 2) & 0xFE) == 0x12)
            {
              v65 = **(v6 + 2);
            }

            v100 = 257;
            v66 = sub_23C49B1E4((v61 + 8), v63, v65, 0, &v96, v64);
            v72 = 257;
            v67 = llvm::ConstantInt::get();
            v15 = sub_23C505AA8((v61 + 8), v15, v66, v67, v71);
            ++v59;
          }

          while (v60 != v59);
        }

        return v15;
      }

      v52 = a1 + *(*a1 - 24);
      v95 = 257;
      v53 = llvm::ConstantInt::get();
      v54 = sub_23C5057E8((v52 + 8), a3, v53, v94);
      if ((*(v6 + 2) & 0xFE) == 0x12)
      {
        v6 = **(v6 + 2);
      }

      v100 = 257;
      v55 = (v52 + 8);
      v56 = &v96;
    }

    return sub_23C49B1E4(v55, v54, v6, 0, v56, a6);
  }

  if (a2 != 15)
  {
    v26 = a1 + *(*a1 - 24);
    v27 = *(v26 + 43);
    v76 = *(v26 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (v26 + 8));
    v78 = *(v26 + 26);
    v15 = (*(*v27 + 96))(v27, &v76, 7, v6, a3, 0, 0);
    if (!v77)
    {
      return v15;
    }

    goto LABEL_29;
  }

  v96 = llvm::ConstantInt::get();
  v97 = llvm::ConstantInt::get();
  v98 = llvm::ConstantInt::get();
  v99 = llvm::ConstantInt::get();
  v37 = (a1 + *(*a1 - 24));
  v38 = llvm::ConstantVector::get();
  v95 = 257;
  v39 = sub_23C49A3AC(v37 + 1, a3, a3, v38, v94);
  v40 = a1 + *(*a1 - 24);
  v41 = *(v40 + 43);
  v82 = *(v40 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v83, (v40 + 8));
  v84 = *(v40 + 26);
  v15 = (*(*v41 + 96))(v41, &v82, 3, v6, v39, 1, 0);
  if (v83)
  {
LABEL_29:
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t sub_23C4CA824(uint64_t result, void *a2, int a3)
{
  switch(a3)
  {
    case 1:
      v4 = *(a2 + *(*a2 - 24) + 176);
      goto LABEL_18;
    case 2:
      v4 = *(a2 + *(*a2 - 24) + 184);
      goto LABEL_18;
    case 3:
    case 18:
      v4 = *(a2 + *(*a2 - 24) + 192);
      goto LABEL_16;
    case 4:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 160);
      goto LABEL_19;
    case 5:
      v4 = *(a2 + *(*a2 - 24) + 224);
      goto LABEL_18;
    case 6:
      v4 = *(a2 + *(*a2 - 24) + 232);
      goto LABEL_18;
    case 7:
      v4 = *(a2 + *(*a2 - 24) + 240);
      goto LABEL_16;
    case 8:
      v4 = *(a2 + *(*a2 - 24) + 280);
      goto LABEL_18;
    case 9:
      v4 = *(a2 + *(*a2 - 24) + 288);
LABEL_18:
      v8 = 7;
      goto LABEL_19;
    case 10:
      v4 = *(a2 + *(*a2 - 24) + 296);
LABEL_16:
      v8 = 6;
LABEL_19:
      v7 = v4;
      break;
    case 11:
      v6 = a2 + *(*a2 - 24);
      v4 = *(v6 + 24);
      v7 = *(v6 + 36);
      v8 = 7;
      break;
    case 12:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[23];
      goto LABEL_8;
    case 13:
    case 14:
    case 15:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[23];
      goto LABEL_21;
    case 16:
    case 17:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[24];
LABEL_8:
      v7 = v5[31];
      goto LABEL_22;
    case 19:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[36];
LABEL_21:
      v7 = v3[33];
LABEL_22:
      v8 = 1;
      break;
    default:
      v4 = 0;
      v7 = 0;
      v8 = 9;
      break;
  }

  *result = v7;
  *(result + 8) = v4;
  *(result + 16) = v8;
  return result;
}

uint64_t sub_23C4CAAB8(void *a1, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  v75 = *MEMORY[0x277D85DE8];
  if (a2 <= 14)
  {
    if (a2 <= 12)
    {
      if (a2 != 11)
      {
        if (a2 == 12)
        {
          v10 = a1 + *(*a1 - 24);
          v11 = *(v10 + 43);
          v67 = *(v10 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v10 + 8));
          v69 = *(v10 + 26);
          if ((*(a4 + 8) & 0xFE) == 0x12)
          {
            a4 = **(a4 + 16);
          }

          v9 = (*(*v11 + 104))(v11, &v67, 0, a4, a3, 1, 0);
          if (v68)
          {
            llvm::MetadataTracking::untrack();
          }

          v70 = llvm::ConstantInt::get();
          v71 = llvm::ConstantInt::get();
          v72 = llvm::ConstantInt::get();
          v12 = (a1 + *(*a1 - 24));
          goto LABEL_45;
        }

        return a3;
      }

      v17 = a1 + *(*a1 - 24);
      v18 = *(v17 + 43);
      v53 = *(v17 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (v17 + 8));
      v55 = *(v17 + 26);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      a3 = (*(*v18 + 104))(v18, &v53, 6, a4, a3, 0, 0);
      if (!v54)
      {
        return a3;
      }

      goto LABEL_38;
    }

    if (a2 == 13)
    {
      v19 = a1 + *(*a1 - 24);
      v20 = *(v19 + 43);
      v62 = *(v19 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v63, (v19 + 8));
      v64 = *(v19 + 26);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v20 + 104))(v20, &v62, 1, a4, a3, 1, 0);
      if (!v63)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = a1 + *(*a1 - 24);
      v14 = *(v13 + 43);
      v59 = *(v13 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v60, (v13 + 8));
      v61 = *(v13 + 26);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v14 + 104))(v14, &v59, 2, a4, a3, 1, 0);
      if (!v60)
      {
        goto LABEL_21;
      }
    }

    llvm::MetadataTracking::untrack();
LABEL_21:
    v70 = llvm::ConstantInt::get();
    v71 = llvm::ConstantInt::get();
    v72 = llvm::ConstantInt::get();
LABEL_44:
    v73 = llvm::ConstantInt::get();
    v12 = (a1 + *(*a1 - 24));
LABEL_45:
    v25 = llvm::ConstantVector::get();
    v66 = 257;
    return sub_23C49A3AC(v12 + 1, v9, v9, v25, v65);
  }

  if (a2 > 16)
  {
    if (a2 != 17)
    {
      if (a2 == 18)
      {
        v28 = llvm::ConstantFP::get();
        v29 = llvm::ConstantInt::get();
        v30 = llvm::ConstantInt::get();
        v31 = a1 + *(*a1 - 24);
        v32 = llvm::ConstantInt::get();
        v66 = 257;
        v33 = sub_23C49A8E0((v31 + 8), a3, v32, v65);
        v34 = a1 + *(*a1 - 24);
        v66 = 257;
        v35 = sub_23C49A474((v34 + 8), v33, v29, v65);
        v36 = *(a1 + *(*a1 - 24) + 160);
        v74 = 257;
        sub_23C49ACF8((v34 + 8), 49, v35, v36, &v70);
        v37 = a1 + *(*a1 - 24);
        v38 = *(v37 + 20);
        v66 = 257;
        v39 = sub_23C49EF94((v37 + 8), v33, v38, v65);
        v74 = 257;
        sub_23C4BBCA0((v37 + 8), v39, v28, &v70);
        v40 = (a1 + *(*a1 - 24));
        v66 = 257;
        sub_23C497D84(v40 + 1, 34, v33, v30, v65);
        v66 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        v42 = a1 + *(*a1 - 24);
        v43 = *(v42 + 24);
        v66 = 257;
        return sub_23C49ACF8((v42 + 8), 49, Select, v43, v65);
      }

      if (a2 == 19)
      {
        v7 = a1 + *(*a1 - 24);
        v8 = *(v7 + 43);
        v44 = *(v7 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (v7 + 8));
        v46 = *(v7 + 26);
        v9 = (*(*v8 + 112))(v8, &v44, a3);
        if (!v45)
        {
LABEL_43:
          v70 = llvm::ConstantInt::get();
          v71 = llvm::ConstantInt::get();
          v72 = llvm::ConstantInt::get();
          goto LABEL_44;
        }

LABEL_42:
        llvm::MetadataTracking::untrack();
        goto LABEL_43;
      }

      return a3;
    }

    v21 = a1 + *(*a1 - 24);
    v22 = *(v21 + 43);
    v47 = *(v21 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v48, (v21 + 8));
    v49 = *(v21 + 26);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    a3 = (*(*v22 + 104))(v22, &v47, 8, a4, a3, 0, 0);
    if (!v48)
    {
      return a3;
    }

LABEL_38:
    llvm::MetadataTracking::untrack();
    return a3;
  }

  if (a2 == 15)
  {
    v23 = a1 + *(*a1 - 24);
    v24 = *(v23 + 43);
    v56 = *(v23 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v57, (v23 + 8));
    v58 = *(v23 + 26);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    v9 = (*(*v24 + 104))(v24, &v56, 3, a4, a3, 1, 0);
    if (!v57)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v15 = a1 + *(*a1 - 24);
  v16 = *(v15 + 43);
  v50 = *(v15 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v51, (v15 + 8));
  v52 = *(v15 + 26);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    a4 = **(a4 + 16);
  }

  a3 = (*(*v16 + 104))(v16, &v50, 7, a4, a3, 0, 0);
  if (v51)
  {
    goto LABEL_38;
  }

  return a3;
}

uint64_t sub_23C4CB510(unsigned int **a1, uint64_t a2, unsigned int a3)
{
  v4 = a1[8];
  v5 = llvm::User::operator new(0x40);
  MEMORY[0x23EED3B90](v5, v4, 0, 0);
  v11 = 257;
  result = (*(*a1[10] + 16))(a1[10], v5, v10, a1[6], a1[7]);
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = *a1;
    v9 = v8 + 16 * v7;
    do
    {
      result = llvm::Instruction::setMetadata();
      v8 += 16;
    }

    while (v8 != v9);
  }

  return result;
}

void sub_23C4CB5CC(uint64_t *a1, uint64_t a2, llvm::Type *a3, unsigned int a4, int a5)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 3), a2, a3);
  sub_23C4C9748(a1, off_284F13F38);
}

uint64_t sub_23C4CBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 104))(*(a1 + 72));
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
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

void sub_23C4CBB40(uint64_t *a1, uint64_t a2, llvm::Type *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 3), a2, a3);
  sub_23C4C9748(a1, off_284F14078);
}

void sub_23C4CC3EC(uint64_t *a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v4 = *(a1 + *(*a1 - 24) + 344);
  *(a1 + 8) = (*(*v4 + 312))(v4, &v6, 4);
  if (v6)
  {
    operator new();
  }

  strlen(off_278BBF510[*a2 & 7]);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  a1[2] = v5;
  *(v5 + 18) = *(v5 + 18) & 0xC00F | 0x660;
  operator new();
}

void sub_23C4CCD24(uint64_t *a1, uint64_t a2, llvm::Type *a3, unsigned int *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 6), a2, a3);
  sub_23C4C9748(a1, off_284F141B8);
}

void sub_23C4CF68C(uint64_t *a1, uint64_t a2, llvm::Type *a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 74), a2, a3);
  sub_23C4CF13C(a1, off_284F144B8, a2, a4);
}

llvm::Instruction *sub_23C4D09AC(uint64_t *a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5, uint64_t a6)
{
  v8 = a2;
  v86 = *MEMORY[0x277D85DE8];
  llvm::FixedVectorType::get();
  v10 = llvm::User::operator new(0x58);
  v11 = v8;
  v82 = "agc.pbe_words";
  v84[0] = v8;
  LOWORD(v85) = 2051;
  llvm::GlobalVariable::GlobalVariable();
  v12 = *(a1 + *(*a1 - 24) + 344);
  if (*(v12 + 1616))
  {
    strlen(*(v12 + 1616));
  }

  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v70 = v10;
  sub_23C506A1C(a1 + *(*a1 - 24), v10, *(*(a1 + *(*a1 - 24) + 344) + 1624), v8);
  v13 = llvm::User::operator new(0x58);
  llvm::FixedVectorType::get();
  v82 = "agc.emit_info";
  v84[0] = v8;
  LOWORD(v85) = 2051;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v71 = v13;
  sub_23C506A1C(a1 + *(*a1 - 24), v13, 5u, v8);
  v14 = *(a1[2] + 4 * v8);
  if (*a3 != v14)
  {
    v15 = *a1;
    if (*(*(a1 + *(*a1 - 24) + 344) + 1480))
    {
      v16 = a3;
      v17 = llvm::User::operator new(0x58);
      llvm::Type::getInt8PtrTy(*(a1 + *(*a1 - 24) + 336), 1);
      v82 = "agc.framebuffer_slot";
      v84[0] = v14;
      LOWORD(v85) = 2051;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v17, 4u, v14);
      v18 = (a1 + *(*a1 - 24));
      LOWORD(v85) = 257;
      v19 = sub_23C497C88(v18 + 1, **(*v17 + 16), v17, 0, &v82);
      v20 = a1 + *(*a1 - 24);
      v21 = *(v20 + 43);
      v22 = *(v21 + 1480);
      if (v22)
      {
        v23 = strlen(*(v21 + 1480));
      }

      else
      {
        v23 = 0;
      }

      v25 = sub_23C49EB10(v20, v22, v23, *(v20 + 24), *(v20 + 24));
      v26 = (a1 + *(*a1 - 24));
      __src[0] = llvm::ConstantInt::get();
      LOWORD(v85) = 257;
      v24 = sub_23C497A7C(v26 + 1, *(v25 + 24), v25, __src, 1, &v82);
      v15 = *a1;
    }

    else
    {
      v16 = a3;
      v24 = 0;
      v19 = 0;
    }

    v27 = a1 + *(v15 - 24);
    v28 = *(v27 + 43);
    v77 = *(v27 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v78, (v27 + 8));
    v79 = *(v27 + 26);
    v29 = (*(*v28 + 232))(v28, &v77, v8 & 7, a1[2], v19, v24, *(a1 + 25));
    if (v78)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v29)
    {
      v30 = a1 + *(*a1 - 24);
      *(v30 + 7) = v29;
      *(v30 + 8) = v29 + 40;
    }

    *v16 = v14;
  }

  if (a6)
  {
    v82 = "cond_emit";
    LOWORD(v85) = 259;
    operator new();
  }

  if ((*(a1[2] + 4 * v8) & 0x2000000) != 0)
  {
    *(a1 + 24) = 1;
    v31 = a1 + *(*a1 - 24);
    v32 = *(v31 + 43);
    v33 = *(v32 + 1456);
    if (v33)
    {
      v34 = strlen(*(v32 + 1456));
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_23C4A0414(v31, v33, v34, *(v31 + 20));
    v36 = a1 + *(*a1 - 24);
    v37 = *(v36 + 43);
    v38 = *(v37 + 1464);
    if (v38)
    {
      v39 = strlen(*(v37 + 1464));
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_23C4A0414(v36, v38, v39, *(v36 + 20));
    v41 = (a1 + *(*a1 - 24));
    LOWORD(v85) = 257;
    v69 = sub_23C497A7C(v41 + 1, **(*v35 + 16), v35, 0, 0, &v82);
    v42 = (a1 + *(*a1 - 24));
    LOWORD(v85) = 257;
    v68 = sub_23C497A7C(v42 + 1, **(*v40 + 16), v40, 0, 0, &v82);
    v43 = llvm::User::operator new(0x58);
    llvm::PointerType::get();
    v82 = "agc.sstt_address";
    v84[0] = v8;
    LOWORD(v85) = 2051;
    llvm::GlobalVariable::GlobalVariable();
    *(v43 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v43, 0x63u, v8);
    v44 = (a1 + *(*a1 - 24));
    LOWORD(v85) = 257;
    v67 = sub_23C497C88(v44 + 1, **(*v43 + 16), v43, 0, &v82);
    v45 = llvm::User::operator new(0x58);
    llvm::PointerType::get();
    v82 = "agc.queue_address";
    v84[0] = v8;
    LOWORD(v85) = 2051;
    llvm::GlobalVariable::GlobalVariable();
    *(v45 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v45, 0x64u, v8);
    v46 = (a1 + *(*a1 - 24));
    LOWORD(v85) = 257;
    v47 = sub_23C497C88(v46 + 1, **(*v45 + 16), v45, 0, &v82);
    v48 = llvm::User::operator new(0x58);
    v82 = "agc.slice_level";
    v84[0] = v8;
    LOWORD(v85) = 2051;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v48, 1u, v8);
    v49 = (a1 + *(*a1 - 24));
    LOWORD(v85) = 257;
    v50 = sub_23C497C88(v49 + 1, **(*v48 + 16), v48, 0, &v82);
    v51 = llvm::PointerType::get();
    v52 = llvm::PointerType::get();
    v53 = a1 + *(*a1 - 24);
    v54 = *(v53 + 20);
    v55 = *(v53 + 24);
    __src[0] = v51;
    __src[1] = v52;
    __src[2] = v54;
    __src[3] = v54;
    v81 = v55;
    v82 = v84;
    v83 = 0x500000000;
    sub_23C49BA18(&v82, __src, &v82);
    llvm::FunctionType::get();
    llvm::Module::getOrInsertFunction();
    v57 = v56;
    if (v82 != v84)
    {
      free(v82);
    }

    v82 = v47;
    v83 = v67;
    v84[0] = v69;
    v84[1] = v68;
    v85 = v50;
    v58 = (a1 + *(*a1 - 24));
    LOWORD(v81) = 257;
    sub_23C497A7C(v58 + 1, *(v57 + 24), v57, &v82, 5, __src);
  }

  v59 = a1 + *(*a1 - 24);
  v60 = *(v59 + 43);
  v74 = *(v59 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v75, (v59 + 8));
  v76 = *(v59 + 26);
  result = (*(*v60 + 224))(v60, &v74, v70, a4, a1[2] + 4 * v11, v71, 0);
  if (v75)
  {
    result = llvm::MetadataTracking::untrack();
  }

  if (a5)
  {
    v62 = a1 + *(*a1 - 24);
    v63 = *(v62 + 43);
    v64 = *(v63 + 1544);
    if (v64)
    {
      v65 = strlen(*(v63 + 1544));
    }

    else
    {
      v65 = 0;
    }

    v66 = sub_23C4A0414(v62, v64, v65, *(v62 + 18));
    LOWORD(v85) = 257;
    return sub_23C497A7C(v62 + 1, **(*v66 + 16), v66, 0, 0, &v82);
  }

  return result;
}

uint64_t *sub_23C4D1DB4(uint64_t *a1, uint64_t a2, llvm::Type *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 1), a2, a3);
  *a1 = &unk_284F14658;
  a1[1] = &unk_284F14700;
  sub_23C49F8D0(__p, "utility_program");
  v5 = sub_23C4AF200(a3, __p);
  v6 = *a1;
  *(a1 + *(*a1 - 24) + 320) = v5;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v6 = *a1;
  }

  *(*(a1 + *(v6 - 24) + 344) + 320) = *(a1 + *(v6 - 24) + 320);
  Function = llvm::Module::getFunction();
  __p[0] = *(Function + 112);
  llvm::AttributeList::getFnAttrs(__p);
  v10 = llvm::AttributeSet::addAttribute();
  LODWORD(__p[0]) = -1;
  __p[1] = v10;
  *(Function + 112) = llvm::AttributeList::get();
  *(Function + 18) = *(Function + 18) & 0xC00F | 0x6A0;
  __p[0] = "agc.main";
  v13 = 259;
  llvm::Value::setName();
  sub_23C4B2A60(a1 + *(*a1 - 24));
  v8 = *a1;
  *(a1 + *(*a1 - 24) + 104) = -1;
  *(*(a1 + *(v8 - 24) + 344) + 104) = -1;
  return a1;
}

void sub_23C4D204C(void *a1, uint64_t a2, unsigned int *a3, int a4)
{
  v4 = sub_23C4A0414(a1 + *(*a1 - 24), "agc.texture_fetch", 17, *(a1 + *(*a1 - 24) + 144));
  *(v4 + 18) = *(v4 + 18) & 0xC00F | 0x650;
  operator new();
}

uint64_t sub_23C4D2E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + *(*a1 - 24);
  v15 = 257;
  *a4 = sub_23C4CBA68((v9 + 8), a2, a3, v14);
  v10 = (a1 + *(*a1 - 24));
  v13[16] = 257;
  result = sub_23C49EBEC((v10 + 1), 22, a2, a3, v13);
  v12 = result;
  if (!result)
  {
    v15 = 257;
    v12 = llvm::BinaryOperator::Create();
    result = sub_23C49B15C(v10 + 1, v12, v13);
  }

  *a5 = v12;
  return result;
}

void sub_23C4D2F54(uint64_t *a1, uint64_t a2, llvm::Type *a3, uint64_t a4, unsigned int *a5, int a6)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 75), a2, a3);
  sub_23C4CF13C(a1, off_284F148B0, a2, a4);
}

uint64_t sub_23C4D56F8(llvm::ValueHandleBase *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 != a2)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(this + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(this);
    }
  }

  return a2;
}

uint64_t sub_23C4D5768(llvm::IntegerType *a1, llvm::Type *this, int a3, uint64_t *a4, void *a5, llvm::ConstantInt **a6)
{
  llvm::Type::getScalarSizeInBits(this);
  *a6 = llvm::IntegerType::get();
  result = llvm::Type::getScalarSizeInBits(this);
  switch(result)
  {
    case 0x20:
      if (!a3)
      {
        goto LABEL_10;
      }

      break;
    case 0x10:
      if (!a3)
      {
        goto LABEL_10;
      }

      break;
    case 8:
      if (a3)
      {
        break;
      }

LABEL_10:
      *a4 = llvm::ConstantInt::get();
      result = llvm::ConstantInt::get();
      goto LABEL_11;
    default:
      return result;
  }

  *a4 = llvm::ConstantInt::getSigned();
  result = llvm::ConstantInt::getSigned();
LABEL_11:
  *a5 = result;
  return result;
}

llvm::Type **sub_23C4D58A8(uint64_t a1, llvm::Type **a2, llvm::Type *a3, uint64_t a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 40;
  }

  return sub_23C49ACF8(a1, v10, a2, a3, a4);
}

uint64_t sub_23C4D5948(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23C49EBEC(a1, 30, a2, a3, a4);
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C4D59E0(const void *a1, const char *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!a2)
  {
    return 1;
  }

  v33 = 0;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
  if ((objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/AGX", 1, 0, &v33) & 1) == 0)
  {
    syslog(3, "Unable to create log directory");
    return 0;
  }

  v14 = MEMORY[0x277CCACA8];
  if (qword_27E1F70A8 != -1)
  {
    dispatch_once(&qword_27E1F70A8, &unk_284F15658);
  }

  v15 = qword_27E1F70A0;
  v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13);
  v18 = objc_msgSend_stringFromDate_(v15, v17, v16);
  v20 = objc_msgSend_stringWithFormat_(v14, v19, @"%@/%s_%@_%s.log", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/AGX", a3, v18, a4);
  v23 = objc_msgSend_UTF8String(v20, v21, v22);
  v24 = fopen(v23, "wb");
  if (!v24)
  {
    objc_msgSend_UTF8String(v20, v25, v26);
    syslog(3, "Failure to create log file: %s");
    return 0;
  }

  v27 = v24;
  if (a5 && fwrite(a5, 1uLL, 4uLL, v24) != 4 || (v30 = 1, v31 = fwrite(a1, 1uLL, a2, v27), fclose(v27), v31 != a2))
  {
    objc_msgSend_UTF8String(v20, v28, v29);
    syslog(3, "Failed to write log file (wrote %zu bytes, expected %zu bytes): %s");
    return 0;
  }

  return v30;
}

uint64_t sub_23C4D5BA0()
{
  qword_27E1F70A0 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateStyle_(qword_27E1F70A0, v0, 1);
  v1 = qword_27E1F70A0;

  return MEMORY[0x2821F9670](v1, sel_setDateFormat_, @"yyyy_MM_dd_HH_mm_ssZZZ");
}

BOOL sub_23C4D5C10(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C503B2C(a1);
    v4 = sub_23C511A84(a1);
    v5 = a1 + *(*a1 - 24);
    v5[774] = 1;
    v6 = *(v5 + 186);
    v7 = *(v5 + 184) - *(v5 + 188);
    sub_23C4B5F88(v5 + 88, v3);
    sub_23C4B5FF0(v5 + 88, v4);
    v8 = a1 + *(*a1 - 24);
    v9 = sub_23C4B03D4((v5 + 704), v7 + v6);
    sub_23C4B1AD8((v8 + 704), v9);
  }

  return v2;
}

void sub_23C4D5D24(void *a1@<X0>, std::string *a2@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a1[478];
  sub_23C49F8D0(v48, "AGCFragmentContextStateGL");
  sub_23C49F8D0(&v53, "AGCFragmentContextState");
  sub_23C49F8D0(v51, "fragmentState");
  sub_23C49F8D0(&v82, "AGCFragmentState");
  sub_23C49F8D0(&v74, "GL and Metal state:");
  sub_23C49F8D0(&v72, "alphaToCoverage");
  sub_23C4B7004(&v75, &v72.__r_.__value_.__l.__data_, *v4 & 1);
  sub_23C49F8D0(v70, "alphaToOne");
  sub_23C4B7004(&v76, v70, (*v4 >> 1) & 1);
  sub_23C49F8D0(v68, "sampleCoverage");
  sub_23C4B7004(&v77, v68, (*v4 >> 2) & 1);
  sub_23C49F8D0(&v78, "GL specific state:");
  sub_23C49F8D0(v66, "depthStencilWriteDisabled");
  sub_23C4B7004(&v79, v66, (*v4 >> 4) & 1);
  sub_23C49F8D0(&v65, "logicOp");
  sub_23C4B7004(&v80, &v65.__r_.__value_.__l.__data_, (*v4 >> 5) & 1);
  sub_23C49F8D0(v63, "logicOpState");
  sub_23C4B705C(v81, v63, off_278BBF720[(*v4 >> 6) & 0x1F]);
  sub_23C49F8D0(&v62, "alphaTest");
  sub_23C4B7004(&v81[1], &v62.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  sub_23C49F8D0(&v61, "alphaTestFunc");
  sub_23C4B705C(&v81[2], &v61.__r_.__value_.__l.__data_, off_278BBF7A8[*v4 >> 12]);
  sub_23C49F8D0(&v60, "smoothPoints");
  sub_23C4B7004(&v81[3], &v60.__r_.__value_.__l.__data_, HIWORD(*v4) & 1);
  sub_23C49F8D0(&v59, "pointSpriteEnabled");
  sub_23C4B7004(&v81[4], &v59.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  sub_23C49F8D0(v57, "outputPointSize");
  sub_23C4B7004(&v81[5], v57, (*v4 >> 18) & 1);
  sub_23C49F8D0(&v56, "shaderDebugEnable");
  sub_23C4B7004(&v81[6], &v56.__r_.__value_.__l.__data_, (*v4 >> 19) & 1);
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v81[7], __p, *v4 >> 20);
  sub_23C4D6FAC(&v50, &v82, 0, &v74, 15);
  v5 = 360;
  do
  {
    if (v74.__r_.__value_.__s.__data_[v5 - 1] < 0)
    {
      operator delete(*(&v73.__r_.__value_.__l.__data_ + v5));
    }

    v5 -= 24;
  }

  while (v5);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v82, v51, &v50);
  sub_23C49F8D0(v63, "colorMaskState");
  sub_23C49F8D0(&v72, "AGCColorMaskState");
  sub_23C49F8D0(v70, "redEnableBits");
  sub_23C4D7238(&v74, v70, *(v4 + 8));
  sub_23C49F8D0(v68, "greenEnableBits");
  sub_23C4D7238(&v75, v68, *(v4 + 9));
  sub_23C49F8D0(v66, "blueEnableBits");
  sub_23C4D7238(&v76, v66, *(v4 + 10));
  sub_23C49F8D0(&v65, "alphaEnableBits");
  sub_23C4D7238(&v77, &v65.__r_.__value_.__l.__data_, *(v4 + 11));
  sub_23C4D6FAC(&v62, &v72, 0, &v74, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v77.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v77.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v83, v63, &v62);
  sub_23C4D6FAC(&v72, &v53, 0, &v82, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v83.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v82 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v60, "blendState");
  sub_23C49F8D0(&v82, "AGCBlendState");
  sub_23C49F8D0(v70, "enabled");
  if (v4[4])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  sub_23C4B705C(&v74, v70, v8);
  sub_23C49F8D0(v68, "src");
  sub_23C4B705C(&v75, v68, off_278BBF7F0[(v4[4] >> 1) & 0x1F]);
  sub_23C49F8D0(v66, "dst");
  sub_23C4B705C(&v76, v66, off_278BBF7F0[(v4[4] >> 6) & 0x1F]);
  sub_23C49F8D0(&v65, "srcA");
  sub_23C4B705C(&v77, &v65.__r_.__value_.__l.__data_, off_278BBF7F0[v4[4] >> 11]);
  sub_23C49F8D0(v63, "dstA");
  sub_23C4B705C(&v78, v63, off_278BBF7F0[*(v4 + 9) & 0x1F]);
  sub_23C49F8D0(&v62, "equation");
  sub_23C4B705C(&v79, &v62.__r_.__value_.__l.__data_, off_278BBF890[(v4[4] >> 21) & 7]);
  sub_23C49F8D0(&v61, "equationA");
  sub_23C4B705C(&v80, &v61.__r_.__value_.__l.__data_, off_278BBF890[*(v4 + 19) & 7]);
  sub_23C4D6FAC(&v59, &v82, 0, &v74, 7);
  for (k = 0; k != -21; k -= 3)
  {
    if (SHIBYTE(v80.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v80.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v73, &v60.__r_.__value_.__l.__data_, &v59);
  sub_23C4D6FAC(&v37, v48, 0, &v72, 2);
  for (m = 0; m != -6; m -= 3)
  {
    if (SHIBYTE(v73.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v72 + m * 8 + 24));
    }
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  v11 = a1[370];
  sub_23C49F8D0(&v72, "AGCDrawBufferState");
  sub_23C49F8D0(v70, "enabledBits");
  sub_23C4D7238(&v82, v70, *(v11 + 32));
  sub_23C49F8D0(v68, "sampleCount");
  sub_23C4B7004(&v83, v68, (*(v11 + 32) >> 8) & 0xF);
  sub_23C49F8D0(v66, "colorSampleCount");
  sub_23C4B7004(&v84, v66, *(v11 + 32) >> 12);
  sub_23C49F8D0(&v65, "outputPartitionSize");
  sub_23C4B7004(&v85, &v65.__r_.__value_.__l.__data_, *(v11 + 34));
  sub_23C49F8D0(v63, "LIBSpilling");
  sub_23C4B7004(&v86, v63, HIBYTE(*(v11 + 32)) & 1);
  sub_23C49F8D0(&v62, "unused");
  sub_23C4B7004(&v87, &v62.__r_.__value_.__l.__data_, *(v11 + 32) >> 25);
  sub_23C49F8D0(&v61, "encoded : ");
  sub_23C49F8D0(&v60, "encoded[0]");
  sub_23C4D7424(&v59, v11);
  sub_23C4B733C(&v74, &v60.__r_.__value_.__l.__data_, &v59);
  sub_23C49F8D0(v57, "encoded[1]");
  sub_23C4D7424(&v56, (v11 + 4));
  sub_23C4B733C(&v75, v57, &v56);
  sub_23C49F8D0(__p, "encoded[2]");
  sub_23C4D7424(&v53, (v11 + 8));
  sub_23C4B733C(&v76, __p, &v53);
  sub_23C49F8D0(v51, "encoded[3]");
  sub_23C4D7424(&v50, (v11 + 12));
  sub_23C4B733C(&v77, v51, &v50);
  sub_23C49F8D0(v48, "encoded[4]");
  sub_23C4D7424(&v47, (v11 + 16));
  sub_23C4B733C(&v78, v48, &v47);
  sub_23C49F8D0(v45, "encoded[5]");
  sub_23C4D7424(&v44, (v11 + 20));
  sub_23C4B733C(&v79, v45, &v44);
  sub_23C49F8D0(v42, "encoded[6]");
  sub_23C4D7424(&v41, (v11 + 24));
  sub_23C4B733C(&v80, v42, &v41);
  sub_23C49F8D0(v39, "encoded[7]");
  sub_23C4D7424(&v38, (v11 + 28));
  sub_23C4B733C(v81, v39, &v38);
  sub_23C4D6FAC(&v88, &v61, 0, &v74, 8);
  sub_23C4D6FAC(&v36, &v72, 0, &v82, 7);
  for (n = 0; n != -21; n -= 3)
  {
    if (SHIBYTE(v88.__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(*(&v88.__r_.__value_.__l.__data_ + n * 8));
    }
  }

  for (ii = 0; ii != 0x1FFFFFFFFFFFFFE8; ii -= 3)
  {
    if (SHIBYTE(v81[0].__r_.__value_.__r.__words[ii + 2]) < 0)
    {
      operator delete(v81[ii / 3].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
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

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v14 = a1[485];
  sub_23C49F8D0(&v82, &unk_23C53F34D);
  for (jj = 1; jj != 33; ++jj)
  {
    std::to_string(&v72, v14[jj]);
    v16 = std::string::append(&v72, " ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v74;
    }

    else
    {
      v18 = v74.__r_.__value_.__r.__words[0];
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v74.__r_.__value_.__l.__size_;
    }

    std::string::append(&v82, v18, size);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }
  }

  sub_23C49F8D0(&v72, "AGCSamplerRemapStateGL");
  sub_23C49F8D0(v70, "samplerCount");
  sub_23C4B7004(&v74, v70, *v14);
  sub_23C49F8D0(v68, "samplerToTexUnitMap");
  std::operator+<char>();
  v20 = std::string::append(&v65, "]");
  v21 = v20->__r_.__value_.__r.__words[2];
  *v66 = *&v20->__r_.__value_.__l.__data_;
  v67 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B733C(&v75, v68, v66);
  sub_23C4D6FAC(&v59, &v72, 0, &v74, 2);
  for (kk = 0; kk != -6; kk -= 3)
  {
    if (SHIBYTE(v75.__r_.__value_.__r.__words[kk + 2]) < 0)
    {
      operator delete(*(&v74 + kk * 8 + 24));
    }
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v23 = a1[483];
  if (v23)
  {
    sub_23C49F8D0(&v61, &unk_23C53F34D);
    for (mm = 0; mm != 32; ++mm)
    {
      sub_23C49F8D0(&v82, "AGCSamplerPCFState");
      sub_23C49F8D0(&v72, "compareFunc");
      sub_23C4B705C(&v74, &v72.__r_.__value_.__l.__data_, off_278BBF7A8[*(v23 + 2 * mm) & 0xF]);
      sub_23C49F8D0(v70, "clampPCFEnabled");
      sub_23C4D7674(&v75, v70, (*(v23 + 2 * mm) >> 4) & 1);
      sub_23C49F8D0(v68, "mipmapMinFilterEnabled");
      sub_23C4D7674(&v76, v68, (*(v23 + 2 * mm) >> 5) & 1);
      sub_23C49F8D0(v66, "trilinearMinFilterEnabled");
      sub_23C4D7674(&v77, v66, (*(v23 + 2 * mm) >> 6) & 1);
      sub_23C49F8D0(&v65, "linearMinFilterEnabled");
      sub_23C4D7674(&v78, &v65.__r_.__value_.__l.__data_, (*(v23 + 2 * mm) >> 7) & 1);
      sub_23C49F8D0(v63, "linearMagFilterEnabled");
      sub_23C4D7674(&v79, v63, HIBYTE(*(v23 + 2 * mm)) & 1);
      sub_23C49F8D0(&v62, "unused");
      sub_23C4D7674(&v80, &v62.__r_.__value_.__l.__data_, *(v23 + 2 * mm) >> 9);
      sub_23C4D6FAC(&v60, &v82, 1, &v74, 7);
      for (nn = 0; nn != -21; nn -= 3)
      {
        if (SHIBYTE(v80.__r_.__value_.__r.__words[nn + 2]) < 0)
        {
          operator delete(*(&v80.__r_.__value_.__l.__data_ + nn * 8));
        }
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66[0]);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v60;
      }

      else
      {
        v26 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v60.__r_.__value_.__l.__size_;
      }

      std::string::append(&v61, v26, v27);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }

    sub_23C49F8D0(&v82, "AGCSamplerPCFStates");
    sub_23C49F8D0(&v74, "pcf : ");
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v75, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
    }

    else
    {
      v75 = v61;
    }

    sub_23C4D6FAC(&v72, &v82, 0, &v74, 2);
    for (i1 = 0; i1 != -6; i1 -= 3)
    {
      if (SHIBYTE(v75.__r_.__value_.__r.__words[i1 + 2]) < 0)
      {
        operator delete(*(&v74 + i1 * 8 + 24));
      }
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_23C49F8D0(&v72, &unk_23C53F34D);
  }

  sub_23C4B7AC8(&v82, &v37.__r_.__value_.__l.__data_, &v36.__r_.__value_.__l.__data_);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v59;
  }

  else
  {
    v29 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v59.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v82, v29, v30);
  v32 = v31->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v72;
  }

  else
  {
    v33 = v72.__r_.__value_.__r.__words[0];
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v72.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v74, v33, v34);
  *a2 = *v35;
  v35->__r_.__value_.__r.__words[0] = 0;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_23C4D6FAC(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_23C49F988(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v29 = *(a2 + 16);
  }

  sub_23C4D76CC(&v30, __dst, v7);
  sub_23C49F8D0(v23, "{");
  sub_23C4D76CC(&__p, v23, v7);
  if ((v27 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v26;
  }

  v11 = std::string::append(&v30, p_p, v10);
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst[0]);
  }

  if (a5)
  {
    for (i = 24 * a5; i; i -= 24)
    {
      if (*(a4 + 23) < 0)
      {
        sub_23C49F988(&v30, *a4, *(a4 + 8));
      }

      else
      {
        v30 = *a4;
      }

      v14 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_23C49F988(&v22, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v30;
      }

      sub_23C4D76CC(&__p, &v22, v7 + 1);
      if ((v27 & 0x80u) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v16 = v27;
      }

      else
      {
        v16 = v26;
      }

      std::string::append(&v31, v15, v16);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        if (v14 < 0)
        {
LABEL_39:
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      else if (v14 < 0)
      {
        goto LABEL_39;
      }

      a4 += 24;
    }
  }

  sub_23C49F8D0(v20, "}");
  sub_23C4D76CC(&v30, v20, v7);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v31;
  }

  else
  {
    v17 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v19 = std::string::insert(&v30, 0, v17, size);
  *a1 = *v19;
  v19->__r_.__value_.__r.__words[0] = 0;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_23C4D7238(std::string *a1, const void **a2, unsigned int a3)
{
  v5 = a3;
  sub_23C4B0E40(v11);
  v6 = sub_23C4AA520(&v12, "0x", 2);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v6, v5);
  std::stringbuf::str();
  sub_23C4B733C(a1, a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED5050](&v16);
}

void sub_23C4D7424(std::string *a1, _DWORD *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v19, "AGCDrawBuffer");
  sub_23C49F8D0(v17, "pbeSourceFormat");
  sub_23C4B705C(&v21, v17, off_278BBF8C8[*a2 & 0x1F]);
  sub_23C49F8D0(v15, "numWrittenComponents");
  sub_23C4B7004(&v22, v15, *a2 >> 5);
  sub_23C49F8D0(v13, "gammaCorrection");
  sub_23C4B7004(&v23, v13, (*a2 >> 8) & 1);
  sub_23C49F8D0(v11, "colorSpaceConversion");
  sub_23C4B705C(&v24, v11, off_278BBF980[(*a2 >> 9) & 7]);
  sub_23C49F8D0(v9, "preEmitSwizzle");
  sub_23C4B705C(&v25, v9, off_278BBF9A8[(*a2 >> 12) & 7]);
  sub_23C49F8D0(v7, "outputPartitionOffset");
  sub_23C4B7004(&v26, v7, (*a2 >> 15));
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v27, __p, *a2 >> 23);
  sub_23C4D6FAC(a1, v19, 0, &v21, 7);
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

void sub_23C4D7674(std::string *a1, const void **a2, unsigned __int16 a3)
{
  std::to_string(&v5, a3);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4D76CC(void ***a1, std::string::value_type *a2, int a3)
{
  sub_23C49F8D0(&v14, &unk_23C53F34D);
  for (; a3; --a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  sub_23C4ADD34(a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_23C4D7860(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F15690;
  v1[490] = &unk_284F158C0;
  v1[304] = &unk_284F15848;
  v2 = v1[488];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 486));
  }

  sub_23C4B7DD0(v1, off_284F15928);
  sub_23C4B130C((v1 + 490));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4D794C(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F15690;
  v1[490] = &unk_284F158C0;
  v1[304] = &unk_284F15848;
  v2 = v1[488];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 486));
  }

  sub_23C4B7DD0(v1, off_284F15928);

  return sub_23C4B130C((v1 + 490));
}

void sub_23C4D7A20(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F15690;
  v2 = a1 + 186;
  a1[186] = &unk_284F158C0;
  *a1 = &unk_284F15848;
  v3 = a1[184];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 182));
  }

  sub_23C4B7DD0(v1, off_284F15928);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4D7AF4(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F15690;
  v2 = a1 + 186;
  a1[186] = &unk_284F158C0;
  *a1 = &unk_284F15848;
  v3 = a1[184];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 182));
  }

  sub_23C4B7DD0(v1, off_284F15928);

  return sub_23C4B130C(v2);
}

uint64_t sub_23C4D7BC0(void *a1, uint64_t *a2)
{
  v4 = *(*a1 - 24);
  v5 = sub_23C4D7CBC(a1);
  v6 = sub_23C49ABAC(a1 + v4, v5, 0);
  v7 = (a1 + *(*a1 - 24));
  v15 = 257;
  v8 = sub_23C497C88(v7 + 1, **(*v6 + 16), v6, 0, v14);
  v9 = a1 + *(*a1 - 24);
  v10 = *a2;
  v15 = 257;
  v11 = sub_23C49FEB4((v9 + 8), v8, v10, v14);
  v12 = a1 + *(*a1 - 24);
  v15 = 257;
  return sub_23C49EA2C((v12 + 8), a2, v11, v14);
}

uint64_t sub_23C4D7CBC(void *a1)
{
  result = a1[488];
  if (!result)
  {
    llvm::StructType::get();
    v3 = llvm::User::operator new(0x58);
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v3, 0x1Au, 0);
    sub_23C4D56F8((a1 + 486), v3);
    return a1[488];
  }

  return result;
}

uint64_t sub_23C4D7E14(void *a1, uint64_t a2)
{
  v4 = *(*a1 - 24);
  v5 = sub_23C4D7CBC(a1);
  v6 = sub_23C49ABAC(a1 + v4, v5, 0);
  v7 = *(*a1 - 24);
  v8 = sub_23C4D7CBC(a1);
  v9 = sub_23C49ABAC(a1 + v7, v8, 1u);
  v10 = (a1 + *(*a1 - 24));
  v19 = 257;
  v11 = sub_23C497C88(v10 + 1, **(*v6 + 16), v6, 0, v18);
  v12 = (a1 + *(*a1 - 24));
  v19 = 257;
  v13 = sub_23C497C88(v12 + 1, **(*v9 + 16), v9, 0, v18);
  v14 = a1 + *(*a1 - 24);
  v19 = 257;
  v15 = sub_23C49EA2C((v14 + 8), a2, v11, v18);
  v17[16] = 257;
  return sub_23C4A0BD4((v14 + 8), v15, v13, v17);
}

void sub_23C4D7F84(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23C4D819C();
  sub_23C4B8D20();
  sub_23C4B8DA4();
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(a2 + 32);
  }

  else
  {
    v8 = 1;
  }

  v39 = 0;
  LODWORD(v28) = 3;
  sub_23C506AF0(0, a3, &v28, &v39);
  v9 = a3 - 8 * *(a3 + 8);
  v10 = *(v9 + 32);
  if (v10)
  {
    if (*v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v9 + 32);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 40);
  if (v12)
  {
    if (*v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  String = llvm::MDString::getString(v11);
  v16 = v15;
  v17 = llvm::MDString::getString(v13);
  v19 = v18;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  v29 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = MEMORY[0x277D821F8] + 16;
  v36 = __p;
  sub_23C4AE584(&v28);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  llvm::Type::print(a2, &v28);
  v20 = *(v36 + 23);
  if (v20 >= 0)
  {
    v21 = v36;
  }

  else
  {
    v21 = *v36;
  }

  if (v20 >= 0)
  {
    v22 = *(v36 + 23);
  }

  else
  {
    v22 = v36[1];
  }

  v23 = *(*sub_23C4B8F30(v17, v19) + 8);
  v24 = *(*sub_23C4B8E28(String, v16) + 8);
  if (v24 == 1)
  {
    v25 = 3;
  }

  else
  {
    v25 = v23;
  }

  *a4 = v8;
  *(a4 + 4) = v24;
  *(a4 + 8) = v25;
  v26 = sub_23C4D8220(v21, v22);
  v27 = v39;
  *(a4 + 12) = *(*v26 + 8);
  *(a4 + 16) = v27;
  *(a4 + 24) = sub_23C50B2E8(a1, 1u, v27, v8);
  llvm::raw_ostream::~raw_ostream(&v28);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C4D819C()
{
  if ((atomic_load_explicit(&qword_27E1F7520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7520))
  {
    qword_27E1F7500 = 0;
    unk_27E1F7508 = 0;
    qword_27E1F7510 = 0x1000000000;
    __cxa_atexit(sub_23C4D8328, &qword_27E1F7500, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7520);
  }
}

uint64_t *sub_23C4D8220(const void *a1, size_t a2)
{
  i = (qword_27E1F7500 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7510) = qword_27E1F7510 - 1;
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

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
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
  ++dword_27E1F750C;
    ;
  }

  return i;
}

uint64_t sub_23C4D8328(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4D83C4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 3872);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C4D83EC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 3864);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C4D8404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 3880);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

uint64_t sub_23C4D8428(uint64_t *a1)
{
  v2 = sub_23C510528(a1);
  v3 = *(a1 + *(*a1 - 24) + 344);
  (*(*v3 + 160))(v3, a1[370]);
  return v2;
}

void sub_23C4D8498(uint64_t *a1)
{
  *a1 = &unk_284F15690;
  v2 = a1 + 490;
  a1[490] = &unk_284F158C0;
  a1[304] = &unk_284F15848;
  v3 = a1[488];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 486));
  }

  sub_23C4B7DD0(a1, off_284F15928);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4D8570(uint64_t *a1)
{
  *a1 = &unk_284F15690;
  v2 = a1 + 490;
  a1[490] = &unk_284F158C0;
  a1[304] = &unk_284F15848;
  v3 = a1[488];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 486));
  }

  sub_23C4B7DD0(a1, off_284F15928);
  sub_23C4B130C(v2);
  return a1;
}

uint64_t sub_23C4D8628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_23C4B1190(a1 + 3920, a2, *a3);
  v15 = sub_23C511214(a1, off_284F15928, a3, a4, a7, 1);
  *a1 = &unk_284F15690;
  *(a1 + 3920) = &unk_284F158C0;
  *(a1 + 2432) = &unk_284F15848;
  *(a1 + 3864) = a6;
  *(a1 + 3872) = a8;
  *(a1 + 3880) = a5;
  *(a1 + 3888) = 4;
  *(a1 + 3896) = 0u;
  sub_23C52F648(v15);
  v16 = (a3 + 168);
  v17 = *(a3 + 191);
  if (v17 < 0)
  {
    if (*(a3 + 176) != 22)
    {
LABEL_15:
      v23 = 0;
      goto LABEL_16;
    }

    v16 = *v16;
  }

  else if (v17 != 22)
  {
    goto LABEL_15;
  }

  v18 = *v16;
  v19 = v16[1];
  v20 = *(v16 + 14);
  v23 = v18 == 0x746E656D67617246 && v19 == 0x505F65746174535FLL && v20 == 0x6D6172676F72505FLL;
LABEL_16:
  *(a1 + 3912) = v23;
  return a1;
}

void sub_23C4D87A4(uint64_t isDeclaration)
{
  v82[16] = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v1 = isDeclaration + 24;
  v2 = *(isDeclaration + 32);
  if (v2 != isDeclaration + 24)
  {
    v67 = isDeclaration + 24;
    while (1)
    {
      v3 = v2 ? v2 - 56 : 0;
      isDeclaration = llvm::GlobalValue::isDeclaration(v3);
      if ((isDeclaration & 1) == 0)
      {
        break;
      }

LABEL_115:
      v2 = *(v2 + 8);
      if (v2 == v1)
      {
        v64 = v72;
        v65 = HIDWORD(v72);
        v66 = v73;
        goto LABEL_118;
      }
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    v75[0] = 0;
    v75[1] = 0;
    v74 = v75;
    if (*(v3 + 18))
    {
      llvm::Function::BuildLazyArguments(v3);
      v4 = *(v3 + 88);
      if (*(v3 + 18))
      {
        llvm::Function::BuildLazyArguments(v3);
        v5 = *(v3 + 88);
LABEL_12:
        v6 = (v5 + 40 * *(v3 + 96));
        while (v4 != v6)
        {
          if (*(*v4 + 8) == 15)
          {
            if (llvm::Argument::hasNoAliasAttr(v4))
            {
              sub_23C4D8DAC(v4, &v76, &v74, &v71);
            }
          }

          v4 = (v4 + 40);
        }

        v80 = v82;
        v81 = 0x1000000000;
        v7 = *(v3 + 80);
        v8 = v7 - 24;
        if (!v7)
        {
          v8 = 0;
        }

        v9 = *(v8 + 48);
        v10 = v8 + 40;
        if (v9 != v8 + 40)
        {
          do
          {
            v11 = *(v9 + 8);
            v12 = v9 - 24;
            if (v9)
            {
              v13 = v9 - 24;
            }

            else
            {
              v13 = 0;
            }

            if (*(v13 + 16) == 59)
            {
              sub_23C49B500(&v80, v12);
            }

            v9 = v11;
          }

          while (v11 != v10);
          if (v81)
          {
            v14 = v80;
            v15 = 8 * v81;
            do
            {
              v16 = *v14;
              if (*(*v14 + 1))
              {
                ++HIDWORD(v71);
                sub_23C4D8DAC(v16, &v76, &v74, &v71);
              }

              else
              {
                llvm::Instruction::eraseFromParent(v16);
                ++v73;
              }

              ++v14;
              v15 -= 8;
            }

            while (v15);
          }
        }

        LODWORD(v81) = 0;
        if (v77)
        {
          v17 = *(v3 + 80);
          v69 = v3 + 72;
          if (v17 != v3 + 72)
          {
            v68 = v2;
            v18 = 0;
            v70 = 0;
            while (1)
            {
              v19 = v17 - 24;
              if (v17)
              {
                v20 = v17 - 24;
              }

              else
              {
                v20 = 0;
              }

              v21 = *(v20 + 48);
              v22 = v20 + 40;
              if (v21 != v20 + 40)
              {
                do
                {
                  v23 = (v21 - 24);
                  if (v21)
                  {
                    v24 = v21 - 24;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = *(v21 + 8);
                  LODWORD(v71) = v71 + 1;
                  v26 = *(v24 + 16);
                  if (v21 && v26 == 61)
                  {
                    v27 = *(v21 - 56);
                    v79 = 0;
                    v28 = v76;
                    v29 = v78;
                    v30 = sub_23C4D92F8(v76, v78, v27, &v79);
                    v31 = v79;
                    if (v30)
                    {
                      v32 = v79 == v28 + 32 * v29;
                    }

                    else
                    {
                      v32 = 1;
                    }

                    if (!v32)
                    {
                      *(v79 + 8) = *(v21 - 88);
                      *(v31 + 16) = v18;
                    }

                    goto LABEL_84;
                  }

                  if (v26 != 60)
                  {
                    if (v26 != 84)
                    {
                      v23 = 0;
                    }

                    v39 = v75[0];
                    if (v26 == 84 && v75[0] != 0)
                    {
                      v41 = v75;
                      do
                      {
                        v42 = v39;
                        v43 = v41;
                        v44 = v39[4];
                        if (v44 >= v23)
                        {
                          v41 = v39;
                        }

                        v39 = v39[v44 < v23];
                      }

                      while (v39);
                      if (v41 != v75)
                      {
                        if (v44 < v23)
                        {
                          v42 = v43;
                        }

                        if (v23 >= v42[4])
                        {
                          v45 = 0;
                          for (i = v23; ; i = (i + 32))
                          {
                            v47 = sub_23C4B88A0(v23);
                            v48 = *(v23 + 5) & 0x7FFFFFF;
                            if (v45 >= ((v47 - (v23 + 32 * -v48)) >> 5))
                            {
                              break;
                            }

                            v49 = *(i - 4 * v48);
                            v79 = 0;
                            v50 = v76;
                            v51 = v78;
                            v52 = sub_23C4D92F8(v76, v78, v49, &v79);
                            v53 = v79;
                            if (v52)
                            {
                              v54 = v79 == v50 + 32 * v51;
                            }

                            else
                            {
                              v54 = 1;
                            }

                            if (!v54)
                            {
                              *(v79 + 8) = 0;
                              *(v53 + 16) = v18;
                            }

                            ++v45;
                          }
                        }
                      }
                    }

                    goto LABEL_84;
                  }

                  v33 = *(v21 - 56);
                  v79 = 0;
                  v34 = v76;
                  v35 = v78;
                  v36 = sub_23C4D92F8(v76, v78, v33, &v79);
                  v37 = v79;
                  if (v36)
                  {
                    v38 = v79 == v34 + 32 * v35;
                  }

                  else
                  {
                    v38 = 1;
                  }

                  if (!v38)
                  {
                    if (*(v79 + 16) == v18)
                    {
                      if (!*(v79 + 8))
                      {
                        goto LABEL_83;
                      }
                    }

                    else
                    {
                      if (*(v79 + 21) != 1)
                      {
LABEL_83:
                        *(v79 + 8) = v23;
                        *(v37 + 16) = v18;
                        *(v37 + 20) = 0;
                        goto LABEL_84;
                      }

                      llvm::UndefValue::get();
                    }

                    llvm::Value::replaceAllUsesWith();
                    llvm::Instruction::eraseFromParent(v23);
                    --*(v37 + 24);
                    LODWORD(v72) = v72 + 1;
                    v70 = 1;
                  }

LABEL_84:
                  v21 = v25;
                }

                while (v25 != v22);
              }

              v17 = *(v17 + 8);
              if (v17 == v69)
              {
                break;
              }

              if (v17)
              {
                v55 = (v17 - 24);
              }

              else
              {
                v55 = 0;
              }

              if (llvm::BasicBlock::getSinglePredecessor(v55) != v19)
              {
                ++v18;
              }
            }

            v1 = v67;
            v2 = v68;
            if ((v70 & 1) != 0 && v77)
            {
              if (v78)
              {
                v56 = 32 * v78;
                v57 = v76;
                while ((*v57 | 0x1000) == 0xFFFFFFFFFFFFF000)
                {
                  v57 = (v57 + 32);
                  v56 -= 32;
                  if (!v56)
                  {
                    goto LABEL_112;
                  }
                }
              }

              else
              {
                v57 = v76;
              }

              v58 = (v76 + 32 * v78);
              if (v57 != v58)
              {
                v59 = HIDWORD(v72);
                v60 = v73;
LABEL_102:
                if (*(v57 + 20) == 1 && !*(v57 + 6))
                {
                  v61 = *v57;
                  v62 = *(*v57 + 8);
                  if (v62)
                  {
                    do
                    {
                      v63 = *(v62 + 24);
                      v62 = *(v62 + 8);
                      llvm::Instruction::eraseFromParent(v63);
                      ++v59;
                    }

                    while (v62);
                    v61 = *v57;
                  }

                  v60 += sub_23C4D9264(v61);
                }

                while (1)
                {
                  v57 = (v57 + 32);
                  if (v57 == v58)
                  {
                    break;
                  }

                  if ((*v57 | 0x1000) != 0xFFFFFFFFFFFFF000)
                  {
                    if (v57 != v58)
                    {
                      goto LABEL_102;
                    }

                    break;
                  }
                }

                HIDWORD(v72) = v59;
                v73 = v60;
              }
            }
          }
        }

LABEL_112:
        if (v80 != v82)
        {
          free(v80);
        }

        sub_23C4B1570(v75[0]);
        isDeclaration = llvm::deallocate_buffer(v76, (32 * v78));
        goto LABEL_115;
      }
    }

    else
    {
      v4 = *(v3 + 88);
    }

    v5 = v4;
    goto LABEL_12;
  }

  v66 = 0;
  v65 = 0;
  v64 = 0;
LABEL_118:
  if (v65 + v64 + v66)
  {
    sub_23C4AA240(isDeclaration, "SimplifyGenericIR: %u alloca's, Removed %u loads, %u stores, %u other out of %u insts, total %4.2f %c insts\n");
  }

  else
  {
    sub_23C4AA240(isDeclaration, "SimplifyGenericIR: %u alloca's, unable to simplify the IR\n");
  }
}

uint64_t sub_23C4D8DAC(uint64_t result, llvm::Type *a2, uint64_t **a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(result + 8);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  v40 = **(*result + 16);
  if ((*(v40 + 8) & 0xFE) != 0x10)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = a3 + 1;
    v21 = 1;
    do
    {
      v22 = *(v4 + 24);
      v23 = *(v22 + 16);
      if (v22)
      {
        v24 = v23 >= 0x1C;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        return result;
      }

      if (v23 == 84)
      {
        v25 = *v20;
        if (!*v20)
        {
LABEL_49:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v26 = v25;
            v27 = v25[4];
            if (v22 >= v27)
            {
              break;
            }

            v25 = *v26;
            if (!*v26)
            {
              goto LABEL_49;
            }
          }

          if (v27 >= v22)
          {
            break;
          }

          v25 = v26[1];
          if (!v25)
          {
            goto LABEL_49;
          }
        }

        v19 = 1;
      }

      else if (v23 == 61)
      {
        if (*(v22 - 32) != result || (*(v22 + 18) & 1) != 0)
        {
          return result;
        }
      }

      else
      {
        if (v23 != 60 || *(v22 - 32) != result || (*(v22 + 18) & 1) != 0)
        {
          return result;
        }

        ++v17;
      }

      if (v18)
      {
        v21 &= v18 == *(v22 + 40);
      }

      else
      {
        v18 = *(v22 + 40);
      }

      v4 = *(v4 + 8);
    }

    while (v4);
    v28 = *(result + 16);
    if (v28 == 62)
    {
      v28 = *(*(result - 32 * (*(result + 20) & 0x7FFFFFF)) + 16);
    }

    if (v28 == 59)
    {
      v29 = llvm::UndefValue::get();
      v30 = (v19 & 1) == 0;
      v31 = v21 & 1;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }

    *&v41[0] = 0;
    result = sub_23C4D92F8(*a2, *(a2 + 4), v6, v41);
    v32 = *&v41[0];
    if (result)
    {
LABEL_66:
      *(v32 + 8) = v29;
      *(v32 + 16) = 0;
      *(v32 + 20) = v30;
      *(v32 + 21) = v31;
      *(v32 + 24) = v17;
      return result;
    }

    v33 = *(a2 + 2);
    v34 = *(a2 + 4);
    if (4 * v33 + 4 >= 3 * v34)
    {
      v34 *= 2;
    }

    else if (v34 + ~v33 - *(a2 + 3) > v34 >> 3)
    {
LABEL_63:
      ++*(a2 + 2);
      if (*v32 != -4096)
      {
        --*(a2 + 3);
      }

      *(v32 + 24) = 0;
      *v32 = v6;
      *(v32 + 8) = 0;
      *(v32 + 14) = 0;
      goto LABEL_66;
    }

    sub_23C4D938C(a2, v34);
    *&v41[0] = 0;
    result = sub_23C4D92F8(*a2, *(a2 + 4), v6, v41);
    v32 = *&v41[0];
    goto LABEL_63;
  }

  if ((~*(v40 + 8) & 0x11) == 0 && (*(**(v40 + 16) + 8) & 0xFE) != 0x10 && *(v40 + 32) <= 4uLL)
  {
    memset(v41, 0, sizeof(v41));
    while (1)
    {
      v8 = *(v4 + 24);
      if (!v8)
      {
        break;
      }

      if (*(v8 + 16) != 62)
      {
        break;
      }

      v4 = *(v4 + 8);
      result = llvm::GetElementPtrInst::hasAllConstantIndices(v8);
      if (!result || (*(v8 + 20) & 0x7FFFFFF) != 3)
      {
        break;
      }

      v9 = *(v8 - 64);
      v10 = *(v9 + 32);
      if (v10 > 0x40)
      {
        result = llvm::APInt::countLeadingZerosSlowCase((v9 + 24));
        if (result != v10)
        {
          return result;
        }
      }

      else if (*(v9 + 24))
      {
        return result;
      }

      v11 = *(v8 - 32);
      v12 = (v11 + 24);
      if (*(v11 + 32) >= 0x41u)
      {
        v12 = *v12;
      }

      v13 = *v12;
      if (v13 >= *(v40 + 32))
      {
        break;
      }

      if (!*(v41 + v13))
      {
        *(v41 + v13) = llvm::Instruction::clone(v8);
        --*(a4 + 16);
        v14 = *(v6 + 16);
        if (v14 == 21)
        {
          v15 = *(*(v6 + 24) + 80);
          if (v15)
          {
            v16 = (v15 - 24);
          }

          else
          {
            v16 = 0;
          }

          llvm::BasicBlock::getFirstInsertionPt(v16);
          llvm::Instruction::insertBefore();
        }

        else if (v14 == 59)
        {
          llvm::Instruction::insertAfter();
        }
      }

      ++*(a4 + 16);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v8);
      if (!v4)
      {
        v35 = *(v40 + 32);
        if (v35)
        {
          v36 = 0;
          v37 = 1;
          do
          {
            result = *(v41 + v36);
            if (result)
            {
              result = sub_23C4D8DAC(result, a2, a3, a4);
              v35 = *(v40 + 32);
            }

            v36 = v37;
          }

          while (v35 > v37++);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_23C4D9264(uint64_t a1)
{
  v1 = 0;
  if (a1 && *(a1 + 16) >= 0x1Cu)
  {
    if (*(a1 + 8))
    {
      return 0;
    }

    else
    {
      LODWORD(v1) = 0;
      while (1)
      {
        v2 = *(a1 + 20);
        if ((v2 & 0x7FFFFFF) == 0)
        {
          break;
        }

        v3 = (v2 & 0x40000000) != 0 ? *(a1 - 8) : (a1 - 32 * (v2 & 0x7FFFFFF));
        v4 = *v3;
        if (*(*v3 + 16) <= 0x1Bu)
        {
          break;
        }

        llvm::Instruction::eraseFromParent(a1);
        v1 = (v1 + 1);
        a1 = v4;
        if (*(v4 + 8))
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