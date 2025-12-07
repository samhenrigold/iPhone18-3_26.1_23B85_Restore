void sub_23C496B58()
{
  v1 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E1F66F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F66F0))
    {
      v0[4] = xmmword_278BBF030;
      v0[5] = *&off_278BBF040;
      v0[6] = xmmword_278BBF050;
      v0[0] = xmmword_278BBEFF0;
      v0[1] = *&off_278BBF000;
      v0[2] = xmmword_278BBF010;
      v0[3] = *&off_278BBF020;
      sub_23C496C28(v0, 0xEuLL);
      __cxa_atexit(sub_23C496CB4, &qword_27E1F66D8, &dword_23C496000);
      __cxa_guard_release(&qword_27E1F66F0);
    }
  }
}

void sub_23C496C28(uint64_t *result, unint64_t a2)
{
  qword_27E1F66D8 = 0;
  qword_27E1F66E0 = 0;
  qword_27E1F66E8 = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_23C496CE8();
  }
}

uint64_t sub_23C496CB4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_23C496CF8()
{
  if ((atomic_load_explicit(&qword_27E1F6710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6710))
  {
    qword_27E1F6708 = 0;
    qword_27E1F6700 = 0;
    qword_27E1F66F8 = &qword_27E1F6700;
    __cxa_atexit(sub_23C496D80, &qword_27E1F66F8, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F6710);
  }
}

void sub_23C496DAC(char *a1)
{
  if (a1)
  {
    sub_23C496DAC(*a1);
    sub_23C496DAC(*(a1 + 1));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_23C496E18()
{
  v0 = 0x27E1F6000uLL;
  if ((atomic_load_explicit(&qword_27E1F6720, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_27E1F6720);
    v0 = 10705920000;
    if (v2)
    {
      qword_27E1F6718 = os_log_create("com.apple.agx", "AGCEnv");
      __cxa_guard_release(&qword_27E1F6720);
      v0 = 10705920000;
    }
  }

  return *(v0 + 1816);
}

BOOL sub_23C496E8C(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 1744);
  if (!v3)
  {
    return 1;
  }

  v6 = strlen(*(a1 + 1744));
  if (a3 < v6)
  {
    return 0;
  }

  return !v6 || memcmp(a2, v3, v6) == 0;
}

llvm::ConstantFP **sub_23C49707C(uint64_t a1, __int128 *a2, llvm::ConstantFP **a3, uint64_t a4, uint64_t a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v46 = *a2;
  v47 = *(a2 + 2);
  if (v47)
  {
    llvm::MetadataTracking::track();
  }

  v48 = *(a2 + 6);
  sub_23C497620(a1, &v46);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((*(a4 + 1) & 0xF) != 0)
  {
    v43 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
    v45 = *(a1 + 104);
    a3 = sub_23C4A28C8(a1, &v43, a3, a5, 0);
    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }

    v40 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
    v10 = *(a1 + 104);
    v42 = v10;
    v52 = v40;
    v53 = v41;
    if (v41)
    {
      llvm::MetadataTracking::track();
      v10 = v42;
    }

    v54 = v10;
    sub_23C497620(a1, &v52);
    if (v53)
    {
      llvm::MetadataTracking::untrack();
    }

    if ((*(a4 + 1) & 1) != 0 && (*a3 == *(a1 + 272) || *a3 == *(a1 + 264)))
    {
      v11 = sub_23C505670(a1, a3, 3u, 1);
      LOWORD(v50) = 257;
      v12 = llvm::ConstantInt::get();
      v13 = sub_23C5057E8(a1 + 8, a3, v12, v49);
      v63 = 0;
      v64 = &v63;
      v65 = 0x2000000000;
      v66 = *(a1 + 160);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 0x40000000;
      v49[2] = sub_23C4A2BD0;
      v49[3] = &unk_278BBF088;
      v50 = &v63;
      v51 = a1;
      v14 = sub_23C5063B8(a1, v11, v49);
      v15 = sub_23C505300(a1, v14, *v13);
      a3 = sub_23C5067B4(a1, v15, v13, v16);
      _Block_object_dispose(&v63, 8);
    }

    if (v41)
    {
      llvm::MetadataTracking::untrack();
    }

    v37 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
    v17 = *(a1 + 104);
    v39 = v17;
    v52 = v37;
    v53 = v38;
    if (v38)
    {
      llvm::MetadataTracking::track();
      v17 = v39;
    }

    v54 = v17;
    sub_23C497620(a1, &v52);
    if (v53)
    {
      llvm::MetadataTracking::untrack();
    }

    v18 = (*a4 >> 9) & 7;
    if (v18)
    {
      v19 = *a3;
      v20 = sub_23C505670(a1, a3, 3u, 1);
      v21 = llvm::ConstantFP::get();
      v23 = sub_23C5067B4(a1, v20, v21, v22);
      if (v18 <= 4)
      {
        v24 = v23;
        v63 = llvm::ConstantFP::get();
        v64 = llvm::ConstantFP::get();
        v65 = llvm::ConstantFP::get();
        v66 = llvm::ConstantFP::get();
        v59 = llvm::ConstantFP::get();
        v60 = llvm::ConstantFP::get();
        v61 = llvm::ConstantFP::get();
        v62 = llvm::ConstantFP::get();
        v55 = llvm::ConstantFP::get();
        v56 = llvm::ConstantFP::get();
        v57 = llvm::ConstantFP::get();
        v58 = llvm::ConstantFP::get();
        v25 = llvm::ConstantVector::get();
        v26 = llvm::ConstantVector::get();
        v27 = llvm::ConstantVector::get();
        if (v19 == *(a1 + 272))
        {
          v25 = sub_23C504E2C(a1, v25, 0);
          v26 = sub_23C504E2C(a1, v26, 0);
          v27 = sub_23C504E2C(a1, v27, 0);
        }

        v28 = sub_23C50654C(a1, v25, v24);
        v29 = sub_23C50654C(a1, v26, v24);
        v30 = sub_23C50654C(a1, v27, v24);
        LOWORD(v50) = 257;
        v31 = llvm::ConstantInt::get();
        v32 = sub_23C505AA8(a1 + 8, a3, v28, v31, v49);
        LOWORD(v50) = 257;
        v33 = llvm::ConstantInt::get();
        v34 = sub_23C505AA8(a1 + 8, v32, v29, v33, v49);
        LOWORD(v50) = 257;
        v35 = llvm::ConstantInt::get();
        a3 = sub_23C505AA8(a1 + 8, v34, v30, v35, v49);
      }
    }

    if (v38)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return a3;
}

uint64_t sub_23C497620(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 6);
  result = sub_23C49769C(&v5, a1 + 8);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t sub_23C49769C(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    sub_23C497720(a2, *a1, *(a1 + 8));
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  v4 = *(a1 + 16);
  v6 = v4;
  if (v4)
  {
    llvm::MetadataTracking::track();
    v4 = v6;
  }

  result = sub_23C49779C(a2, v4);
  if (v6)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *(a2 + 96) = *(a1 + 24);
  return result;
}

uint64_t sub_23C497720(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  if (a2 + 40 != a3)
  {
    v3 = result;
    v4 = a3 - 24;
    if (!a3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 48);
    v6 = v5;
    if (v5)
    {
      llvm::MetadataTracking::track();
      v5 = v6;
    }

    result = sub_23C49779C(v3, v5);
    if (v6)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  return result;
}

uint64_t sub_23C49779C(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *result + 16 * v3;
  if (a2)
  {
    if (v3)
    {
      v5 = 16 * v3;
      while (*v2)
      {
        v2 += 16;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      *(v2 + 8) = a2;
    }

    else
    {
LABEL_6:
      if (v3 >= *(result + 12))
      {
        return sub_23C49786C(result, 0, a2);
      }

      else
      {
        *v4 = 0;
        *(v4 + 8) = a2;
        *(result + 8) = v3 + 1;
      }
    }
  }

  else
  {
    if (v3)
    {
      v6 = 16 * v3;
      v7 = *result;
      while (*v7)
      {
        v7 += 16;
        v6 -= 16;
        if (!v6)
        {
          v7 = v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v7 = *result;
    }

    if (v7 != v4)
    {
      for (i = v7 + 16; i != v4; i += 16)
      {
        if (*i)
        {
          *v7 = *i;
          *(v7 + 8) = *(i + 8);
          v7 += 16;
        }
      }
    }

LABEL_21:
    *(result + 8) = (v7 - v2) >> 4;
  }

  return result;
}

uint64_t sub_23C49786C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (*result + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t sub_23C4978E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  sub_23C497620(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1448))
  {
    strlen(*(a1 + 1448));
  }

  v14[0] = v15;
  v14[1] = 0x100000000;
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v7 = v6;
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v16 = 257;
  v8 = sub_23C497A7C((a1 + 8), **(*v7 + 16), v7, 0, 0, v14);
  v16 = 257;
  v9 = sub_23C497C88((a1 + 8), **(*a3 + 16), a3, 0, v14);
  v16 = 257;
  return sub_23C497D84((a1 + 8), 32, v8, v9, v14);
}

llvm::Instruction *sub_23C497A7C(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[13];
  v7 = a1[14];
  v9 = 0;
  if (v7)
  {
    v10 = 48 * v7;
    v11 = v8 + 8;
    do
    {
      v9 += (*v11 - *(v11 - 1)) >> 3;
      v11 += 6;
      v10 -= 48;
    }

    while (v10);
  }

  v12 = llvm::User::operator new(0x50);
  if (v7)
  {
    v13 = 0;
    v14 = 48 * v7;
    v15 = v8 + 8;
    v16 = 48 * v7;
    do
    {
      v13 += (*v15 - *(v15 - 1)) >> 3;
      v15 += 6;
      v16 -= 48;
    }

    while (v16);
    v17 = 0;
    v18 = v8 + 8;
    do
    {
      v17 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v14 -= 48;
    }

    while (v14);
  }

  llvm::Instruction::Instruction();
  *(v12 + 8) = 0;
  llvm::CallInst::init();
  if (*(a1 + 100) == 1)
  {
    llvm::Value::getContext(v12);
    *(v12 + 8) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (sub_23C497EEC(v12))
  {
    sub_23C497F98(a1, v12, *(a1 + 24));
  }

  (*(*a1[10] + 16))(a1[10], v12, a6, a1[6], a1[7]);
  v19 = *(a1 + 2);
  if (v19)
  {
    v20 = *a1;
    v21 = v20 + 16 * v19;
    do
    {
      llvm::Instruction::setMetadata();
      v20 += 16;
    }

    while (v20 != v21);
  }

  return v12;
}

uint64_t sub_23C497C88(unsigned int **a1, llvm::Type *a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, a2);
  }

  v10 = llvm::User::operator new(0x40);
  llvm::LoadInst::LoadInst();
  (*(*a1[10] + 16))(a1[10], v10, a5, a1[6], a1[7]);
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = *a1;
    v13 = v12 + 16 * v11;
    do
    {
      llvm::Instruction::setMetadata();
      v12 += 16;
    }

    while (v12 != v13);
  }

  return v10;
}

uint64_t sub_23C497D84(unsigned int **a1, uint64_t a2, llvm::Type ***a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a1[9] + 40))(a1[9]);
  if (!v8)
  {
    v8 = llvm::User::operator new(0x40);
    v9 = *a3;
    v10 = (*a3)[1] & 0xFE;
    llvm::Type::getInt1Ty(**a3, v11);
    if (v9)
    {
      v12 = v10 == 18;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      llvm::VectorType::get();
    }

    llvm::CmpInst::CmpInst();
    (*(*a1[10] + 16))(a1[10], v8, a5, a1[6], a1[7]);
    v13 = *(a1 + 2);
    if (v13)
    {
      v14 = *a1;
      v15 = v14 + 16 * v13;
      do
      {
        llvm::Instruction::setMetadata();
        v14 += 16;
      }

      while (v14 != v15);
    }
  }

  return v8;
}

BOOL sub_23C497EEC(uint64_t *a1)
{
  v1 = *(a1 + 16);
  if (!a1 || (v2 = v1 - 28, v1 < 0x1C))
  {
    v3 = 0;
    if (!a1 || v1 != 5)
    {
      return v3;
    }

    v2 = *(a1 + 9);
  }

  if (v2 > 0x39)
  {
    return 0;
  }

  if (((1 << v2) & 0x40000001255000) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 0x380000000000000) == 0)
  {
    return 0;
  }

  do
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    a1 = (*a1 + 24);
    if (v4)
    {
      v6 = v5 == 17;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 16) + 8);
  }

  return v5 < 7;
}

uint64_t sub_23C497F98(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 88))
  {
    llvm::Instruction::setMetadata();
  }

  llvm::Instruction::setFastMathFlags();
  return a2;
}

void sub_23C497FE0(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

uint64_t sub_23C498004(uint64_t a1, _DWORD *a2)
{
  result = *a2;
  *a2 = result + 1;
  return result;
}

llvm::Instruction *sub_23C49801C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v225 = *MEMORY[0x277D85DE8];
  v209 = *a2;
  v210 = *(a2 + 16);
  if (v210)
  {
    llvm::MetadataTracking::track();
  }

  v211 = *(a2 + 24);
  sub_23C497620(a1, &v209);
  if (v210)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *a3;
  if ((*a3 - 4) >= 2)
  {
    if (v6 == 1)
    {
      v10 = *(a3 + 192);
      v11 = v10 & 0xFFFFFFFE;
      v12 = (v10 & 0xFFFFFFFE) == 2;
    }

    else
    {
      v12 = 0;
      v10 = *(a3 + 192);
      v11 = v10 & 0xFFFFFFFE;
    }

    v13 = *(a1 + 1976) ^ 1;
    v219 = v221;
    v220 = 0x1000000000;
    v14 = *(a3 + 4);
    v15 = v11 == 2 && v6 == 1;
    if (!v15 && (v13 & 1) == 0)
    {
      v16 = **(a3 + 120);
      if ((*(v16 + 8) & 0xFE) == 0x12)
      {
        v17 = *(**(v16 + 16) + 8);
      }

      else
      {
        v17 = *(v16 + 8);
      }

      memset(&v216, 0, sizeof(v216));
      if (v6 == 1)
      {
        if (v10 == 3)
        {
          __dst.__r_.__value_.__r.__words[0] = *(a1 + 296);
          __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          __dst.__r_.__value_.__r.__words[2] = __dst.__r_.__value_.__r.__words[0];
          v223 = __dst.__r_.__value_.__r.__words[0];
          v68 = llvm::StructType::get();
          v69 = v14 == 2;
          v70 = 1800;
          v71 = 1848;
LABEL_101:
          if (v69)
          {
            v70 = v71;
          }

          MEMORY[0x23EED4E90](&v216, *(a1 + v70 + 8 * (*(a3 + 144) == 2)));
          v72 = (a1 + 184);
          sub_23C49B500(&v219, *(a1 + 184));
          if (v68)
          {
LABEL_106:
            v87 = llvm::PointerType::get();
            sub_23C49B500(&v219, v87);
            v88 = llvm::PointerType::get();
            sub_23C49B500(&v219, v88);
            if (v68)
            {
              goto LABEL_189;
            }

            v89 = v12;
            v90 = *(a3 + 136);
            v208 = *(a3 + 184);
            v91 = *(a3 + 200);
            v92 = llvm::PointerType::get();
            sub_23C49B500(&v219, v92);
            if (v14 > 1)
            {
              if (v14 == 2)
              {
                std::string::append(&v216, ".cube");
                sub_23C49B500(&v219, *(a1 + 272));
                v93 = v91;
                v12 = v89;
LABEL_153:
                if (!v208)
                {
                  goto LABEL_156;
                }

                std::string::append(&v216, ".shadow");
                v97 = *(a1 + 160);
                goto LABEL_155;
              }

              v15 = v14 == 3;
              v93 = v91;
              v12 = v89;
              if (v15)
              {
                if (v17 == 13)
                {
                  v95 = ".3d.i";
                }

                else
                {
                  v95 = ".3d";
                }

                if (v17 == 13)
                {
                  v96 = 296;
                }

                else
                {
                  v96 = 272;
                }

                std::string::append(&v216, v95);
                v97 = *(a1 + v96);
LABEL_155:
                sub_23C49B500(&v219, v97);
              }
            }

            else
            {
              if (v14)
              {
                v15 = v14 == 1;
                v93 = v91;
                v12 = v89;
                if (!v15)
                {
                  goto LABEL_156;
                }

                std::string::append(&v216, ".2d");
                v94 = 216;
                if (v17 == 13)
                {
                  v94 = 240;
                }

                sub_23C49B500(&v219, *(a1 + v94));
                if (v90)
                {
                  std::string::append(&v216, ".array");
                  sub_23C49B500(&v219, *(a1 + 200));
                }

                else if (v93)
                {
                  std::string::append(&v216, ".msaa");
                }

                if (v17 == 13)
                {
LABEL_152:
                  std::string::append(&v216, ".i");
                  goto LABEL_156;
                }

                goto LABEL_153;
              }

              std::string::append(&v216, ".1d");
              v98 = 160;
              if (v17 == 13)
              {
                v98 = 192;
              }

              sub_23C49B500(&v219, *(a1 + v98));
              if (v90)
              {
                std::string::append(&v216, ".array");
                sub_23C49B500(&v219, *(a1 + 200));
              }

              v93 = v91;
              v12 = v89;
              if (v17 == 13)
              {
                goto LABEL_152;
              }
            }

LABEL_156:
            v103 = *(a3 + 144);
            if (v103 > 1)
            {
              if (v103 != 3)
              {
                if (v103 == 2)
                {
                  std::string::append(&v216, ".grad");
                  v105 = *(a3 + 4);
                  if (v105 <= 3)
                  {
                    v106 = dword_23C532670[v105];
                    do
                    {
                      sub_23C49B500(&v219, *(a1 + 216));
                      --v106;
                    }

                    while (v106);
                  }
                }

LABEL_172:
                if (*(a3 + 128))
                {
                  sub_23C49B500(&v219, *(a1 + 184));
                  std::string::append(&v216, ".offset");
                }

                if (v6 == 3)
                {
                  sub_23C49B500(&v219, *(a1 + 272));
                  std::string::append(&v216, ".4xf");
                }

                else
                {
                  v108 = 272;
                  if (*(a3 + 8) == 1)
                  {
                    v108 = 264;
                    v109 = ".4xh";
                  }

                  else
                  {
                    v109 = ".4xf";
                  }

                  v110 = *(a1 + v108);
                  std::string::append(&v216, v109);
                  v111 = *(a1 + 176);
                  __dst.__r_.__value_.__r.__words[0] = v110;
                  __dst.__r_.__value_.__l.__size_ = v111;
                  llvm::StructType::get();
                  sub_23C49B500(&v219, *(a1 + 152));
                }

                if (v90)
                {
                  std::string::append(&v216, ".i64");
                }

                if (v93)
                {
                  std::string::append(&v216, ".i16");
                }

                v112 = *(a3 + 144);
                v113 = ".f32";
                if (v112)
                {
                  if (v112 != 1)
                  {
                    goto LABEL_189;
                  }

                  if (v17 == 13)
                  {
                    v113 = ".i32";
                  }
                }

                std::string::append(&v216, v113);
LABEL_189:
                llvm::FunctionType::get();
                if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
                {
                  v114 = v216.__r_.__value_.__r.__words[0];
                  if (!v216.__r_.__value_.__r.__words[0])
                  {
LABEL_193:
                    llvm::Module::getOrInsertFunction();
                    v102 = v115;
                    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v216.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_195;
                  }
                }

                else
                {
                  v114 = &v216;
                }

                strlen(v114);
                goto LABEL_193;
              }

              if (!*(a3 + 200))
              {
                goto LABEL_172;
              }

              v107 = *(a1 + 184);
            }

            else
            {
              if (v103)
              {
                if (v103 == 1)
                {
                  v104 = 160;
                  if (v17 == 13)
                  {
                    v104 = 192;
                  }

                  sub_23C49B500(&v219, *(a1 + v104));
                  std::string::append(&v216, ".lod");
                }

                goto LABEL_172;
              }

              v107 = *(a1 + 160);
            }

            sub_23C49B500(&v219, v107);
            goto LABEL_172;
          }

          goto LABEL_104;
        }

        if (v10 == 2)
        {
          __dst.__r_.__value_.__r.__words[0] = *(a1 + 296);
          __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          v68 = llvm::StructType::get();
          v69 = v14 == 2;
          v70 = 1784;
          v71 = 1832;
          goto LABEL_101;
        }
      }

      else if (v6 == 3)
      {
        MEMORY[0x23EED4E90](&v216, *(a1 + 1744));
LABEL_105:
        v68 = 0;
        goto LABEL_106;
      }

      MEMORY[0x23EED4E90](&v216, *(a1 + 1728));
      v72 = (a1 + 184);
      sub_23C49B500(&v219, *(a1 + 184));
LABEL_104:
      sub_23C49B500(&v219, *v72);
      goto LABEL_105;
    }

    v18 = llvm::PointerType::get();
    sub_23C49B500(&v219, v18);
    v19 = llvm::PointerType::get();
    sub_23C49B500(&v219, v19);
    Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + 336), 2);
    sub_23C49B500(&v219, Int8PtrTy);
    sub_23C49B500(&v219, *(a1 + 168));
    if (v14 > 3)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(a1 + qword_23C5326A8[v14]);
    }

    sub_23C49B500(&v219, v21);
    if (*(a3 + 144) == 2)
    {
      v66 = *(a3 + 4);
      if (v66 > 3)
      {
        v67 = 0;
      }

      else
      {
        v67 = dword_23C532670[v66];
      }

      v73 = v67;
      v74 = *(a1 + 216);
      v75 = v220;
      if (v220 + v67 > HIDWORD(v220))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v67)
      {
        v76 = 0;
        v77 = v219 + 8 * v220;
        v78 = vdupq_n_s64(v73 - 1);
        do
        {
          v79 = vmovn_s64(vcgeq_u64(v78, vorrq_s8(vdupq_n_s64(v76), xmmword_23C5324B0)));
          if (v79.i8[0])
          {
            *&v77[8 * v76] = v74;
          }

          if (v79.i8[4])
          {
            *&v77[8 * v76 + 8] = v74;
          }

          v76 += 2;
        }

        while (((v73 + 1) & 0xFFFFFFFE) != v76);
      }

      LODWORD(v220) = v75 + v73;
    }

    else
    {
      sub_23C49B500(&v219, *(a1 + 168));
      sub_23C49B500(&v219, *(a1 + 160));
    }

    sub_23C49B500(&v219, *(a1 + 168));
    sub_23C49B500(&v219, *(a1 + 168));
    sub_23C49B500(&v219, *(a1 + 168));
    sub_23C49B500(&v219, *(a1 + 192));
    v80 = *a3;
    if (*a3 > 1)
    {
      if (v80 == 3)
      {
        sub_23C49B500(&v219, *(a1 + 272));
        v81 = 0;
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v86 = (a1 + 1896);
          }

          else
          {
            if (v14 != 3)
            {
              goto LABEL_146;
            }

            v86 = (a1 + 1904);
          }
        }

        else if (v14)
        {
          if (v14 != 1)
          {
            goto LABEL_146;
          }

          v86 = (a1 + 1888);
        }

        else
        {
          v86 = (a1 + 1880);
        }

        goto LABEL_145;
      }

      v81 = 0;
      if (v80 != 2)
      {
        goto LABEL_146;
      }
    }

    else if (v80)
    {
      v81 = 0;
      if (v80 != 1)
      {
        goto LABEL_146;
      }

      v82 = *(a3 + 192);
      switch(v82)
      {
        case 3:
          __dst.__r_.__value_.__r.__words[0] = *(a1 + 296);
          __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          __dst.__r_.__value_.__r.__words[2] = __dst.__r_.__value_.__r.__words[0];
          v223 = __dst.__r_.__value_.__r.__words[0];
          llvm::StructType::get();
          v83 = v14 == 2;
          v100 = a1 + 8 * (*(a3 + 144) == 2);
          v85 = (v100 + 1800);
          v86 = (v100 + 1848);
          break;
        case 2:
          __dst.__r_.__value_.__r.__words[0] = *(a1 + 296);
          __dst.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          llvm::StructType::get();
          v83 = v14 == 2;
          v99 = a1 + 8 * (*(a3 + 144) == 2);
          v85 = (v99 + 1784);
          v86 = (v99 + 1832);
          break;
        case 1:
          v83 = v14 == 2;
          v84 = a1 + 8 * (*(a3 + 144) == 2);
          v85 = (v84 + 1768);
          v86 = (v84 + 1816);
          break;
        default:
          v81 = 0;
LABEL_146:
          llvm::FunctionType::get();
          if (v81)
          {
            strlen(v81);
          }

          llvm::Module::getOrInsertFunction();
          v102 = v101;
LABEL_195:
          if (v219 != v221)
          {
            free(v219);
          }

          if ((v12 | v13))
          {
            v219 = v221;
            v220 = 0x1000000000;
            v116 = *(a3 + 120);
            if ((*(*v116 + 8) & 0xFE) == 0x12)
            {
              v117 = *(**(*v116 + 16) + 8);
            }

            else
            {
              v117 = *(*v116 + 8);
            }

            v119 = *(a3 + 136);
            v120 = *(a3 + 4);
            v121 = 32;
            if (*a3 == 3)
            {
              v121 = 40;
            }

            sub_23C49B500(&v219, *(a3 + v121));
            sub_23C49B500(&v219, *(a3 + 72));
            if (v119)
            {
              v122 = sub_23C49A1F8(a1, a3);
            }

            else
            {
              v164 = llvm::Type::getInt8PtrTy(*(a1 + 336), 2);
              v122 = llvm::ConstantPointerNull::get(v164, v165);
            }

            sub_23C49B500(&v219, v122);
            v166 = llvm::ConstantInt::get();
            sub_23C49B500(&v219, v166);
            if (*(a3 + 128) && v117 == 13 && (*(a1 + 1633) & 1) != 0)
            {
              v167 = 0;
            }

            else
            {
              v167 = sub_23C504E2C(a1, v116, 1);
            }

            sub_23C49B500(&v219, v167);
            v168 = *(a3 + 144);
            if (v168 == 3)
            {
              v182 = llvm::ConstantInt::get();
              sub_23C49B500(&v219, v182);
              v183 = llvm::ConstantFP::get();
            }

            else
            {
              if (v168 == 2)
              {
                v169 = *(a3 + 4);
                if (v169 <= 3)
                {
                  v170 = 0;
                  v171 = dword_23C532670[v169];
                  do
                  {
                    *&v216.__r_.__value_.__l.__data_ = 0uLL;
                    v216.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                    v216.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
                    v172 = llvm::ConstantVector::get();
                    v173 = *(a3 + 160);
                    v174 = *(a3 + 168);
                    v224 = 257;
                    v175 = sub_23C49A3AC((a1 + 8), v173, v174, v172, &__dst);
                    sub_23C49B500(&v219, v175);
                    ++v170;
                  }

                  while (v171 != v170);
                }

LABEL_277:
                v186 = llvm::ConstantInt::get();
                sub_23C49B500(&v219, v186);
                v187 = llvm::ConstantInt::get();
                sub_23C49B500(&v219, v187);
                v188 = llvm::ConstantInt::get();
                sub_23C49B500(&v219, v188);
                v190 = *(a3 + 128);
                if (v190)
                {
                  if (v117 != 13 || *(a1 + 1633) != 1)
                  {
                    v193 = sub_23C49A528(a1, a3, v190, v189);
                    goto LABEL_287;
                  }

                  if ((v120 & 0xFFFFFFFE) == 2)
                  {
                    v190 = sub_23C50593C(a1, *(a3 + 128), 4, v189);
                  }

                  v224 = 257;
                  v191 = sub_23C49A474(a1 + 8, v116, v190, &__dst);
                  v192 = sub_23C504E2C(a1, v191, 1);
                  *(v219 + 4) = v192;
                }

                else
                {
                  v194 = *(a3 + 200);
                  if (v194)
                  {
                    v195 = sub_23C504FD4(a1, v194, *v194, 0, 0);
                    v224 = 257;
                    v196 = llvm::ConstantInt::get();
                    v193 = sub_23C49A668(a1 + 8, v195, v196, &__dst);
                    goto LABEL_287;
                  }
                }

                v193 = llvm::ConstantInt::get();
LABEL_287:
                sub_23C49B500(&v219, v193);
                if (*a3 == 3)
                {
                  v197 = sub_23C499BF0(a1, a3);
                  sub_23C49B500(&v219, v197);
                }

                v224 = 257;
                v56 = sub_23C497A7C((a1 + 8), *(v102 + 24), v102, v219, v220, &__dst);
                if (*a3 != 3 && *(a3 + 17) == 1)
                {
                  v56 = (**a1)(a1, v56, *(a3 + 8));
                }

                if (*(a3 + 16) == 1 && (*(*v56 + 8) & 0xFE) == 0x12)
                {
                  v224 = 257;
                  v198 = llvm::ConstantInt::get();
                  v56 = sub_23C5057E8(a1 + 8, v56, v198, &__dst);
                }

                if (*(a3 + 19) == 1)
                {
                  v199 = *(a1 + 176);
                  __dst.__r_.__value_.__r.__words[0] = *v56;
                  __dst.__r_.__value_.__l.__size_ = v199;
                  llvm::StructType::get();
                  v200 = llvm::UndefValue::get();
                  LODWORD(v216.__r_.__value_.__l.__data_) = 0;
                  v224 = 257;
                  v201 = sub_23C49A744((a1 + 8), v200, v56, &v216, 1, &__dst);
                  v202 = llvm::ConstantInt::get();
                  LODWORD(v216.__r_.__value_.__l.__data_) = 1;
                  v224 = 257;
                  v56 = sub_23C49A744((a1 + 8), v201, v202, &v216, 1, &__dst);
                }

                v64 = v219;
                if (v219 != v221)
                {
                  goto LABEL_55;
                }

                return v56;
              }

              if (*(a3 + 4) == 1 && v119 && *a3 == 1)
              {
                v184 = llvm::ConstantFP::get();
              }

              else
              {
                v184 = sub_23C504E2C(a1, *(a3 + 152), 1);
              }

              v183 = v184;
              v185 = llvm::ConstantInt::get();
              sub_23C49B500(&v219, v185);
            }

            sub_23C49B500(&v219, v183);
            goto LABEL_277;
          }

          if (*a3 == 3)
          {
            v118 = sub_23C499BF0(a1, a3);
          }

          else
          {
            v118 = 0;
          }

          v123 = *(a3 + 120);
          if ((*(*v123 + 2) & 0xFE) == 0x12)
          {
            v124 = *(**(*v123 + 2) + 8);
          }

          else
          {
            v124 = *(*v123 + 2);
          }

          v125 = v102;
          v126 = *(a3 + 136);
          v127 = *(a3 + 184);
          v207 = v118;
          v219 = v221;
          v220 = 0x1000000000;
          v205 = *(a3 + 168);
          v206 = *(a3 + 160);
          v128 = *(a3 + 4);
          if (*a3 == 3)
          {
            v129 = 40;
          }

          else
          {
            v130 = llvm::ConstantInt::get();
            sub_23C49B500(&v219, v130);
            v131 = llvm::ConstantInt::get();
            sub_23C49B500(&v219, v131);
            v129 = 32;
          }

          v132 = llvm::PointerType::get();
          v133 = *(a3 + v129);
          v224 = 257;
          v134 = sub_23C49ACF8(a1 + 8, 49, v133, v132, &__dst);
          sub_23C49B500(&v219, v134);
          v135 = *(a3 + 72);
          v224 = 257;
          v136 = sub_23C49ACF8(a1 + 8, 49, v135, v132, &__dst);
          sub_23C49B500(&v219, v136);
          v137 = llvm::ConstantInt::get();
          v138 = llvm::PointerType::get();
          v224 = 257;
          v139 = sub_23C49ACF8(a1 + 8, 48, v137, v138, &__dst);
          sub_23C49B500(&v219, v139);
          if (v128 == 2)
          {
            v123 = sub_23C50593C(a1, v123, 4, v140);
          }

          if (v124 == 13)
          {
            v141 = *v123;
            if ((*(*v123 + 2) & 0xFE) == 0x12)
            {
              v141 = **(v141 + 2);
            }

            v123 = sub_23C504FD4(a1, v123, v141, 0, 0);
            v143 = *(a3 + 128);
            if (v143 && *(a1 + 1633) == 1)
            {
              if ((*(a3 + 4) & 0xFFFFFFFE) == 2)
              {
                v143 = sub_23C50593C(a1, *(a3 + 128), 4, v142);
              }

              v224 = 257;
              v123 = sub_23C49A474(a1 + 8, v123, v143, &__dst);
            }
          }

          sub_23C49B500(&v219, v123);
          if (v126)
          {
            v146 = sub_23C49A1F8(a1, a3);
            v147 = *(a1 + 200);
            v224 = 257;
            v148 = sub_23C49ACF8(a1 + 8, 47, v146, v147, &__dst);
            sub_23C49B500(&v219, v148);
          }

          if (v127)
          {
            sub_23C49B500(&v219, *(a3 + 184));
          }

          v149 = *(a3 + 200);
          if (v149)
          {
            v150 = *(a1 + 184);
            v224 = 257;
            v151 = sub_23C49ACF8(a1 + 8, 38, v149, v150, &__dst);
          }

          else
          {
            v176 = *(a3 + 144);
            if (v176)
            {
              if (v176 != 1)
              {
                if (v176 == 2)
                {
                  v177 = *(a3 + 4);
                  if (v177 <= 3)
                  {
                    v178 = 0;
                    v179 = dword_23C532670[v177];
                    do
                    {
                      *&v216.__r_.__value_.__l.__data_ = 0uLL;
                      v216.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
                      v216.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
                      v180 = llvm::ConstantVector::get();
                      v224 = 257;
                      v181 = sub_23C49A3AC((a1 + 8), v206, v205, v180, &__dst);
                      sub_23C49B500(&v219, v181);
                      ++v178;
                    }

                    while (v179 != v178);
                  }
                }

LABEL_231:
                if (*(a3 + 128))
                {
                  if (v124 == 13 && *(a1 + 1633) == 1)
                  {
                    v152 = llvm::ConstantInt::get();
                  }

                  else
                  {
                    v153 = sub_23C49A528(a1, a3, v149, v144);
                    v154 = *(a1 + 184);
                    v224 = 257;
                    v152 = sub_23C49ACF8(a1 + 8, 38, v153, v154, &__dst);
                  }

                  sub_23C49B500(&v219, v152);
                }

                v155 = v207;
                if (*a3 != 3)
                {
                  v155 = llvm::ConstantFP::get();
                }

                sub_23C49B500(&v219, v155);
                v224 = 257;
                v56 = sub_23C497A7C((a1 + 8), *(v125 + 24), v125, v219, v220, &__dst);
                if (*a3 != 3)
                {
                  LODWORD(v216.__r_.__value_.__l.__data_) = 0;
                  v224 = 257;
                  v156 = sub_23C49B32C(a1 + 8, v56, &v216, 1, &__dst);
                  if (*(a3 + 17) == 1)
                  {
                    v156 = (**a1)(a1, v156, *(a3 + 8));
                  }

                  if (*(a3 + 16) == 1 && (*(*v156 + 8) & 0xFE) == 0x12)
                  {
                    v224 = 257;
                    v157 = llvm::ConstantInt::get();
                    v156 = sub_23C5057E8(a1 + 8, v156, v157, &__dst);
                  }

                  if (*(a3 + 19) == 1)
                  {
                    v158 = *(a1 + 176);
                    __dst.__r_.__value_.__r.__words[0] = *v156;
                    __dst.__r_.__value_.__l.__size_ = v158;
                    llvm::StructType::get();
                    v159 = llvm::UndefValue::get();
                    LODWORD(v216.__r_.__value_.__l.__data_) = 0;
                    v224 = 257;
                    v160 = sub_23C49A744((a1 + 8), v159, v156, &v216, 1, &__dst);
                    v215 = 1;
                    v224 = 257;
                    v161 = sub_23C49B32C(a1 + 8, v56, &v215, 1, &__dst);
                    v162 = *(a1 + 176);
                    v218 = 257;
                    v163 = sub_23C49ACF8(a1 + 8, 38, v161, v162, &v216);
                    v214 = 1;
                    v213 = 257;
                    v56 = sub_23C49A744((a1 + 8), v160, v163, &v214, 1, v212);
                  }

                  else
                  {
                    v56 = v156;
                  }
                }

                v64 = v219;
                if (v219 != v221)
                {
                  goto LABEL_55;
                }

                return v56;
              }

              v203 = *(a3 + 152);
              if (v124 == 13)
              {
                v204 = *(a1 + 192);
                if (*(*v203 + 8) == 13)
                {
                  v224 = 257;
                  v151 = sub_23C49B1E4(a1 + 8, v203, v204, 0, &__dst, v145);
                }

                else
                {
                  v224 = 257;
                  v151 = sub_23C49B2C8(a1 + 8, v203, v204, &__dst);
                }

                goto LABEL_230;
              }
            }

            else
            {
              v203 = *(a3 + 152);
            }

            v151 = sub_23C505300(a1, v203, *(a1 + 160));
          }

LABEL_230:
          sub_23C49B500(&v219, v151);
          goto LABEL_231;
      }

      if (!v83)
      {
        v86 = v85;
      }

      goto LABEL_145;
    }

    v81 = 0;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v86 = (a1 + 8 * (*(a3 + 144) == 2) + 1816);
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_146;
        }

        v86 = (a1 + 8 * (*(a3 + 144) == 2) + 1864);
      }
    }

    else if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_146;
      }

      v86 = (a1 + 8 * (*(a3 + 144) == 2) + 1768);
    }

    else
    {
      v86 = (a1 + 8 * (*(a3 + 144) == 2) + 1752);
    }

LABEL_145:
    v81 = *v86;
    goto LABEL_146;
  }

  v7 = *(a1 + 1736);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v219 = v221;
  v220 = 0x800000000;
  sub_23C49B500(&v219, *(a1 + 184));
  sub_23C49B500(&v219, *(a1 + 184));
  v22 = llvm::PointerType::get();
  sub_23C49B500(&v219, v22);
  v23 = llvm::PointerType::get();
  sub_23C49B500(&v219, v23);
  v24 = llvm::PointerType::get();
  sub_23C49B500(&v219, v24);
  v25 = *(a3 + 4);
  if (v25 == 1)
  {
    v26 = ".2d";
    v27 = 216;
  }

  else
  {
    if (v25 != 2)
    {
      goto LABEL_29;
    }

    v26 = ".cube";
    v27 = 272;
  }

  std::string::append(&__dst, v26);
  sub_23C49B500(&v219, *(a1 + v27));
LABEL_29:
  if (*(a3 + 136))
  {
    sub_23C49B500(&v219, *(a1 + 200));
    std::string::append(&__dst, ".array");
  }

  std::string::append(&__dst, ".gather");
  if (*(a3 + 128))
  {
    sub_23C49B500(&v219, *(a1 + 184));
    std::string::append(&__dst, ".offset");
  }

  sub_23C49B500(&v219, *(a1 + 184));
  sub_23C49B500(&v219, *(a1 + 152));
  std::string::append(&__dst, ".4xf");
  if (*(a3 + 136))
  {
    std::string::append(&__dst, ".i64");
  }

  v28 = *(a1 + 176);
  v216.__r_.__value_.__r.__words[0] = *(a1 + 272);
  v216.__r_.__value_.__l.__size_ = v28;
  llvm::StructType::get();
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v30 = v29;
  if (v219 != v221)
  {
    free(v219);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v219 = v221;
  v220 = 0x800000000;
  v31 = llvm::ConstantInt::get();
  sub_23C49B500(&v219, v31);
  v32 = llvm::ConstantInt::get();
  sub_23C49B500(&v219, v32);
  v33 = llvm::PointerType::get();
  v34 = *(a3 + 32);
  v224 = 257;
  v35 = sub_23C49ACF8(a1 + 8, 49, v34, v33, &__dst);
  sub_23C49B500(&v219, v35);
  v36 = *(a3 + 72);
  v224 = 257;
  v37 = sub_23C49ACF8(a1 + 8, 49, v36, v33, &__dst);
  sub_23C49B500(&v219, v37);
  v38 = llvm::ConstantInt::get();
  v39 = llvm::PointerType::get();
  v224 = 257;
  v40 = sub_23C49ACF8(a1 + 8, 48, v38, v39, &__dst);
  sub_23C49B500(&v219, v40);
  v43 = *(a3 + 4);
  if (v43 == 2)
  {
    v45 = sub_23C504E2C(a1, *(a3 + 120), 1);
    v44 = sub_23C50593C(a1, v45, 4, v46);
  }

  else
  {
    if (v43 != 1)
    {
      goto LABEL_44;
    }

    v44 = sub_23C504E2C(a1, *(a3 + 120), 1);
  }

  sub_23C49B500(&v219, v44);
LABEL_44:
  if (*(a3 + 136))
  {
    v47 = sub_23C49A1F8(a1, a3);
    v48 = *(a1 + 200);
    v224 = 257;
    v49 = sub_23C49ACF8(a1 + 8, 47, v47, v48, &__dst);
    sub_23C49B500(&v219, v49);
  }

  if (*(a3 + 128))
  {
    v50 = sub_23C49A528(a1, a3, v41, v42);
    v51 = *(a1 + 184);
    v224 = 257;
    v52 = sub_23C49ACF8(a1 + 8, 38, v50, v51, &__dst);
    sub_23C49B500(&v219, v52);
  }

  v53 = llvm::ConstantInt::get();
  sub_23C49B500(&v219, v53);
  v54 = llvm::ConstantFP::get();
  sub_23C49B500(&v219, v54);
  v224 = 257;
  v55 = sub_23C497A7C((a1 + 8), *(v30 + 24), v30, v219, v220, &__dst);
  LODWORD(v216.__r_.__value_.__l.__data_) = 0;
  v224 = 257;
  v56 = sub_23C49B32C(a1 + 8, v55, &v216, 1, &__dst);
  if (*(a3 + 225) == 1)
  {
    v216.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
    v216.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
    v216.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
    v217 = llvm::ConstantInt::get();
    v57 = llvm::ConstantVector::get();
    v224 = 257;
    v56 = sub_23C49A3AC((a1 + 8), v56, v56, v57, &__dst);
  }

  if (*(a3 + 17) == 1)
  {
    v56 = (**a1)(a1, v56, *(a3 + 8));
  }

  if (*(a3 + 19) == 1)
  {
    v58 = *(a1 + 176);
    __dst.__r_.__value_.__r.__words[0] = *v56;
    __dst.__r_.__value_.__l.__size_ = v58;
    llvm::StructType::get();
    v59 = llvm::UndefValue::get();
    LODWORD(v216.__r_.__value_.__l.__data_) = 0;
    v224 = 257;
    v60 = sub_23C49A744((a1 + 8), v59, v56, &v216, 1, &__dst);
    v215 = 1;
    v224 = 257;
    v61 = sub_23C49B32C(a1 + 8, v55, &v215, 1, &__dst);
    v62 = *(a1 + 176);
    v218 = 257;
    v63 = sub_23C49ACF8(a1 + 8, 38, v61, v62, &v216);
    v214 = 1;
    v213 = 257;
    v56 = sub_23C49A744((a1 + 8), v60, v63, &v214, 1, v212);
  }

  v64 = v219;
  if (v219 != v221)
  {
LABEL_55:
    free(v64);
  }

  return v56;
}

uint64_t sub_23C499BF0(uint64_t a1, uint64_t a2)
{
  v57[3] = *MEMORY[0x277D85DE8];
  v56[0] = v57;
  v56[1] = 0x300000000;
  v4 = *(a2 + 64);
  v55 = 257;
  v5 = sub_23C497C88((a1 + 8), **(*v4 + 16), v4, 0, &v52);
  sub_23C49B500(v56, *(a1 + 160));
  v6 = *(a1 + 184);
  v55 = 257;
  v44 = sub_23C49ACF8(a1 + 8, 38, v5, v6, &v52);
  sub_23C49B500(v56, *(a1 + 184));
  v7 = *(a1 + 1144);
  llvm::FunctionType::get();
  if (v7)
  {
    strlen(v7);
  }

  llvm::Module::getOrInsertFunction();
  v9 = v8;
  v10 = sub_23C504E2C(a1, *(a2 + 208), (*(a2 + 8) - 3) < 2);
  v12 = (*(a1 + 1696) & 0xFFFFFFFE) == 2 && *(a2 + 8) < 2u;
  if (v12)
  {
    v55 = 257;
    v13 = llvm::ConstantInt::get();
    v14 = sub_23C49B560(a1 + 8, v5, v13, &v52);
    v15 = llvm::ConstantInt::get();
    v51 = 257;
    v16 = sub_23C49A8E0(a1 + 8, v14, v15, v50);
    v17 = llvm::ConstantInt::get();
    v49 = 257;
    sub_23C497D84((a1 + 8), 33, v16, v17, v48);
  }

  v18 = llvm::UndefValue::get();
  v19 = 0;
  v20 = !v12;
  do
  {
    v52 = v54;
    v53 = 0x300000000;
    v51 = 257;
    v21 = llvm::ConstantInt::get();
    Select = sub_23C5057E8(a1 + 8, v10, v21, v50);
    if (v19 == 3)
    {
      v23 = 1;
    }

    else
    {
      v23 = v20;
    }

    if ((v23 & 1) == 0)
    {
      v45 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v46, (a1 + 8));
      v47 = *(a1 + 104);
      (*(*a1 + 136))(a1, &v45, Select, 0, *(a1 + 160));
      if (v46)
      {
        llvm::MetadataTracking::untrack();
      }

      v51 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
    }

    sub_23C49B500(&v52, Select);
    sub_23C49B500(&v52, v44);
    v51 = 257;
    v24 = sub_23C497A7C((a1 + 8), *(v9 + 24), v9, v52, v53, v50);
    v25 = *(a1 + 160);
    v51 = 257;
    v26 = sub_23C49ACF8(a1 + 8, 49, v24, v25, v50);
    v51 = 257;
    v27 = llvm::ConstantInt::get();
    v18 = sub_23C505AA8(a1 + 8, v18, v26, v27, v50);
    if (v52 != v54)
    {
      free(v52);
    }

    ++v19;
  }

  while (v19 != 4);
  v28 = **(a2 + 208);
  if ((*(v28 + 8) & 0xFE) == 0x12)
  {
    v28 = **(v28 + 16);
  }

  if (v28 == *(a1 + 160) || v28 == *(a1 + 192))
  {
    v55 = 257;
    v29 = llvm::ConstantInt::get();
    v30 = sub_23C49B560(a1 + 8, v5, v29, &v52);
    v31 = llvm::ConstantInt::get();
    v51 = 257;
    v32 = sub_23C49A8E0(a1 + 8, v30, v31, v50);
    v33 = llvm::ConstantInt::get();
    v49 = 257;
    sub_23C497D84((a1 + 8), 33, v32, v33, v48);
    v34 = *(a2 + 208);
    v35 = *(a1 + 272);
    v55 = 257;
    sub_23C49ACF8(a1 + 8, 49, v34, v35, &v52);
    v51 = 257;
    v18 = llvm::IRBuilderBase::CreateSelect();
  }

  v55 = 257;
  v36 = llvm::ConstantInt::get();
  v37 = sub_23C49B560(a1 + 8, v5, v36, &v52);
  v38 = llvm::ConstantInt::get();
  v51 = 257;
  v39 = sub_23C49A8E0(a1 + 8, v37, v38, v50);
  v40 = llvm::ConstantInt::get();
  v49 = 257;
  sub_23C497D84((a1 + 8), 33, v39, v40, v48);
  v50[0] = llvm::ConstantInt::get();
  v50[1] = llvm::ConstantInt::get();
  v50[2] = llvm::ConstantInt::get();
  v50[3] = llvm::ConstantInt::get();
  v41 = llvm::ConstantVector::get();
  v55 = 257;
  sub_23C49A3AC((a1 + 8), v18, v18, v41, &v52);
  v55 = 257;
  v42 = llvm::IRBuilderBase::CreateSelect();
  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  return v42;
}

llvm::Instruction *sub_23C49A1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C49ABAC(a1, *(a2 + 56), 0);
  v5 = sub_23C49ABAC(a1, *(a2 + 56), 1u);
  v6 = sub_23C49ABAC(a1, *(a2 + 56), 2u);
  v7 = sub_23C504FD4(a1, *(a2 + 136), **(a2 + 136), 0, 0);
  v23 = 257;
  v8 = sub_23C497C88((a1 + 8), **(*v6 + 16), v6, 0, v22);
  v23 = 257;
  sub_23C497D84((a1 + 8), 37, v7, v8, v22);
  v23 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v23 = 257;
  v10 = sub_23C497C88((a1 + 8), **(*v5 + 16), v5, 0, v22);
  v11 = *(a1 + 200);
  v23 = 257;
  v12 = sub_23C49ACF8(a1 + 8, 39, v10, v11, v22);
  v13 = *(a1 + 200);
  v21 = 257;
  v14 = sub_23C49ACF8(a1 + 8, 39, Select, v13, v20);
  v19 = 257;
  v15 = sub_23C49ADDC(a1 + 8, v12, v14, v18);
  v23 = 257;
  v16 = sub_23C497C88((a1 + 8), **(*v4 + 16), v4, 0, v22);
  v23 = 257;
  return sub_23C49AEB8(a1, v16, v15, v22);
}

uint64_t sub_23C49A3AC(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  return sub_23C49AA38(a1, a2, a3, v10, 0, a5);
}

uint64_t sub_23C49A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49A528(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v7 = *(a2 + 4);
  if (v7 <= 3)
  {
    v8 = 0;
    v9 = dword_23C532670[v7];
    do
    {
      v10 = *(a2 + 128);
      v19 = 257;
      v11 = llvm::ConstantInt::get();
      v12 = sub_23C5057E8(a1 + 8, v10, v11, v18);
      v19 = 257;
      v13 = llvm::ConstantInt::get();
      v14 = sub_23C49A668(a1 + 8, v12, v13, v18);
      v19 = 257;
      v15 = llvm::ConstantInt::get();
      v16 = sub_23C49A8E0(a1 + 8, v14, v15, v18);
      v19 = 257;
      v6 = sub_23C49A98C(a1 + 8, v6, v16, v18);
      ++v8;
    }

    while (v9 != v8);
  }

  return v6;
}

uint64_t sub_23C49A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 152))(*(a1 + 72));
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

unsigned __int8 *sub_23C49A744(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v8 = (*(*a1[9] + 352))(a1[9], a2, a3, a4, a5);
    if (v8)
    {
      v9 = *(v8 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_23C49B15C(a1, v8, a6);
    }
  }

  else
  {
    v8 = llvm::User::operator new(0x60);
    v10 = llvm::Instruction::Instruction();
    *(v10 + 64) = v10 + 80;
    *(v10 + 72) = 0x400000000;
    llvm::InsertValueInst::init();
    (*(*a1[10] + 16))(a1[10], v8, a6, a1[6], a1[7]);
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = *a1;
      v13 = &v12[4 * v11];
      do
      {
        llvm::Instruction::setMetadata();
        v12 += 4;
      }

      while (v12 != v13);
    }
  }

  return v8;
}

uint64_t sub_23C49A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 72) + 24))(*(a1 + 72));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 72) + 32))(*(a1 + 72));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C49AA38(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v12 = (*(*a1[9] + 336))(a1[9], a2, a3, a4, a5);
    if (v12)
    {
      v13 = *(v12 + 16) >= 0x1Cu;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      sub_23C49B15C(a1, v12, a6);
    }
  }

  else
  {
    v12 = llvm::User::operator new(0x68);
    v19 = 257;
    MEMORY[0x23EED4270](v12, a2, a3, a4, a5, v18, 0);
    (*(*a1[10] + 16))(a1[10], v12, a6, a1[6], a1[7]);
    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = *a1;
      v16 = &v15[4 * v14];
      do
      {
        llvm::Instruction::setMetadata();
        v15 += 4;
      }

      while (v15 != v16);
    }
  }

  return v12;
}

llvm::GetElementPtrInst *sub_23C49ABAC(uint64_t a1, llvm::LLVMContext *a2, unsigned int a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  v6 = **(v5 + 16);
  v11 = 257;
  llvm::Type::getInt32Ty(*(a1 + 72), a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(*(a1 + 72), v7);
  v14[1] = llvm::ConstantInt::get();
  v8 = (*(**(a1 + 80) + 48))(*(a1 + 80), v6, a2, v14, 2, 1);
  if (!v8)
  {
    v13 = 257;
    v8 = sub_23C49AFDC(v6, a2, v14, 2, v12, 0);
    llvm::GetElementPtrInst::setIsInBounds(v8);
    sub_23C49B15C((a1 + 8), v8, v10);
  }

  return v8;
}

uint64_t sub_23C49ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (*a3 != a4)
  {
    if (*(a3 + 16) > 0x14u)
    {
      v5 = llvm::CastInst::Create();
      sub_23C49B15C(a1, v5, a5);
    }

    else
    {
      v5 = (*(**(a1 + 72) + 224))(*(a1 + 72), a2, a3, a4);
      if (v5)
      {
        v8 = *(v5 + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        sub_23C49B15C(a1, v5, a5);
      }
    }
  }

  return v5;
}

uint64_t sub_23C49ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 88))(*(a1 + 72));
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

llvm::Instruction *sub_23C49AEB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v4 = **(v4 + 16);
  }

  return sub_23C49AEF0(a1 + 8, **(v4 + 16), a2, a3, a4);
}

llvm::Instruction *sub_23C49AEF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12[0] = a4;
  v9 = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, v12, 1, 0);
  if (!v9)
  {
    v13 = 257;
    v9 = sub_23C49AFDC(a2, a3, &v11, 1, v12, 0);
    sub_23C49B15C(a1, v9, a5);
  }

  return v9;
}

llvm::Instruction *sub_23C49AFDC(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t a5, llvm::Instruction *a6)
{
  v10 = llvm::User::operator new(0x50);
  v11 = *a2;
  v12 = *(*a2 + 8);
  if ((v12 & 0xFE) == 0x12)
  {
    v11 = **(v11 + 16);
    v12 = *(v11 + 8);
  }

  v13 = (v12 >> 8);
  llvm::GetElementPtrInst::getIndexedType();
  if (*(v11 + 24))
  {
    llvm::PointerType::get();
  }

  else
  {
    llvm::PointerType::get(*v11, v13);
  }

  if (!*a2 || (*(*a2 + 8) & 0xFE) != 0x12)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v14 = 8 * a4;
    v15 = a3;
    while (1)
    {
      v16 = **v15;
      if (v16 && (*(v16 + 8) & 0xFE) == 18)
      {
        break;
      }

      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_16;
      }
    }
  }

  llvm::VectorType::get();
LABEL_16:
  llvm::Instruction::Instruction();
  *(v10 + 64) = a1;
  *(v10 + 72) = llvm::GetElementPtrInst::getIndexedType();
  llvm::GetElementPtrInst::init();
  return v10;
}

uint64_t sub_23C49B15C(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  (*(*a1[10] + 16))(a1[10], a2, a3, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = v6 + 16 * v5;
    do
    {
      llvm::Instruction::setMetadata();
      v6 += 16;
    }

    while (v6 != v7);
  }

  return a2;
}

unsigned __int8 *sub_23C49B1E4(uint64_t a1, llvm::Value **a2, llvm::Value *a3, llvm::Type *a4, uint64_t a5, llvm::Instruction *a6)
{
  IntegerCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      IntegerCast = llvm::CastInst::CreateIntegerCast();
      sub_23C49B15C(a1, IntegerCast, a5);
    }

    else
    {
      IntegerCast = (*(**(a1 + 72) + 248))(*(a1 + 72), a2);
      if (IntegerCast)
      {
        v9 = IntegerCast[16] >= 0x1Cu;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        sub_23C49B15C(a1, IntegerCast, a5);
      }
    }
  }

  return IntegerCast;
}

uint64_t sub_23C49B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 41, a2, a3, a4);
}

uint64_t sub_23C49B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    v8 = (*(**(a1 + 72) + 344))(*(a1 + 72), a2, a3, a4);
    if (v8)
    {
      v9 = *(v8 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_23C49B15C(a1, v8, a5);
    }
  }

  else
  {
    v8 = llvm::User::operator new(0x60);
    llvm::ExtractValueInst::getIndexedType();
    llvm::Instruction::Instruction();
    if (*(v8 - 32))
    {
      v10 = *(v8 - 24);
      **(v8 - 16) = v10;
      if (v10)
      {
        *(v10 + 16) = *(v8 - 16);
      }
    }

    *(v8 - 32) = a2;
    v13 = *(a2 + 8);
    v12 = (a2 + 8);
    v11 = v13;
    *(v8 - 24) = v13;
    if (v13)
    {
      *(v11 + 16) = v8 - 24;
    }

    *(v8 - 16) = v12;
    *v12 = v8 - 32;
    *(v8 + 64) = v8 + 80;
    *(v8 + 72) = 0x400000000;
    llvm::ExtractValueInst::init();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v8, a5, *(a1 + 48), *(a1 + 56));
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = *a1;
      v16 = &v15[4 * v14];
      do
      {
        llvm::Instruction::setMetadata();
        v15 += 4;
      }

      while (v15 != v16);
    }
  }

  return v8;
}

uint64_t sub_23C49B500(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t sub_23C49B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 160))(*(a1 + 72));
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

unsigned __int8 *sub_23C49B638(llvm::FixedVectorType **a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v29 = *a2;
  v30 = *(a2 + 16);
  if (v30)
  {
    llvm::MetadataTracking::track();
  }

  v31 = *(a2 + 24);
  sub_23C497620(a1, &v29);
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = a1[20];
  v12 = v8 - 1;
  if (v8 != 1)
  {
    v11 = llvm::FixedVectorType::get();
  }

  v13 = llvm::PointerType::get();
  v14 = &a1[v12];
  if (a6)
  {
    v15 = v14[243];
    if (v15)
    {
      v16 = strlen(v14[243]);
    }

    else
    {
      v16 = 0;
    }

    v19 = sub_23C49B858(a1, v15, v16, v11, a1[24], v13, v13);
    v32 = llvm::ConstantInt::get();
    v33 = a5;
    v34 = a6;
    v28 = 257;
    v20 = *(v19 + 24);
    v21 = (a1 + 1);
    v22 = v19;
    v23 = 3;
  }

  else
  {
    v17 = v14[239];
    if (v17)
    {
      v18 = strlen(v14[239]);
    }

    else
    {
      v18 = 0;
    }

    v24 = sub_23C49B938(a1, v17, v18, v11, a1[24], v13);
    v32 = llvm::ConstantInt::get();
    v33 = a5;
    v28 = 257;
    v20 = *(v24 + 24);
    v21 = (a1 + 1);
    v22 = v24;
    v23 = 2;
  }

  v25 = sub_23C497A7C(v21, v20, v22, &v32, v23, v27);
  if ((v8 ^ v12) <= v12)
  {
    return sub_23C505670(a1, v25, v8, 1);
  }

  return v25;
}

uint64_t sub_23C49B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  v11[0] = v12;
  v11[1] = 0x300000000;
  sub_23C49BA18(v11, __src, v11);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v8 = v7;
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v8;
}

uint64_t sub_23C49B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  v10[0] = v11;
  v10[1] = 0x200000000;
  sub_23C49BA18(v10, __src, v10);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v7 = v6;
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return v7;
}

unsigned int *sub_23C49BA18(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 8 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

void sub_23C49BAC0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t sub_23C49BBA0(llvm::DataLayout *a1, llvm::Type *a2)
{
  v4 = sub_23C49BBFC(a1, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(a1, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

unint64_t sub_23C49BBFC(llvm::DataLayout *a1, uint64_t a2)
{
  result = 16;
  switch(*(a2 + 8))
  {
    case 2u:
      return 32;
    case 3u:
    case 0xAu:
      return 64;
    case 4u:
      return 80;
    case 5u:
    case 6u:
      return 128;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      JUMPOUT(0x23C49BD4CLL);
    case 8u:
      v6 = a1;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 8) >> 8;
    case 0xFu:
      v6 = a1;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v7 = *llvm::DataLayout::getStructLayout();
      goto LABEL_14;
    case 0x11u:
      v8 = *(a2 + 32);
      v7 = v8 * sub_23C49BBA0(a1, *(a2 + 24));
LABEL_14:
      result = 8 * v7;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 32);
      result = sub_23C49BBFC(a1, *(a2 + 24)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x23EED4B20](a2);
      result = sub_23C49BBFC(a1, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *sub_23C49BF14(uint64_t a1, llvm::StringMapImpl *a2)
{
  v4 = *sub_23C4C126C(a2, "acos", 4uLL);
  *(v4 + 8) = sub_23C4C27B0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 3;
  *(v4 + 28) = 257;
  v5 = *sub_23C4C126C(a2, "asin", 4uLL);
  *(v5 + 8) = sub_23C4C278C;
  *(v5 + 16) = 0;
  *(v5 + 24) = 3;
  *(v5 + 28) = 257;
  v6 = *sub_23C4C126C(a2, "atan", 4uLL);
  *(v6 + 8) = sub_23C4C2768;
  *(v6 + 16) = 0;
  *(v6 + 24) = 3;
  *(v6 + 28) = 257;
  v7 = *sub_23C4C126C(a2, "atan2", 5uLL);
  *(v7 + 8) = sub_23C4BC958;
  *(v7 + 16) = 0;
  *(v7 + 24) = 5;
  *(v7 + 28) = 257;
  v8 = *sub_23C4C126C(a2, "acosh", 5uLL);
  *(v8 + 8) = sub_23C4BD164;
  *(v8 + 16) = 0;
  *(v8 + 24) = 3;
  *(v8 + 28) = 257;
  v9 = *sub_23C4C126C(a2, "asinh", 5uLL);
  *(v9 + 8) = sub_23C4BD2CC;
  *(v9 + 16) = 0;
  *(v9 + 24) = 3;
  *(v9 + 28) = 257;
  v10 = *sub_23C4C126C(a2, "atanh", 5uLL);
  *(v10 + 8) = sub_23C4BD370;
  *(v10 + 16) = 0;
  *(v10 + 24) = 3;
  *(v10 + 28) = 257;
  v11 = *sub_23C4C126C(a2, "pow", 3uLL);
  *(v11 + 8) = sub_23C4C2744;
  *(v11 + 16) = 0;
  *(v11 + 24) = 5;
  *(v11 + 28) = 257;
  v12 = *sub_23C4C126C(a2, "powr", 4uLL);
  *(v12 + 8) = sub_23C4BB80C;
  *(v12 + 16) = 0;
  *(v12 + 24) = 5;
  *(v12 + 28) = 257;
  v13 = *sub_23C4C126C(a2, "cosh", 4uLL);
  *(v13 + 8) = sub_23C4BD440;
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  *(v13 + 28) = 257;
  v14 = *sub_23C4C126C(a2, "sinh", 4uLL);
  *(v14 + 8) = sub_23C4BDD84;
  *(v14 + 16) = 0;
  *(v14 + 24) = 3;
  *(v14 + 28) = 257;
  v15 = *sub_23C4C126C(a2, "tanh", 4uLL);
  *(v15 + 8) = sub_23C4BDE24;
  *(v15 + 16) = 0;
  *(v15 + 24) = 3;
  *(v15 + 28) = 257;
  v16 = *sub_23C4C126C(a2, "exp10", 5uLL);
  *(v16 + 8) = sub_23C4BD964;
  *(v16 + 16) = 0;
  *(v16 + 24) = 3;
  *(v16 + 28) = 257;
  v17 = *sub_23C4C126C(a2, "log10", 5uLL);
  *(v17 + 8) = sub_23C4BDA8C;
  *(v17 + 16) = 0;
  *(v17 + 24) = 3;
  *(v17 + 28) = 257;
  v18 = *(a1 + 40);
  v19 = *sub_23C4C126C(a2, "cos", 3uLL);
  *(v19 + 8) = sub_23C4C273C;
  *(v19 + 16) = 0;
  *(v19 + 24) = 3;
  *(v19 + 28) = v18;
  *(v19 + 29) = 1;
  v20 = *(a1 + 40);
  v21 = *sub_23C4C126C(a2, "sin", 3uLL);
  *(v21 + 8) = sub_23C4C2734;
  *(v21 + 16) = 0;
  *(v21 + 24) = 3;
  *(v21 + 28) = v20;
  *(v21 + 29) = 1;
  v22 = *(a1 + 40);
  v23 = *sub_23C4C126C(a2, "tan", 3uLL);
  *(v23 + 8) = sub_23C4BCEB4;
  *(v23 + 16) = 0;
  *(v23 + 24) = 3;
  *(v23 + 28) = v22;
  *(v23 + 29) = 1;
  v24 = *(a1 + 40);
  v25 = *sub_23C4C126C(a2, "sincos", 6uLL);
  *(v25 + 8) = sub_23C4BCF20;
  *(v25 + 16) = 0;
  *(v25 + 24) = 5;
  *(v25 + 28) = v24;
  *(v25 + 29) = 0;
  v26 = *sub_23C4C126C(a2, "rint", 4uLL);
  *(v26 + 8) = sub_23C4C2710;
  *(v26 + 16) = 0;
  *(v26 + 24) = 3;
  *(v26 + 28) = 257;
  v27 = *sub_23C4C126C(a2, "round", 5uLL);
  *(v27 + 8) = sub_23C4BDBC0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 3;
  *(v27 + 28) = 257;
  v28 = *sub_23C4C126C(a2, "fmod", 4uLL);
  *(v28 + 8) = sub_23C4BD5A4;
  *(v28 + 16) = 0;
  *(v28 + 24) = 5;
  *(v28 + 28) = 1;
  v29 = *sub_23C4C126C(a2, "mod", 3uLL);
  *(v29 + 8) = sub_23C4BD6C4;
  *(v29 + 16) = 0;
  *(v29 + 24) = 5;
  *(v29 + 28) = 1;
  v30 = *sub_23C4C126C(a2, "ceil", 4uLL);
  *(v30 + 8) = sub_23C4C26EC;
  *(v30 + 16) = 0;
  *(v30 + 24) = 3;
  *(v30 + 28) = 256;
  v31 = *sub_23C4C126C(a2, "exp", 3uLL);
  *(v31 + 8) = sub_23C4BD4E0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 3;
  *(v31 + 28) = 1;
  v32 = *sub_23C4C126C(a2, "exp2", 4uLL);
  *(v32 + 8) = sub_23C4BD9C8;
  *(v32 + 16) = 0;
  *(v32 + 24) = 3;
  *(v32 + 28) = 0;
  v33 = *sub_23C4C126C(a2, "fabs", 4uLL);
  *(v33 + 8) = sub_23C4BB410;
  *(v33 + 16) = 0;
  *(v33 + 24) = 3;
  *(v33 + 28) = 0;
  v34 = *sub_23C4C126C(a2, "floor", 5uLL);
  *(v34 + 8) = sub_23C4BBA04;
  *(v34 + 16) = 0;
  *(v34 + 24) = 3;
  *(v34 + 28) = 0;
  v35 = *sub_23C4C126C(a2, "fma", 3uLL);
  *(v35 + 8) = sub_23C4BC6B8;
  *(v35 + 16) = 0;
  *(v35 + 24) = 6;
  *(v35 + 28) = 0;
  v36 = *sub_23C4C126C(a2, "fmax", 4uLL);
  *(v36 + 8) = sub_23C4C0B1C;
  *(v36 + 16) = 0;
  *(v36 + 24) = 5;
  *(v36 + 28) = 256;
  v37 = *sub_23C4C126C(a2, "fmin", 4uLL);
  *(v37 + 8) = sub_23C4C0A44;
  *(v37 + 16) = 0;
  *(v37 + 24) = 5;
  *(v37 + 28) = 256;
  v38 = *sub_23C4C126C(a2, "fract", 5uLL);
  *(v38 + 8) = sub_23C4BD74C;
  *(v38 + 16) = 0;
  *(v38 + 24) = 3;
  *(v38 + 28) = 0;
  v39 = *sub_23C4C126C(a2, "ldexp", 5uLL);
  *(v39 + 8) = sub_23C4C26E4;
  *(v39 + 16) = 0;
  *(v39 + 24) = 7;
  *(v39 + 28) = 256;
  v40 = *sub_23C4C126C(a2, "log", 3uLL);
  *(v40 + 8) = sub_23C4BD208;
  *(v40 + 16) = 0;
  *(v40 + 24) = 3;
  *(v40 + 28) = 1;
  v41 = *sub_23C4C126C(a2, "log2", 4uLL);
  *(v41 + 8) = sub_23C4BDAFC;
  *(v41 + 16) = 0;
  *(v41 + 24) = 3;
  *(v41 + 28) = 0;
  v42 = *sub_23C4C126C(a2, "mad", 3uLL);
  *(v42 + 8) = sub_23C4BD904;
  *(v42 + 16) = 0;
  *(v42 + 24) = 6;
  *(v42 + 28) = 0;
  v43 = *sub_23C4C126C(a2, "rsqrt", 5uLL);
  *(v43 + 8) = sub_23C4BC894;
  *(v43 + 16) = 0;
  *(v43 + 24) = 3;
  *(v43 + 28) = 256;
  v44 = *sub_23C4C126C(a2, "sqrt", 4uLL);
  *(v44 + 8) = sub_23C4BBBDC;
  *(v44 + 16) = 0;
  *(v44 + 24) = 3;
  *(v44 + 28) = 0;
  v45 = *sub_23C4C126C(a2, "trunc", 5uLL);
  *(v45 + 8) = sub_23C4C26C0;
  *(v45 + 16) = 0;
  *(v45 + 24) = 3;
  *(v45 + 28) = 256;
  v46 = *sub_23C4C126C(a2, "fast_acos", 9uLL);
  *(v46 + 8) = sub_23C4C27B0;
  *(v46 + 16) = 0;
  *(v46 + 24) = 3;
  *(v46 + 28) = 257;
  v47 = *sub_23C4C126C(a2, "fast_asin", 9uLL);
  *(v47 + 8) = sub_23C4C278C;
  *(v47 + 16) = 0;
  *(v47 + 24) = 3;
  *(v47 + 28) = 257;
  v48 = *sub_23C4C126C(a2, "fast_atan", 9uLL);
  *(v48 + 8) = sub_23C4C2768;
  *(v48 + 16) = 0;
  *(v48 + 24) = 3;
  *(v48 + 28) = 257;
  v49 = *sub_23C4C126C(a2, "fast_atan2", 0xAuLL);
  *(v49 + 8) = sub_23C4BC958;
  *(v49 + 16) = 0;
  *(v49 + 24) = 5;
  *(v49 + 28) = 257;
  v50 = *sub_23C4C126C(a2, "fast_exp10", 0xAuLL);
  *(v50 + 8) = sub_23C4BD964;
  *(v50 + 16) = 0;
  *(v50 + 24) = 3;
  *(v50 + 28) = 0;
  v51 = *sub_23C4C126C(a2, "fast_log10", 0xAuLL);
  *(v51 + 8) = sub_23C4BDA8C;
  *(v51 + 16) = 0;
  *(v51 + 24) = 3;
  *(v51 + 28) = 1;
  v52 = *sub_23C4C126C(a2, "fast_acosh", 0xAuLL);
  *(v52 + 8) = sub_23C4BD164;
  *(v52 + 16) = 0;
  *(v52 + 24) = 3;
  *(v52 + 28) = 257;
  v53 = *sub_23C4C126C(a2, "fast_asinh", 0xAuLL);
  *(v53 + 8) = sub_23C4BD2CC;
  *(v53 + 16) = 0;
  *(v53 + 24) = 3;
  *(v53 + 28) = 257;
  v54 = *sub_23C4C126C(a2, "fast_atanh", 0xAuLL);
  *(v54 + 8) = sub_23C4BD370;
  *(v54 + 16) = 0;
  *(v54 + 24) = 3;
  *(v54 + 28) = 257;
  v55 = *sub_23C4C126C(a2, "fast_pow", 8uLL);
  *(v55 + 8) = sub_23C4C2744;
  *(v55 + 16) = 0;
  *(v55 + 24) = 5;
  *(v55 + 28) = 257;
  v56 = *sub_23C4C126C(a2, "fast_powr", 9uLL);
  *(v56 + 8) = sub_23C4BB80C;
  *(v56 + 16) = 0;
  *(v56 + 24) = 5;
  *(v56 + 28) = 257;
  v57 = *sub_23C4C126C(a2, "fast_cosh", 9uLL);
  *(v57 + 8) = sub_23C4BD440;
  *(v57 + 16) = 0;
  *(v57 + 24) = 3;
  *(v57 + 28) = 1;
  *(v57 + 29) = 1;
  v58 = *sub_23C4C126C(a2, "fast_sinh", 9uLL);
  *(v58 + 8) = sub_23C4BDD84;
  *(v58 + 16) = 0;
  *(v58 + 24) = 3;
  *(v58 + 28) = 1;
  *(v58 + 29) = 1;
  v59 = *sub_23C4C126C(a2, "fast_tanh", 9uLL);
  *(v59 + 8) = sub_23C4BDE24;
  *(v59 + 16) = 0;
  *(v59 + 24) = 3;
  *(v59 + 28) = 1;
  *(v59 + 29) = 1;
  v60 = *(a1 + 40);
  v61 = *sub_23C4C126C(a2, "fast_cos", 8uLL);
  *(v61 + 8) = sub_23C4C273C;
  *(v61 + 16) = 0;
  *(v61 + 24) = 3;
  *(v61 + 28) = v60;
  *(v61 + 29) = 1;
  v62 = *(a1 + 40);
  v63 = *sub_23C4C126C(a2, "fast_sin", 8uLL);
  *(v63 + 8) = sub_23C4C2734;
  *(v63 + 16) = 0;
  *(v63 + 24) = 3;
  *(v63 + 28) = v62;
  *(v63 + 29) = 1;
  v64 = *sub_23C4C126C(a2, "fast_tan", 8uLL);
  *(v64 + 8) = sub_23C4BCEB4;
  *(v64 + 16) = 0;
  *(v64 + 24) = 3;
  *(v64 + 28) = 1;
  *(v64 + 29) = 1;
  v65 = *(a1 + 40);
  v66 = *sub_23C4C126C(a2, "fast_sincos", 0xBuLL);
  *(v66 + 8) = sub_23C4BCF20;
  *(v66 + 16) = 0;
  *(v66 + 24) = 5;
  *(v66 + 28) = v65;
  *(v66 + 29) = 0;
  v67 = *sub_23C4C126C(a2, "fast_round", 0xAuLL);
  *(v67 + 8) = sub_23C4BDBC0;
  *(v67 + 16) = 0;
  *(v67 + 24) = 3;
  *(v67 + 28) = 1;
  *(v67 + 29) = 1;
  v68 = *sub_23C4C126C(a2, "fast_fmod", 9uLL);
  *(v68 + 8) = sub_23C4BD5A4;
  *(v68 + 16) = 0;
  *(v68 + 24) = 5;
  *(v68 + 28) = 1;
  v69 = *sub_23C4C126C(a2, "fast_mod", 8uLL);
  *(v69 + 8) = sub_23C4BD6C4;
  *(v69 + 16) = 0;
  *(v69 + 24) = 5;
  *(v69 + 28) = 1;
  v70 = *sub_23C4C126C(a2, "fast_exp", 8uLL);
  *(v70 + 8) = sub_23C4BD4E0;
  *(v70 + 16) = 0;
  *(v70 + 24) = 3;
  *(v70 + 28) = 0;
  v71 = *sub_23C4C126C(a2, "fast_exp2", 9uLL);
  *(v71 + 8) = sub_23C4BD9C8;
  *(v71 + 16) = 0;
  *(v71 + 24) = 3;
  *(v71 + 28) = 0;
  v72 = *sub_23C4C126C(a2, "fast_ldexp", 0xAuLL);
  *(v72 + 8) = sub_23C4C26E4;
  *(v72 + 16) = 0;
  *(v72 + 24) = 7;
  *(v72 + 28) = 0;
  *(v72 + 29) = 1;
  v73 = *sub_23C4C126C(a2, "fast_log", 8uLL);
  *(v73 + 8) = sub_23C4BD208;
  *(v73 + 16) = 0;
  *(v73 + 24) = 3;
  *(v73 + 28) = 0;
  v74 = *sub_23C4C126C(a2, "fast_log2", 9uLL);
  *(v74 + 8) = sub_23C4BDAFC;
  *(v74 + 16) = 0;
  *(v74 + 24) = 3;
  *(v74 + 28) = 0;
  v75 = *sub_23C4C126C(a2, "fast_rsqrt", 0xAuLL);
  *(v75 + 8) = sub_23C4BC894;
  *(v75 + 16) = 0;
  *(v75 + 24) = 3;
  *(v75 + 28) = 0;
  *(v75 + 29) = 1;
  v76 = *sub_23C4C126C(a2, "fast_sqrt", 9uLL);
  *(v76 + 8) = sub_23C4BBBDC;
  *(v76 + 16) = 0;
  *(v76 + 24) = 3;
  *(v76 + 28) = 0;
  v77 = *sub_23C4C126C(a2, "fast_ceil", 9uLL);
  *(v77 + 8) = sub_23C4C26EC;
  *(v77 + 16) = 0;
  *(v77 + 24) = 3;
  *(v77 + 28) = 0;
  *(v77 + 29) = 1;
  v78 = *sub_23C4C126C(a2, "fast_fabs", 9uLL);
  *(v78 + 8) = sub_23C4BB410;
  *(v78 + 16) = 0;
  *(v78 + 24) = 3;
  *(v78 + 28) = 0;
  v79 = *sub_23C4C126C(a2, "fast_floor", 0xAuLL);
  *(v79 + 8) = sub_23C4BBA04;
  *(v79 + 16) = 0;
  *(v79 + 24) = 3;
  *(v79 + 28) = 0;
  v80 = *sub_23C4C126C(a2, "fast_fract", 0xAuLL);
  *(v80 + 8) = sub_23C4BD74C;
  *(v80 + 16) = 0;
  *(v80 + 24) = 3;
  *(v80 + 28) = 0;
  v81 = *sub_23C4C126C(a2, "fast_rint", 9uLL);
  *(v81 + 8) = sub_23C4C2710;
  *(v81 + 16) = 0;
  *(v81 + 24) = 3;
  *(v81 + 28) = 1;
  *(v81 + 29) = 1;
  v82 = *sub_23C4C126C(a2, "fast_trunc", 0xAuLL);
  *(v82 + 8) = sub_23C4C26C0;
  *(v82 + 16) = 0;
  *(v82 + 24) = 3;
  *(v82 + 28) = 0;
  *(v82 + 29) = 1;
  v83 = *sub_23C4C126C(a2, "fast_fmax", 9uLL);
  *(v83 + 8) = sub_23C4BCDAC;
  *(v83 + 16) = 0;
  *(v83 + 24) = 5;
  *(v83 + 28) = 0;
  *(v83 + 29) = 1;
  v84 = *sub_23C4C126C(a2, "fast_fmin", 9uLL);
  *(v84 + 8) = sub_23C4BCCA4;
  *(v84 + 16) = 0;
  *(v84 + 24) = 5;
  *(v84 + 28) = 0;
  *(v84 + 29) = 1;
  v85 = *sub_23C4C126C(a2, "gamma_expand", 0xCuLL);
  *(v85 + 8) = sub_23C4C26B8;
  *(v85 + 16) = 0;
  *(v85 + 24) = 3;
  *(v85 + 28) = 0;
  v86 = *sub_23C4C126C(a2, "gamma_compress", 0xEuLL);
  *(v86 + 8) = sub_23C4C26B0;
  *(v86 + 16) = 0;
  *(v86 + 24) = 3;
  *(v86 + 28) = 0;
  v87 = *sub_23C4C126C(a2, "gamma_expand_xr", 0xFuLL);
  *(v87 + 8) = sub_23C4C26A8;
  *(v87 + 16) = 0;
  *(v87 + 24) = 3;
  *(v87 + 28) = 0;
  v88 = *sub_23C4C126C(a2, "gamma_compress_xr", 0x11uLL);
  *(v88 + 8) = sub_23C4C26A0;
  *(v88 + 16) = 0;
  *(v88 + 24) = 3;
  *(v88 + 28) = 0;
  v89 = *sub_23C4C126C(a2, "convert", 7uLL);
  *(v89 + 8) = sub_23C4BDEF4;
  *(v89 + 16) = 0;
  *(v89 + 24) = 7;
  *(v89 + 28) = 0;
  *(v89 + 29) = 1;
  v90 = *sub_23C4C126C(a2, "pack", 4uLL);
  *(v90 + 8) = sub_23C4BE840;
  *(v90 + 16) = 0;
  *(v90 + 24) = 7;
  *(v90 + 28) = 0;
  v91 = *sub_23C4C126C(a2, "unpack", 6uLL);
  *(v91 + 8) = sub_23C4BF378;
  *(v91 + 16) = 0;
  *(v91 + 24) = 7;
  *(v91 + 28) = 0;
  v92 = *sub_23C4C126C(a2, "abs", 3uLL);
  *(v92 + 8) = sub_23C4C24B0;
  *(v92 + 16) = 0;
  *(v92 + 24) = 7;
  *(v92 + 28) = 0;
  *(v92 + 29) = 1;
  v93 = *sub_23C4C126C(a2, "abs_diff", 8uLL);
  *(v93 + 8) = sub_23C4C23DC;
  *(v93 + 16) = 0;
  *(v93 + 24) = 7;
  *(v93 + 28) = 0;
  *(v93 + 29) = 1;
  v94 = *sub_23C4C126C(a2, "add_sat", 7uLL);
  *(v94 + 8) = sub_23C4C20FC;
  *(v94 + 16) = 0;
  *(v94 + 24) = 7;
  *(v94 + 28) = 0;
  *(v94 + 29) = 1;
  v95 = *sub_23C4C126C(a2, "sub_sat", 7uLL);
  *(v95 + 8) = sub_23C4C1DC0;
  *(v95 + 16) = 0;
  *(v95 + 24) = 7;
  *(v95 + 28) = 0;
  *(v95 + 29) = 1;
  v96 = *sub_23C4C126C(a2, "hadd", 4uLL);
  *(v96 + 8) = sub_23C4C26E4;
  *(v96 + 16) = 0;
  *(v96 + 24) = 7;
  *(v96 + 28) = 0;
  *(v96 + 29) = 1;
  v97 = *sub_23C4C126C(a2, "rhadd", 5uLL);
  *(v97 + 8) = sub_23C4C26E4;
  *(v97 + 16) = 0;
  *(v97 + 24) = 7;
  *(v97 + 28) = 0;
  *(v97 + 29) = 1;
  v98 = *sub_23C4C126C(a2, "clamp", 5uLL);
  *(v98 + 8) = sub_23C4BF8B0;
  *(v98 + 16) = 0;
  *(v98 + 24) = 7;
  *(v98 + 28) = 0;
  *(v98 + 29) = 1;
  v99 = *sub_23C4C126C(a2, "clz", 3uLL);
  *(v99 + 8) = sub_23C4C26E4;
  *(v99 + 16) = 0;
  *(v99 + 24) = 7;
  *(v99 + 28) = 0;
  *(v99 + 29) = 1;
  v100 = *sub_23C4C126C(a2, "ctz", 3uLL);
  *(v100 + 8) = sub_23C4C26E4;
  *(v100 + 16) = 0;
  *(v100 + 24) = 7;
  *(v100 + 28) = 0;
  *(v100 + 29) = 1;
  v101 = *sub_23C4C126C(a2, "mad_hi", 6uLL);
  *(v101 + 8) = sub_23C4C26E4;
  *(v101 + 16) = 0;
  *(v101 + 24) = 7;
  *(v101 + 28) = 0;
  *(v101 + 29) = 1;
  v102 = *sub_23C4C126C(a2, "mad_sat", 7uLL);
  *(v102 + 8) = sub_23C4C1A30;
  *(v102 + 16) = 0;
  *(v102 + 24) = 7;
  *(v102 + 28) = 0;
  *(v102 + 29) = 1;
  v103 = *sub_23C4C126C(a2, "max", 3uLL);
  *(v103 + 8) = sub_23C4C1A10;
  *(v103 + 16) = 0;
  *(v103 + 24) = 7;
  *(v103 + 28) = 0;
  *(v103 + 29) = 1;
  v104 = *sub_23C4C126C(a2, "min", 3uLL);
  *(v104 + 8) = sub_23C4C19F0;
  *(v104 + 16) = 0;
  *(v104 + 24) = 7;
  *(v104 + 28) = 0;
  *(v104 + 29) = 1;
  v105 = *sub_23C4C126C(a2, "mul_hi", 6uLL);
  *(v105 + 8) = sub_23C4C26E4;
  *(v105 + 16) = 0;
  *(v105 + 24) = 7;
  *(v105 + 28) = 0;
  *(v105 + 29) = 1;
  v106 = *sub_23C4C126C(a2, "rotate", 6uLL);
  *(v106 + 8) = sub_23C4C26E4;
  *(v106 + 16) = 0;
  *(v106 + 24) = 7;
  *(v106 + 28) = 0;
  *(v106 + 29) = 1;
  v107 = *sub_23C4C126C(a2, "popcount", 8uLL);
  *(v107 + 8) = sub_23C4BFA14;
  *(v107 + 16) = 0;
  *(v107 + 24) = 3;
  *(v107 + 28) = 0;
  *(v107 + 29) = 1;
  v108 = *sub_23C4C126C(a2, "extract_bits", 0xCuLL);
  *(v108 + 8) = sub_23C4BFB98;
  *(v108 + 16) = 0;
  *(v108 + 24) = 7;
  *(v108 + 28) = 0;
  *(v108 + 29) = 1;
  v109 = *sub_23C4C126C(a2, "insert_bits", 0xBuLL);
  *(v109 + 8) = sub_23C4BFDAC;
  *(v109 + 16) = 0;
  *(v109 + 24) = 7;
  *(v109 + 28) = 0;
  *(v109 + 29) = 1;
  v110 = *sub_23C4C126C(a2, "reverse_bits", 0xCuLL);
  *(v110 + 8) = sub_23C4C0018;
  *(v110 + 16) = 0;
  *(v110 + 24) = 3;
  *(v110 + 28) = 0;
  *(v110 + 29) = 1;
  v111 = *sub_23C4C126C(a2, "any", 3uLL);
  *(v111 + 8) = sub_23C4C19E8;
  *(v111 + 16) = 0;
  *(v111 + 24) = 3;
  *(v111 + 28) = 0;
  v112 = *sub_23C4C126C(a2, "all", 3uLL);
  *(v112 + 8) = sub_23C4C19E0;
  *(v112 + 16) = 0;
  *(v112 + 24) = 3;
  *(v112 + 28) = 0;
  v113 = *sub_23C4C126C(a2, "any_msb", 7uLL);
  *(v113 + 8) = sub_23C4C26E4;
  *(v113 + 16) = 0;
  *(v113 + 24) = 7;
  *(v113 + 28) = 0;
  *(v113 + 29) = 1;
  v114 = *sub_23C4C126C(a2, "all_msb", 7uLL);
  *(v114 + 8) = sub_23C4C26E4;
  *(v114 + 16) = 0;
  *(v114 + 24) = 7;
  *(v114 + 28) = 0;
  *(v114 + 29) = 1;
  v115 = *sub_23C4C126C(a2, "saturate", 8uLL);
  *(v115 + 8) = sub_23C4C1918;
  *(v115 + 16) = 0;
  *(v115 + 24) = 3;
  *(v115 + 28) = 0;
  *(v115 + 29) = 1;
  v116 = *sub_23C4C126C(a2, "mix", 3uLL);
  *(v116 + 8) = sub_23C4C0320;
  *(v116 + 16) = 0;
  *(v116 + 24) = 6;
  *(v116 + 28) = 0;
  v117 = *sub_23C4C126C(a2, "sign", 4uLL);
  *(v117 + 8) = sub_23C4C0224;
  *(v117 + 16) = 0;
  *(v117 + 24) = 3;
  *(v117 + 28) = 0;
  *(v117 + 29) = 1;
  v118 = *sub_23C4C126C(a2, "dot", 3uLL);
  *(v118 + 8) = sub_23C4C03D8;
  *(v118 + 16) = 0;
  *(v118 + 24) = 5;
  *(v118 + 28) = 0;
  v119 = *sub_23C4C126C(a2, "fast_clamp", 0xAuLL);
  *(v119 + 8) = sub_23C4C185C;
  *(v119 + 16) = 0;
  *(v119 + 24) = 6;
  *(v119 + 28) = 0;
  *(v119 + 29) = 1;
  v120 = *sub_23C4C126C(a2, "fast_saturate", 0xDuLL);
  *(v120 + 8) = sub_23C4C17B8;
  *(v120 + 16) = 0;
  *(v120 + 24) = 3;
  *(v120 + 28) = 0;
  *(v120 + 29) = 1;
  v121 = *(a1 + 41);
  v122 = *sub_23C4C126C(a2, "dfdx", 4uLL);
  *(v122 + 8) = sub_23C4C042C;
  *(v122 + 16) = 0;
  *(v122 + 24) = 3;
  *(v122 + 28) = v121;
  *(v122 + 29) = 1;
  v123 = *(a1 + 41);
  v124 = *sub_23C4C126C(a2, "dfdy", 4uLL);
  *(v124 + 8) = sub_23C4C0510;
  *(v124 + 16) = 0;
  *(v124 + 24) = 3;
  *(v124 + 28) = v123;
  *(v124 + 29) = 1;
  v125 = *(a1 + 41);
  v126 = *sub_23C4C126C(a2, "fwidth", 6uLL);
  *(v126 + 8) = sub_23C4C0608;
  *(v126 + 16) = 0;
  *(v126 + 24) = 3;
  *(v126 + 28) = v125;
  *(v126 + 29) = 1;
  v127 = *sub_23C4C126C(a2, "atomic", 6uLL);
  *(v127 + 8) = sub_23C4C1794;
  *(v127 + 16) = 0;
  *(v127 + 24) = 7;
  *(v127 + 28) = 0;
  v128 = *sub_23C4C126C(a2, "assert", 6uLL);
  *(v128 + 8) = sub_23C4C0FA4;
  *(v128 + 16) = 0;
  *(v128 + 24) = 1;
  *(v128 + 28) = 0;
  v129 = *sub_23C4C126C(a2, "get_simd_width", 0xEuLL);
  *(v129 + 8) = sub_23C4C0FAC;
  *(v129 + 16) = 0;
  *(v129 + 24) = 7;
  *(v129 + 28) = 0;
  v130 = *sub_23C4C126C(a2, "get_thread_execution_width", 0x1AuLL);
  *(v130 + 8) = sub_23C4C1008;
  *(v130 + 16) = 0;
  *(v130 + 24) = 7;
  *(v130 + 28) = 0;
  v131 = *sub_23C4C126C(a2, "simdgroup", 9uLL);
  *(v131 + 8) = sub_23C4C1768;
  *(v131 + 16) = 0;
  *(v131 + 24) = 7;
  *(v131 + 28) = 0;
  v132 = *sub_23C4C126C(a2, "is_uniform", 0xAuLL);
  *(v132 + 8) = sub_23C4C1064;
  *(v132 + 16) = 0;
  *(v132 + 24) = 9;
  *(v132 + 28) = 0;
  v133 = *sub_23C4C126C(a2, "mul24", 5uLL);
  *(v133 + 8) = sub_23C4C1730;
  *(v133 + 16) = 0;
  *(v133 + 24) = 7;
  *(v133 + 28) = 0;
  *(v133 + 29) = 1;
  v134 = *sub_23C4C126C(a2, "mad24", 5uLL);
  *(v134 + 8) = sub_23C4C16C8;
  *(v134 + 16) = 0;
  *(v134 + 24) = 7;
  *(v134 + 28) = 0;
  *(v134 + 29) = 1;
  v135 = *sub_23C4C126C(a2, "min3", 4uLL);
  *(v135 + 8) = sub_23C4C1658;
  *(v135 + 16) = 0;
  *(v135 + 24) = 7;
  *(v135 + 28) = 0;
  *(v135 + 29) = 1;
  v136 = *sub_23C4C126C(a2, "fmin3", 5uLL);
  *(v136 + 8) = sub_23C4C160C;
  *(v136 + 16) = 0;
  *(v136 + 24) = 7;
  *(v136 + 28) = 0;
  *(v136 + 29) = 1;
  v137 = *sub_23C4C126C(a2, "fast_fmin3", 0xAuLL);
  *(v137 + 8) = sub_23C4C15C0;
  *(v137 + 16) = 0;
  *(v137 + 24) = 7;
  *(v137 + 28) = 0;
  *(v137 + 29) = 1;
  v138 = *sub_23C4C126C(a2, "max3", 4uLL);
  *(v138 + 8) = sub_23C4C1550;
  *(v138 + 16) = 0;
  *(v138 + 24) = 7;
  *(v138 + 28) = 0;
  *(v138 + 29) = 1;
  v139 = *sub_23C4C126C(a2, "fmax3", 5uLL);
  *(v139 + 8) = sub_23C4C1504;
  *(v139 + 16) = 0;
  *(v139 + 24) = 7;
  *(v139 + 28) = 0;
  *(v139 + 29) = 1;
  v140 = *sub_23C4C126C(a2, "fast_fmax3", 0xAuLL);
  *(v140 + 8) = sub_23C4C14B8;
  *(v140 + 16) = 0;
  *(v140 + 24) = 7;
  *(v140 + 28) = 0;
  *(v140 + 29) = 1;
  v141 = *sub_23C4C126C(a2, "median3", 7uLL);
  *(v141 + 8) = sub_23C4C1364;
  *(v141 + 16) = 0;
  *(v141 + 24) = 7;
  *(v141 + 28) = 0;
  *(v141 + 29) = 1;
  v142 = *sub_23C4C126C(a2, "fmedian3", 8uLL);
  *(v142 + 8) = sub_23C4C081C;
  *(v142 + 16) = 0;
  *(v142 + 24) = 7;
  *(v142 + 28) = 0;
  *(v142 + 29) = 1;
  v143 = *sub_23C4C126C(a2, "fast_fmedian3", 0xDuLL);
  *(v143 + 8) = sub_23C4C0BF4;
  *(v143 + 16) = 0;
  *(v143 + 24) = 7;
  *(v143 + 28) = 0;
  *(v143 + 29) = 1;
  v144 = *sub_23C4C126C(a2, "projective_coordinates", 0x16uLL);
  *(v144 + 8) = sub_23C4C0CE8;
  *(v144 + 16) = 0;
  *(v144 + 24) = 3;
  *(v144 + 28) = 0;
  v145 = *sub_23C4C126C(a2, "get_unique_identifier_compute_pipeline_state", 0x2CuLL);
  *(v145 + 8) = sub_23C4C1230;
  *(v145 + 16) = 0;
  *(v145 + 24) = 3;
  *(v145 + 28) = 0;
  *(v145 + 29) = 1;
  v146 = *sub_23C4C126C(a2, "get_unique_identifier_render_pipeline_state", 0x2BuLL);
  *(v146 + 8) = sub_23C4C1230;
  *(v146 + 16) = 0;
  *(v146 + 24) = 3;
  *(v146 + 28) = 0;
  *(v146 + 29) = 1;
  v147 = *sub_23C4C126C(a2, "get_unique_identifier_indirect_command_buffer", 0x2DuLL);
  *(v147 + 8) = sub_23C4C1230;
  *(v147 + 16) = 0;
  *(v147 + 24) = 3;
  *(v147 + 28) = 0;
  *(v147 + 29) = 1;
  result = sub_23C4C126C(a2, "get_threads_per_simdgroup", 0x19uLL);
  v149 = *result;
  *(v149 + 8) = sub_23C4C1008;
  *(v149 + 16) = 0;
  *(v149 + 24) = 7;
  *(v149 + 28) = 0;
  return result;
}

void sub_23C49DA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, &unk_23C53F34D);
  sub_23C4AF200(a3, __p);
  if ((atomic_load_explicit(&qword_27E1F7328, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F7328))
    {
      qword_27E1F7318 = 0;
      unk_27E1F7320 = 0;
      __cxa_guard_release(&qword_27E1F7328);
    }
  }

  operator new();
}

void sub_23C49DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, &unk_23C53F34D);
  sub_23C4AF200(a3, __p);
  if ((atomic_load_explicit(&qword_27E1F7310, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F7310))
    {
      qword_27E1F7300 = 0;
      *algn_27E1F7308 = 0;
      __cxa_guard_release(&qword_27E1F7310);
    }
  }

  operator new();
}

void sub_23C49DCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, "pds_patchup_compute");
  sub_23C4AF200(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&qword_27E1F72F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F72F8))
    {
      qword_27E1F72E8 = 0;
      unk_27E1F72F0 = 0;
      __cxa_guard_release(&qword_27E1F72F8);
    }
  }

  operator new();
}

void sub_23C49DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C49F8D0(__p, "gpu_gather_compute");
  sub_23C4AF200(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&qword_27E1F72E0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E1F72E0))
    {
      qword_27E1F72D0 = 0;
      *algn_27E1F72D8 = 0;
      __cxa_guard_release(&qword_27E1F72E0);
    }
  }

  operator new();
}

uint64_t sub_23C49E398(llvm::ConstantInt **a1, unsigned int a2, llvm::FixedVectorType *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = &unk_23C53270F + 9 * a2;
  v12 = *v11;
  llvm::FixedVectorType::get();
  v13 = llvm::UndefValue::get();
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v15 = (*(*a1 + 71))(a1, a4, v11[i + 5], v11[i + 1], a5, a6);
      v16 = sub_23C505300(a1, v15, a3);
      v20 = 257;
      v17 = llvm::ConstantInt::get();
      v13 = sub_23C505AA8((a1 + 1), v13, v16, v17, v19);
    }
  }

  return v13;
}

uint64_t *sub_23C49E4C4(llvm::ConstantInt **a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v12 = llvm::ConstantInt::get();
  v13 = &unk_23C53270F + 9 * a2;
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    do
    {
      v21 = 257;
      v16 = llvm::ConstantInt::get();
      v17 = sub_23C5057E8((a1 + 1), a4, v16, v20);
      v18 = (*(*a1 + 72))(a1, v17, v13[v15 + 1], v13[v15 + 5], a5, a6);
      v21 = 257;
      v12 = sub_23C49A98C((a1 + 1), v12, v18, v20);
      ++v15;
    }

    while (v14 != v15);
  }

  return sub_23C505300(a1, v12, a3);
}

uint64_t sub_23C49E64C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  return (*(*a1 + 616))(a1, v5, a3, a2);
}

uint64_t sub_23C49E68C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v7 = 0;
  for (i = 0; i != 4; ++i)
  {
    v20 = 257;
    v9 = llvm::ConstantInt::get();
    v10 = sub_23C5057E8(a1 + 8, a2, v9, v19);
    if (i == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 10;
    }

    v12 = sub_23C5066D8(a1, v10, v11, 0);
    v13 = *(a1 + 192);
    v20 = 257;
    v15 = sub_23C49B1E4(a1 + 8, v12, v13, 0, v19, v14);
    v20 = 257;
    v16 = llvm::ConstantInt::get();
    v17 = sub_23C49A668(a1 + 8, v15, v16, v19);
    v20 = 257;
    result = sub_23C49A98C(a1 + 8, v6, v17, v19);
    v6 = result;
    v7 += 10;
  }

  return result;
}

uint64_t sub_23C49E7B8(uint64_t a1, uint64_t *a2, int a3, unsigned int a4, int a5, int a6)
{
  v10 = sub_23C504E2C(a1, a2, 1);
  v24 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (a1 + 8));
  v26 = *(a1 + 104);
  v11 = llvm::ConstantFP::get();
  v12 = llvm::ConstantFP::get();
  v13 = (*(*a1 + 72))(a1, &v24, v10, v11, v12, 0);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = llvm::ConstantFP::get();
  v23 = 257;
  v27 = sub_23C49EA2C(a1 + 8, v13, v14, v22);
  v15 = *(a1 + 1160);
  if (v15)
  {
    v16 = strlen(*(a1 + 1160));
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_23C49EB10(a1, v15, v16, *(a1 + 192), *(a1 + 160));
  v23 = 257;
  v18 = sub_23C497A7C((a1 + 8), **(*v17 + 16), v17, &v27, 1, v22);
  if (a4 + a3 <= 0x1F && a6)
  {
    v23 = 257;
    v19 = llvm::ConstantInt::get();
    v18 = sub_23C49A8E0(a1 + 8, v18, v19, v22);
  }

  v23 = 257;
  v20 = llvm::ConstantInt::get();
  return sub_23C49A668(a1 + 8, v18, v20, v22);
}

uint64_t sub_23C49EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 18, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    sub_23C497F98(a1, v7, *(a1 + 96));
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C49EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __src = a5;
  v9[0] = v10;
  v9[1] = 0x100000000;
  sub_23C49BA18(v9, &__src, v9);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v6 = v5;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v6;
}

uint64_t sub_23C49EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      sub_23C49B15C(a1, v5, a5);
    }
  }

  return v5;
}

uint64_t sub_23C49EC90(uint64_t a1, llvm::ConstantInt **a2, unsigned int a3, int a4, int a5, int a6)
{
  v34 = 257;
  v12 = llvm::ConstantInt::get();
  v13 = sub_23C49B560(a1 + 8, a2, v12, v33);
  v14 = *(a1 + 184);
  v34 = 257;
  v16 = sub_23C49B1E4(a1 + 8, v13, v14, 0, v33, v15);
  if (a6)
  {
    v34 = 257;
    v17 = llvm::ConstantInt::get();
    v18 = sub_23C49A668(a1 + 8, v16, v17, v33);
    v32[16] = 257;
    v19 = llvm::ConstantInt::get();
    if (*(v18 + 16) > 0x14u || (v19 ? (v20 = *(v19 + 16) > 0x14u) : (v20 = 1), v20))
    {
      v34 = 257;
      v21 = llvm::BinaryOperator::Create();
      sub_23C49B15C((a1 + 8), v21, v32);
    }

    else
    {
      v30 = (*(**(a1 + 80) + 168))(*(a1 + 80), v18, v19, 0);
      v21 = v30;
      if (v30)
      {
        v31 = *(v30 + 16) >= 0x1Cu;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        sub_23C49B15C((a1 + 8), v30, v32);
      }
    }

    if (a5)
    {
      v22 = llvm::ConstantInt::get();
      v21 = sub_23C506630(a1, v21, v22, 38);
    }

    v23 = *(a1 + 160);
    v34 = 257;
    v24 = sub_23C49EF30(a1 + 8, v21, v23, v33);
  }

  else
  {
    if (a4 + a3 <= 0x1F)
    {
      v34 = 257;
      v25 = llvm::ConstantInt::get();
      v16 = sub_23C49A8E0(a1 + 8, v16, v25, v33);
    }

    v26 = *(a1 + 160);
    v34 = 257;
    v24 = sub_23C49EF94(a1 + 8, v16, v26, v33);
  }

  v27 = v24;
  if (a5)
  {
    v28 = llvm::ConstantFP::get();
    v34 = 257;
    return sub_23C49EA2C(a1 + 8, v27, v28, v33);
  }

  return v27;
}

uint64_t sub_23C49EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 44, a2, a3, a4);
}

uint64_t sub_23C49EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 43, a2, a3, a4);
}

llvm::Instruction *sub_23C49EFF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, BOOL a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) == 0x12 && (v7 = *(*a2 + 32), v7 != 1))
  {
    llvm::FixedVectorType::get();
    v8 = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v17 = 257;
        v11 = llvm::ConstantInt::get();
        v12 = sub_23C5057E8(a1 + 8, a2, v11, v16);
        v18 = sub_23C50593C(a1, v12, 2, v13);
        v19 = 0;
        v19 = llvm::ConstantInt::get();
        v17 = 257;
        v14 = sub_23C497A7C((a1 + 8), *(a3 + 24), a3, &v18, 2, v16);
        v17 = 257;
        v15 = llvm::ConstantInt::get();
        v8 = sub_23C505AA8(a1 + 8, v8, v14, v15, v16);
      }
    }
  }

  else
  {
    v18 = sub_23C50593C(a1, a2, 2, a4);
    v19 = llvm::ConstantInt::get();
    v17 = 257;
    return sub_23C497A7C((a1 + 8), *(a3 + 24), a3, &v18, 2, v16);
  }

  return v8;
}

llvm::Instruction *sub_23C49F1B4(uint64_t a1, llvm::UndefValue **a2, uint64_t a3, BOOL a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 2) & 0xFE) != 0x12)
  {
    v7 = sub_23C50593C(a1, a2, 4, a4);
    goto LABEL_8;
  }

  v6 = *(*a2 + 8);
  v7 = sub_23C50593C(a1, a2, 4, a4);
  if (v6 == 1)
  {
LABEL_8:
    v15 = v7;
    v16 = llvm::ConstantInt::get();
    v14 = 257;
    return sub_23C497A7C((a1 + 8), *(a3 + 24), a3, &v15, 2, v13);
  }

  llvm::FixedVectorType::get();
  v8 = llvm::UndefValue::get();
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v15 = v7;
      v16 = 0;
      v16 = llvm::ConstantInt::get();
      v14 = 257;
      v10 = sub_23C497A7C((a1 + 8), *(a3 + 24), a3, &v15, 2, v13);
      v14 = 257;
      v11 = llvm::ConstantInt::get();
      v8 = sub_23C505AA8(a1 + 8, v8, v10, v11, v13);
    }
  }

  return v8;
}

void sub_23C49F34C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = a5 + a2;
  v13 = a6 + a3;
  v14 = a7 + a4;
  sub_23C49F8D0(&v65, &unk_23C53F34D);
  v15 = (*(**(a1 + 792) + 24))(*(a1 + 792), a8);
  v16 = (*(**(a1 + 792) + 16))(*(a1 + 792));
  v17 = v16;
  if (v12 <= v15)
  {
    if (v14 <= 0x10 && v13 <= v16)
    {
      v31 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    std::to_string(&v59, v12);
    v18 = std::string::insert(&v59, 0, " buffers (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v60, "/");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = (*(**(a1 + 792) + 24))(*(a1 + 792), a8);
    std::to_string(&__p, v22);
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

    v25 = std::string::append(&v61, p_p, size);
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v62, ")");
    v28 = v27->__r_.__value_.__r.__words[2];
    v63 = *&v27->__r_.__value_.__l.__data_;
    v64 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63;
    }

    if (v64 >= 0)
    {
      v30 = HIBYTE(v64);
    }

    else
    {
      v30 = *(&v63 + 1);
    }

    std::string::append(&v65, v29, v30);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v13 > v17)
  {
    std::to_string(&v59, v13);
    v32 = std::string::insert(&v59, 0, " textures (");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v60, "/");
    v35 = v34->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = (*(**(a1 + 792) + 16))(*(a1 + 792));
    std::to_string(&__p, v36);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __p.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v61, v37, v38);
    v40 = v39->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v62, ")");
    v42 = v41->__r_.__value_.__r.__words[2];
    v63 = *&v41->__r_.__value_.__l.__data_;
    v64 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v43 = &v63;
    }

    else
    {
      v43 = v63;
    }

    if (v64 >= 0)
    {
      v44 = HIBYTE(v64);
    }

    else
    {
      v44 = *(&v63 + 1);
    }

    std::string::append(&v65, v43, v44);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v14 >= 0x11)
  {
    std::to_string(&v59, v14);
    v45 = std::string::insert(&v59, 0, " samplers (");
    v46 = v45->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v60, "/");
    v48 = v47->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v61, v49, v50);
    v52 = v51->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v62, ")");
    v54 = v53->__r_.__value_.__r.__words[2];
    v63 = *&v53->__r_.__value_.__l.__data_;
    v64 = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v55 = &v63;
    }

    else
    {
      v55 = v63;
    }

    if (v64 >= 0)
    {
      v56 = HIBYTE(v64);
    }

    else
    {
      v56 = *(&v63 + 1);
    }

    std::string::append(&v65, v55, v56);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  v31 = 1;
LABEL_80:
  *a9 = v31;
  v57 = a9 + 8;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(v57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v57 = v65;
  }
}

void *sub_23C49F8D0(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *sub_23C49F988(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_23C496CE8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_23C49FA2C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 > 1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

llvm::Instruction *sub_23C49FA38(uint64_t a1, uint64_t a2, llvm::Value **a3)
{
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  sub_23C497620(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::IntegerType::get();
  v7 = *(a1 + 1376);
  if (v7)
  {
    v8 = strlen(*(a1 + 1376));
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23C49EB10(a1, v7, v8, *(a1 + 144), v6);
  v13 = 257;
  v17 = sub_23C49B1E4(a1 + 8, a3, v6, 1, v12, v10);
  v13 = 257;
  return sub_23C497A7C((a1 + 8), *(v9 + 24), v9, &v17, 1, v12);
}

llvm::Instruction *sub_23C49FB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  sub_23C497620(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = *(a1 + 1368);
  if (v5)
  {
    v6 = strlen(*(a1 + 1368));
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_23C49EB10(a1, v5, v6, *(a1 + 144), *(a1 + 160));
  v10 = 257;
  return sub_23C497A7C((a1 + 8), *(v7 + 24), v7, &v14, 1, v9);
}

llvm::UndefValue **sub_23C49FC1C(void *a1, uint64_t a2, llvm::UndefValue **a3, uint64_t a4)
{
  v33 = *a2;
  v34 = *(a2 + 16);
  if (v34)
  {
    llvm::MetadataTracking::track();
  }

  v35 = *(a2 + 24);
  sub_23C497620(a1, &v33);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a4 + 1))
  {
    v8 = sub_23C505670(a1, a3, 3u, 1);
    v9 = llvm::UndefValue::get();
    v10 = *(*v8 + 32);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v32 = 257;
        v12 = llvm::ConstantInt::get();
        v13 = sub_23C5057E8((a1 + 1), v8, v12, v31);
        v28 = *(a1 + 7);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 1));
        v30 = *(a1 + 26);
        v14 = a1[23];
        v32 = 257;
        v15 = sub_23C49ACF8((a1 + 1), 39, v13, v14, v31);
        v16 = (*(*a1 + 144))(a1, &v28, v15, 0, a1[19]);
        if (v29)
        {
          llvm::MetadataTracking::untrack();
        }

        v32 = 257;
        v17 = llvm::ConstantInt::get();
        v9 = sub_23C505AA8((a1 + 1), v9, v16, v17, v31);
      }
    }

    v25 = *(a1 + 7);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (a1 + 1));
    v27 = *(a1 + 26);
    v32 = 257;
    v18 = llvm::ConstantInt::get();
    v19 = sub_23C5057E8((a1 + 1), a3, v18, v31);
    v20 = (*(*a1 + 88))(a1, &v25, v19, 8, 0, 32);
    if (v26)
    {
      llvm::MetadataTracking::untrack();
    }

    v21 = a1[19];
    v32 = 257;
    v22 = sub_23C49FEB4((a1 + 1), v20, v21, v31);
    return sub_23C5067B4(a1, v9, v22, v23);
  }

  return a3;
}

uint64_t sub_23C49FEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 45, a2, a3, a4);
}

uint64_t sub_23C49FF18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = vdupq_n_s64(a3);
  do
  {
    if (((*(a2 + 32) >> v3) & 1) == 0)
    {
      goto LABEL_23;
    }

    v7 = *(a2 + v4);
    v8 = ((v7 >> 15) * *(a1 + 828)) >> 1;
    v9 = v7 & 0x1F;
    if (v9 > 0x13)
    {
      goto LABEL_14;
    }

    if (((1 << v9) & 0x3E3C0) != 0)
    {
      v10 = vshlq_u32(xmmword_23C5324C0, vdupq_n_s32(v8));
      v11.i64[0] = v10.i32[2];
      v11.i64[1] = v10.i32[3];
      v12 = v11;
      v11.i64[0] = v10.i32[0];
      v11.i64[1] = v10.i32[1];
      v13 = vbicq_s8(xmmword_23C5324C0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v11)), vceqzq_s64(vandq_s8(v6, v12))));
    }

    else
    {
      if (((1 << v9) & 0x41C00) == 0)
      {
        if (v9 == 19)
        {
          if ((a3 & (1 << v8)) != 0)
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }

          v24 = 2 << v8;
          v25 = v23 | 0xE;
        }

        else
        {
LABEL_14:
          if (v9 - 2 >= 4)
          {
            v22 = 0;
            goto LABEL_22;
          }

          if ((a3 & (1 << v8)) != 0)
          {
            v23 = 3;
          }

          else
          {
            v23 = 0;
          }

          v24 = 2 << v8;
          v25 = v23 | 0xC;
        }

        if ((a3 & v24) != 0)
        {
          v22 = v25;
        }

        else
        {
          v22 = v23;
        }

        goto LABEL_22;
      }

      v14 = vdupq_n_s32(v8);
      v15 = vshlq_u32(xmmword_23C5324C0, v14);
      v16.i64[0] = v15.i32[2];
      v16.i64[1] = v15.i32[3];
      v17 = v16;
      v16.i64[0] = v15.i32[0];
      v16.i64[1] = v15.i32[1];
      v18 = vbicq_s8(xmmword_23C5324D0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v17))));
      v19 = vshlq_u32(xmmword_23C5324E0, v14);
      v16.i64[0] = v19.i32[2];
      v16.i64[1] = v19.i32[3];
      v20 = v16;
      v16.i64[0] = v19.i32[0];
      v16.i64[1] = v19.i32[1];
      v13 = vorrq_s8(vbicq_s8(xmmword_23C5324F0, vuzp1q_s32(vceqzq_s64(vandq_s8(v6, v16)), vceqzq_s64(vandq_s8(v6, v20)))), v18);
    }

    v21 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v22 = v21.i32[0] | v21.i32[1];
LABEL_22:
    v5 |= ((-1 << (v7 >> 5)) & (((v22 & ~(-1 << (v7 >> 5))) >> ((v7 >> 5) - 1) << 31) >> 31) & 0xF | v22 & ~(-1 << (v7 >> 5))) << v4;
LABEL_23:
    v4 += 4;
    ++v3;
  }

  while (v4 != 32);
  return v5;
}

void *sub_23C4A00E4@<X0>(void *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 0;
  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 31) = 0;
  v5 = 35;
  if (a2 <= 9)
  {
    if ((a2 - 2) >= 4)
    {
      if ((a2 - 6) >= 4)
      {
        goto LABEL_21;
      }

      v5 = 36;
    }
  }

  else if (a2 < 13)
  {
    v5 = 37;
  }

  else if ((a2 - 13) >= 5)
  {
    if (a2 == 18)
    {
      v4 = result[34];
      *a4 = v4;
      goto LABEL_21;
    }

    if (a2 != 19)
    {
LABEL_21:
      *(a4 + 8) = v4;
LABEL_22:
      *(a4 + 16) = v4;
      switch(a2)
      {
        case 2:
        case 6:
        case 14:
          *(a4 + 33) = 257;
          *(a4 + 36) = xmmword_23C532500;
          goto LABEL_25;
        case 3:
        case 7:
        case 10:
        case 15:
          goto LABEL_23;
        case 4:
        case 8:
        case 11:
          *(a4 + 34) = 1;
          break;
        case 13:
        case 18:
          *(a4 + 33) = 1;
          goto LABEL_26;
        case 16:
          *(a4 + 33) = 257;
          v8 = 1.251;
          if (a3)
          {
            v8 = 1.6689;
          }

          v9 = -0.75294;
          if (a3)
          {
            v9 = -0.5271;
          }

          *(a4 + 36) = v9;
          *(a4 + 40) = 0;
          *(a4 + 44) = v8;
          *(a4 + 48) = 1065353216;
          *(a4 + 52) = 1;
          goto LABEL_27;
        default:
          return result;
      }

      return result;
    }
  }

  else
  {
    v5 = 33;
  }

  v4 = result[v5];
  *a4 = v4;
  if (a2 <= 9)
  {
    if ((a2 - 2) < 2)
    {
      *(a4 + 8) = result[33];
      v4 = result[35];
      goto LABEL_22;
    }

    if ((a2 - 6) < 2)
    {
      *(a4 + 8) = result[34];
      v4 = result[36];
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a2 != 10)
  {
    if (a2 == 19)
    {
      v6 = result[36];
      *(a4 + 8) = v6;
      *(a4 + 16) = v6;
      *(a4 + 24) = 0x200000001;
      return result;
    }

    goto LABEL_21;
  }

  v7 = result[37];
  *(a4 + 8) = result[34];
  *(a4 + 16) = v7;
LABEL_23:
  *(a4 + 33) = 1;
  *(a4 + 36) = xmmword_23C532510;
LABEL_25:
  *(a4 + 52) = 1;
LABEL_26:
  if ((a2 - 14) <= 2)
  {
LABEL_27:
    *(a4 + 32) = 1;
  }

  return result;
}

uint64_t sub_23C4A0310(uint64_t a1, uint64_t a2)
{
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  sub_23C497620(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 1448);
  if (v4)
  {
    v5 = strlen(*(a1 + 1448));
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23C4A0414(a1, v4, v5, *(a1 + 192));
  v11 = 257;
  v7 = sub_23C497A7C((a1 + 8), **(*v6 + 16), v6, 0, 0, v10);
  v8 = llvm::ConstantInt::get();
  v11 = 257;
  return sub_23C497D84((a1 + 8), 32, v7, v8, v10);
}

uint64_t sub_23C4A0414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  return v4;
}

unsigned __int8 *sub_23C4A0498(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = *(a2 + 16);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 24);
  sub_23C497620(a1, &v12);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 176);
  v15[0] = *a3;
  v15[1] = v6;
  llvm::StructType::get();
  v7 = llvm::UndefValue::get();
  v11 = 0;
  v16 = 257;
  v8 = sub_23C49A744((a1 + 8), v7, a3, &v11, 1, v15);
  v9 = llvm::ConstantInt::get();
  v11 = 1;
  v16 = 257;
  return sub_23C49A744((a1 + 8), v8, v9, &v11, 1, v15);
}

uint64_t sub_23C4A05CC(llvm::FixedVectorType **a1, __int128 *a2, int a3, uint64_t a4, unsigned int *a5, llvm::Type *this)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v24 = v11;
  v12 = llvm::TypeSize::operator unsigned long long();
  v13 = *a5;
  v14 = *a5 & 0x1F;
  v15 = *a5 >> 5;
  v22 = this;
  if (v14 <= 0x16)
  {
    if (((1 << v14) & 0x3E3C0) != 0)
    {
      v16 = 2 * v15;
      goto LABEL_11;
    }

    if (((1 << v14) & 0x41C00) != 0)
    {
      v16 = 4 * v15;
      goto LABEL_11;
    }

    if (((1 << v14) & 0x780000) != 0)
    {
      v16 = 4;
      goto LABEL_11;
    }
  }

  if (v14 - 2 >= 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a5 >> 5;
  }

LABEL_11:
  if (v12 == 32)
  {
    v29 = *a2;
    v30 = *(a2 + 2);
    if (v30)
    {
      llvm::MetadataTracking::track();
      v13 = *a5;
    }

    v31 = *(a2 + 6);
    v17 = (*(*a1 + 27))(a1, &v29, (v13 >> 15), a4);
    if (v30)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    llvm::FixedVectorType::get();
    v17 = llvm::UndefValue::get();
    if (v16)
    {
      v18 = 0;
      do
      {
        v26 = *a2;
        v27 = *(a2 + 2);
        if (v27)
        {
          llvm::MetadataTracking::track();
        }

        v28 = *(a2 + 6);
        v19 = (*(*a1 + 27))(a1, &v26, v18 + (*a5 >> 15), a4);
        if (v27)
        {
          llvm::MetadataTracking::untrack();
        }

        v25 = 257;
        v20 = llvm::ConstantInt::get();
        v17 = sub_23C505AA8((a1 + 1), v17, v19, v20, &PrimitiveSizeInBits);
        ++v18;
      }

      while ((v16 + 3) >> 2 != v18);
    }
  }

  v25 = 257;
  return sub_23C49ACF8((a1 + 1), 49, v17, v22, &PrimitiveSizeInBits);
}

unsigned __int8 *sub_23C4A0838(llvm::FixedVectorType **a1, __int128 *a2, int a3, uint64_t a4, unsigned int *a5, llvm::Type *this, uint64_t a7)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v32 = v12;
  v13 = llvm::TypeSize::operator unsigned long long();
  v14 = *a5;
  v15 = *a5 & 0x1F;
  v16 = *a5 >> 5;
  if (v15 <= 0x16)
  {
    if (((1 << v15) & 0x3E3C0) != 0)
    {
      v17 = 2 * v16;
      goto LABEL_11;
    }

    if (((1 << v15) & 0x41C00) != 0)
    {
      v17 = 4 * v16;
      goto LABEL_11;
    }

    if (((1 << v15) & 0x780000) != 0)
    {
      v17 = 4;
      goto LABEL_11;
    }
  }

  if (v15 - 2 >= 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a5 >> 5;
  }

LABEL_11:
  if (v13 == 32)
  {
    v34 = *a2;
    v35 = *(a2 + 2);
    if (v35)
    {
      llvm::MetadataTracking::track();
      v14 = *a5;
    }

    v36 = *(a2 + 6);
    v18 = (v14 >> 15);
    v19 = a1[24];
    v33 = 257;
    v20 = sub_23C49ACF8((a1 + 1), 49, a7, v19, &PrimitiveSizeInBits);
    result = (*(*a1 + 26))(a1, &v34, v18, v20, a4);
    if (v35)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v22 = llvm::FixedVectorType::get();
    v33 = 257;
    result = sub_23C49ACF8((a1 + 1), 49, a7, v22, &PrimitiveSizeInBits);
    if (v17)
    {
      v23 = result;
      v24 = 0;
      v25 = (v17 + 3) >> 2;
      do
      {
        v33 = 257;
        v26 = llvm::ConstantInt::get();
        v27 = sub_23C5057E8((a1 + 1), v23, v26, &PrimitiveSizeInBits);
        v28 = *a2;
        v29 = *(a2 + 2);
        if (v29)
        {
          llvm::MetadataTracking::track();
        }

        v30 = *(a2 + 6);
        result = (*(*a1 + 26))(a1, &v28, v24 + (*a5 >> 15), v27, a4);
        if (v29)
        {
          result = llvm::MetadataTracking::untrack();
        }

        ++v24;
      }

      while (v25 != v24);
    }
  }

  return result;
}

uint64_t sub_23C4A0AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  sub_23C497620(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantFP::get();
  v17 = 257;
  v7 = sub_23C49EA2C(a1 + 8, a3, v6, v16);
  v8 = llvm::ConstantFP::get();
  v15 = 257;
  v9 = sub_23C4A0BD4(a1 + 8, v7, v8, v14);
  v10 = *(a1 + 288);
  v17 = 257;
  v11 = sub_23C49B2C8(a1 + 8, v9, v10, v16);
  v12 = llvm::ConstantInt::get();
  v15 = 257;
  return sub_23C49A668(a1 + 8, v11, v12, v14);
}

uint64_t sub_23C4A0BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 14, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    sub_23C497F98(a1, v7, *(a1 + 96));
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C4A0CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  sub_23C497620(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::ConstantInt::get();
  v30 = 257;
  v7 = sub_23C49B560(a1 + 8, a3, v6, v29);
  v8 = *(a1 + 264);
  v30 = 257;
  v9 = sub_23C49EF94(a1 + 8, v7, v8, v29);
  v10 = llvm::ConstantFP::get();
  v25 = 257;
  v11 = sub_23C4A0EC4(a1 + 8, v9, v10, v24);
  v12 = llvm::ConstantFP::get();
  v30 = 257;
  v13 = sub_23C49EA2C(a1 + 8, v11, v12, v29);
  v21 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (a1 + 8));
  v23 = *(a1 + 104);
  v30 = 257;
  v14 = llvm::ConstantInt::get();
  v15 = sub_23C5057E8(a1 + 8, v13, v14, v29);
  v16 = llvm::ConstantFP::get();
  v17 = llvm::ConstantFP::get();
  v18 = (*(*a1 + 72))(a1, &v21, v15, v16, v17, 0);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v30 = 257;
  v19 = llvm::ConstantInt::get();
  return sub_23C505AA8(a1 + 8, v13, v18, v19, v29);
}

uint64_t sub_23C4A0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 16, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    sub_23C497F98(a1, v7, *(a1 + 96));
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C4A0FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  sub_23C497620(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  result = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        return (*(*a1 + 624))(a1, a5, a4);
      }

      else if (a3 == 8)
      {
        return (*(*a1 + 640))(a1, a5, a4);
      }
    }

    else if (a3 == 5)
    {
      return (*(*a1 + 592))(a1, a5, a4, 4, a6, a7);
    }

    else
    {
      v15 = (*(*a1 + 592))(a1, a5, a1[19], 4, a6, a7);
      v16 = a1[36];
      v18 = 257;
      return sub_23C49B2C8((a1 + 1), v15, v16, v17);
    }
  }

  else if (a3 >= 4)
  {
    if (a3 == 4)
    {
      return (*(*a1 + 592))(a1, a5, a4, 3, a6, a7);
    }
  }

  else
  {
    return (*(*a1 + 616))(a1, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_23C4A1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  result = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        return (*(*a1 + 632))(a1, a5);
      }

      else if (a3 == 8)
      {
        return (*(*a1 + 648))(a1, a5);
      }
    }

    else if (a3 == 5)
    {
      return (*(*a1 + 600))(a1, a5, a6, a7);
    }

    else
    {
      return (*(*a1 + 584))(a1, a5);
    }
  }

  else if (a3 < 4)
  {
    return (*(*a1 + 608))(a1, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_23C4A1428(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  sub_23C497620(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 == 16)
  {
    v15 = 149;
    if (a5)
    {
      v15 = 147;
    }

    v16 = a1[v15];
    if (v16)
    {
      v17 = strlen(a1[v15]);
    }

    else
    {
      v17 = 0;
    }

    v21 = sub_23C49B938(a1, v16, v17, a1[20], a1[29], a1[24]);
    v20 = (*(*a1 + 560))(a1, a3, v21);
  }

  else
  {
    if (a4 != 8)
    {
      return 0;
    }

    v12 = 150;
    if (a5)
    {
      v12 = 148;
    }

    v13 = a1[v12];
    if (v13)
    {
      v14 = strlen(a1[v12]);
    }

    else
    {
      v14 = 0;
    }

    v19 = sub_23C49B938(a1, v13, v14, a1[20], a1[35], a1[24]);
    v20 = (*(*a1 + 552))(a1, a3, v19);
  }

  v18 = v20;
  if (a6 != 32)
  {
    v22 = a1[19];
    v25 = 257;
    return sub_23C49FEB4((a1 + 1), v20, v22, v24);
  }

  return v18;
}

uint64_t sub_23C4A161C(uint64_t a1, uint64_t a2, llvm::UndefValue **a3, llvm::Constant *a4, llvm::Constant *a5, char a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  sub_23C497620(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v19 = sub_23C4A182C;
  v20 = &unk_278BBF060;
  v21 = a1;
  v22 = a6;
  if ((*(*a3 + 2) & 0xFE) != 0x12)
  {
    return sub_23C4A182C(v18, a3, a4, a5);
  }

  v12 = llvm::UndefValue::get();
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  sub_23C505D44(a1, a3, v30);
  sub_23C505D44(a1, a4, v29);
  sub_23C505D44(a1, a5, v28);
  v13 = *(*a3 + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = v19(v18, *(v30 + i), *(v29 + i), *(v28 + i));
      v27 = 257;
      v16 = llvm::ConstantInt::get();
      v12 = sub_23C505AA8(a1 + 8, v12, v15, v16, v26);
    }
  }

  return v12;
}

uint64_t sub_23C4A182C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  if (*(a4 + 16) == 17)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (a3 && *(a3 + 16) == 17 && ((v10 = *(a3 + 32), llvm::APFloatBase::PPCDoubleDouble(a1) == v10) ? (v11 = *(a3 + 40)) : (v11 = a3 + 24), (*(v11 + 28) & 7) == 3 ? (v12 = v9 == 0) : (v12 = 1), !v12 && (v28 = 0, v13 = llvm::detail::IEEEFloat::IEEEFloat(v29, 1.0), v14 = llvm::APFloatBase::IEEEdouble(v13), MEMORY[0x23EED4770](v30, v29, v14), llvm::detail::IEEEFloat::~IEEEFloat(v29), llvm::APFloat::convert(), isExactlyValue = llvm::ConstantFP::isExactlyValue(), sub_23C4A1A98(v30), isExactlyValue)))
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

llvm::detail::IEEEFloat *sub_23C4A1A98(llvm::detail::IEEEFloat *a1)
{
  v2 = *a1;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
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
          v6 = (sub_23C4A1A98(v6) - 32);
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x23EED50A0](v4, 0x1072C801E5F02E8);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
  }

  return a1;
}

uint64_t sub_23C4A1B2C(uint64_t a1, __int128 *a2, llvm::UndefValue **a3, llvm::Instruction *a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = sub_23C4A1C80(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = sub_23C4A1C80(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = sub_23C4A1EE4(a1, &v12, v9, a4, 2);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

llvm::Instruction *sub_23C4A1C80(uint64_t a1, uint64_t a2, llvm::UndefValue **a3, llvm::Constant *a4)
{
  v28[5] = *MEMORY[0x277D85DE8];
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  sub_23C497620(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  sub_23C49F8D0(&v20, *(a1 + 1704));
  v8 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 2);
  }

  if (v8 == *(a1 + 152))
  {
    v9 = ".f16";
  }

  else
  {
    v9 = ".f32";
  }

  std::string::append(&v20, v9);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v20;
  }

  else
  {
    v10 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v12 = sub_23C49B938(a1, v10, size, v8, v8, v8);
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v13 = llvm::UndefValue::get();
    memset(v28, 0, 32);
    memset(v27, 0, sizeof(v27));
    sub_23C505D44(a1, a3, v28);
    sub_23C505D44(a1, a4, v27);
    v14 = *(*a3 + 8);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = v27[i];
        v26[0] = v28[i];
        v26[1] = v16;
        v25 = 257;
        v17 = sub_23C497A7C((a1 + 8), *(v12 + 24), v12, v26, 2, v24);
        v25 = 257;
        v18 = llvm::ConstantInt::get();
        v13 = sub_23C505AA8(a1 + 8, v13, v17, v18, v24);
      }
    }
  }

  else
  {
    v28[0] = a3;
    v28[1] = a4;
    v25 = 257;
    v13 = sub_23C497A7C((a1 + 8), *(v12 + 24), v12, v28, 2, v24);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v13;
}

uint64_t sub_23C4A1EE4(uint64_t a1, uint64_t a2, llvm::Value *a3, llvm::FixedVectorType **a4, uint64_t a5)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  sub_23C497620(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*a3 != *a4)
  {
    sub_23C5060BC(a1, *(*a3 + 32), a4, v9);
  }

  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4A1FE0(uint64_t a1, __int128 *a2, llvm::UndefValue **a3, llvm::UndefValue **a4, int a5)
{
  if (a5)
  {
    v18 = *a2;
    v19 = *(a2 + 2);
    if (v19)
    {
      llvm::MetadataTracking::track();
    }

    v20 = *(a2 + 6);
    v9 = sub_23C4A1C80(a1, &v18, a3, a4);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v15 = *a2;
    v16 = *(a2 + 2);
    if (v16)
    {
      llvm::MetadataTracking::track();
    }

    v17 = *(a2 + 6);
    a4 = sub_23C4A1C80(a1, &v15, a4, a3);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = a3;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = sub_23C4A1EE4(a1, &v12, v9, a4, 4);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4A2134(uint64_t a1, uint64_t a2, llvm::Constant *a3, char a4)
{
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  sub_23C497620(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1174405120;
  v10[2] = sub_23C4A225C;
  v10[3] = &unk_284F12978;
  v10[4] = a1;
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  v14 = a4;
  v8 = sub_23C5063B8(a1, a3, v10);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Instruction *sub_23C4A225C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == 1 && *(v4 + 1712) != 1)
  {
    v5 = 1104;
  }

  else
  {
    v5 = 1096;
  }

  v6 = sub_23C4A2368(v4, &v8, a2, *(v4 + v5));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4A2310(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = a1 + 56;
  if (v2)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t sub_23C4A2320(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  result = a1 + 56;
  if (v4)
  {
    result = llvm::MetadataTracking::track();
  }

  *(a1 + 64) = *(a2 + 64);
  return result;
}

llvm::Instruction *sub_23C4A2368(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v30 = a3;
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  sub_23C497620(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a3;
  sub_23C49F8D0(&v26, a4);
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

  if (v15 == *(a1 + 152))
  {
    v16 = "f16";
  }

  else
  {
    v16 = "f32";
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

  v19 = sub_23C49EB10(a1, v17, size, v8, v8);
  v24 = 257;
  v20 = sub_23C497A7C((a1 + 8), *(v19 + 24), v19, &v30, 1, __p);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t sub_23C4A2554(uint64_t a1)
{
  *a1 = &unk_284F128D8;
  *(a1 + 16) = "e-p:64:64:64-f32:32:32-i64:64:64-i32:32:32-i16:16:16-v32:32:32-n32-S64";
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  if (qword_27E1F6728 != -1)
  {
    dispatch_once(&qword_27E1F6728, &unk_284F12958);
  }

  *(a1 + 44) = 60;
  return a1;
}

uint64_t *sub_23C4A25DC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  *result = a2;
  if (v4)
  {
    if (*(v4 + 12))
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = 0;
        v7 = 8 * v5;
        do
        {
          v8 = *(*v4 + v6);
          if (v8 != -8 && v8 != 0)
          {
            llvm::deallocate_buffer(v8, (*v8 + 33));
          }

          v6 += 8;
        }

        while (v7 != v6);
      }
    }

    free(*v4);

    JUMPOUT(0x23EED50C0);
  }

  return result;
}

void *sub_23C4A2690(char *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_23C496CF8();
  v2 = __p;
  sub_23C49F8D0(__p, a1);
  v3 = qword_27E1F6700;
  v4 = HIBYTE(v27);
  if (!qword_27E1F6700)
  {
    goto LABEL_39;
  }

  if (v27 >= 0)
  {
    v5 = HIBYTE(v27);
  }

  else
  {
    v5 = *&__p[8];
  }

  if (v27 < 0)
  {
    v2 = *__p;
  }

  v6 = &qword_27E1F6700;
  do
  {
    v7 = *(v3 + 55);
    if (v7 >= 0)
    {
      v8 = *(v3 + 55);
    }

    else
    {
      v8 = *(v3 + 40);
    }

    if (v7 >= 0)
    {
      v9 = (v3 + 32);
    }

    else
    {
      v9 = *(v3 + 32);
    }

    if (v5 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v11 = memcmp(v9, v2, v10);
    v12 = v8 < v5;
    if (v11)
    {
      v12 = v11 < 0;
    }

    v13 = !v12;
    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v6 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v6 == &qword_27E1F6700)
  {
    goto LABEL_39;
  }

  v15 = *(v6 + 55);
  if (v15 >= 0)
  {
    v16 = *(v6 + 55);
  }

  else
  {
    v16 = v6[5];
  }

  if (v15 >= 0)
  {
    v17 = v6 + 4;
  }

  else
  {
    v17 = v6[4];
  }

  if (v16 >= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v16;
  }

  v19 = memcmp(v2, v17, v18);
  v20 = v5 < v16;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v20)
  {
LABEL_39:
    v6 = &qword_27E1F6700;
  }

  if (v4 < 0)
  {
    operator delete(*__p);
  }

  if (v6 == &qword_27E1F6700)
  {
    return 0;
  }

  v21 = v6 + 7;
  if (*(v6 + 79) < 0)
  {
    v21 = *v21;
  }

  v22 = sub_23C496E18();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(v6 + 55);
    if (v23 < 0)
    {
      v23 = v6[5];
    }

    v24 = *(v6 + 79);
    if (v24 < 0)
    {
      v24 = v6[8];
    }

    *__p = 136316162;
    *&__p[4] = "static const char *AGCEnv::getValue(const char *)";
    *&__p[12] = 2080;
    *&__p[14] = a1;
    v27 = 2048;
    v28 = v23;
    v29 = 2080;
    v30 = v21;
    v31 = 2048;
    v32 = v24;
    _os_log_debug_impl(&dword_23C496000, v22, OS_LOG_TYPE_DEBUG, "%s: %s[%lu] = %s[%lu]\n", __p, 0x34u);
  }

  return v21;
}

llvm::ConstantFP **sub_23C4A28C8(uint64_t a1, uint64_t a2, llvm::ConstantFP **a3, uint64_t a4, uint64_t a5)
{
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  sub_23C497620(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a4 + 16) == 1 && (*a3 == *(a1 + 272) || *a3 == *(a1 + 264)))
  {
    if (*a4 == *(a4 + 4) && *(a4 + 8) == *(a4 + 12))
    {
      v10 = llvm::ConstantFP::get();
      v11 = llvm::ConstantFP::get();
      v29 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (a1 + 8));
      v31 = *(a1 + 104);
      a3 = (*(*a1 + 72))(a1, &v29, a3, v10, v11, a5);
      if (v30)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v12 = sub_23C505670(a1, a3, 3u, 1);
      v36 = 257;
      v13 = llvm::ConstantInt::get();
      v14 = sub_23C5057E8(a1 + 8, a3, v13, v35);
      v15 = llvm::ConstantFP::get();
      v16 = llvm::ConstantFP::get();
      v17 = llvm::ConstantFP::get();
      v18 = llvm::ConstantFP::get();
      v26 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v27, (a1 + 8));
      v28 = *(a1 + 104);
      v19 = (*(*a1 + 72))(a1, &v26, v12, v15, v16, a5);
      if (v27)
      {
        llvm::MetadataTracking::untrack();
      }

      v23 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v24, (a1 + 8));
      v25 = *(a1 + 104);
      v21 = (*(*a1 + 72))(a1, &v23, v14, v17, v18, a5);
      if (v24)
      {
        llvm::MetadataTracking::untrack();
      }

      return sub_23C5067B4(a1, v19, v21, v20);
    }
  }

  return a3;
}

uint64_t sub_23C4A2BD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v7 = *(v4 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (v4 + 8));
  v9 = *(v4 + 104);
  v5 = (*(*v4 + 136))(v4, &v7, a2, 0, *(*(*(a1 + 32) + 8) + 24));
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

int32x2_t *sub_23C4A2C80(int8x8_t *a1, unint64_t a2, uint64_t a3)
{
  v35[32] = *MEMORY[0x277D85DE8];
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = a1[7];
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*&a1[6] + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (i[2] == a2)
          {
            return (i + 3);
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v9)
            {
              v14 %= *&v9;
            }
          }

          else
          {
            v14 &= *&v9 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v29 = 1;
  v27 = 3;
  v28 = 0;
  v31 = 0;
  v30 = 0u;
  v32 = 1;
  v33 = v35;
  v34 = 0x800000000;
  if (!*&v9)
  {
    goto LABEL_34;
  }

  v15 = vcnt_s8(v9);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (v8 >= *&v9)
    {
      v16 = v8 % *&v9;
    }
  }

  else
  {
    v16 = v8 & (*&v9 - 1);
  }

  v17 = *(*&a1[6] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_34:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (*&v19 == v8)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (*&v19 >= *&v9)
      {
        *&v19 %= *&v9;
      }
    }

    else
    {
      *&v19 &= *&v9 - 1;
    }

    if (*&v19 != v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  if (*&v18[2] != a2)
  {
    goto LABEL_33;
  }

  v23 = v18 + 3;
  sub_23C4A4068(&v30, &v27, 0);
  sub_23C4A4158(v24, a1, a2, a3, 0, &v18[3], &v30);
  sub_23C4A5714(&v30);
  v20 = v30;
  v18[10].i32[0] = HIDWORD(v29);
  v18[10].i32[1] = v20;
  v18[11] = vrev64_s32(*(&v30 + 4));
  v18[12] = a3;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v21 = v28;
  v28 = 0;
  if (v21)
  {
    MEMORY[0x23EED50C0](v21, 0x1000C4052888210);
  }

  return v23;
}

void sub_23C4A328C(char *a1, char *a2)
{
  if (a2 != a1)
  {
    v3 = a2 - 40;
    do
    {
      v4 = *(v3 - 2);
      if (v3 != v4)
      {
        free(v4);
      }

      v5 = *(v3 - 8);
      if (v3 - 48 != v5)
      {
        free(v5);
      }

      v6 = v3 - 64;
      v3 -= 104;
    }

    while (v6 != a1);
  }
}

uint64_t sub_23C4A32F0(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 > a2 || v5 + 104 * v4 <= a2)
    {
      sub_23C4A3F54(a1, v4 + 1);
    }

    sub_23C4A3F54(a1, v4 + 1);
  }

  v6 = v5 + 104 * *(a1 + 8);
  *v6 = v6 + 16;
  *(v6 + 8) = 0x400000000;
  if (*(a2 + 2))
  {
    sub_23C4A3E4C(v6, a2);
  }

  *(v6 + 48) = v6 + 64;
  result = v6 + 48;
  *(v6 + 56) = 0x400000000;
  if (*(a2 + 14))
  {
    result = sub_23C4A3E4C(result, (a2 + 48));
  }

  *(v6 + 96) = *(a2 + 24);
  ++*(a1 + 8);
  return result;
}

uint64_t sub_23C4A33E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  sub_23C4A3B74(a1, a2, a3);
  sub_23C4A72DC(a1 + 1000, *(*(a1 + 152) + 104 * *(a1 + 160) - 96));
  sub_23C4A3B0C(a1);
  v24 = v26;
  v25 = 0x400000000;
  if (*(a1 + 64))
  {
    sub_23C4A3D80(&v24, a1 + 56);
    v27 = &v29;
    v28 = 0x400000000;
    v31 = v33;
    v32 = 0x400000000;
    if (v25)
    {
      sub_23C4A3D80(&v31, &v24);
    }
  }

  else
  {
    v27 = &v29;
    v28 = 0x400000000;
    v31 = v33;
    v32 = 0x400000000;
  }

  LODWORD(v34) = 0;
  sub_23C4A32F0(a1 + 152, &v27);
  if (v31 != v33)
  {
    free(v31);
  }

  if (v27 != &v29)
  {
    free(v27);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 152) + 104 * *(a1 + 160);
  *(v5 - 8) = *(v5 - 96);
  sub_23C49B500(v5 - 104, 0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(a2 + 8);
    v11 = 8 * v8;
    do
    {
      v6 = *v10;
      if (*v10)
      {
        v9 |= sub_23C4A3760(a1, v6);
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  LODWORD(v27) = 7;
  v28 = v30;
  v29 = 0x400000000;
  v34 = v36;
  v35 = 0x800000000;
  v37 = v39;
  v38 = 0x400000000;
  v39[4] = 0;
  v40 = 0;
  v41 = 0;
  if (v9)
  {
    sub_23C4A3AAC(a1);
    v41 = *(a1 + 24);
    sub_23C4A3888(a1, &v27);
  }

  sub_23C4A3B74(a1, v6, v7);
  sub_23C4A3D80(a1 + 56, *(a1 + 152) + 104 * *(a1 + 160) - 56);
  v12 = llvm::StructType::get();
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = *(a1 + 56) + 8 * v13;
    do
    {
      v15 = *(v14 - 8);
      v14 -= 8;
      v12 = llvm::ArrayType::get(v12, *(v15 + 16));
    }

    while (v14 != *(a1 + 56));
    v16 = *(a1 + 64);
    if (v16)
    {
      v17 = *(a1 + 1056) - v16;
      v18 = *(a1 + 1008) - v16;
      *(a1 + 1056) = v17;
      *(a1 + 1008) = v18;
    }
  }

  --*(a1 + 1008);
  v19 = *(a1 + 160) - 1;
  *(a1 + 160) = v19;
  v20 = *(a1 + 152) + 104 * v19;
  v21 = *(v20 + 48);
  if (v21 != (v20 + 64))
  {
    free(v21);
  }

  if (*v20 != v20 + 16)
  {
    free(*v20);
  }

  sub_23C49B500(*(a1 + 152) + 104 * *(a1 + 160) - 104, v12);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v22 = *(a1 + 152) + 104 * *(a1 + 160);
  *(v22 - 8) = *(v22 - 96);
  sub_23C49B500(v22 - 104, 0);
  if (v37 != v39)
  {
    free(v37);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v9 & 1;
}

uint64_t sub_23C4A3760(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v3 = *a2;
    if (*a2)
    {
      break;
    }

    a2 = *(a2 + 8);
  }

  if (v3 <= 2)
  {

    return sub_23C4A33E0(a1, a2);
  }

  else
  {
    result = 0;
    if (v3 > 4)
    {
      switch(v3)
      {
        case 5:
          v5 = (a1 + 40);
          break;
        case 6:
          v5 = (a1 + 44);
          break;
        case 7:
          sub_23C4A3888(a1, a2);
          return 0;
        default:
          return result;
      }

LABEL_17:
      sub_23C4A3988(a1, a2, v5);
      return 1;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

      v5 = (a1 + 48);
      goto LABEL_17;
    }

    v6 = *(a1 + 64);
    if (v6 >= *(a1 + 68))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 56) + 8 * v6) = a2;
    ++*(a1 + 64);
    result = sub_23C4A3760(a1, *(a2 + 8));
    --*(a1 + 64);
  }

  return result;
}

uint64_t sub_23C4A3888(uint64_t a1, uint64_t a2)
{
  sub_23C4A72DC(a1 + 1000, *(*(a1 + 152) + 104 * *(a1 + 160) - 96));
  sub_23C4A72DC(a1 + 1000, *(a1 + 112));
  sub_23C4A3B0C(a1);
  sub_23C4A3D80(a2 + 176, a1 + 1048);
  v4 = *(a1 + 1008);
  if (v4)
  {
    v5 = *(a1 + 1000);
    v6 = 4 * v4;
    do
    {
      v5 += 4;
      v7 = llvm::ConstantInt::get();
      sub_23C49B500(a2 + 96, v7);
      v6 -= 4;
    }

    while (v6);
  }

  v8 = *(a2 + 240);
  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = *(a1 + 56) + 8 * v9;
    do
    {
      v11 = *(v10 - 8);
      v10 -= 8;
      v8 = llvm::ArrayType::get(v8, *(v11 + 16));
    }

    while (v10 != *(a1 + 56));
  }

  result = sub_23C49B500(a1 + 104, v8);
  v13 = *(a1 + 64);
  v14 = *(a1 + 1008);
  if (v13)
  {
    v14 -= v13;
    *(a1 + 1056) -= v13;
  }

  *(a1 + 1008) = v14 - 2;
  return result;
}

uint64_t sub_23C4A3988(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C4A3AAC(a1);
  *(a2 + 92) = *a3;
  sub_23C4A3D80(a2 + 176, a1 + 1048);
  v6 = *(a1 + 1008);
  if (v6)
  {
    v7 = *(a1 + 1000);
    v8 = 4 * v6;
    do
    {
      v7 += 4;
      v9 = llvm::ConstantInt::get();
      sub_23C49B500(a2 + 96, v9);
      v8 -= 4;
    }

    while (v8);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = 8 * v10;
    v13 = 1;
    do
    {
      v14 = *v11++;
      v13 *= *(v14 + 16);
      v12 -= 8;
    }

    while (v12);
  }

  else
  {
    v13 = 1;
  }

  v15 = llvm::ConstantInt::get();
  sub_23C49B500(a2 + 96, v15);
  v16 = llvm::ConstantInt::get();
  sub_23C49B500(a2 + 96, v16);
  v17 = llvm::ConstantInt::get();
  result = sub_23C49B500(a2 + 96, v17);
  *a3 += v13;
  return result;
}

uint64_t sub_23C4A3AAC(uint64_t result)
{
  if (*(result + 112))
  {
    v1 = result;
    v2 = *(result + 152) + 104 * *(result + 160) - 104;
    v3 = llvm::StructType::get();
    result = sub_23C49B500(v2, v3);
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t sub_23C4A3B0C(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 56);
    v4 = 8 * v1;
    do
    {
      v5 = *v3++;
      sub_23C49B500(v2 + 1048, *(v5 + 24) | (*(v2 + 1008) << 32));
      result = sub_23C4A72DC(v2 + 1000, 0);
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_23C4A3B74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 52);
  v6 = *(a1 + 53);
  v7 = llvm::ArrayType::get(v4, *(*(a1 + 8) + 1608));
  v8 = llvm::ArrayType::get(v7, *(a1 + 40));
  v9 = llvm::ArrayType::get(*(a1 + 32), *(*(a1 + 8) + 1612));
  v10 = llvm::ArrayType::get(v9, *(a1 + 44));
  v11 = llvm::ArrayType::get(*(a1 + 24), *(*(a1 + 8) + 1680));
  v12 = *(a1 + 32);
  llvm::ArrayType::get(v12, 0);
  v13 = *(a1 + 48);
  if (v13)
  {
    llvm::ArrayType::get(v4, v13);
  }

  if (*(a1 + 40))
  {
    if (v5)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    llvm::ArrayType::get(v8, v14);
  }

  if (*(a1 + 44))
  {
    if (v6)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    llvm::ArrayType::get(v10, v15);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    llvm::ArrayType::get(v11, v16);
    v17 = *(a1 + 40);
    if (v17)
    {
      llvm::ArrayType::get(v12, v17);
    }
  }

  v18 = *(a1 + 44);
  if (v18)
  {
    llvm::ArrayType::get(v12, v18);
  }

  if (*(a1 + 48) || *(a1 + 40))
  {
    v19 = *(a1 + 152) + 104 * *(a1 + 160) - 104;
  }

  else
  {
    v19 = *(a1 + 152) + 104 * *(a1 + 160) - 104;
    if (!*(a1 + 44))
    {
      v20 = llvm::StructType::get();
      goto LABEL_22;
    }
  }

  v20 = llvm::StructType::get();
LABEL_22:
  *(*v19 + 8 * *(v19 + 96)) = v20;
  return sub_23C4A3AAC(a1);
}

uint64_t sub_23C4A3D80(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t sub_23C4A3E4C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 8 * v7);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          memmove(*a1, v4, 8 * v8);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 8 * v8), (*a2 + 8 * v8), 8 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

__n128 sub_23C4A4068(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  v4 = a1 + 32;
  v5 = v6;
  v7 = *(v4 - 16);
  *v13 = a2;
  v13[8] = a3;
  *&v13[12] = 0;
  *&v13[20] = 0;
  *&v13[24] = v7;
  v8 = *(v4 + 8);
  if (v8 >= *(v4 + 12))
  {
    if (v5 > v13 || v5 + 32 * v8 <= v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (v5 + 32 * *(a1 + 40));
  result = *v13;
  v11 = *&v13[16];
  *v9 = *v13;
  v9[1] = v11;
  ++*(a1 + 40);
  LODWORD(v9) = *(a1 + 24) * *(a2 + 16);
  v12 = *(a1 + 20) + a3;
  *(a1 + 20) = v12 + 1;
  *(a1 + 24) = v9;
  *(a2 + 24) = v12;
  return result;
}

void sub_23C4A4158(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int32x2_t *a7)
{
  v12 = a1;
  *&v113[4] = *MEMORY[0x277D85DE8];
  *a1 = 1;
  *(a1 + 1) = 0;
  v13 = (a1 + 8);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::string::push_back((a1 + 8), 123);
  v14 = *(a4 + 12);
  v15 = v112;
  v110 = v112;
  v111 = 0x400000000;
  if (v14 >= 5)
  {
    LODWORD(v111) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    v16 = 0;
    v17 = vdupq_n_s64(v14 - 1);
    v18 = v113;
    do
    {
      v19 = vdupq_n_s64(v16);
      v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_23C5324B0)));
      if (vuzp1_s16(v20, *v17.i8).u8[0])
      {
        *(v18 - 3) = 0;
      }

      if (vuzp1_s16(v20, *&v17).i8[2])
      {
        *(v18 - 2) = 0;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_23C532520)))).i32[1])
      {
        *(v18 - 1) = 0;
        *v18 = 0;
      }

      v16 += 4;
      v18 += 4;
    }

    while (((v14 + 3) & 0xC) != v16);
  }

  LODWORD(v111) = v14;
  v21 = *&a7[4] + 32 * a7[5].u32[0];
  if ((*(v21 - 16) & 1) == 0)
  {
    *(v21 - 16) = 1;
    *(v21 - 20) = a5;
  }

  a7[2] = vadd_s32(a7[2], 0x100000001);
  v22 = *(a6 + 16);
  v99 = v12;
  if (v22 != v14)
  {
    if (v22 <= v14)
    {
      if (*(a6 + 20) < v14)
      {
        v109[0] = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      if (v22 != v14)
      {
        bzero((*(a6 + 8) + 8 * v22), 8 * v14 - 8 * v22);
      }
    }

    else
    {
      v23 = 8 * v14 - 8 * v22;
      v24 = (*(a6 + 8) + 8 * v22 - 8);
      do
      {
        v25 = *v24;
        *v24 = 0;
        if (v25)
        {
          MEMORY[0x23EED50C0](v25, 0x1000C4052888210);
        }

        --v24;
        v23 += 8;
      }

      while (v23);
    }

    *(a6 + 16) = v14;
    v12 = v99;
  }

  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      llvm::Type::getInt32Ty(*(a2 + 8), v15);
      v109[0] = llvm::ConstantInt::get();
      v109[1] = llvm::ConstantInt::get();
      v110[i] = llvm::DataLayout::getIndexedOffsetInType();
    }
  }

  v97 = a4;
  v101 = *(a3 + 8);
  if (v101)
  {
    v27 = 0;
    v96 = a6;
    do
    {
      v108 = 0;
      v106 = -1;
      v107 = 0;
      if (sub_23C4A57A0(*(a3 - 8 * *(a3 + 8) + 8 * v27), "air.struct_type_info"))
      {
        v28 = *(a3 - 8 * *(a3 + 8) + 8 * (v27 + 1));
        if (v28 && ((*v28 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v28)) == 0)
        {
          v28 = 0;
        }

        v51 = v28 == 0;
        v29 = *v12;
        if (v51)
        {
          v29 = 0;
        }

        *v12 = v29;
        v27 += 2;
      }

      LODWORD(v109[0]) = v27;
      *v12 &= sub_23C506AF0(0, a3, v109, &v108 + 1);
      LODWORD(v109[0]) = v27 + 1;
      *v12 &= sub_23C506AF0(0, a3, v109, &v108);
      LODWORD(v109[0]) = v27 + 2;
      v30 = sub_23C506AF0(0, a3, v109, &v107);
      v31 = a3 - 8 * *(a3 + 8);
      v32 = *(v31 + 8 * (v27 + 3));
      if (v32)
      {
        if (*v32)
        {
          v33 = 0;
        }

        else
        {
          v33 = *(v31 + 8 * (v27 + 3));
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = v30 & *v12;
      if (!v33)
      {
        v34 = 0;
      }

      v35 = *(v31 + 8 * (v27 + 4));
      if (v35)
      {
        if (*v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = v35;
        }
      }

      else
      {
        v36 = 0;
      }

      if (!v36)
      {
        v34 = 0;
      }

      *v12 = v34;
      llvm::MDString::getString(v33);
      llvm::MDString::getString(v36);
      v37 = v111;
      if (v111)
      {
        v38 = v110;
        do
        {
          v39 = v37 >> 1;
          v40 = &v38[4 * (v37 >> 1)];
          v42 = *v40;
          v41 = v40 + 1;
          v37 += ~(v37 >> 1);
          if (v42 < HIDWORD(v108))
          {
            v38 = v41;
          }

          else
          {
            v37 = v39;
          }
        }

        while (v37);
      }

      else
      {
        v38 = v110;
      }

      v43 = (v38 - v110) >> 2;
      v44 = (*(a6 + 8) + 8 * v43);
      v45 = *(*(v97 + 16) + 8 * v43);
      if (*(v45 + 8) == 17)
      {
        operator new();
      }

      v98 = (v45 + 8);
      v27 += 5;
      while (v27 < v101)
      {
        v46 = *(a3 - 8 * *(a3 + 8) + 8 * v27);
        if (sub_23C4A57A0(v46, "air.render_target"))
        {
          goto LABEL_68;
        }

        if (!sub_23C4A57A0(v46, "air.indirect_argument"))
        {
          break;
        }

        LODWORD(v109[0]) = v27 + 1;
        if (sub_23C506AF0(0, a3, v109, &v106))
        {
          v106 += a5;
          operator new();
        }

        v47 = *(a3 - 8 * *(a3 + 8) + 8 * (v27 + 1));
        if (v47)
        {
          v48 = *v47;
          if (v48 <= 0x22 && ((0x7FFFFFFF0uLL >> v48) & 1) != 0)
          {
            String = llvm::MDString::getString(*&v47[-8 * *(v47 + 2) + 8]);
            *__c = 0;
            v104 = 0;
            if (v50 <= 20)
            {
              if (v50 > 17)
              {
                if (v50 == 18)
                {
                  if (*String == 0x6D6D6F632E726961 && *(String + 8) == 0x666675625F646E61 && *(String + 16) == 29285)
                  {
                    goto LABEL_168;
                  }
                }

                else if (v50 == 19)
                {
                  v57 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
                  if (v57 && *(String + 11) == 0x7265666675625F74)
                  {
LABEL_128:
                    v63 = *v98;
                    if (*v98 == 16)
                    {
                      LODWORD(v109[0]) = 2;
                      sub_23C506BD8(v47, v109, &v106, __c);
                      v64 = LODWORD(v109[0])++;
                      if (sub_23C4A57A0(*&v47[8 * LODWORD(v109[0]) + -8 * *(v47 + 2)], "air.arg_type_name"))
                      {
                        LODWORD(v109[0]) = v64 + 2;
                        v65 = llvm::MDString::getString(*&v47[8 * (v64 + 2) + -8 * *(v47 + 2)]);
                        v67 = v66 >= 5 && *v65 == 1634890337 && *(v65 + 4) == 121;
                        HIBYTE(v104) = v67;
                      }

                      v106 += a5;
                      sub_23C4A65EC(v44, v45, a7);
                    }

                    v103 = 0;
                    v109[0] = 0;
                    v102 = 0;
                    if ((v63 & 0xFE) == 0x12)
                    {
                      v63 = *(**(v45 + 16) + 8);
                    }

                    *v12 &= sub_23C5075AC(v47, v63 >> 8, &v106, __c, &v103 + 1, &v103, v109, &v104, &v102);
                    v106 += a5;
                    operator new();
                  }
                }
              }

              else if (v50 == 10)
              {
                if (*String == 0x666675622E726961 && *(String + 8) == 29285)
                {
                  goto LABEL_128;
                }
              }

              else if (v50 == 11)
              {
                v51 = *String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL;
                if (v51)
                {
                  LOBYTE(v109[0]) = 0;
                  BYTE4(v103) = 0;
                  *v12 &= sub_23C506E20(v47, &v106, __c, v109, &v103 + 4, &v104 + 1, &v104);
                  v106 += a5;
                  if (HIBYTE(v104) == 1)
                  {
                    sub_23C4A65EC(v44, v45, a7);
                  }

                  operator new();
                }

                if (*String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL)
                {
                  *v12 &= sub_23C506C8C(v47, &v106, __c, &v104 + 1);
                  v106 += a5;
                  if (HIBYTE(v104) == 1)
                  {
                    sub_23C4A65EC(v44, v45, a7);
                  }

                  operator new();
                }
              }

              goto LABEL_68;
            }

            if (v50 <= 25)
            {
              if (v50 == 21)
              {
                if (*String == 0x69646E692E726961 && *(String + 8) == 0x6E6F635F74636572 && *(String + 13) == 0x746E6174736E6F63)
                {
                  v70 = sub_23C4A57A0(*&v47[-8 * *(v47 + 2) + 8], "air.indirect_constant");
                  if (v70)
                  {
                    v94 = v70;
                    v71 = *(v47 + 2);
                    LODWORD(v109[0]) = 2;
                    if (v71 >= 3)
                    {
                      do
                      {
                        v72 = sub_23C506BD8(v47, v109, &v106, __c);
                        v73 = v109[0];
                        if ((v72 & 1) == 0)
                        {
                          v73 = ++LODWORD(v109[0]);
                        }
                      }

                      while (v73 < v71);
                    }

                    LOBYTE(v70) = v94;
                  }

                  *v12 &= v70;
                  v106 += a5;
                  operator new();
                }

                goto LABEL_68;
              }

              if (v50 != 25)
              {
                goto LABEL_68;
              }

              v53 = *(String + 24);
              v55 = *String == 0x646E65722E726961 && *(String + 8) == 0x6C657069705F7265 && *(String + 16) == 0x746174735F656E69;
              v56 = 101;
              goto LABEL_163;
            }

            if (v50 == 26)
            {
              v53 = *(String + 24);
              v55 = *String == 0x706D6F632E726961 && *(String + 8) == 0x657069705F657475 && *(String + 16) == 0x6174735F656E696CLL;
              v56 = 25972;
LABEL_163:
              if (v55 && v53 == v56)
              {
                goto LABEL_168;
              }

              goto LABEL_68;
            }

            if (v50 == 27)
            {
              v59 = *String == 0x69646E692E726961 && *(String + 8) == 0x6D6F635F74636572;
              v60 = v59 && *(String + 16) == 0x6675625F646E616DLL;
              if (v60 && *(String + 19) == 0x7265666675625F64)
              {
LABEL_168:
                if (sub_23C4A57A0(*&v47[-8 * *(v47 + 2) + 8], "air.indirect_command_buffer") || sub_23C4A57A0(*&v47[-8 * *(v47 + 2) + 8], "air.command_buffer") || sub_23C4A57A0(*&v47[-8 * *(v47 + 2) + 8], "air.compute_pipeline_state") || sub_23C4A57A0(*&v47[-8 * *(v47 + 2) + 8], "air.render_pipeline_state"))
                {
                  v95 = 0;
                  HIBYTE(v104) = 0;
                  *__c = 1;
                  v78 = *(v47 + 2);
                  LODWORD(v109[0]) = 2;
                  if (v78 >= 3)
                  {
                    v95 = 0;
                    do
                    {
                      v79 = sub_23C506BD8(v47, v109, &v106, __c);
                      v80 = v109[0];
                      if ((v79 & 1) == 0)
                      {
                        v81 = LODWORD(v109[0]) + 1;
                        if (sub_23C4A57A0(*&v47[8 * LODWORD(v109[0]) + -8 * *(v47 + 2)], "air.arg_type_name"))
                        {
                          v82 = llvm::MDString::getString(*&v47[8 * v81 + -8 * *(v47 + 2)]);
                          if (v83 >= 5)
                          {
                            v85 = *v82 == 1634890337 && *(v82 + 4) == 121;
                            v95 = v85;
                          }

                          else
                          {
                            v95 = 0;
                          }

                          v81 = v80 + 2;
                        }

                        v80 = v81 + 1;
                        LODWORD(v109[0]) = v81 + 1;
                        v12 = v99;
                      }
                    }

                    while (v80 < v78);
                    HIBYTE(v104) = v95;
                  }

                  v86 = 1;
                  v87 = v95;
                }

                else
                {
                  v87 = 0;
                  v86 = 0;
                }

                *v12 &= v86;
                v106 += a5;
                if (v87)
                {
                  sub_23C4A65EC(v44, v45, a7);
                }

                operator new();
              }
            }

LABEL_68:
            v27 += 2;
          }
        }
      }

      a6 = v96;
    }

    while (v27 < v101);
  }

  std::string::push_back(v13, 125);
  if (v12[1])
  {
    v89 = v12[31];
    if ((v89 & 0x80u) == 0)
    {
      v90 = v13;
    }

    else
    {
      v90 = *(v12 + 1);
    }

    if ((v89 & 0x80u) != 0)
    {
      v89 = *(v12 + 2);
    }

    if (v89)
    {
      v91 = -1;
      do
      {
        v92 = v90->__r_.__value_.__s.__data_[0];
        v90 = (v90 + 1);
        v91 = word_23C5328D0[v92 ^ ((v91 & 0xFF00) >> 8)] ^ (v91 << 8);
        --v89;
      }

      while (v89);
      v93 = v91 | 0x7FE00000;
    }

    else
    {
      v93 = 2145452031;
    }

    *a2 = v93;
  }

  a7[2] = vadd_s32(a7[2], -1);
  if (v110 != v112)
  {
    free(v110);
  }
}

uint64_t sub_23C4A5714(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = v1 + 32 * v2;
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  v6 = *(v3 - 20);
  v7 = *(v3 - 12);
  v8 = *(v4 + 16);
  *(result + 24) /= v8;
  v9 = v7 - v6 + 1;
  *(v4 + 20) = v9;
  v10 = (v2 - 1);
  *(result + 40) = v10;
  if (v10)
  {
    v11 = v1 + 32 * v10;
    if ((*(v11 - 16) & 1) == 0)
    {
      *(v11 - 20) = v6;
      v8 = *(v4 + 16);
      v9 = *(v4 + 20);
    }

    v12 = v6 + v9 * v8 - 1;
    if (*(v11 - 12) > v12)
    {
      v12 = *(v11 - 12);
    }

    *(v11 - 12) = v12;
  }

  if (v5)
  {
    v13 = -2;
  }

  else
  {
    v13 = -1;
  }

  *(result + 20) += v13;
  return result;
}

BOOL sub_23C4A57A0(llvm::MDString *a1, const char *a2)
{
  if (*a1)
  {
    return 0;
  }

  String = llvm::MDString::getString(a1);
  v6 = v5;
  if (a2)
  {
    v7 = String;
    v8 = strlen(a2);
    if (v6 != v8)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }

    return memcmp(v7, a2, v8) == 0;
  }

  else
  {
    return v5 == 0;
  }
}

uint64_t sub_23C4A5830(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v4 = *(result + 40);
  if (v4 == 1)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v17 = *(result + 32) + 32 * v4;
    v5 = *(a2 + 16);
    v18 = 1;
    do
    {
      v20 = *(v17 - 32);
      v17 -= 32;
      v19 = v20;
      if (v5 >= *(a2 + 20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v3 = v3 & 0xFFFFFFFF00000000 | v18;
      v21 = (*(a2 + 8) + 16 * v5);
      *v21 = v19;
      v21[1] = v3;
      v5 = *(a2 + 16) + 1;
      *(a2 + 16) = v5;
      v18 *= *(*v17 + 16);
    }

    while (v17 != *(result + 32) + 32);
  }

  v6 = *(a2 + 8);
  v7 = (v6 + 16 * v5 - 16);
  if (v5)
  {
    v8 = v7 > v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v6 + 16;
    do
    {
      v10 = *(v9 - 16);
      *(v9 - 16) = *v7;
      *v7-- = v10;
      v11 = v9 >= v7;
      v9 += 16;
    }

    while (!v11);
  }

  v12 = *(result + 32);
  v13 = v12 + 32;
  v14 = *(result + 40);
  v15 = v12 + 32 * v14;
  if (v14 == 1)
  {
    v16 = v13;
  }

  else
  {
    v22 = 32 * v14 - 32;
    v16 = v13;
    while (*(v16 + 24) != *(result + 16))
    {
      v16 += 32;
      v22 -= 32;
      if (!v22)
      {
        v16 = v15;
        break;
      }
    }
  }

  *(a2 + 88) = (v16 - v13) >> 5;
  v23 = *(a2 + 224);
  if ((*(v15 - 16) & 1) == 0)
  {
    *(v15 - 16) = 1;
    *(v15 - 20) = v23;
  }

  if (*(v15 - 12) > v23)
  {
    v23 = *(v15 - 12);
  }

  *(v15 - 12) = v23;
  v24 = *(result + 24);
  *(a2 + 228) = *a3;
  *(a2 + 232) = v24;
  *a3 += v24;
  return result;
}

void sub_23C4A59E0()
{
  v182 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&unk_27E1F6748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&unk_27E1F6748))
  {
    sub_23C49F8D0(v2, "float");
    v3 = 3;
    sub_23C49F8D0(v4, "float2");
    v5 = 4;
    sub_23C49F8D0(v6, "float3");
    v7 = 5;
    sub_23C49F8D0(v8, "float4");
    v9 = 6;
    sub_23C49F8D0(v10, "packed_float");
    v11 = 3;
    sub_23C49F8D0(v12, "packed_float2");
    v13 = 4;
    sub_23C49F8D0(v14, "packed_float3");
    v15 = 5;
    sub_23C49F8D0(v16, "packed_float4");
    v17 = 6;
    sub_23C49F8D0(v18, "half");
    v19 = 16;
    sub_23C49F8D0(v20, "half2");
    v21 = 17;
    sub_23C49F8D0(v22, "half3");
    v23 = 18;
    sub_23C49F8D0(v24, "half4");
    v25 = 19;
    sub_23C49F8D0(v26, "packed_half");
    v27 = 16;
    sub_23C49F8D0(v28, "packed_half2");
    v29 = 17;
    sub_23C49F8D0(v30, "packed_half3");
    v31 = 18;
    sub_23C49F8D0(v32, "packed_half4");
    v33 = 19;
    sub_23C49F8D0(v34, "int");
    v35 = 29;
    sub_23C49F8D0(v36, "int2");
    v37 = 30;
    sub_23C49F8D0(v38, "int3");
    v39 = 31;
    sub_23C49F8D0(v40, "int4");
    v41 = 32;
    sub_23C49F8D0(v42, "packed_int");
    v43 = 29;
    sub_23C49F8D0(v44, "packed_int2");
    v45 = 30;
    sub_23C49F8D0(v46, "packed_int3");
    v47 = 31;
    sub_23C49F8D0(v48, "packed_int4");
    v49 = 32;
    sub_23C49F8D0(v50, "uint");
    v51 = 33;
    sub_23C49F8D0(v52, "uint2");
    v53 = 34;
    sub_23C49F8D0(v54, "uint3");
    v55 = 35;
    sub_23C49F8D0(v56, "uint4");
    v57 = 36;
    sub_23C49F8D0(v58, "packed_uint");
    v59 = 33;
    sub_23C49F8D0(v60, "packed_uint2");
    v61 = 34;
    sub_23C49F8D0(v62, "packed_uint3");
    v63 = 35;
    sub_23C49F8D0(v64, "packed_uint4");
    v65 = 36;
    sub_23C49F8D0(v66, "short");
    v67 = 37;
    sub_23C49F8D0(v68, "short2");
    v69 = 38;
    sub_23C49F8D0(v70, "short3");
    v71 = 39;
    sub_23C49F8D0(v72, "short4");
    v73 = 40;
    sub_23C49F8D0(v74, "packed_short");
    v75 = 37;
    sub_23C49F8D0(v76, "packed_short2");
    v77 = 38;
    sub_23C49F8D0(v78, "packed_short3");
    v79 = 39;
    sub_23C49F8D0(v80, "packed_short4");
    v81 = 40;
    sub_23C49F8D0(v82, "ushort");
    v83 = 41;
    sub_23C49F8D0(v84, "ushort2");
    v85 = 42;
    sub_23C49F8D0(v86, "ushort3");
    v87 = 43;
    sub_23C49F8D0(v88, "ushort4");
    v89 = 44;
    sub_23C49F8D0(v90, "packed_ushort");
    v91 = 41;
    sub_23C49F8D0(v92, "packed_ushort2");
    v93 = 42;
    sub_23C49F8D0(v94, "packed_ushort3");
    v95 = 43;
    sub_23C49F8D0(v96, "packed_ushort4");
    v97 = 44;
    sub_23C49F8D0(v98, "char");
    v99 = 45;
    sub_23C49F8D0(v100, "char2");
    v101 = 46;
    sub_23C49F8D0(v102, "char3");
    v103 = 47;
    sub_23C49F8D0(v104, "char4");
    v105 = 48;
    sub_23C49F8D0(v106, "packed_char");
    v107 = 45;
    sub_23C49F8D0(v108, "packed_char2");
    v109 = 46;
    sub_23C49F8D0(v110, "packed_char3");
    v111 = 47;
    sub_23C49F8D0(v112, "packed_char4");
    v113 = 48;
    sub_23C49F8D0(v114, "uchar");
    v115 = 49;
    sub_23C49F8D0(v116, "uchar2");
    v117 = 50;
    sub_23C49F8D0(v118, "uchar3");
    v119 = 51;
    sub_23C49F8D0(v120, "uchar4");
    v121 = 52;
    sub_23C49F8D0(v122, "packed_uchar");
    v123 = 49;
    sub_23C49F8D0(v124, "packed_uchar2");
    v125 = 50;
    sub_23C49F8D0(v126, "packed_uchar3");
    v127 = 51;
    sub_23C49F8D0(v128, "packed_uchar4");
    v129 = 52;
    sub_23C49F8D0(v130, "BOOL");
    v131 = 53;
    sub_23C49F8D0(v132, "BOOL2");
    v133 = 54;
    sub_23C49F8D0(v134, "BOOL3");
    v135 = 55;
    sub_23C49F8D0(v136, "BOOL4");
    v137 = 56;
    sub_23C49F8D0(v138, "packed_BOOL");
    v139 = 53;
    sub_23C49F8D0(v140, "packed_BOOL2");
    v141 = 54;
    sub_23C49F8D0(v142, "packed_BOOL3");
    v143 = 55;
    sub_23C49F8D0(v144, "packed_BOOL4");
    v145 = 56;
    sub_23C49F8D0(v146, "float2x2");
    v147 = 7;
    sub_23C49F8D0(v148, "float2x3");
    v149 = 8;
    sub_23C49F8D0(v150, "float2x4");
    v151 = 9;
    sub_23C49F8D0(v152, "float3x2");
    v153 = 10;
    sub_23C49F8D0(v154, "float3x3");
    v155 = 11;
    sub_23C49F8D0(v156, "float3x4");
    v157 = 12;
    sub_23C49F8D0(v158, "float4x2");
    v159 = 13;
    sub_23C49F8D0(v160, "float4x3");
    v161 = 14;
    sub_23C49F8D0(v162, "float4x4");
    v163 = 15;
    sub_23C49F8D0(v164, "half2x2");
    v165 = 20;
    sub_23C49F8D0(v166, "half2x3");
    v167 = 21;
    sub_23C49F8D0(v168, "half2x4");
    v169 = 22;
    sub_23C49F8D0(v170, "half3x2");
    v171 = 23;
    sub_23C49F8D0(v172, "half3x3");
    v173 = 24;
    sub_23C49F8D0(v174, "half3x4");
    v175 = 25;
    sub_23C49F8D0(v176, "half4x2");
    v177 = 26;
    sub_23C49F8D0(v178, "half4x3");
    v179 = 27;
    sub_23C49F8D0(v180, "half4x4");
    v0 = 0;
    v181 = 28;
    qword_27E1F6740 = 0;
    qword_27E1F6738 = 0;
    unk_27E1F6730 = &qword_27E1F6738;
    do
    {
      sub_23C4A66D8(&unk_27E1F6730, &qword_27E1F6738, &v2[v0], &v2[v0]);
      v0 += 4;
    }

    while (v0 != 360);
    v1 = 360;
    do
    {
      if (*(&v2[v1 - 1] - 1) < 0)
      {
        operator delete(v2[v1 - 4]);
      }

      v1 -= 4;
    }

    while (v1 * 8);
    __cxa_atexit(sub_23C4A68E0, &unk_27E1F6730, &dword_23C496000);
    __cxa_guard_release(&unk_27E1F6748);
  }
}

uint64_t sub_23C4A62D8(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_23C4A6B04((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_23C4A6B04(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_23C4A635C()
{
  v34 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E1F6768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6768))
  {
    sub_23C49F8D0(v2, "r8unorm");
    v3 = 62;
    sub_23C49F8D0(v4, "r8snorm");
    v5 = 63;
    sub_23C49F8D0(v6, "r16unorm");
    v7 = 64;
    sub_23C49F8D0(v8, "r16snorm");
    v9 = 65;
    sub_23C49F8D0(v10, "rg8unorm");
    v11 = 66;
    sub_23C49F8D0(v12, "rg8snorm");
    v13 = 67;
    sub_23C49F8D0(v14, "rg16unorm");
    v15 = 68;
    sub_23C49F8D0(v16, "rg16snorm");
    v17 = 69;
    sub_23C49F8D0(v18, "rgba8unorm");
    v19 = 70;
    sub_23C49F8D0(v20, "srgba8unorm");
    v21 = 71;
    sub_23C49F8D0(v22, "rgba8snorm");
    v23 = 72;
    sub_23C49F8D0(v24, "rgba16unorm");
    v25 = 73;
    sub_23C49F8D0(v26, "rgba16snorm");
    v27 = 74;
    sub_23C49F8D0(v28, "rgb10a2");
    v29 = 75;
    sub_23C49F8D0(v30, "rg11b10f");
    v31 = 76;
    sub_23C49F8D0(v32, "rgb9e5");
    v0 = 0;
    v33 = 77;
    qword_27E1F6760 = 0;
    qword_27E1F6758 = 0;
    qword_27E1F6750 = &qword_27E1F6758;
    do
    {
      sub_23C4A66D8(&qword_27E1F6750, &qword_27E1F6758, &v2[v0], &v2[v0]);
      v0 += 4;
    }

    while (v0 != 64);
    v1 = 64;
    do
    {
      if (*(&v2[v1 - 1] - 1) < 0)
      {
        operator delete(v2[v1 - 4]);
      }

      v1 -= 4;
    }

    while (v1 * 8);
    __cxa_atexit(sub_23C4A68E0, &qword_27E1F6750, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F6768);
  }
}

uint64_t sub_23C4A66D8(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v6 = result;
  v7 = (result + 8);
  if ((result + 8) == a2 || (result = sub_23C4A6B04(a3, a2 + 4), result))
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

    result = sub_23C4A6B04(v10 + 4, a3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:
    result = sub_23C4A6B70(v6, &v17, a3);
    v13 = result;
    goto LABEL_30;
  }

  result = sub_23C4A6B04(a2 + 4, a3);
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

    if (v13 == v7 || (result = sub_23C4A6B04(a3, v13 + 4), result))
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

void sub_23C4A690C(char *a1)
{
  if (a1)
  {
    sub_23C4A690C(*a1);
    sub_23C4A690C(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t *sub_23C4A6968(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

BOOL sub_23C4A6B04(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void *sub_23C4A6B70(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_23C4A6B04(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_23C4A6B04(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

int *sub_23C4A6BF8(int *a1, unint64_t a2, unint64_t *a3, _BYTE *a4)
{
  *a4 = 1;
  v6 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64;
  if (v6 < a2)
  {
    v9 = 1;
    while (1)
    {
      v10 = *v6;
      if (*v6 && *(*v6 + 16) == 16)
      {
        v13 = *(v10 + 32);
        v14 = v13 > 0x40 ? llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) == v13 : *(v10 + 24) == 0;
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      v9 &= v12;
      *a4 = v9;
      v15 = *a1;
      if ((*a1 - 3) >= 0xFFFFFFFE)
      {
        break;
      }

      if (!v15 || v15 == 3)
      {
        v16 = (a1 + 2);
LABEL_21:
        a1 = *v16;
        goto LABEL_22;
      }

      if ((v15 - 5) >= 2)
      {
        goto LABEL_25;
      }

LABEL_22:
      v6 += 32;
      if (v6 >= a2)
      {
        goto LABEL_25;
      }
    }

    v17 = (v10 + 24);
    if (*(v10 + 32) >= 0x41u)
    {
      v17 = *v17;
    }

    v16 = (*(a1 + 1) + 8 * *v17);
    goto LABEL_21;
  }

LABEL_25:
  *a3 = v6;
  return a1;
}

_DWORD *sub_23C4A6D18(_DWORD *a1, llvm::Constant *this)
{
  AggregateElement = llvm::Constant::getAggregateElement(this);
  v5 = llvm::Constant::getAggregateElement(this);
  v6 = (AggregateElement + 24);
  if (*(AggregateElement + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  *a1 = *v6;
  v7 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v7 = *v7;
  }

  a1[1] = *v7;
  return a1;
}

uint64_t sub_23C4A6D9C(unsigned int *a1, llvm::Type **a2)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(a2[8], v3);
  llvm::ConstantInt::get();
  return llvm::ConstantVector::get();
}

uint64_t sub_23C4A6E40(uint64_t a1, llvm::Type **a2, uint64_t a3)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  v7 = llvm::ConstantInt::get();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 8);
    v10 = v9 + 16 * v8;
    do
    {
      v11 = *(a3 + 32 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * *(*v9 + 24));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v6);
      v19 = 257;
      v13 = sub_23C4A6F5C(a2, v11, Int32Ty, v18);
      llvm::Type::getInt32Ty(a2[8], v14);
      v15 = llvm::ConstantInt::get();
      v19 = 257;
      v16 = sub_23C49ADDC(a2, v15, v13, v18);
      v19 = 257;
      v7 = sub_23C49A474(a2, v7, v16, v18);
      v9 += 16;
    }

    while (v9 != v10);
  }

  return v7;
}

llvm::Type **sub_23C4A6F5C(uint64_t a1, llvm::Type **a2, llvm::Type *a3, uint64_t a4)
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
    v10 = 39;
  }

  return sub_23C49ACF8(a1, v10, a2, a3, a4);
}

unint64_t sub_23C4A6FFC(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
  v5 = *(v2 + 32);
  v4 = v2 + 32;
  v3 = v5;
  v6 = *(v5 + 16);
  if (v5)
  {
    v7 = v6 == 16;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 32);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v3 + 24)) != v9)
    {
      goto LABEL_8;
    }
  }

  else if (*(v3 + 24))
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    return v11 | v10;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    LODWORD(v10) = 0;
    v13 = 0;
    v14 = 16 * v12;
    v15 = (*(a1 + 8) + 8);
    do
    {
      v16 = *(v15 - 1);
      v17 = *(v4 + 32 * *(v16 + 24));
      if (v17)
      {
        v18 = *(v17 + 16) == 16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = (v17 + 24);
        if (*(v17 + 32) >= 0x41u)
        {
          v19 = *v19;
        }

        LODWORD(v10) = v10 + *v15 * *v19;
      }

      else
      {
        v13 += (*(v16 + 16) - 1) * *v15;
      }

      v15 += 4;
      v14 -= 16;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
    LODWORD(v10) = 0;
  }

  v11 = v10 & 0xFFFFFF00 | ((v10 + v13) << 32);
  v10 = v10;
  return v11 | v10;
}

uint64_t sub_23C4A7118(uint64_t a1, llvm::Type **a2, void *a3)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  v7 = llvm::ConstantInt::get();
  v8 = *(a1 + 88);
  if (v8 != *(a1 + 16))
  {
    v9 = *(a1 + 8) + 16 * v8;
    do
    {
      v10 = *(*a3 + 8 * *(*v9 + 24));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v6);
      v18 = 257;
      v12 = sub_23C4A6F5C(a2, v10, Int32Ty, v17);
      llvm::Type::getInt32Ty(a2[8], v13);
      v14 = llvm::ConstantInt::get();
      v18 = 257;
      v15 = sub_23C49ADDC(a2, v12, v14, v17);
      v18 = 257;
      v7 = sub_23C49A474(a2, v7, v15, v17);
      v9 += 16;
    }

    while (v9 != *(a1 + 8) + 16 * *(a1 + 16));
  }

  return v7;
}

uint64_t sub_23C4A7234(void *a1, uint64_t a2, llvm::Type **a3, void *a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (*(a2 + 104))
  {
    sub_23C4A3D80(a1, a2 + 96);
  }

  v8 = *(a2 + 184);
  if (v8)
  {
    v9 = *(a2 + 176);
    v10 = &v9[2 * v8];
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      *(*a1 + 8 * v12) = *(*a4 + 8 * v11);
    }

    while (v9 != v10);
  }

  result = sub_23C4A7118(a2, a3, a4);
  *(*a1 + 8 * *(a1 + 2) - 8) = result;
  return result;
}

uint64_t sub_23C4A72DC(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t sub_23C4A733C(void *a1, uint64_t a2, llvm::Type *this)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  Int64Ty = llvm::Type::getInt64Ty(this, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 1612));
  sub_23C49B500(a1, v7);
  if (*(a2 + 1646) == 1)
  {
    v9 = llvm::Type::getInt64Ty(this, v8);
    v10 = llvm::ArrayType::get(v9, *(a2 + 1612));
    sub_23C49B500(a1, v10);
  }

  v11 = llvm::Type::getInt64Ty(this, v8);

  return sub_23C49B500(a1, v11);
}

uint64_t sub_23C4A73E4(void *a1, uint64_t a2, llvm::Type *this)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  Int64Ty = llvm::Type::getInt64Ty(this, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 1608));
  sub_23C49B500(a1, v7);
  if (*(a2 + 1645) == 1)
  {
    v9 = llvm::Type::getInt64Ty(this, v8);
    v10 = llvm::ArrayType::get(v9, *(a2 + 1608));
    sub_23C49B500(a1, v10);
  }

  Int32Ty = llvm::Type::getInt32Ty(this, v8);
  v12 = llvm::ArrayType::get(Int32Ty, *(a2 + 1680));
  sub_23C49B500(a1, v12);
  v14 = llvm::Type::getInt64Ty(this, v13);

  return sub_23C49B500(a1, v14);
}

void *sub_23C4A74A8(void *result, uint64_t a2, void *a3)
{
  *result = result + 2;
  result[1] = 0x800000000;
  if (*(a2 + 104))
  {
    result = sub_23C4A3D80(result, a2 + 96);
  }

  v5 = *(a2 + 184);
  if (v5)
  {
    v6 = *(a2 + 176);
    v7 = &v6[2 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v6 += 2;
      *(*result + 8 * v9) = *(*a3 + 8 * v8);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t GLCompilerCreate(void *__src, size_t __len, uint64_t a3)
{
  v3 = a3;
  v4 = sub_23C4A7590(&__dst, __src, __len);
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  v5 = sub_23C4A7640(v4, v3, 0, v8, v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return v5;
}

void *sub_23C4A7590(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t sub_23C4A7640(uint64_t a1, int a2, unsigned int a3, uint64_t a4, const void **a5)
{
  v331[20] = *MEMORY[0x277D85DE8];
  if (LLVMAGXRuntimeMajorVersion() == 1)
  {
    if (!MGGetBoolAnswer())
    {
      goto LABEL_68;
    }

    v7 = sub_23C496E18();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v330[0].st_dev = 136315138;
      *&v330[0].st_mode = "load";
      _os_log_debug_impl(&dword_23C496000, v7, OS_LOG_TYPE_DEBUG, "%s(){\n", v330, 0xCu);
    }

    sub_23C49F8D0(&__p, "/System/Library/PrivateFrameworks/AGXCompilerCore-S2A8.framework/EnvVars.txt");
    v331[6] = 0;
    v8 = MEMORY[0x277D82858] + 24;
    v9 = MEMORY[0x277D82858] + 64;
    v331[0] = MEMORY[0x277D82858] + 64;
    v10 = *(MEMORY[0x277D82808] + 16);
    *&v330[0].st_dev = *(MEMORY[0x277D82808] + 8);
    *(&v330[0].st_dev + *(*&v330[0].st_dev - 24)) = v10;
    v330[0].st_ino = 0;
    v11 = (v330 + *(*&v330[0].st_dev - 24));
    std::ios_base::init(v11, &v330[0].st_uid);
    v11[1].__vftable = 0;
    v11[1].__fmtflags_ = -1;
    *&v330[0].st_dev = v8;
    v331[0] = v9;
    MEMORY[0x23EED4F20](&v330[0].st_uid);
    if (!std::filebuf::open())
    {
      std::ios_base::clear((v330 + *(*&v330[0].st_dev - 24)), *(&v330[0].st_atimespec.tv_sec + *(*&v330[0].st_dev - 24)) | 4);
    }

    v12 = *(&v330[0].st_atimespec.tv_sec + *(*&v330[0].st_dev - 24)) & 5;
    v13 = sub_23C496E18();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      v15 = MEMORY[0x277D82808];
      if (v14)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_debug_impl(&dword_23C496000, v13, OS_LOG_TYPE_DEBUG, "}\n", &buf, 2u);
      }

      goto LABEL_66;
    }

    if (v14)
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_debug_impl(&dword_23C496000, v13, OS_LOG_TYPE_DEBUG, "Reading environment variables from '%s'", &buf, 0xCu);
    }

    sub_23C496B58();
    sub_23C496CF8();
    v16 = MEMORY[0x277D82680];
    memset(&__str, 0, sizeof(__str));
LABEL_13:
    std::ios_base::getloc((v330 + *(*&v330[0].st_dev - 24)));
    v17 = std::locale::use_facet(&buf, v16);
    v18 = (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&buf);
    MEMORY[0x23EED4F40](&buf, v330, 1);
    if (buf.__r_.__value_.__s.__data_[0] != 1)
    {
      goto LABEL_30;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      *__str.__r_.__value_.__l.__data_ = 0;
      __str.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      *(&__str.__r_.__value_.__s + 23) = 0;
    }

    v19 = 0;
    while (1)
    {
      v20 = *(&v330[0].st_atimespec.tv_nsec + *(*&v330[0].st_dev - 24));
      v21 = v20[3];
      if (v21 == v20[4])
      {
        LODWORD(v20) = (*(*v20 + 80))(v20);
        if (v20 == -1)
        {
          if (v19)
          {
            v22 = 2;
          }

          else
          {
            v22 = 6;
          }

LABEL_29:
          std::ios_base::clear((v330 + *(*&v330[0].st_dev - 24)), *(&v330[0].st_atimespec.tv_sec + *(*&v330[0].st_dev - 24)) | v22);
LABEL_30:
          if ((*(&v330[0].st_atimespec.tv_sec + *(*&v330[0].st_dev - 24)) & 5) == 0)
          {
            v23 = std::string::find(&__str, 61, 0);
            if (v23 == -1)
            {
              v29 = sub_23C496E18();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_debug_impl(&dword_23C496000, v29, OS_LOG_TYPE_DEBUG, "Skipped line with no '=' character in EnvVars.txt", &buf, 2u);
              }
            }

            else
            {
              v24 = v23;
              std::string::basic_string(&v323, &__str, 0, v23, &buf);
              std::string::basic_string(&v322, &__str, v24 + 1, 0xFFFFFFFFFFFFFFFFLL, &buf);
              sub_23C4AA9EC(&v323);
              sub_23C4AA9EC(&v322);
              size = HIBYTE(v323.__r_.__value_.__r.__words[2]);
              if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v323.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v26 = qword_27E1F66D8;
                v27 = qword_27E1F66E0;
                if (qword_27E1F66D8 != qword_27E1F66E0)
                {
                  if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v28 = &v323;
                  }

                  else
                  {
                    v28 = v323.__r_.__value_.__r.__words[0];
                  }

                  while (strcmp(*v26, v28))
                  {
                    if (++v26 == v27)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                if (v26 == v27)
                {
LABEL_53:
                  v40 = sub_23C496E18();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                  {
                    v41 = &v323;
                    if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v41 = v323.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = v41;
                    v36 = v40;
                    v37 = "Read unknown variable from EnvVars.txt: %s";
                    v38 = 12;
                    goto LABEL_61;
                  }
                }

                else
                {
                  buf.__r_.__value_.__r.__words[0] = &v323;
                  v30 = sub_23C4AA84C(&v323.__r_.__value_.__l.__data_, &buf);
                  std::string::operator=((v30 + 7), &v322);
                  v31 = sub_23C496E18();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
                    v32 = HIBYTE(v323.__r_.__value_.__r.__words[2]);
                    v33 = &v323;
                    if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v32 = v323.__r_.__value_.__l.__size_;
                      v33 = v323.__r_.__value_.__r.__words[0];
                    }

                    v34 = HIBYTE(v322.__r_.__value_.__r.__words[2]);
                    v35 = &v322;
                    if ((v322.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v34 = v322.__r_.__value_.__l.__size_;
                      v35 = v322.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                    *(buf.__r_.__value_.__r.__words + 4) = v33;
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
                    *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
                    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                    v327 = v35;
                    v328 = 2048;
                    v329 = v34;
                    v36 = v31;
                    v37 = "%s[%lu] = %s[%lu]\n";
                    v38 = 42;
LABEL_61:
                    _os_log_debug_impl(&dword_23C496000, v36, OS_LOG_TYPE_DEBUG, v37, &buf, v38);
                  }
                }
              }

              else
              {
                v39 = sub_23C496E18();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  v36 = v39;
                  v37 = "Skipped line with empty variable name in EnvVars.txt";
                  v38 = 2;
                  goto LABEL_61;
                }
              }

              if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v322.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v323.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_13;
          }

          v42 = sub_23C496E18();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_debug_impl(&dword_23C496000, v42, OS_LOG_TYPE_DEBUG, "}\n", &buf, 2u);
          }

          v15 = MEMORY[0x277D82808];
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_66:
          *&v330[0].st_dev = *v15;
          *(&v330[0].st_dev + *(*&v330[0].st_dev - 24)) = v15[3];
          MEMORY[0x23EED4F30](&v330[0].st_uid);
          std::istream::~istream();
          MEMORY[0x23EED5050](v331);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_68:
          v43 = *(a1 + 23);
          if ((v43 & 0x80u) != 0)
          {
            v43 = *(a1 + 8);
          }

          if (v43 && MGGetBoolAnswer())
          {
            v44 = *(a1 + 23);
            if ((v44 & 0x80u) != 0)
            {
              v44 = *(a1 + 8);
            }

            if (v44)
            {
              sub_23C496CF8();
              v45 = sub_23C496E18();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                v330[0].st_dev = 136315138;
                *&v330[0].st_mode = "deserialize";
                _os_log_debug_impl(&dword_23C496000, v45, OS_LOG_TYPE_DEBUG, "%s(){\n", v330, 0xCu);
              }

              v46 = 0;
              do
              {
                v47 = *(a1 + 23);
                if ((v47 & 0x80u) != 0)
                {
                  v47 = *(a1 + 8);
                }

                if (v46 >= v47)
                {
                  break;
                }

                v48 = std::string::find(a1, 10, v46);
                if (v48 == -1)
                {
                  break;
                }

                v49 = v48;
                std::string::basic_string(&buf, a1, v46, v48 - v46, v330);
                v46 = v49 + 1;
                v50 = std::string::find(a1, 10, v49 + 1);
                v51 = v50;
                if (v50 != -1)
                {
                  std::string::basic_string(&__p, a1, v46, v50 - v46, v330);
                  *&v330[0].st_dev = &buf;
                  v52 = sub_23C4AA84C(&buf.__r_.__value_.__l.__data_, v330);
                  std::string::operator=((v52 + 7), &__p);
                  v53 = sub_23C496E18();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    v54 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_buf = &buf;
                    }

                    else
                    {
                      p_buf = buf.__r_.__value_.__r.__words[0];
                    }

                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v54 = buf.__r_.__value_.__l.__size_;
                    }

                    v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v57 = &__p;
                    }

                    else
                    {
                      v57 = __p.__r_.__value_.__r.__words[0];
                    }

                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v56 = __p.__r_.__value_.__l.__size_;
                    }

                    v330[0].st_dev = 136315906;
                    *&v330[0].st_mode = p_buf;
                    WORD2(v330[0].st_ino) = 2048;
                    *(&v330[0].st_ino + 6) = v54;
                    HIWORD(v330[0].st_gid) = 2080;
                    *&v330[0].st_rdev = v57;
                    LOWORD(v330[0].st_atimespec.tv_sec) = 2048;
                    *(&v330[0].st_atimespec.tv_sec + 2) = v56;
                    _os_log_debug_impl(&dword_23C496000, v53, OS_LOG_TYPE_DEBUG, "\t%s[%lu] = %s[%lu]\n", v330, 0x2Au);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  v46 = v51 + 1;
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              while (v51 != -1);
              v58 = sub_23C496E18();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v330[0].st_dev) = 0;
                _os_log_debug_impl(&dword_23C496000, v58, OS_LOG_TYPE_DEBUG, "}\n", v330, 2u);
              }
            }
          }

          if (MGGetBoolAnswer())
          {
            sub_23C4A2690("USE_MONOLITHIC_COMPILER");
          }

          qword_27E1F74F0 = 0;
          v59 = MGGetBoolAnswer();
          if (v59)
          {
            v59 = sub_23C4A2690("AGC_ENABLE_STATUS_FILE");
            if (v59)
            {
              if (*v59 != 48)
              {
                v59 = atoi(v59);
                if (v59)
                {
                  sub_23C4AA7CC();
                  if (byte_27E1F678F < 0)
                  {
                    *qword_27E1F6778 = 0;
                    qword_27E1F6780 = 0;
                  }

                  else
                  {
                    LOBYTE(qword_27E1F6778) = 0;
                    byte_27E1F678F = 0;
                  }

                  if (!MGGetBoolAnswer() || (v60 = sub_23C4A2690("AGC_ENABLE_STATUS_FILE_STDERR")) == 0 || *v60 == 48 || !atoi(v60))
                  {
                    memset(v330, 0, 24);
                    v61 = sub_23C4A2690("AGC_STATUS_LOG_DIRECTORY");
                    if (v61 && (v62 = v61, (v63 = sub_23C4A2690("USE_MONOLITHIC_COMPILER")) != 0))
                    {
                      v64 = "/private/var/mobile/Library/Logs/";
                      if (*v63 != 48 && atoi(v63))
                      {
                        v64 = v62;
                      }
                    }

                    else
                    {
                      v64 = "/private/var/mobile/Library/Logs/";
                    }

                    std::string::append(v330, v64);
                    st_gid_high = HIBYTE(v330[0].st_gid);
                    if ((v330[0].st_gid & 0x80000000) == 0)
                    {
                      v66 = v330;
                    }

                    else
                    {
                      v66 = *&v330[0].st_dev;
                    }

                    if ((v330[0].st_gid & 0x80000000) != 0)
                    {
                      st_gid_high = v330[0].st_ino;
                    }

                    if (*(v66 + st_gid_high - 1) != 47)
                    {
                      std::string::push_back(v330, 47);
                    }

                    if (a3 >= 2)
                    {
                      v67 = "Metal";
                    }

                    else
                    {
                      v67 = "OpenGL";
                    }

                    std::string::append(v330, v67);
                    if ((v330[0].st_gid & 0x80000000) == 0)
                    {
                      v68 = v330;
                    }

                    else
                    {
                      v68 = *&v330[0].st_dev;
                    }

                    if ((v330[0].st_gid & 0x80000000) == 0)
                    {
                      st_ino = HIBYTE(v330[0].st_gid);
                    }

                    else
                    {
                      st_ino = v330[0].st_ino;
                    }

                    std::string::append(&qword_27E1F6778, v68, st_ino);
                    if (SHIBYTE(v330[0].st_gid) < 0)
                    {
                      operator delete(*&v330[0].st_dev);
                    }

                    if (byte_27E1F678F >= 0)
                    {
                      v70 = &qword_27E1F6778;
                    }

                    else
                    {
                      v70 = qword_27E1F6778;
                    }

                    if (stat(v70, v330))
                    {
                      if (byte_27E1F678F >= 0)
                      {
                        v71 = &qword_27E1F6778;
                      }

                      else
                      {
                        v71 = qword_27E1F6778;
                      }

                      v72 = mkdir(v71, 0x1FFu);
                      if (byte_27E1F678F >= 0)
                      {
                        v73 = &qword_27E1F6778;
                      }

                      else
                      {
                        v73 = qword_27E1F6778;
                      }

                      if (v72)
                      {
                        __error();
                        syslog(3, "Failed to create: %s, with error code %d");
                      }

                      else if (chown(v73, 0x1F5u, 0xFFFFFFFF))
                      {
                        __error();
                        syslog(3, "Failed to modify: %s, with error code %d");
                      }
                    }

                    std::string::append(&qword_27E1F6778, "/");
                    if (!MGGetBoolAnswer() || (v74 = sub_23C4A2690("AGC_CLIENT_PROCESS_NAME")) == 0)
                    {
                      if (a3 >= 2)
                      {
                        v74 = "agc_mtl_status";
                      }

                      else
                      {
                        v74 = "agc_gl_status";
                      }
                    }

                    std::string::append(&qword_27E1F6778, v74);
                    if (!MGGetBoolAnswer() || (v75 = sub_23C4A2690("AGC_STATUS_FILE_NO_PID")) == 0 || *v75 == 48 || !atoi(v75))
                    {
                      v76 = getpid();
                      std::to_string(&__p, v76);
                      v77 = std::string::insert(&__p, 0, "_");
                      v78 = v77->__r_.__value_.__r.__words[2];
                      *&buf.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
                      buf.__r_.__value_.__r.__words[2] = v78;
                      v77->__r_.__value_.__l.__size_ = 0;
                      v77->__r_.__value_.__r.__words[2] = 0;
                      v77->__r_.__value_.__r.__words[0] = 0;
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v79 = &buf;
                      }

                      else
                      {
                        v79 = buf.__r_.__value_.__r.__words[0];
                      }

                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v80 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v80 = buf.__r_.__value_.__l.__size_;
                      }

                      std::string::append(&qword_27E1F6778, v79, v80);
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    LODWORD(v81) = MGGetBoolAnswer();
                    if (v81)
                    {
                      v81 = sub_23C4A2690("AGC_STATUS_FILE_MAX_SIZE_IN_BYTES");
                      if (v81)
                      {
                        if (*v81 == 48)
                        {
                          LODWORD(v81) = 0;
                        }

                        else
                        {
                          LODWORD(v81) = atoi(v81);
                        }
                      }
                    }

                    dword_27E1F74F8 = v81;
                    if (byte_27E1F678F >= 0)
                    {
                      v82 = &qword_27E1F6778;
                    }

                    else
                    {
                      v82 = qword_27E1F6778;
                    }

                    stat(v82, v330);
                    operator new();
                  }

                  qword_27E1F74F0 = MEMORY[0x277D82670];
                  v59 = std::ostream::flush();
                }
              }
            }
          }

          sub_23C4AA240(v59, "Running LLVM version %d.", 32023);
          sub_23C49F8D0(&__p, "Active environment variable values:\n");
          v83 = MGGetBoolAnswer();
          if (v83)
          {
            sub_23C496B58();
            v84 = qword_27E1F66D8;
            if (qword_27E1F66E0 != qword_27E1F66D8)
            {
              v85 = 0;
              v86 = 1;
              do
              {
                v87 = *(v84 + 8 * v85);
                v83 = sub_23C4A2690(v87);
                if (v83)
                {
                  v88 = v83;
                  std::string::append(&__p, v87);
                  std::string::append(&__p, "=");
                  std::string::append(&__p, v88);
                  v83 = std::string::append(&__p, "\n");
                }

                v85 = v86;
                v84 = qword_27E1F66D8;
                ++v86;
              }

              while (v85 < (qword_27E1F66E0 - qword_27E1F66D8) >> 3);
            }
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            sub_23C4AA240(v83, &__p);
          }

          else
          {
            sub_23C4AA240(v83, __p.__r_.__value_.__l.__data_);
          }

          sub_23C4D819C();
          *(*sub_23C4D8220("half", 4uLL) + 8) = 1;
          *(*sub_23C4D8220("float", 5uLL) + 8) = 0;
          *(*sub_23C4D8220("i16", 3uLL) + 8) = 4;
          *(*sub_23C4D8220("i32", 3uLL) + 8) = 3;
          sub_23C4B8D20();
          *(*sub_23C4B8E28("air.perspective", 0xFuLL) + 8) = 0;
          *(*sub_23C4B8E28("air.flat", 8uLL) + 8) = 1;
          *(*sub_23C4B8E28("air.no_perspective", 0x12uLL) + 8) = 2;
          sub_23C4B8DA4();
          *(*sub_23C4B8F30("air.center", 0xAuLL) + 8) = 0;
          *(*sub_23C4B8F30("air.centroid", 0xCuLL) + 8) = 2;
          *(*sub_23C4B8F30("air.sample", 0xAuLL) + 8) = 1;
          sub_23C4B8970();
          if (!dword_27E1F745C)
          {
            v89 = 0;
            *&v330[0].st_dev = &v330[0].st_rdev;
            *&v330[0].st_ino = xmmword_23C532530;
            do
            {
              v90 = 0;
              v270 = v89;
              v91 = &(&off_278BBFA68)[2 * v89];
              v317 = *(v91 + 2);
              v300 = v91;
              v92 = *(v91 + 12);
              if (v317 == 1)
              {
                v93 = 1;
              }

              else
              {
                v93 = *(v91 + 12);
              }

              v94 = 8;
              if (!v93)
              {
                v94 = 0;
              }

              v292 = v94;
              v271 = v92;
              if (v92)
              {
                v95 = 3;
              }

              else
              {
                v95 = 2;
              }

              if (v92)
              {
                v96 = 2;
              }

              else
              {
                v96 = 0;
              }

              v286 = v96;
              v283 = v95 + 1;
              v289 = v95;
              v280 = v95 + 2;
              __s = "1d";
              v97 = &off_278BBFB98;
              v295 = v93;
              do
              {
                v273 = v90;
                v98 = *(v97 + 2);
                if (!v271 || v98 != 3)
                {
                  v99 = 0;
                  v100 = 1;
                  v306 = &unk_23C53F34D;
                  v309 = &off_278BBFCC0;
                  v302 = v97;
                  do
                  {
                    v277 = v100;
                    v275 = v99;
                    v101 = off_278BBFC18;
                    v102 = 6;
                    do
                    {
                      if (!v93 || *(v101 + 20) == 1)
                      {
                        v103 = *v300;
                        if (*v300)
                        {
                          v104 = strlen(*v300);
                          v330[0].st_ino = 0;
                          sub_23C4B01BC(v330, v103, &v103[v104]);
                        }

                        else
                        {
                          v330[0].st_ino = 0;
                        }

                        v105 = strlen(__s);
                        sub_23C4B01BC(v330, __s, &__s[v105]);
                        v106 = strlen(v306);
                        sub_23C4B01BC(v330, v306, &v306[v106]);
                        v107 = *(v101 + v292);
                        if (v107)
                        {
                          v108 = strlen(*(v101 + v292));
                          sub_23C4B01BC(v330, v107, &v107[v108]);
                        }

                        else if (*&v330[0].st_uid < v330[0].st_ino)
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod();
                        }

                        v109 = v283;
                        v110 = v280;
                        if (!*(v97 + 12))
                        {
                          v110 = v283;
                          v109 = 0;
                        }

                        v313 = v109;
                        v111 = v110 + (v317 == 1);
                        if (v317 == 1)
                        {
                          v112 = v110;
                        }

                        else
                        {
                          v112 = 0;
                        }

                        v113 = *(v309 + 2);
                        if (v113 == 1)
                        {
                          v117 = 0;
                          v116 = v111 + 2;
                          if (v98 == 2)
                          {
                            v118 = 0;
                          }

                          else
                          {
                            v118 = v111 + 3;
                          }

                          if (v98 == 2)
                          {
                            v120 = v111 + 3;
                          }

                          else
                          {
                            v120 = v111 + 5;
                          }

                          v119 = v111;
                        }

                        else
                        {
                          v114 = v111 + 2;
                          if (v98 == 2)
                          {
                            v115 = 0;
                          }

                          else
                          {
                            v115 = v111;
                          }

                          if (v98 == 2)
                          {
                            v114 = v111;
                          }

                          if (v113)
                          {
                            v116 = v111;
                          }

                          else
                          {
                            v116 = v114 + 2;
                          }

                          if (v113)
                          {
                            v117 = 0;
                          }

                          else
                          {
                            v117 = v114;
                          }

                          if (v113)
                          {
                            v118 = 0;
                          }

                          else
                          {
                            v118 = v115;
                          }

                          v119 = 0;
                          if (v113)
                          {
                            v120 = v111 + 1;
                          }

                          else
                          {
                            v120 = v114 + 3;
                          }
                        }

                        v121 = *(v101 + 4);
                        v122 = *sub_23C4FED68(*&v330[0].st_dev, v330[0].st_ino);
                        *(v122 + 8) = v317;
                        *(v122 + 12) = v98;
                        *(v122 + 16) = 0;
                        *(v122 + 20) = v121;
                        *(v122 + 24) = 0;
                        v93 = v295;
                        *(v122 + 28) = v295;
                        *(v122 + 29) = v120;
                        *(v122 + 30) = 256;
                        *(v122 + 32) = 0;
                        *(v122 + 33) = v286;
                        *(v122 + 34) = v289;
                        *(v122 + 35) = v118;
                        *(v122 + 36) = v117;
                        *(v122 + 37) = v119;
                        *(v122 + 38) = 0;
                        *(v122 + 39) = v313;
                        *(v122 + 40) = v112;
                        *(v122 + 41) = 0;
                        *(v122 + 45) = v116;
                        *(v122 + 46) = 0;
                        v97 = v302;
                      }

                      v101 += 3;
                      --v102;
                    }

                    while (v102);
                    v309 = &off_278BBFCC0 + 2 * v277;
                    v306 = *v309;
                    v99 = 1;
                    v100 = 2;
                  }

                  while ((v275 & 1) == 0);
                }

                v90 = v273 + 1;
                v97 = &(&off_278BBFB98)[2 * v273 + 2];
                __s = *v97;
              }

              while (v273 != 6);
              v89 = v270 + 1;
            }

            while (v270 != 3);
            do
            {
              v123 = 0;
              v272 = v89;
              v124 = &(&off_278BBFA68)[2 * v89];
              v125 = *(v124 + 12);
              v126 = 8;
              if (!*(v124 + 12))
              {
                v126 = 0;
              }

              v293 = v126;
              if (*(v124 + 12))
              {
                v127 = 2;
              }

              else
              {
                v127 = 1;
              }

              v276 = v127 + 1;
              v290 = v127;
              v274 = v127 + 2;
              v287 = "1d";
              v128 = &off_278BBFB98;
              v296 = *(v124 + 12);
              do
              {
                v278 = v123;
                __sa = *(v128 + 2);
                if (!v125 || __sa != 3)
                {
                  v129 = 0;
                  v130 = v276;
                  v131 = v274;
                  if (__sa != 2)
                  {
                    v131 = v276;
                    v130 = 0;
                  }

                  v298 = v130;
                  v301 = v131;
                  v132 = 1;
                  do
                  {
                    v281 = v132;
                    v133 = 0;
                    v318 = v129 & 1;
                    v134 = off_278BBFC18;
                    do
                    {
                      v284 = v133;
                      v135 = 0;
                      v136 = 1;
                      v137 = 1;
                      v138 = &unk_278BBFCF0;
                      do
                      {
                        v139 = v135;
                        if (!v125 || *(v134 + 20) == 1)
                        {
                          v307 = v137;
                          v310 = v135;
                          v314 = v136;
                          v140 = *v124;
                          if (*v124)
                          {
                            v141 = strlen(*v124);
                            v330[0].st_ino = 0;
                            sub_23C4B01BC(v330, v140, &v140[v141]);
                          }

                          else
                          {
                            v330[0].st_ino = 0;
                          }

                          if (v318)
                          {
                            if (*(v128 + 12))
                            {
                              v142 = "2d_ms_array";
                            }

                            else
                            {
                              v142 = "2d_ms";
                            }

                            v143 = 5;
                            if (*(v128 + 12))
                            {
                              v143 = 11;
                            }

                            v144 = &v142[v143];
                          }

                          else
                          {
                            v144 = &v287[strlen(v287)];
                            v142 = v287;
                          }

                          sub_23C4B01BC(v330, v142, v144);
                          v145 = *(v138 + 1);
                          if (v145)
                          {
                            v146 = strlen(*(v138 + 1));
                            sub_23C4B01BC(v330, v145, &v145[v146]);
                          }

                          else if (*&v330[0].st_uid < v330[0].st_ino)
                          {
                            llvm::SmallVectorBase<unsigned long long>::grow_pod();
                          }

                          v147 = *(v134 + v293);
                          if (v147)
                          {
                            v148 = strlen(*(v134 + v293));
                            sub_23C4B01BC(v330, v147, &v147[v148]);
                            v149 = v330[0].st_ino;
                          }

                          else
                          {
                            v149 = v330[0].st_ino;
                            if (*&v330[0].st_uid < v330[0].st_ino)
                            {
                              llvm::SmallVectorBase<unsigned long long>::grow_pod();
                            }
                          }

                          v150 = *(v128 + 12) + v301;
                          if (*(v128 + 12))
                          {
                            v151 = v301;
                          }

                          else
                          {
                            v151 = 0;
                          }

                          v152 = *(v124 + 2);
                          if (v152 == 3)
                          {
                            v153 = v150 + v318 + 1;
                          }

                          else
                          {
                            v153 = v150 + v318;
                          }

                          if (v152 == 3)
                          {
                            v154 = v150 + v318;
                          }

                          else
                          {
                            v154 = 0;
                          }

                          v155 = v128;
                          v156 = v124;
                          if (v318)
                          {
                            v157 = v150;
                          }

                          else
                          {
                            v157 = 0;
                          }

                          v158 = v153 + (v318 == 0);
                          if (v318)
                          {
                            v159 = 0;
                          }

                          else
                          {
                            v159 = v153;
                          }

                          v160 = *(v134 + 4);
                          v161 = *sub_23C4FED68(*&v330[0].st_dev, v149);
                          *(v161 + 8) = v152;
                          *(v161 + 12) = __sa;
                          *(v161 + 16) = v307;
                          *(v161 + 20) = v160;
                          *(v161 + 24) = 0;
                          v125 = v296;
                          *(v161 + 28) = v296;
                          *(v161 + 29) = v158;
                          *(v161 + 30) = 0;
                          *(v161 + 31) = 0;
                          *(v161 + 33) = v296;
                          *(v161 + 34) = v290;
                          *(v161 + 37) = 0;
                          *(v161 + 35) = 0;
                          *(v161 + 38) = v159;
                          *(v161 + 39) = v151;
                          *(v161 + 40) = 0;
                          *(v161 + 41) = v157;
                          v124 = v156;
                          v128 = v155;
                          *(v161 + 42) = v154;
                          *(v161 + 43) = v298;
                          *(v161 + 44) = 0;
                          v136 = v314;
                          v139 = v310;
                        }

                        v138 = &unk_278BBFCF0 + 16 * v136;
                        v137 = *v138;
                        v135 = 1;
                        v136 = 2;
                      }

                      while ((v139 & 1) == 0);
                      v133 = v284 + 1;
                      v134 = &off_278BBFC18[3 * v284 + 3];
                    }

                    while (v284 != 5);
                    v129 = 1;
                    v132 = 0;
                  }

                  while (((__sa == 1) & v281) != 0);
                }

                v123 = v278 + 1;
                v128 = &(&off_278BBFB98)[2 * v278 + 2];
                v287 = *v128;
              }

              while (v278 != 6);
              v89 = v272 + 1;
            }

            while (v272 != 7);
            do
            {
              v162 = 0;
              v279 = v89;
              v163 = &(&off_278BBFA68)[2 * v89];
              v319 = *(v163 + 2);
              __sb = v163;
              v164 = *(v163 + 12);
              if (v164)
              {
                v165 = 3;
              }

              else
              {
                v165 = 2;
              }

              if (v164)
              {
                v166 = 2;
              }

              else
              {
                v166 = 0;
              }

              v297 = v166;
              v299 = v165;
              v294 = v165 + 1;
              v291 = v165 + 2;
              v288 = v164 | (v319 == 5);
              v285 = (v164 & 1 | (v319 == 5)) == 0;
              v311 = "1d";
              v167 = &off_278BBFB98;
              do
              {
                v282 = v162;
                v308 = *(v167 + 2);
                if ((v308 - 1) <= 1)
                {
                  v168 = off_278BBFC18;
                  v169 = 6;
                  do
                  {
                    if (v319 != 5 || *(v168 + 20) == 1)
                    {
                      v170 = *__sb;
                      if (*__sb)
                      {
                        v171 = strlen(*__sb);
                        v330[0].st_ino = 0;
                        sub_23C4B01BC(v330, v170, &v170[v171]);
                      }

                      else
                      {
                        v330[0].st_ino = 0;
                      }

                      v172 = strlen(v311);
                      sub_23C4B01BC(v330, v311, &v311[v172]);
                      v173 = v168[v319 == 5];
                      if (v173)
                      {
                        v174 = strlen(v168[v319 == 5]);
                        sub_23C4B01BC(v330, v173, &v173[v174]);
                        v175 = v330[0].st_ino;
                      }

                      else
                      {
                        v175 = v330[0].st_ino;
                        if (*&v330[0].st_uid < v330[0].st_ino)
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod();
                        }
                      }

                      v176 = v291;
                      v177 = v294;
                      if (!*(v167 + 12))
                      {
                        v176 = v294;
                        v177 = 0;
                      }

                      v315 = v177;
                      v178 = v176 + (v319 == 5);
                      if (v319 == 5)
                      {
                        v179 = v176;
                      }

                      else
                      {
                        v179 = 0;
                      }

                      v180 = v178 + 2;
                      if (v308 == 2)
                      {
                        v181 = 0;
                      }

                      else
                      {
                        v181 = v178;
                      }

                      if (v308 == 2)
                      {
                        v180 = v178;
                      }

                      v182 = v180 + v285;
                      if (v288)
                      {
                        v183 = 0;
                      }

                      else
                      {
                        v183 = v180;
                      }

                      v184 = *(v168 + 4);
                      v185 = *sub_23C4FED68(*&v330[0].st_dev, v175);
                      *(v185 + 8) = v319;
                      *(v185 + 12) = v308;
                      *(v185 + 16) = 0;
                      *(v185 + 20) = v184;
                      *(v185 + 28) = 0;
                      *(v185 + 24) = 0;
                      *(v185 + 29) = v182;
                      *(v185 + 30) = 256;
                      *(v185 + 32) = 0;
                      *(v185 + 33) = v297;
                      *(v185 + 34) = v299;
                      *(v185 + 35) = v181;
                      *(v185 + 38) = 0;
                      *(v185 + 36) = 0;
                      *(v185 + 39) = v315;
                      *(v185 + 40) = v179;
                      *(v185 + 43) = 0;
                      *(v185 + 41) = 0;
                      *(v185 + 44) = v183;
                      *(v185 + 47) = 0;
                      *(v185 + 45) = 0;
                    }

                    v168 += 3;
                    --v169;
                  }

                  while (v169);
                }

                v162 = v282 + 1;
                v167 = &(&off_278BBFB98)[2 * v282 + 2];
                v311 = *v167;
              }

              while (v282 != 6);
              v89 = v279 + 1;
            }

            while (v279 != 11);
            v186 = 0;
            do
            {
              v187 = 0;
              v312 = v186;
              v320 = &(&off_278BBFA68)[2 * v89];
              v188 = *v320;
              v189 = ".v4f32";
              v190 = off_278BBFC18;
              do
              {
                v316 = v187;
                v191 = 0;
                v192 = 1;
                v193 = 1;
                v194 = &unk_278BBFCF0;
                do
                {
                  v195 = v191;
                  if (v188)
                  {
                    v196 = strlen(v188);
                    v330[0].st_ino = 0;
                    sub_23C4B01BC(v330, v188, &v188[v196]);
                  }

                  else
                  {
                    v330[0].st_ino = 0;
                  }

                  v197 = *(v194 + 1);
                  if (v197)
                  {
                    v198 = strlen(v197);
                    sub_23C4B01BC(v330, v197, &v197[v198]);
                  }

                  else if (*&v330[0].st_uid < v330[0].st_ino)
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod();
                  }

                  v199 = strlen(v189);
                  sub_23C4B01BC(v330, v189, &v189[v199]);
                  v200 = *(v320 + 2);
                  if (v200 == 3)
                  {
                    v201 = 3;
                  }

                  else
                  {
                    v201 = 2;
                  }

                  v202 = *(v190 + 4);
                  v203 = *sub_23C4FED68(*&v330[0].st_dev, v330[0].st_ino);
                  v191 = 1;
                  *(v203 + 8) = v200;
                  *(v203 + 12) = 1;
                  *(v203 + 16) = v193;
                  *(v203 + 20) = v202;
                  *(v203 + 28) = 0;
                  *(v203 + 24) = 0;
                  *(v203 + 29) = v201;
                  *(v203 + 30) = 0;
                  *(v203 + 34) = 1;
                  *(v203 + 38) = 0;
                  *(v203 + 35) = 0;
                  *(v203 + 42) = 2 * (v200 == 3);
                  *(v203 + 43) = 0;
                  *(v203 + 47) = 1;
                  v194 = &unk_278BBFCF0 + 16 * v192;
                  v192 = 2;
                  v193 = *v194;
                }

                while ((v195 & 1) == 0);
                v187 = v316 + 1;
                v190 = &off_278BBFC18[3 * v316 + 3];
                v189 = *v190;
              }

              while (v316 != 5);
              v186 = 1;
              v89 = 13;
            }

            while ((v312 & 1) == 0);
            sub_23C4E8E90();
            v204 = 0;
            while (2)
            {
              v205 = 0;
              v321 = v204;
              v206 = &(&off_278BBFD20)[2 * v204];
              v207 = *(v206 + 2);
              v208 = "1d";
              v209 = &off_278BBFB98;
              while (2)
              {
                if (v207 != 3)
                {
                  if (v207 == 2 && *(v209 + 2) != 3)
                  {
                    goto LABEL_386;
                  }

LABEL_369:
                  v210 = *(v209 + 2);
                  v211 = 1;
                  while (2)
                  {
                    if (v211)
                    {
                      v212 = 5;
                    }

                    else
                    {
                      v212 = 4;
                    }

                    if (v207 != v212)
                    {
                      v213 = *v206;
                      if (*v206)
                      {
                        v214 = strlen(*v206);
                        v330[0].st_ino = 0;
                        sub_23C4B01BC(v330, v213, &v213[v214]);
                        if (v211)
                        {
                          goto LABEL_376;
                        }

LABEL_378:
                        if (*(v209 + 12))
                        {
                          v216 = "2d_ms_array";
                        }

                        else
                        {
                          v216 = "2d_ms";
                        }

                        v217 = 5;
                        if (*(v209 + 12))
                        {
                          v217 = 11;
                        }

                        v215 = &v216[v217];
                      }

                      else
                      {
                        v330[0].st_ino = 0;
                        if ((v211 & 1) == 0)
                        {
                          goto LABEL_378;
                        }

LABEL_376:
                        v215 = &v208[strlen(v208)];
                        v216 = v208;
                      }

                      sub_23C4B01BC(v330, v216, v215);
                      v218 = *sub_23C4FEE6C(*&v330[0].st_dev, v330[0].st_ino);
                      *(v218 + 12) = v207;
                      *(v218 + 16) = 0;
                    }

                    v219 = (v210 == 1) & v211;
                    v211 = 0;
                    if ((v219 & 1) == 0)
                    {
                      goto LABEL_386;
                    }

                    continue;
                  }
                }

                if (*(v209 + 12) == 1)
                {
                  goto LABEL_369;
                }

LABEL_386:
                ++v205;
                v209 = &(&off_278BBFB98)[2 * v205];
                v208 = *v209;
                if (v205 != 7)
                {
                  continue;
                }

                break;
              }

              v204 = v321 + 1;
              if (v321 != 10)
              {
                continue;
              }

              break;
            }

            v330[0].st_ino = 0;
            sub_23C4B01BC(v330, "air.get_width_texture_buffer_1d", "");
            v220 = *sub_23C4FEE6C(*&v330[0].st_dev, v330[0].st_ino);
            *(v220 + 12) = 0;
            *(v220 + 16) = 1;
            sub_23C4E8F14();
            v221 = 0;
            v222 = "1d";
            v223 = &off_278BBFB98;
            do
            {
              v224 = *(v223 + 2);
              v225 = 1;
              do
              {
                v330[0].st_ino = 0;
                sub_23C4B01BC(v330, "air.fence_texture_", "");
                if (v225)
                {
                  v226 = &v222[strlen(v222)];
                  v227 = v222;
                }

                else
                {
                  if (*(v223 + 12))
                  {
                    v227 = "2d_ms_array";
                  }

                  else
                  {
                    v227 = "2d_ms";
                  }

                  if (*(v223 + 12))
                  {
                    v228 = 11;
                  }

                  else
                  {
                    v228 = 5;
                  }

                  v226 = &v227[v228];
                }

                sub_23C4B01BC(v330, v227, v226);
                sub_23C4FEF70(&qword_27E1F7380, *&v330[0].st_dev, v330[0].st_ino);
                v229 = (v224 == 1) & v225;
                v225 = 0;
              }

              while ((v229 & 1) != 0);
              ++v221;
              v223 = &(&off_278BBFB98)[2 * v221];
              v222 = *v223;
            }

            while (v221 != 7);
            v330[0].st_ino = 0;
            sub_23C4B01BC(v330, "air.fence_texture_", "");
            sub_23C4B01BC(v330, "buffer_1d", "");
            sub_23C4FEF70(&qword_27E1F7380, *&v330[0].st_dev, v330[0].st_ino);
            sub_23C4E8F98();
            for (i = 0; i != 16; ++i)
            {
              v330[0].st_ino = 0;
              sub_23C4B01BC(v330, "air.is_null_", "");
              v231 = strlen(off_278BBFDD0[i]);
              sub_23C4B01BC(v330, off_278BBFDD0[i], &off_278BBFDD0[i][v231]);
              sub_23C4FEF70(&qword_27E1F73A8, *&v330[0].st_dev, v330[0].st_ino);
            }

            sub_23C4F0968();
            for (j = 0; j != 16; ++j)
            {
              v330[0].st_ino = 0;
              sub_23C4B01BC(v330, "air.get_null_", "");
              v233 = strlen(off_278BBFDD0[j]);
              sub_23C4B01BC(v330, off_278BBFDD0[j], &off_278BBFDD0[j][v233]);
              sub_23C4FEF70(&qword_27E1F73D0, *&v330[0].st_dev, v330[0].st_ino);
            }

            sub_23C4E901C();
            for (k = 0; k != 16; ++k)
            {
              v330[0].st_ino = 0;
              sub_23C4B01BC(v330, "air.get_unique_identifier_", "");
              v235 = strlen(off_278BBFDD0[k]);
              sub_23C4B01BC(v330, off_278BBFDD0[k], &off_278BBFDD0[k][v235]);
              sub_23C4FEF70(&qword_27E1F73F8, *&v330[0].st_dev, v330[0].st_ino);
            }

            v330[0].st_ino = 0;
            sub_23C4B01BC(v330, "air.get_unique_identifier_", "");
            sub_23C4B01BC(v330, "sampler", "");
            sub_23C4FEF70(&qword_27E1F73F8, *&v330[0].st_dev, v330[0].st_ino);
            if (*&v330[0].st_dev != &v330[0].st_rdev)
            {
              free(*&v330[0].st_dev);
            }
          }

          sub_23C4FE87C();
          if (!dword_27E1F742C)
          {
            v237 = *sub_23C4FF048("air.vertex_id", 0xDuLL);
            *(v237 + 8) = "air.get_vertex_id";
            *(v237 + 16) = 17;
            *(v237 + 24) = 1;
            v238 = *sub_23C4FF048("air.instance_id", 0xFuLL);
            *(v238 + 8) = "air.get_instance_id";
            *(v238 + 16) = 19;
            *(v238 + 24) = 1;
            v239 = *sub_23C4FF048("air.base_vertex", 0xFuLL);
            *(v239 + 8) = "air.get_base_vertex";
            *(v239 + 16) = 19;
            *(v239 + 24) = 1;
            v240 = *sub_23C4FF048("air.base_instance", 0x11uLL);
            *(v240 + 8) = "air.get_base_instance";
            *(v240 + 16) = 21;
            *(v240 + 24) = 1;
            v241 = *sub_23C4FF048("air.thread_position_in_grid", 0x1BuLL);
            *(v241 + 8) = "air.get_global_id";
            *(v241 + 16) = 17;
            *(v241 + 24) = 0;
            v242 = *sub_23C4FF048("air.thread_position_in_threadgroup", 0x22uLL);
            *(v242 + 8) = "air.get_local_id";
            *(v242 + 16) = 16;
            *(v242 + 24) = 0;
            v243 = *sub_23C4FF048("air.thread_index_in_threadgroup", 0x1FuLL);
            *(v243 + 8) = "air.get_local_linear_id";
            *(v243 + 16) = 23;
            *(v243 + 24) = 1;
            v244 = *sub_23C4FF048("air.threadgroup_position_in_grid", 0x20uLL);
            *(v244 + 8) = "air.get_group_id";
            *(v244 + 16) = 16;
            *(v244 + 24) = 0;
            v245 = *sub_23C4FF048("air.threads_per_grid", 0x14uLL);
            *(v245 + 8) = "air.get_global_size";
            *(v245 + 16) = 19;
            *(v245 + 24) = 0;
            v246 = *sub_23C4FF048("air.threads_per_threadgroup", 0x1BuLL);
            *(v246 + 8) = "air.get_local_size";
            *(v246 + 16) = 18;
            *(v246 + 24) = 0;
            v247 = *sub_23C4FF048("air.threadgroups_per_grid", 0x19uLL);
            *(v247 + 8) = "air.get_num_groups";
            *(v247 + 16) = 18;
            *(v247 + 24) = 0;
            v248 = *sub_23C4FF048("air.thread_execution_width", 0x1AuLL);
            *(v248 + 8) = "air.get_thread_execution_width";
            *(v248 + 16) = 30;
            *(v248 + 24) = 1;
            v249 = *sub_23C4FF048("air.dispatch_threads_per_threadgroup", 0x24uLL);
            *(v249 + 8) = "air.get_dispatch_local_size";
            *(v249 + 16) = 27;
            *(v249 + 24) = 0;
            v250 = *sub_23C4FF048("air.thread_index_in_quadgroup", 0x1DuLL);
            *(v250 + 8) = "air.get_quad_element";
            *(v250 + 16) = 20;
            *(v250 + 24) = 1;
            v251 = *sub_23C4FF048("air.quadgroup_index_in_threadgroup", 0x22uLL);
            *(v251 + 8) = "air.get_quad_group";
            *(v251 + 16) = 18;
            *(v251 + 24) = 1;
            v252 = *sub_23C4FF048("air.quadgroups_per_threadgroup", 0x1EuLL);
            *(v252 + 8) = "air.get_quadgroups_per_threadgroup";
            *(v252 + 16) = 34;
            *(v252 + 24) = 1;
            v253 = *sub_23C4FF048("air.dispatch_quadgroups_per_threadgroup", 0x27uLL);
            *(v253 + 8) = "air.get_dispatch_quadgroups_per_threadgroup";
            *(v253 + 16) = 43;
            *(v253 + 24) = 1;
            v254 = *sub_23C4FF048("air.threads_per_simdgroup", 0x19uLL);
            *(v254 + 8) = "air.get_threads_per_simdgroup";
            *(v254 + 16) = 29;
            *(v254 + 24) = 1;
            v255 = *sub_23C4FF048("air.thread_index_in_simdgroup", 0x1DuLL);
            *(v255 + 8) = "air.get_thread_index_in_simdgroup";
            *(v255 + 16) = 33;
            *(v255 + 24) = 1;
            v256 = *sub_23C4FF048("air.simdgroup_index_in_threadgroup", 0x22uLL);
            *(v256 + 8) = "air.get_simdgroup_index_in_threadgroup";
            *(v256 + 16) = 38;
            *(v256 + 24) = 1;
            v257 = *sub_23C4FF048("air.simdgroups_per_threadgroup", 0x1EuLL);
            *(v257 + 8) = "air.get_simdgroups_per_threadgroup";
            *(v257 + 16) = 34;
            *(v257 + 24) = 1;
            v236 = sub_23C4FF048("air.dispatch_simdgroups_per_threadgroup", 0x27uLL);
            v258 = *v236;
            *(v258 + 8) = "air.get_dispatch_simdgroups_per_threadgroup";
            *(v258 + 16) = 43;
            *(v258 + 24) = 1;
          }

          PassRegistry = llvm::PassRegistry::getPassRegistry(v236);
          llvm::initializeCore(PassRegistry, v260);
          llvm::initializeScalarOpts(PassRegistry, v261);
          llvm::initializeVectorization(PassRegistry, v262);
          llvm::initializeIPO(PassRegistry, v263);
          llvm::initializeAnalysis(PassRegistry, v264);
          llvm::initializeTransformUtils(PassRegistry, v265);
          llvm::initializeInstCombine(PassRegistry, v266);
          llvm::initializeTarget(PassRegistry, v267);
          operator new();
        }
      }

      else
      {
        v20[3] = v21 + 1;
        LOBYTE(v20) = *v21;
      }

      if (v18 == v20)
      {
        v22 = 0;
        goto LABEL_29;
      }

      ++v19;
      std::string::push_back(&__str, v20);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v22 = 4;
        goto LABEL_29;
      }
    }
  }

  return 0;
}